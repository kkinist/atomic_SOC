
 Working directory              : /wrk/irikura/molpro.2ZK5kXj0sK/
 Global scratch directory       : /wrk/irikura/molpro.2ZK5kXj0sK/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.2ZK5kXj0sK/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Ar SO-CI
                                                                                 ! active space (8/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Ar};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=17,sym=1,spin=1}
 
 {multi,wmk_old
     closed,2,3
     occ,4,9
     wf,nelec=18,sym=1,spin=0;state,10;
     wf,nelec=18,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ar SO-                                                                        
  64 bit mpp version                                                                     DATE: 29-Feb-24          TIME: 10:29:31  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AR     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AR     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AR     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AR     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AR     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry AR     H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  AR     18.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   18
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

     238.551 MB (compressed) written to integral file ( 12.3%)

     Node minimum: 3.932 MB, node maximum: 10.748 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4703088.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4703088      RECORD LENGTH: 524288

 Memory used in sort:       5.26 MW

 SORT1 READ   241177324. AND WROTE      826784. INTEGRALS IN      3 RECORDS. CPU TIME:     1.49 SEC, REAL TIME:     1.55 SEC
 SORT2 READ    24896428. AND WROTE   141159946. INTEGRALS IN    810 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.10 SEC

 Node minimum:     4695545.  Node maximum:     4720044. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.323E-05 0.394E-03 0.176E-02 0.176E-02 0.176E-02 0.176E-02 0.176E-02 0.203E-02
         2 0.431E-04 0.431E-04 0.431E-04 0.471E-02 0.471E-02 0.471E-02 0.158E-01 0.158E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.14       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.77      3.42
 REAL TIME  *         4.65 SEC
 DISK USED  *        30.46 MB (local),        1.38 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   2   6

 NELEC=   17   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -371.02114074    -371.02114074     0.00D+00     0.21D+00     0     0       0.03      0.06    start
   2     -515.85717557    -144.83603482     0.58D+00     0.19D+00     1     0       0.03      0.09    diag2
   3     -526.04932286     -10.19214730     0.32D+00     0.45D-01     2     0       0.04      0.13    diag2
   4     -527.36202073      -1.31269787     0.46D-01     0.34D-01     3     0       0.03      0.16    diag2
   5     -527.39861897      -0.03659824     0.76D-02     0.37D-02     4     0       0.04      0.20    diag2
   6     -527.39965985      -0.00104089     0.15D-02     0.52D-03     5     0       0.04      0.24    diag2
   7     -527.39968776      -0.00002791     0.14D-03     0.12D-03     6     0       0.03      0.27    diag2
   8     -527.39968833      -0.00000056     0.21D-04     0.12D-04     7     0       0.04      0.31    fixocc
   9     -527.39968833      -0.00000000     0.16D-05     0.93D-06     8     0       0.03      0.34    diag2
  10     -527.39968833      -0.00000000     0.14D-06     0.68D-07     0     0       0.03      0.37    diag/orth

 Final alpha occupancy:   3   6
 Final beta  occupancy:   2   6

 !RHF STATE 1.1 Energy               -527.399688330147
  RHF One-electron energy            -720.561833431158
  RHF Two-electron energy             193.162145101011
  RHF Kinetic energy                  538.251119107560
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.979839464532

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.67504     1  1  s    0.93774
    2.1     2.00000   -12.97182     1  2  s    1.05708
    3.1     1.00000    -1.82875     1  2  s   -0.38495    1  9  s    0.53049    1 10  s    0.63016
    1.2     2.00000   -10.15470     1  1  py   0.57105    1  1  pz   0.82156
    2.2     2.00000   -10.15470     1  1  px   1.00053
    3.2     2.00000   -10.15470     1  1  py   0.82156    1  1  pz  -0.57105
    4.2     2.00000    -1.03115     1  1  pz  -0.30012    1  8  pz   0.47904    1  9  pz   0.42405
    5.2     2.00000    -1.03115     1  1  px  -0.30019    1  8  px   0.47917    1  9  px   0.42416
    6.2     2.00000    -1.03115     1  1  py  -0.30012    1  8  py   0.47904    1  9  py   0.42405


 HOMO      6.2    -1.031150 =     -28.0590eV
 LUMO      4.1    -0.130623 =      -3.5544eV
 LUMO-HOMO         0.900528 =      24.5046eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.14       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.11       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.16      0.39      3.42
 REAL TIME  *         5.10 SEC
 DISK USED  *        34.42 MB (local),        1.50 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     204 (   98  106)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 3 5 1   2 4 6 3 5151412 811   91310 7 2 4 6 5 3 1  1514131012 8 7 911 6
                                        4 5 3 2 114151310 9  11 712 8 4 6 5 3 2 1   712 8 91114151013 4   6 5 3 2 1 2 4 5 6 3
                                       12 8 7141511 91310 4   5 6 3 2 1 4 5 6 3 2   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.411D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.347D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.411D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.223D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.223D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.300D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.299D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.191D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 2 1 3   2 1 4 510 8 9 7 6 3   2 1 9 7 4 5 610 8 4   5 6 9 7 81015171321
                                       14161911121820 3 2 1   4 5 6 7 910 8201815  1713211416111219 3 2   1 6 810 9 7 5 41715
                                       201811121319211614 3   2 1 7 9 6 5 4 810 3   2 1 6 7 9 5 4 810 3   2 1 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-01 (gradient)  0.10E-05 (energy)  0.10E-02 (step length)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263

 Number of orbital rotations:     1368   (    22 Core/Active    514 Core/Virtual   0 Active/Active    832 Active/Virtual)
 Total number of variables:      40552


 ITER. MIC  NCI  NEG     ENERGY(VAR)     ENERGY(PROJ)   ENERGY CHANGE     GRAD(0)  GRAD(ORB)   GRAD(CI)     STEP       TIME

 Not enough P space configurations found with threshold  0.40  for 10 states. Nplist= 1  threshold increased to    0.90
   1  119   42    0    -528.18585216    -528.19002757   -0.00417541    0.09695436 0.00000202 0.00000594  0.87D+00      1.98
   2  125   66    0    -528.19004959    -528.19005545   -0.00000586    0.00143272 0.00000003 0.00000046  0.35D-01      4.71
   3  115   32    0    -528.19005545    -528.19005545    0.00000000    0.00000080 0.00000000 0.00000011  0.65D-05      6.78

 ** WVFN ****  CONVERGENCE REACHED, FINAL GRADIENT:  0.27D-08



 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy             -528.608849332693
 Nuclear energy                         0.00000000
 Kinetic energy                       540.61563135
 One electron energy                 -732.17456094
 Two electron energy                  203.56571161
 Virial ratio                           1.97779054

 !MCSCF STATE 1.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy             -528.168466392020
 Nuclear energy                         0.00000000
 Kinetic energy                       539.06937042
 One electron energy                 -725.12881202
 Two electron energy                  196.96034563
 Virial ratio                           1.97977829

 !MCSCF STATE 2.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy             -528.168466392020
 Nuclear energy                         0.00000000
 Kinetic energy                       539.06937042
 One electron energy                 -725.12881202
 Two electron energy                  196.96034563
 Virial ratio                           1.97977829

 !MCSCF STATE 3.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy             -528.168466392011
 Nuclear energy                         0.00000000
 Kinetic energy                       539.06937042
 One electron energy                 -725.12881202
 Two electron energy                  196.96034563
 Virial ratio                           1.97977829

 !MCSCF STATE 4.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy             -528.168466392011
 Nuclear energy                         0.00000000
 Kinetic energy                       539.06937042
 One electron energy                 -725.12881202
 Two electron energy                  196.96034563
 Virial ratio                           1.97977829

 !MCSCF STATE 5.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy             -528.168466392011
 Nuclear energy                         0.00000000
 Kinetic energy                       539.06937042
 One electron energy                 -725.12881202
 Two electron energy                  196.96034563
 Virial ratio                           1.97977829

 !MCSCF STATE 6.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy             -528.164560737362
 Nuclear energy                         0.00000000
 Kinetic energy                       539.06077113
 One electron energy                 -725.11506712
 Two electron energy                  196.95050638
 Virial ratio                           1.97978668

 !MCSCF STATE 7.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy             -528.164560737362
 Nuclear energy                         0.00000000
 Kinetic energy                       539.06077113
 One electron energy                 -725.11506712
 Two electron energy                  196.95050638
 Virial ratio                           1.97978668

 !MCSCF STATE 8.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy             -528.164560737362
 Nuclear energy                         0.00000000
 Kinetic energy                       539.06077113
 One electron energy                 -725.11506712
 Two electron energy                  196.95050638
 Virial ratio                           1.97978668

 !MCSCF STATE 9.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy            -528.134108280803
 Nuclear energy                         0.00000000
 Kinetic energy                       539.55821018
 One electron energy                 -726.14942147
 Two electron energy                  198.01531319
 Virial ratio                           1.97882693

 !MCSCF STATE 10.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000



 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy             -528.181708568024
 Nuclear energy                         0.00000000
 Kinetic energy                       539.02730026
 One electron energy                 -725.05681226
 Two electron energy                  196.87510370
 Virial ratio                           1.97987933

 !MCSCF STATE 1.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy             -528.171181272994
 Nuclear energy                         0.00000000
 Kinetic energy                       539.04846408
 One electron energy                 -725.09351946
 Two electron energy                  196.92233819
 Virial ratio                           1.97982133

 !MCSCF STATE 2.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy             -528.171181272994
 Nuclear energy                         0.00000000
 Kinetic energy                       539.04846408
 One electron energy                 -725.09351946
 Two electron energy                  196.92233819
 Virial ratio                           1.97982133

 !MCSCF STATE 3.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy             -528.171181272956
 Nuclear energy                         0.00000000
 Kinetic energy                       539.04846408
 One electron energy                 -725.09351946
 Two electron energy                  196.92233819
 Virial ratio                           1.97982133

 !MCSCF STATE 4.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy             -528.171181272956
 Nuclear energy                         0.00000000
 Kinetic energy                       539.04846408
 One electron energy                 -725.09351946
 Two electron energy                  196.92233819
 Virial ratio                           1.97982133

 !MCSCF STATE 5.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy             -528.171181272956
 Nuclear energy                         0.00000000
 Kinetic energy                       539.04846408
 One electron energy                 -725.09351946
 Two electron energy                  196.92233819
 Virial ratio                           1.97982133

 !MCSCF STATE 6.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy             -528.164822259695
 Nuclear energy                         0.00000000
 Kinetic energy                       539.05782478
 One electron energy                 -725.10884409
 Two electron energy                  196.94402183
 Virial ratio                           1.97979252

 !MCSCF STATE 7.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy             -528.164822259695
 Nuclear energy                         0.00000000
 Kinetic energy                       539.05782478
 One electron energy                 -725.10884409
 Two electron energy                  196.94402183
 Virial ratio                           1.97979252

 !MCSCF STATE 8.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy             -528.164822259695
 Nuclear energy                         0.00000000
 Kinetic energy                       539.05782478
 One electron energy                 -725.10884409
 Two electron energy                  196.94402183
 Virial ratio                           1.97979252

 !MCSCF STATE 9.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 State-averaged charge density matrix saved on record  2140.2 (density set 1)

 !MCSCF expec        <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec        <2.1|LXLX|2.1>     0.862503594364
 !MCSCF expec        <3.1|LXLX|3.1>     3.137492383535
 !MCSCF expec        <4.1|LXLX|4.1>     1.004843539845
 !MCSCF expec        <5.1|LXLX|5.1>     3.593071740658
 !MCSCF expec        <6.1|LXLX|6.1>     1.402088741598
 !MCSCF expec        <7.1|LXLX|7.1>     0.999140616721
 !MCSCF expec        <8.1|LXLX|8.1>     0.293656008970
 !MCSCF expec        <9.1|LXLX|9.1>     0.707203374309
 !MCSCF expec      <10.1|LXLX|10.1>     0.000000000000
 !MCSCF expec        <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec        <2.1|LXLX|2.1>     0.765123523868
 !MCSCF expec        <3.1|LXLX|3.1>     3.234876476459
 !MCSCF expec        <4.1|LXLX|4.1>     1.001472053742
 !MCSCF expec        <5.1|LXLX|5.1>     1.339799633561
 !MCSCF expec        <6.1|LXLX|6.1>     3.658728312370
 !MCSCF expec        <7.1|LXLX|7.1>     0.999946211138
 !MCSCF expec        <8.1|LXLX|8.1>     0.997316014473
 !MCSCF expec        <9.1|LXLX|9.1>     0.002737774389
 !MCSCF expec        <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LYLY|2.1>     3.993379992235
 !MCSCF expec        <3.1|LYLY|3.1>     0.006625340935
 !MCSCF expec        <4.1|LYLY|4.1>     3.941513489462
 !MCSCF expec        <5.1|LYLY|5.1>     1.000431883514
 !MCSCF expec        <6.1|LYLY|6.1>     1.058049293854
 !MCSCF expec        <7.1|LYLY|7.1>     0.000912628875
 !MCSCF expec        <8.1|LYLY|8.1>     0.999182065910
 !MCSCF expec        <9.1|LYLY|9.1>     0.999905305215
 !MCSCF expec      <10.1|LYLY|10.1>    -0.000000000000
 !MCSCF expec        <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec        <2.1|LYLY|2.1>     3.979902935585
 !MCSCF expec        <3.1|LYLY|3.1>     0.020097065080
 !MCSCF expec        <4.1|LYLY|4.1>     3.990423033988
 !MCSCF expec        <5.1|LYLY|5.1>     1.009543719467
 !MCSCF expec        <6.1|LYLY|6.1>     1.000033245881
 !MCSCF expec        <7.1|LYLY|7.1>     0.008041053986
 !MCSCF expec        <8.1|LYLY|8.1>     0.992101157959
 !MCSCF expec        <9.1|LYLY|9.1>     0.999857788055
 !MCSCF expec        <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec        <2.1|LZLZ|2.1>     1.144116413401
 !MCSCF expec        <3.1|LZLZ|3.1>     2.855882275530
 !MCSCF expec        <4.1|LZLZ|4.1>     1.053642970693
 !MCSCF expec        <5.1|LZLZ|5.1>     1.406496375827
 !MCSCF expec        <6.1|LZLZ|6.1>     3.539861964548
 !MCSCF expec        <7.1|LZLZ|7.1>     0.999946754405
 !MCSCF expec        <8.1|LZLZ|8.1>     0.707161925120
 !MCSCF expec        <9.1|LZLZ|9.1>     0.292891320475
 !MCSCF expec      <10.1|LZLZ|10.1>     0.000000000000
 !MCSCF expec        <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec        <2.1|LZLZ|2.1>     1.254973540547
 !MCSCF expec        <3.1|LZLZ|3.1>     2.745026458461
 !MCSCF expec        <4.1|LZLZ|4.1>     1.008104912270
 !MCSCF expec        <5.1|LZLZ|5.1>     3.650656646972
 !MCSCF expec        <6.1|LZLZ|6.1>     1.341238441750
 !MCSCF expec        <7.1|LZLZ|7.1>     0.992012734876
 !MCSCF expec        <8.1|LZLZ|8.1>     0.010582827568
 !MCSCF expec        <9.1|LZLZ|9.1>     0.997404437556
 !MCSCF expec        <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec        <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec        <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec        <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec        <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec        <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec        <7.1|L**2|7.1>     2.000000000000
 !MCSCF expec        <8.1|L**2|8.1>     2.000000000000
 !MCSCF expec        <9.1|L**2|9.1>     2.000000000000
 !MCSCF expec      <10.1|L**2|10.1>     0.000000000000
 !MCSCF expec        <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec        <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec        <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec        <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec        <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec        <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec        <7.1|L**2|7.1>     2.000000000000
 !MCSCF expec        <8.1|L**2|8.1>     2.000000000000
 !MCSCF expec        <9.1|L**2|9.1>     2.000000000000


 NATURAL ORBITALS (state averaged)
 =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.39993     1  1  s    0.93767
    2.1     2.00000   -12.66860     1  2  s    1.03339
    3.1     1.99881    -1.56271     1  2  s   -0.44372    1  9  s    0.49700    1 10  s    0.63120
    4.1     0.00159     1.07957     1  2  s    0.54256    1  7  s    0.53612    1  8  s   -0.32938    1  9  s   -2.17024
                                    1 10  s    1.29715    1 11  s    0.53922
    1.2     2.00000    -9.87689     1  1  px   0.99902
    2.2     2.00000    -9.87689     1  1  py   0.99902
    3.2     2.00000    -9.87689     1  1  pz   0.99902
    4.2     1.68389    -0.75432     1  1  px  -0.29776    1  8  px   0.47398    1  9  px   0.42373
    5.2     1.68389    -0.75432     1  1  pz  -0.29985    1  8  pz   0.47730    1  9  pz   0.42671
    6.2     1.68389    -0.75432     1  1  py  -0.29776    1  8  py   0.47398    1  9  py   0.42373
    7.2     0.31598     0.04693     1 10  px  -0.27876    1 11  px   1.18638
    8.2     0.31598     0.04693     1 10  py  -0.27876    1 11  py   1.18638
    9.2     0.31598     0.04693     1 10  pz  -0.27876    1 11  pz   1.18639


 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 3 4 6 5   2 6 5 4 3 11415 812  11 91310 7 2 4 3 5 6  1013141512 8 7 911 6
                                        4 3 5 2 11013141511   9 7 812 4 6 3 5 2 1   812 7141511 91013 4   6 3 5 2 1 4 5 3 6 2
                                       12 8 7151411 91013 4   6 5 3 2 1 4 6 5 3 2   1 1
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.106D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.106D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.260D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.258D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.259D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 1 2 3 3   2 1 4 5 810 7 9 6 3   1 2 9 7 5 4 610 8 4   5 6 9 7 81015172113
                                       14161820191211 1 3 2   5 4 6 9 710 8151718  2021131416111219 3 2   1 810 9 7 6 5 41517
                                       182011121913211614 2   3 1 7 9 6 810 5 4 2   3 1 6 9 7 5 4 810 2   3 1 3 2 1

 Natural orbital dump (state averaged) at molpro section  2140.2    (Orbital set 2)


 CI vector for state symmetry 1
 ==============================

 State:              1           2           3           4           5           6           7           8           9
 20 222000      0.9809681   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 20 22b0a0     -0.0743478   0.0964488  -0.5646440   0.0175101  -0.0080035  -0.0577371   0.0000127   0.0576212   0.0000015
 20 22a0b0      0.0743478  -0.0964488   0.5646440  -0.0175101   0.0080035   0.0577371  -0.0000127  -0.0576212  -0.0000015
 20 b22a00     -0.0743478  -0.5373773   0.1984585  -0.0176347   0.0080030   0.0573959   0.0000005   0.0576212   0.0000007
 20 a22b00      0.0743478   0.5373773  -0.1984585   0.0176347  -0.0080030  -0.0573959  -0.0000005  -0.0576212  -0.0000007
 20 22b00a     -0.0000001   0.0002402  -0.0001984  -0.0512455   0.4903932  -0.0811804  -0.0057419  -0.0000184   0.4997221
 20 22a00b      0.0000001  -0.0002402   0.0001984   0.0512455  -0.4903932   0.0811804   0.0057419   0.0000184  -0.4997221
 20 b2200a     -0.0000018   0.0001174   0.0001523  -0.4755570  -0.0721176  -0.1354495   0.4997221  -0.0001100   0.0057419
 20 a2200b      0.0000018  -0.0001174  -0.0001523   0.4755570   0.0721176   0.1354495  -0.4997221   0.0001100  -0.0057419
 20 b220a0      0.0086298  -0.0130105   0.0681212   0.1435784  -0.0628483  -0.4705678   0.0001106   0.4964222   0.0000074
 20 a220b0     -0.0086298   0.0130105  -0.0681212  -0.1435784   0.0628483   0.4705678  -0.0001106  -0.4964222  -0.0000074
 20 22ba00     -0.0086298  -0.0641904   0.0256170   0.1435645  -0.0628606  -0.4706056  -0.0001097  -0.4964222  -0.0000196
 20 22ab00      0.0086298   0.0641904  -0.0256170  -0.1435645   0.0628606   0.4706056   0.0001097   0.4964222   0.0000196
 20 2b20a0     -0.0000001   0.0002258  -0.0002149   0.0039239   0.4954394  -0.0650102   0.0633210  -0.0000067  -0.4957274
 20 2a20b0      0.0000001  -0.0002258   0.0002149  -0.0039239  -0.4954394   0.0650102  -0.0633210   0.0000067   0.4957274
 20 2a2b00     -0.0000018  -0.0001467  -0.0001145   0.4782937   0.0150950   0.1439069   0.4957274  -0.0001107   0.0633210
 20 2b2a00      0.0000018   0.0001467   0.0001145  -0.4782937  -0.0150950  -0.1439069  -0.4957274   0.0001107  -0.0633210
 20 2a200b      0.0748470  -0.4438889  -0.3686441  -0.0001253  -0.0000019  -0.0003434   0.0000122  -0.0000000   0.0000009
 20 2b200a     -0.0748470   0.4438889   0.3686441   0.0001253   0.0000019   0.0003434  -0.0000122   0.0000000  -0.0000009

 State:             10
 20 222000     -0.1819547
 20 22b0a0     -0.3981463
 20 22a0b0      0.3981463
 20 b22a00     -0.3981463
 20 a22b00      0.3981463
 20 22b00a     -0.0000006
 20 22a00b      0.0000006
 20 b2200a     -0.0000098
 20 a2200b      0.0000098
 20 b220a0      0.0462140
 20 a220b0     -0.0462140
 20 22ba00     -0.0462140
 20 22ab00      0.0462140
 20 2b20a0     -0.0000005
 20 2a20b0      0.0000005
 20 2a2b00     -0.0000098
 20 2b2a00      0.0000098
 20 2a200b      0.4008194
 20 2b200a     -0.4008194

 TOTAL ENERGIES                      -528.60884933  -528.16846639  -528.16846639
                                     -528.16846639  -528.16846639  -528.16846639
                                     -528.16456074  -528.16456074  -528.16456074
                                     -528.13410828

 CI vector for state symmetry 2
 ==============================

 20 22a0a0      0.5731155  -0.0322910   0.8096424   0.0200190   0.0184825  -0.0807557   0.0023945  -0.0719076   0.0382520
 20 a22a00      0.5731155   0.7175289  -0.3764731  -0.0200190  -0.0184805   0.0806560   0.0024118  -0.0719077   0.0382508
 20 2a2a00     -0.0000142   0.0000652  -0.0000542   0.6856446   0.0087723   0.1713044   0.7064151   0.0183452  -0.0097355
 20 a2200a      0.0000141   0.0000624  -0.0000726   0.6863101  -0.0708343   0.1532698  -0.7017063   0.0200455   0.0816093
 20 2a20a0      0.0000008   0.0000269  -0.0000092  -0.0454372   0.6899235   0.1465322  -0.0000209   0.3319136   0.6239286
 20 2a200a      0.5769634  -0.6898386  -0.4360776   0.0000000  -0.0000000   0.0001008   0.0000173  -0.0000000  -0.0000011
 20 22a00a      0.0000009   0.0000354  -0.0000183   0.0339238   0.6863375   0.1652899  -0.0814286  -0.3318000  -0.6186532
 20 22aa00      0.0665232   0.0852144  -0.0469052   0.1641866   0.1520281  -0.6649909  -0.0206279   0.6195077  -0.3295430
 20 a220a0     -0.0665232   0.0056768  -0.0971845   0.1641864   0.1520450  -0.6649755   0.0206289  -0.6194996   0.3295583

 TOTAL ENERGIES                      -528.18170857  -528.17118127  -528.17118127
                                     -528.17118127  -528.17118127  -528.17118127
                                     -528.16482226  -528.16482226  -528.16482226



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.02       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.36      8.20      0.39      3.42
 REAL TIME  *        15.00 SEC
 DISK USED  *        57.73 MB (local),        2.18 GB (total)
 SF USED    *        97.77 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -528.6088493   0.0
    -528.1684664   6.0
    -528.1684664   6.0
    -528.1684664   6.0
    -528.1684664   6.0
    -528.1684664   6.0
    -528.1645607   2.0
    -528.1645607   2.0
    -528.1645607   2.0
    -528.1341083   0.0
    -528.1817086   0.0
    -528.1711813   6.0
    -528.1711813   6.0
    -528.1711813   6.0
    -528.1711813   6.0
    -528.1711813   6.0
    -528.1648223   2.0
    -528.1648223   2.0
    -528.1648223   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 18
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      603 conf      924 CSFs
 N elec internal:    13011 conf    32004 CSFs
 N-1 el internal:    15604 conf    64512 CSFs
 N-2 el internal:    10878 conf    69696 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.60884933
     2      -528.16846639
     3      -528.16846639
     4      -528.16846639
     5      -528.16846639
     6      -528.16846639
     7      -528.16456074
     8      -528.16456074
     9      -528.16456074
    10      -528.13410828

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1050D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1530D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1530D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2541D-06

 Number of blocks in overlap matrix:   235   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    1395
 Number of N-1 electron functions:   64512

 Number of internal configurations:                16212
 Number of singly external configurations:       6582016
 Number of doubly external configurations:      14527494
 Total number of contracted configurations:     21125722
 Total number of uncontracted configurations:  730996084

 Diagonal Coupling coefficients finished.               Storage:16819024 words, CPU-Time:     14.85 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2146864 words, CPU-time:      2.31 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.60884933     0.00000000    -0.57447600  0.39D-01  0.31D-01    21.45
    1     2     2     1.00000000     0.00000000  -528.16846639     0.00000000    -0.55593912  0.21D-01  0.38D-01    21.45
    1     3     3     1.00000000     0.00000000  -528.16846639     0.00000000    -0.55705151  0.21D-01  0.38D-01    21.45
    1     4     4     1.00000000     0.00000000  -528.16846639    -0.00000000    -0.54751635  0.21D-01  0.33D-01    21.45
    1     5     5     1.00000000     0.00000000  -528.16846639     0.00000000    -0.54713745  0.21D-01  0.33D-01    21.45
    1     6     6     1.00000000     0.00000000  -528.16846639     0.00000000    -0.54715681  0.21D-01  0.33D-01    21.45
    1     7     7     1.00000000     0.00000000  -528.16456074    -0.00000000    -0.55013367  0.21D-01  0.34D-01    21.45
    1     8     8     1.00000000     0.00000000  -528.16456074    -0.00000000    -0.55003895  0.21D-01  0.34D-01    21.45
    1     9     9     1.00000000     0.00000000  -528.16456074    -0.00000000    -0.55005631  0.21D-01  0.34D-01    21.45
    1    10    10     1.00000000     0.00000000  -528.13410828    -0.00000000    -0.58081490  0.55D-01  0.37D-01    21.45
    2     1     1     1.06489995    -0.55708224  -529.16593157    -0.55708224    -0.02523062  0.56D-02  0.20D-02   336.62
    2     2     2     1.05402693    -0.53328382  -528.70175021    -0.53328382    -0.01178160  0.12D-02  0.12D-02   336.62
    2     3     3     1.05375014    -0.53300596  -528.70147235    -0.53300596    -0.01196852  0.12D-02  0.13D-02   336.62
    2     4     4     1.05081952    -0.53296272  -528.70142911    -0.53296272    -0.01185737  0.13D-02  0.12D-02   336.62
    2     5     5     1.05072844    -0.53296264  -528.70142903    -0.53296264    -0.01185319  0.13D-02  0.12D-02   336.62
    2     6     6     1.05074638    -0.53295674  -528.70142313    -0.53295674    -0.01185567  0.13D-02  0.12D-02   336.62
    2     7     7     1.05172620    -0.53386766  -528.69842839    -0.53386766    -0.01161699  0.12D-02  0.12D-02   336.62
    2     8     8     1.05174224    -0.53386399  -528.69842473    -0.53386399    -0.01161634  0.12D-02  0.12D-02   336.62
    2     9     9     1.05176241    -0.53381213  -528.69837286    -0.53381213    -0.01163647  0.11D-02  0.12D-02   336.62
    2    10    10     1.07535179    -0.53476749  -528.66887577    -0.53476749    -0.02250207  0.87D-02  0.15D-02   336.62
    3     1     1     1.06137944    -0.58571641  -529.19456574    -0.02863417    -0.00264361  0.16D-03  0.25D-03   652.60
    3     2     2     1.05382313    -0.54601060  -528.71447700    -0.01272678    -0.00125803  0.82D-04  0.14D-03   652.60
    3     3     3     1.05382221    -0.54600884  -528.71447523    -0.01300288    -0.00125823  0.82D-04  0.14D-03   652.60
    3     4     4     1.05382433    -0.54600384  -528.71447023    -0.01304112    -0.00125792  0.82D-04  0.14D-03   652.60
    3     5     5     1.05409292    -0.54595936  -528.71442575    -0.01299672    -0.00122926  0.80D-04  0.15D-03   652.60
    3     6     6     1.05398044    -0.54591374  -528.71438014    -0.01295701    -0.00125554  0.79D-04  0.15D-03   652.60
    3     7     7     1.05433661    -0.54665132  -528.71121206    -0.01278366    -0.00122225  0.76D-04  0.14D-03   652.60
    3     8     8     1.05433676    -0.54664944  -528.71121018    -0.01278545    -0.00122232  0.76D-04  0.14D-03   652.60
    3     9     9     1.05431750    -0.54662982  -528.71119056    -0.01281770    -0.00123252  0.77D-04  0.14D-03   652.60
    3    10    10     1.05952147    -0.55696315  -528.69107143    -0.02219566    -0.00165151  0.15D-03  0.19D-03   652.60
    4     1     1     1.06893067    -0.58900183  -529.19785116    -0.00328542    -0.00019145  0.10D-04  0.20D-04   969.63
    4     2     2     1.05965429    -0.54768019  -528.71614658    -0.00166959    -0.00011600  0.45D-05  0.15D-04   969.63
    4     3     3     1.05965379    -0.54767940  -528.71614579    -0.00167056    -0.00011626  0.45D-05  0.15D-04   969.63
    4     4     4     1.05948706    -0.54767924  -528.71614563    -0.00167541    -0.00012524  0.50D-05  0.15D-04   969.63
    4     5     5     1.05965322    -0.54767818  -528.71614457    -0.00171882    -0.00011685  0.45D-05  0.15D-04   969.63
    4     6     6     1.05951386    -0.54767396  -528.71614035    -0.00176022    -0.00012725  0.50D-05  0.16D-04   969.63
    4     7     7     1.06006383    -0.54830406  -528.71286480    -0.00165274    -0.00011416  0.41D-05  0.15D-04   969.63
    4     8     8     1.06006309    -0.54830309  -528.71286383    -0.00165365    -0.00011448  0.41D-05  0.15D-04   969.63
    4     9     9     1.06006007    -0.54830050  -528.71286124    -0.00167068    -0.00011606  0.41D-05  0.15D-04   969.63
    4    10    10     1.06326437    -0.55918097  -528.69328925    -0.00221782    -0.00017666  0.14D-04  0.23D-04   969.63
    5     1     1     1.07008095    -0.58925034  -529.19809968    -0.00024851    -0.00002441  0.12D-05  0.26D-05  1287.28
    5     2     2     1.05995622    -0.54784452  -528.71631091    -0.00016433    -0.00001655  0.90D-06  0.20D-05  1287.28
    5     3     3     1.05995092    -0.54784339  -528.71630978    -0.00016399    -0.00001729  0.91D-06  0.21D-05  1287.28
    5     4     4     1.05991721    -0.54784254  -528.71630894    -0.00016330    -0.00001811  0.10D-05  0.20D-05  1287.28
    5     5     5     1.05991707    -0.54784228  -528.71630867    -0.00016410    -0.00001823  0.10D-05  0.20D-05  1287.28
    5     6     6     1.05991778    -0.54784204  -528.71630843    -0.00016808    -0.00001832  0.10D-05  0.20D-05  1287.28
    5     7     7     1.06032262    -0.54846334  -528.71302408    -0.00015928    -0.00001626  0.71D-06  0.19D-05  1287.28
    5     8     8     1.06032231    -0.54846304  -528.71302378    -0.00015995    -0.00001640  0.71D-06  0.19D-05  1287.28
    5     9     9     1.06032092    -0.54846265  -528.71302339    -0.00016215    -0.00001664  0.72D-06  0.19D-05  1287.28
    5    10    10     1.06436682    -0.55942046  -528.69352874    -0.00023950    -0.00002630  0.23D-05  0.30D-05  1287.28
    6     1     1     1.07002195    -0.58928181  -529.19813115    -0.00003147    -0.00000351  0.19D-06  0.33D-06  1603.89
    6     2     2     1.05977855    -0.54786614  -528.71633253    -0.00002162    -0.00000299  0.18D-06  0.34D-06  1603.89
    6     3     3     1.05977019    -0.54786611  -528.71633251    -0.00002272    -0.00000314  0.21D-06  0.33D-06  1603.89
    6     4     4     1.05976921    -0.54786603  -528.71633242    -0.00002348    -0.00000318  0.21D-06  0.33D-06  1603.89
    6     5     5     1.05976761    -0.54786597  -528.71633237    -0.00002369    -0.00000321  0.21D-06  0.34D-06  1603.89
    6     6     6     1.05977537    -0.54786591  -528.71633230    -0.00002387    -0.00000311  0.18D-06  0.35D-06  1603.89
    6     7     7     1.06017350    -0.54848486  -528.71304560    -0.00002152    -0.00000269  0.17D-06  0.29D-06  1603.89
    6     8     8     1.06017220    -0.54848477  -528.71304551    -0.00002173    -0.00000273  0.18D-06  0.30D-06  1603.89
    6     9     9     1.06016991    -0.54848471  -528.71304545    -0.00002206    -0.00000278  0.18D-06  0.30D-06  1603.89
    6    10    10     1.06409175    -0.55945682  -528.69356510    -0.00003636    -0.00000562  0.50D-06  0.57D-06  1603.89
    7     1     1     1.07013396    -0.58928621  -529.19813555    -0.00000440    -0.00000056  0.27D-07  0.55D-07  1920.60
    7     2     2     1.05990493    -0.54787020  -528.71633659    -0.00000406    -0.00000076  0.52D-07  0.79D-07  1920.60
    7     3     3     1.05990909    -0.54787019  -528.71633659    -0.00000408    -0.00000074  0.48D-07  0.76D-07  1920.60
    7     4     4     1.05990927    -0.54787016  -528.71633656    -0.00000414    -0.00000076  0.50D-07  0.78D-07  1920.60
    7     5     5     1.05990892    -0.54787016  -528.71633656    -0.00000419    -0.00000075  0.49D-07  0.78D-07  1920.60
    7     6     6     1.05990348    -0.54787001  -528.71633640    -0.00000410    -0.00000074  0.51D-07  0.78D-07  1920.60
    7     7     7     1.06032034    -0.54848853  -528.71304926    -0.00000366    -0.00000066  0.42D-07  0.68D-07  1920.60
    7     8     8     1.06032004    -0.54848852  -528.71304926    -0.00000375    -0.00000069  0.44D-07  0.71D-07  1920.60
    7     9     9     1.06032034    -0.54848850  -528.71304924    -0.00000379    -0.00000067  0.43D-07  0.69D-07  1920.60
    7    10    10     1.06420951    -0.55946459  -528.69357288    -0.00000777    -0.00000173  0.13D-06  0.19D-06  1920.60
    8     1     1     1.07015426    -0.58928690  -529.19813623    -0.00000069    -0.00000011  0.42D-08  0.11D-07  2237.36
    8     2     2     1.05994460    -0.54787121  -528.71633760    -0.00000101    -0.00000017  0.91D-08  0.20D-07  2237.36
    8     3     3     1.05994302    -0.54787120  -528.71633759    -0.00000100    -0.00000019  0.10D-07  0.20D-07  2237.36
    8     4     4     1.05994289    -0.54787119  -528.71633759    -0.00000103    -0.00000018  0.10D-07  0.19D-07  2237.36
    8     5     5     1.05994290    -0.54787118  -528.71633757    -0.00000102    -0.00000018  0.10D-07  0.19D-07  2237.36
    8     6     6     1.05994443    -0.54787098  -528.71633738    -0.00000097    -0.00000016  0.88D-08  0.18D-07  2237.36
    8     7     7     1.06034732    -0.54848945  -528.71305019    -0.00000092    -0.00000016  0.74D-08  0.18D-07  2237.36
    8     8     8     1.06034731    -0.54848941  -528.71305015    -0.00000089    -0.00000016  0.71D-08  0.17D-07  2237.36
    8     9     9     1.06034731    -0.54848941  -528.71305014    -0.00000091    -0.00000016  0.72D-08  0.17D-07  2237.36
    8    10    10     1.06423998    -0.55946689  -528.69357517    -0.00000230    -0.00000047  0.33D-07  0.48D-07  2237.36
    9     1     1     1.07015506    -0.58928703  -529.19813636    -0.00000013    -0.00000002  0.10D-08  0.21D-08  2553.89
    9     2     2     1.05993372    -0.54787143  -528.71633782    -0.00000022    -0.00000005  0.29D-08  0.49D-08  2553.89
    9     3     3     1.05993407    -0.54787142  -528.71633781    -0.00000023    -0.00000004  0.26D-08  0.48D-08  2553.89
    9     4     4     1.05993409    -0.54787142  -528.71633781    -0.00000023    -0.00000004  0.29D-08  0.47D-08  2553.89
    9     5     5     1.05993393    -0.54787141  -528.71633780    -0.00000023    -0.00000004  0.29D-08  0.48D-08  2553.89
    9     6     6     1.05993466    -0.54787119  -528.71633758    -0.00000020    -0.00000004  0.26D-08  0.44D-08  2553.89
    9     7     7     1.06033654    -0.54848966  -528.71305039    -0.00000021    -0.00000004  0.21D-08  0.43D-08  2553.89
    9     8     8     1.06033695    -0.54848961  -528.71305035    -0.00000020    -0.00000004  0.20D-08  0.41D-08  2553.89
    9     9     9     1.06033674    -0.54848961  -528.71305035    -0.00000020    -0.00000004  0.21D-08  0.42D-08  2553.89
    9    10    10     1.06422371    -0.55946748  -528.69357576    -0.00000059    -0.00000013  0.11D-07  0.13D-07  2553.89
   10     1     1     1.07015614    -0.58928704  -529.19813637    -0.00000001    -0.00000002  0.59D-09  0.17D-08  2622.69
   10     2     2     1.05993372    -0.54787143  -528.71633782    -0.00000000    -0.00000005  0.29D-08  0.49D-08  2622.69
   10     3     3     1.05993407    -0.54787142  -528.71633781    -0.00000000    -0.00000004  0.26D-08  0.48D-08  2622.69
   10     4     4     1.05993409    -0.54787142  -528.71633781    -0.00000000    -0.00000004  0.29D-08  0.47D-08  2622.69
   10     5     5     1.05993393    -0.54787141  -528.71633780    -0.00000000    -0.00000004  0.29D-08  0.48D-08  2622.69
   10     6     6     1.05993467    -0.54787119  -528.71633758    -0.00000000    -0.00000004  0.26D-08  0.44D-08  2622.69
   10     7     7     1.06033654    -0.54848966  -528.71305039    -0.00000000    -0.00000004  0.21D-08  0.43D-08  2622.69
   10     8     8     1.06033695    -0.54848961  -528.71305035    -0.00000000    -0.00000004  0.20D-08  0.41D-08  2622.69
   10     9     9     1.06033674    -0.54848961  -528.71305035    -0.00000000    -0.00000004  0.21D-08  0.42D-08  2622.69
   10    10    10     1.06423585    -0.55946771  -528.69357599    -0.00000023    -0.00000001  0.82D-09  0.15D-08  2622.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   3.3%
 P   0.3%  30.9%  29.9%

 Initialization:   0.7%
 Other:           34.1%

 Total CPU:     2622.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222222000           0.9560277   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000003   0.0000000  -0.0000000  -0.0000000
                       -0.1230985
 22022222/0\0           0.0751316   0.0000435  -0.0177983   0.0000000  -0.0000116   0.7923396   0.0000000   0.0000000   0.0000000
                        0.5543626
 220222/22\00           0.0751316  -0.0000200   0.6950850  -0.0000000   0.0000056  -0.3807552  -0.0000000  -0.0000000  -0.0000000
                        0.5543640
 22022222/00\          -0.0000000  -0.0000000   0.0000000  -0.0005717   0.6863605   0.0000101  -0.0000001  -0.0014283  -0.6863282
                       -0.0000000
 220222/2200\           0.0000000   0.6863605  -0.0000009   0.0000000   0.0000000  -0.0000377  -0.6863302   0.0000648  -0.0000000
                        0.0000000
 22022222/\00          -0.0000000  -0.0000000   0.0000000   0.6863591   0.0005717   0.0000000  -0.0000647  -0.6863296   0.0014283
                        0.0000000
 220222/220\0           0.0000000   0.0000000   0.0000000   0.6863585   0.0005717   0.0000000   0.0000648   0.6863304  -0.0014283
                        0.0000000
 2202222/2\00          -0.0000000   0.6863579  -0.0000009  -0.0000000   0.0000000  -0.0000377   0.6863330  -0.0000648   0.0000000
                        0.0000000
 2202222/20\0           0.0000000   0.0000000   0.0000000  -0.0005717   0.6863572   0.0000101   0.0000001   0.0014283   0.6863320
                        0.0000000
 2202222/200\           0.0751316  -0.0000234  -0.6772869   0.0000000   0.0000060  -0.4115829   0.0000000   0.0000000  -0.0000000
                        0.5543640

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.965471   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.047620
 2          -0.000000    0.000002    0.000053    0.971264   -0.000000   -0.000000   -0.000002    0.000000    0.000000   -0.000000
 3          -0.000000    0.971018   -0.021853   -0.000001    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.000000    0.971264   -0.000809   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000014    0.000000    0.000809    0.971264   -0.000000   -0.000000   -0.000002    0.000000
 6          -0.000000    0.021853    0.971018   -0.000053    0.000000    0.000014   -0.000000   -0.000000   -0.000000    0.000001
 7           0.000000   -0.000000    0.000000    0.000002    0.000000    0.000000    0.971087    0.000092    0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000001    0.000000   -0.000092    0.971085    0.002021   -0.000000
 9          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000003    0.000000   -0.002021    0.971085   -0.000000
 10          0.054392   -0.000000   -0.000001    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.967729

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966639   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.003322
 2          -0.000000    0.971264    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.971264    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.971264   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.971264   -0.000000    0.000000    0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.971264    0.000000    0.000000    0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.971087   -0.000000    0.000000   -0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.971087    0.000000   -0.000000
 9           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.971087   -0.000000
 10          0.003322    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.969250


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96547118 (fixed)   0.96665877 (relaxed)   0.96663916 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005546   -0.00042908   -0.54223216
 Singles      0.01550154   -0.05797872   -0.06271217
 Pairs        0.05465849    0.04896426    0.01565729
 Total        1.07021549   -0.00944354   -0.58928704
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.60753107
 Nuclear energy                         0.00000000
 Kinetic energy                       540.34153001
 One electron energy                 -730.92930079
 Two electron energy                  201.73116442
 Virial quotient                       -0.97937713
 Correlation energy                    -0.59060530
 !MRCI STATE 1.1 Energy              -529.198136371612

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -529.23960601 (Davidson, fixed reference)
 Cluster corrected energies          -529.23958037 (Davidson, relaxed reference)
 Cluster corrected energies          -529.23960601 (Davidson, rotated reference)

 Cluster corrected energies          -529.23641642 (Pople, fixed reference)
 Cluster corrected energies          -529.23639146 (Pople, relaxed reference)
 Cluster corrected energies          -529.23641642 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97126432 (fixed)   0.97130106 (relaxed)   0.97126432 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010690   -0.00056290   -0.45889111
 Singles      0.01466959   -0.06148385   -0.06558904
 Pairs        0.04527053    0.00000000   -0.02339129
 Total        1.06004703   -0.06204674   -0.54787143
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16846639
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63108463
 One electron energy                 -724.98875333
 Two electron energy                  196.27241551
 Virial quotient                       -0.97977369
 Correlation energy                    -0.54787143
 !MRCI STATE 2.1 Energy              -528.716337823246

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74923587 (Davidson, fixed reference)
 Cluster corrected energies          -528.74919194 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74923587 (Davidson, rotated reference)

 Cluster corrected energies          -528.74646811 (Pople, fixed reference)
 Cluster corrected energies          -528.74642601 (Pople, relaxed reference)
 Cluster corrected energies          -528.74646811 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97101828 (fixed)   0.97130089 (relaxed)   0.97126416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010690   -0.00056289   -0.45889008
 Singles      0.01466998   -0.06148479   -0.06558926
 Pairs        0.04527050    0.00000002   -0.02339209
 Total        1.06004738   -0.06204766   -0.54787142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16846639
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63103578
 One electron energy                 -724.98875279
 Two electron energy                  196.27241498
 Virial quotient                       -0.97977378
 Correlation energy                    -0.54787142
 !MRCI STATE 3.1 Energy              -528.716337814448

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74923606 (Davidson, fixed reference)
 Cluster corrected energies          -528.74919213 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74923606 (Davidson, rotated reference)

 Cluster corrected energies          -528.74646828 (Pople, fixed reference)
 Cluster corrected energies          -528.74642619 (Pople, relaxed reference)
 Cluster corrected energies          -528.74646828 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97126381 (fixed)   0.97130088 (relaxed)   0.97126415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010690   -0.00056290   -0.45889074
 Singles      0.01466976   -0.06148405   -0.06558912
 Pairs        0.04527074    0.00000000   -0.02339156
 Total        1.06004740   -0.06204694   -0.54787142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16846639
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63108114
 One electron energy                 -724.98874926
 Two electron energy                  196.27241145
 Virial quotient                       -0.97977369
 Correlation energy                    -0.54787142
 !MRCI STATE 4.1 Energy              -528.716337811796

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74923607 (Davidson, fixed reference)
 Cluster corrected energies          -528.74919214 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74923607 (Davidson, rotated reference)

 Cluster corrected energies          -528.74646829 (Pople, fixed reference)
 Cluster corrected energies          -528.74642620 (Pople, relaxed reference)
 Cluster corrected energies          -528.74646829 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97126388 (fixed)   0.97130096 (relaxed)   0.97126422 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010690   -0.00056290   -0.45889090
 Singles      0.01466967   -0.06148395   -0.06558907
 Pairs        0.04527066   -0.00000000   -0.02339144
 Total        1.06004724   -0.06204684   -0.54787141
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16846639
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63108371
 One electron energy                 -724.98875057
 Two electron energy                  196.27241277
 Virial quotient                       -0.97977369
 Correlation energy                    -0.54787141
 !MRCI STATE 5.1 Energy              -528.716337802481

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74923597 (Davidson, fixed reference)
 Cluster corrected energies          -528.74919204 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74923597 (Davidson, rotated reference)

 Cluster corrected energies          -528.74646820 (Pople, fixed reference)
 Cluster corrected energies          -528.74642610 (Pople, relaxed reference)
 Cluster corrected energies          -528.74646820 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97101799 (fixed)   0.97130062 (relaxed)   0.97126388 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010692   -0.00056289   -0.45888932
 Singles      0.01466992   -0.06148452   -0.06558911
 Pairs        0.04527115   -0.00000053   -0.02339275
 Total        1.06004799   -0.06204795   -0.54787119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16846639
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63105066
 One electron energy                 -724.98876450
 Two electron energy                  196.27242692
 Virial quotient                       -0.97977375
 Correlation energy                    -0.54787119
 !MRCI STATE 6.1 Energy              -528.716337578868

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74923614 (Davidson, fixed reference)
 Cluster corrected energies          -528.74919220 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74923614 (Davidson, rotated reference)

 Cluster corrected energies          -528.74646835 (Pople, fixed reference)
 Cluster corrected energies          -528.74642625 (Pople, relaxed reference)
 Cluster corrected energies          -528.74646835 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.97108740 (fixed)   0.97111706 (relaxed)   0.97108741 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009125   -0.00054802   -0.45836275
 Singles      0.01517488   -0.06247658   -0.06677168
 Pairs        0.04516717    0.00000000   -0.02335522
 Total        1.06043329   -0.06302461   -0.54848966
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16456074
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63089542
 One electron energy                 -724.98292821
 Two electron energy                  196.26987781
 Virial quotient                       -0.97976794
 Correlation energy                    -0.54848966
 !MRCI STATE 7.1 Energy              -528.713050393372

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74619743 (Davidson, fixed reference)
 Cluster corrected energies          -528.74616191 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74619743 (Davidson, rotated reference)

 Cluster corrected energies          -528.74341775 (Pople, fixed reference)
 Cluster corrected energies          -528.74338370 (Pople, relaxed reference)
 Cluster corrected energies          -528.74341775 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.97108511 (fixed)   0.97111687 (relaxed)   0.97108722 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009125   -0.00054802   -0.45836232
 Singles      0.01517507   -0.06247680   -0.06677176
 Pairs        0.04516739    0.00000000   -0.02335553
 Total        1.06043371   -0.06302483   -0.54848961
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16456074
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63088738
 One electron energy                 -724.98292305
 Two electron energy                  196.26987270
 Virial quotient                       -0.97976795
 Correlation energy                    -0.54848961
 !MRCI STATE 8.1 Energy              -528.713050346670

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74619761 (Davidson, fixed reference)
 Cluster corrected energies          -528.74616209 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74619761 (Davidson, rotated reference)

 Cluster corrected energies          -528.74341792 (Pople, fixed reference)
 Cluster corrected energies          -528.74338387 (Pople, relaxed reference)
 Cluster corrected energies          -528.74341792 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97108521 (fixed)   0.97111697 (relaxed)   0.97108732 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009125   -0.00054802   -0.45836254
 Singles      0.01517496   -0.06247667   -0.06677170
 Pairs        0.04516729    0.00000000   -0.02335537
 Total        1.06043349   -0.06302469   -0.54848961
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16456074
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63089178
 One electron energy                 -724.98292539
 Two electron energy                  196.26987504
 Virial quotient                       -0.97976795
 Correlation energy                    -0.54848961
 !MRCI STATE 9.1 Energy              -528.713050345378

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74619749 (Davidson, fixed reference)
 Cluster corrected energies          -528.74616197 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74619749 (Davidson, rotated reference)

 Cluster corrected energies          -528.74341780 (Pople, fixed reference)
 Cluster corrected energies          -528.74338375 (Pople, relaxed reference)
 Cluster corrected energies          -528.74341780 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96772853 (fixed)   0.96933665 (relaxed)   0.96925021 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020797   -0.00063167   -0.00143758
 Singles      0.01856613   -0.06732807   -0.07301114
 Pairs        0.04568308   -0.49072575   -0.48501899
 Total        1.06445718   -0.55868549   -0.55946771
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.13542654
 Nuclear energy                         0.00000000
 Kinetic energy                       539.76198990
 One electron energy                 -725.27865945
 Two electron energy                  196.58508346
 Virial quotient                       -0.97949390
 Correlation energy                    -0.55814945
 !MRCI STATE 10.1 Energy             -528.693575991160

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.72955273 (Davidson, fixed reference)
 Cluster corrected energies          -528.72944677 (Davidson, relaxed reference)
 Cluster corrected energies          -528.72955273 (Davidson, rotated reference)

 Cluster corrected energies          -528.72663818 (Pople, fixed reference)
 Cluster corrected energies          -528.72653598 (Pople, relaxed reference)
 Cluster corrected energies          -528.72663818 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1629.09       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2865.56   2853.19      8.20      0.39      3.42
 REAL TIME  *      3034.68 SEC
 DISK USED  *         1.65 GB (local),       49.85 GB (total)
 SF USED    *        15.83 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -529.23960601  AU                              
 SETTING HLSDIAG(2)     =      -528.74923587  AU                              
 SETTING HLSDIAG(3)     =      -528.74923606  AU                              
 SETTING HLSDIAG(4)     =      -528.74923607  AU                              
 SETTING HLSDIAG(5)     =      -528.74923597  AU                              
 SETTING HLSDIAG(6)     =      -528.74923614  AU                              
 SETTING HLSDIAG(7)     =      -528.74619743  AU                              
 SETTING HLSDIAG(8)     =      -528.74619761  AU                              
 SETTING HLSDIAG(9)     =      -528.74619749  AU                              
 SETTING HLSDIAG(10)    =      -528.72955273  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 18
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      533 conf     1176 CSFs
 N elec internal:    12717 conf    50904 CSFs
 N-1 el internal:    15304 conf   114396 CSFs
 N-2 el internal:    10058 conf   130322 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.18170857
     2      -528.17118127
     3      -528.17118127
     4      -528.17118127
     5      -528.17118127
     6      -528.17118127
     7      -528.16482226
     8      -528.16482226
     9      -528.16482226

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1070D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4225D-06

 Number of blocks in overlap matrix:   210   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    1252
 Number of N-1 electron functions:  114396

 Number of internal configurations:                25428
 Number of singly external configurations:      11670024
 Number of doubly external configurations:      13036816
 Total number of contracted configurations:     24732268
 Total number of uncontracted configurations: 1365208646

 Diagonal Coupling coefficients finished.               Storage:23411135 words, CPU-Time:     28.66 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 3293156 words, CPU-time:      2.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.18170857     0.00000000    -0.55998724  0.23D-01  0.39D-01    35.74
    1     2     2     1.00000000     0.00000000  -528.17118127    -0.00000000    -0.55870897  0.22D-01  0.39D-01    35.74
    1     3     3     1.00000000     0.00000000  -528.17118127     0.00000000    -0.55965903  0.22D-01  0.39D-01    35.74
    1     4     4     1.00000000     0.00000000  -528.17118127     0.00000000    -0.55706230  0.22D-01  0.38D-01    35.74
    1     5     5     1.00000000     0.00000000  -528.17118127     0.00000000    -0.55788791  0.22D-01  0.38D-01    35.74
    1     6     6     1.00000000     0.00000000  -528.17118127     0.00000000    -0.55712153  0.22D-01  0.38D-01    35.74
    1     7     7     1.00000000     0.00000000  -528.16482226    -0.00000000    -0.55735085  0.21D-01  0.38D-01    35.74
    1     8     8     1.00000000     0.00000000  -528.16482226    -0.00000000    -0.55677231  0.21D-01  0.38D-01    35.74
    1     9     9     1.00000000     0.00000000  -528.16482226     0.00000000    -0.55685205  0.21D-01  0.38D-01    35.74
    2     1     1     1.05650193    -0.53301933  -528.71472790    -0.53301933    -0.01187087  0.13D-02  0.12D-02   351.92
    2     2     2     1.05447996    -0.53387087  -528.70505214    -0.53387087    -0.01160842  0.12D-02  0.12D-02   351.92
    2     3     3     1.05445750    -0.53386074  -528.70504202    -0.53386074    -0.01160221  0.12D-02  0.12D-02   351.92
    2     4     4     1.05473699    -0.53383550  -528.70501677    -0.53383550    -0.01165507  0.12D-02  0.12D-02   351.92
    2     5     5     1.05519385    -0.53362624  -528.70480751    -0.53362624    -0.01169914  0.12D-02  0.12D-02   351.92
    2     6     6     1.05502184    -0.53333643  -528.70451771    -0.53333643    -0.01189259  0.12D-02  0.13D-02   351.92
    2     7     7     1.05404277    -0.53446424  -528.69928650    -0.53446424    -0.01122275  0.12D-02  0.12D-02   351.92
    2     8     8     1.05401354    -0.53444161  -528.69926387    -0.53444161    -0.01122918  0.12D-02  0.12D-02   351.92
    2     9     9     1.05422305    -0.53434941  -528.69917167    -0.53434941    -0.01130390  0.11D-02  0.12D-02   351.92
    3     1     1     1.05501347    -0.54540578  -528.72711435    -0.01238645    -0.00105401  0.58D-04  0.14D-03   670.02
    3     2     2     1.05465241    -0.54611653  -528.71729781    -0.01224567    -0.00108076  0.66D-04  0.14D-03   670.02
    3     3     3     1.05464334    -0.54611621  -528.71729748    -0.01225546    -0.00108286  0.66D-04  0.14D-03   670.02
    3     4     4     1.05463612    -0.54611090  -528.71729217    -0.01227540    -0.00108541  0.67D-04  0.14D-03   670.02
    3     5     5     1.05457289    -0.54598783  -528.71716910    -0.01236159    -0.00113979  0.69D-04  0.15D-03   670.02
    3     6     6     1.05446848    -0.54595025  -528.71713152    -0.01261381    -0.00116648  0.70D-04  0.15D-03   670.02
    3     7     7     1.05464516    -0.54639927  -528.71122153    -0.01193502    -0.00106350  0.65D-04  0.14D-03   670.02
    3     8     8     1.05463364    -0.54639214  -528.71121440    -0.01195054    -0.00106764  0.65D-04  0.14D-03   670.02
    3     9     9     1.05461205    -0.54637811  -528.71120037    -0.01202871    -0.00107543  0.66D-04  0.14D-03   670.02
    4     1     1     1.05969755    -0.54685010  -528.72855867    -0.00144432    -0.00009404  0.51D-05  0.11D-04   989.51
    4     2     2     1.05964290    -0.54758792  -528.71876919    -0.00147139    -0.00009595  0.40D-05  0.12D-04   989.51
    4     3     3     1.05966564    -0.54758778  -528.71876906    -0.00147158    -0.00009624  0.40D-05  0.12D-04   989.51
    4     4     4     1.05966862    -0.54758732  -528.71876859    -0.00147642    -0.00009652  0.40D-05  0.12D-04   989.51
    4     5     5     1.05960470    -0.54757456  -528.71875583    -0.00158673    -0.00010810  0.45D-05  0.13D-04   989.51
    4     6     6     1.05961110    -0.54757163  -528.71875290    -0.00162138    -0.00010908  0.45D-05  0.13D-04   989.51
    4     7     7     1.05966385    -0.54784893  -528.71267119    -0.00144966    -0.00009517  0.34D-05  0.12D-04   989.51
    4     8     8     1.05966564    -0.54784834  -528.71267060    -0.00145620    -0.00009560  0.34D-05  0.12D-04   989.51
    4     9     9     1.05963954    -0.54784693  -528.71266919    -0.00146881    -0.00009652  0.35D-05  0.12D-04   989.51
    5     1     1     1.06021670    -0.54696887  -528.72867744    -0.00011877    -0.00000919  0.37D-06  0.12D-05  1308.91
    5     2     2     1.06009422    -0.54771289  -528.71889416    -0.00012497    -0.00001106  0.49D-06  0.14D-05  1308.91
    5     3     3     1.06009441    -0.54771287  -528.71889414    -0.00012509    -0.00001107  0.49D-06  0.14D-05  1308.91
    5     4     4     1.06009966    -0.54771263  -528.71889390    -0.00012531    -0.00001149  0.52D-06  0.14D-05  1308.91
    5     5     5     1.06009576    -0.54771255  -528.71889382    -0.00013799    -0.00001110  0.49D-06  0.14D-05  1308.91
    5     6     6     1.06009571    -0.54771179  -528.71889306    -0.00014016    -0.00001196  0.52D-06  0.15D-05  1308.91
    5     7     7     1.06004475    -0.54797317  -528.71279543    -0.00012424    -0.00001084  0.43D-06  0.14D-05  1308.91
    5     8     8     1.06004420    -0.54797316  -528.71279542    -0.00012482    -0.00001087  0.43D-06  0.14D-05  1308.91
    5     9     9     1.06004599    -0.54797272  -528.71279498    -0.00012580    -0.00001105  0.43D-06  0.14D-05  1308.91
    6     1     1     1.06007881    -0.54698033  -528.72868890    -0.00001146    -0.00000109  0.58D-07  0.13D-06  1627.83
    6     2     2     1.05995210    -0.54772739  -528.71890866    -0.00001450    -0.00000169  0.97D-07  0.20D-06  1627.83
    6     3     3     1.05995435    -0.54772727  -528.71890854    -0.00001440    -0.00000167  0.96D-07  0.20D-06  1627.83
    6     4     4     1.05995491    -0.54772725  -528.71890852    -0.00001462    -0.00000169  0.97D-07  0.20D-06  1627.83
    6     5     5     1.05994796    -0.54772717  -528.71890844    -0.00001462    -0.00000178  0.97D-07  0.22D-06  1627.83
    6     6     6     1.05995469    -0.54772711  -528.71890838    -0.00001532    -0.00000173  0.97D-07  0.21D-06  1627.83
    6     7     7     1.05990455    -0.54798726  -528.71280952    -0.00001408    -0.00000160  0.99D-07  0.19D-06  1627.83
    6     8     8     1.05990500    -0.54798725  -528.71280951    -0.00001410    -0.00000160  0.99D-07  0.19D-06  1627.83
    6     9     9     1.05990360    -0.54798715  -528.71280941    -0.00001442    -0.00000166  0.10D-06  0.20D-06  1627.83
    7     1     1     1.06014836    -0.54698171  -528.72869028    -0.00000138    -0.00000021  0.16D-07  0.25D-07  1947.22
    7     2     2     1.06004993    -0.54772967  -528.71891095    -0.00000228    -0.00000041  0.30D-07  0.46D-07  1947.22
    7     3     3     1.06004941    -0.54772956  -528.71891083    -0.00000229    -0.00000043  0.30D-07  0.49D-07  1947.22
    7     4     4     1.06005381    -0.54772953  -528.71891081    -0.00000228    -0.00000040  0.30D-07  0.45D-07  1947.22
    7     5     5     1.06005316    -0.54772952  -528.71891080    -0.00000236    -0.00000041  0.30D-07  0.46D-07  1947.22
    7     6     6     1.06005343    -0.54772945  -528.71891072    -0.00000234    -0.00000042  0.31D-07  0.47D-07  1947.22
    7     7     7     1.06000535    -0.54798943  -528.71281169    -0.00000217    -0.00000038  0.26D-07  0.42D-07  1947.22
    7     8     8     1.06000532    -0.54798942  -528.71281168    -0.00000217    -0.00000038  0.26D-07  0.42D-07  1947.22
    7     9     9     1.06000466    -0.54798940  -528.71281166    -0.00000225    -0.00000039  0.27D-07  0.44D-07  1947.22
    8     1     1     1.06016953    -0.54698199  -528.72869056    -0.00000028    -0.00000004  0.27D-08  0.54D-08  2267.11
    8     2     2     1.06007962    -0.54773022  -528.71891149    -0.00000055    -0.00000009  0.48D-08  0.11D-07  2267.11
    8     3     3     1.06007968    -0.54773014  -528.71891141    -0.00000058    -0.00000010  0.51D-08  0.12D-07  2267.11
    8     4     4     1.06007982    -0.54773008  -528.71891135    -0.00000055    -0.00000010  0.50D-08  0.11D-07  2267.11
    8     5     5     1.06007985    -0.54773007  -528.71891135    -0.00000055    -0.00000010  0.50D-08  0.11D-07  2267.11
    8     6     6     1.06007964    -0.54773001  -528.71891129    -0.00000057    -0.00000010  0.52D-08  0.11D-07  2267.11
    8     7     7     1.06002943    -0.54798994  -528.71281220    -0.00000051    -0.00000009  0.44D-08  0.99D-08  2267.11
    8     8     8     1.06002942    -0.54798994  -528.71281220    -0.00000051    -0.00000009  0.44D-08  0.99D-08  2267.11
    8     9     9     1.06002934    -0.54798993  -528.71281219    -0.00000053    -0.00000009  0.46D-08  0.10D-07  2267.11
    9     1     1     1.06016953    -0.54698199  -528.72869056    -0.00000000    -0.00000004  0.27D-08  0.54D-08  2559.49
    9     2     2     1.06007155    -0.54773034  -528.71891161    -0.00000012    -0.00000002  0.15D-08  0.27D-08  2559.49
    9     3     3     1.06007117    -0.54773027  -528.71891154    -0.00000013    -0.00000002  0.15D-08  0.30D-08  2559.49
    9     4     4     1.06007141    -0.54773020  -528.71891147    -0.00000012    -0.00000002  0.14D-08  0.27D-08  2559.49
    9     5     5     1.06007142    -0.54773020  -528.71891147    -0.00000012    -0.00000002  0.14D-08  0.28D-08  2559.49
    9     6     6     1.06007111    -0.54773014  -528.71891141    -0.00000013    -0.00000002  0.14D-08  0.29D-08  2559.49
    9     7     7     1.06003276    -0.54799007  -528.71281233    -0.00000013    -0.00000001  0.39D-09  0.12D-08  2559.49
    9     8     8     1.06002109    -0.54799005  -528.71281231    -0.00000011    -0.00000002  0.12D-08  0.23D-08  2559.49
    9     9     9     1.06002109    -0.54799004  -528.71281230    -0.00000011    -0.00000002  0.12D-08  0.23D-08  2559.49


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.5%   5.2%
 P   0.4%  41.1%  23.2%

 Initialization:   1.2%
 Other:           28.1%

 Total CPU:     2559.5 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22022222/0/0           0.5602823   0.7925813  -0.0091949  -0.0000000   0.0000004  -0.0000254  -0.0000000  -0.0000000  -0.0000000
 2202222/200/           0.5602837  -0.3883268   0.6909926   0.0000001  -0.0000322   0.0000254   0.0000000   0.0000000  -0.0000000
 220222/2200/           0.0000000   0.0000219  -0.0000129  -0.0000258   0.0000000   0.6864416  -0.6863739   0.0000114  -0.0000000
 2202222/2/00           0.0000000   0.0000219  -0.0000129  -0.0000258  -0.0000000   0.6864413   0.6863742  -0.0000114   0.0000000
 22022222/00/          -0.0000000   0.0000000   0.0000320  -0.0013415   0.6864412  -0.0000001  -0.0000001  -0.0049248  -0.6863589
 22022222//00           0.0000000  -0.0000000   0.0000000   0.6864410   0.0013415   0.0000258  -0.0000114  -0.6863591   0.0049248
 220222/220/0          -0.0000000   0.0000000   0.0000000   0.6864390   0.0013415   0.0000258   0.0000114   0.6863612  -0.0049249
 2202222/20/0           0.0000000   0.0000000   0.0000320  -0.0013415   0.6864388  -0.0000000   0.0000001   0.0049249   0.6863615
 220222/22/00           0.5602837  -0.4042528  -0.6817978  -0.0000001   0.0000318   0.0000000  -0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971139   -0.000000   -0.000001   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000001   -0.012226    0.971131    0.000000    0.000031    0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.971131   -0.012226    0.000000   -0.000018    0.000045   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.971206   -0.000036   -0.001898    0.000000   -0.000001    0.000000
 5          -0.000000    0.000045    0.000001    0.001898    0.000000    0.971206   -0.000000   -0.000000   -0.000002
 6          -0.000000   -0.000018   -0.000031    0.000036    0.971208   -0.000000   -0.000000    0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.971217    0.000016    0.000000
 8           0.000000    0.000000   -0.000000    0.000002   -0.000000    0.000000   -0.000016    0.971198    0.006969
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000002    0.000000   -0.006969    0.971198

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971139   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.971208    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.971208    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.971208   -0.000000    0.000000    0.000000    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.971208    0.000000    0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.971208    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.971217   -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.971223   -0.000000
 9           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.971223


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97113880 (fixed)   0.97119257 (relaxed)   0.97113880 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014292   -0.00056780   -0.45717744
 Singles      0.01551888   -0.06230530   -0.06676432
 Pairs        0.04465926   -0.00000000   -0.02304023
 Total        1.06032106   -0.06287311   -0.54698199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.18170857
 Nuclear energy                         0.00000000
 Kinetic energy                       539.60810225
 One electron energy                 -724.97609317
 Two electron energy                  196.24740262
 Virial quotient                       -0.97983831
 Correlation energy                    -0.54698199
 !MRCI STATE 1.1 Energy              -528.728690556295

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.76168509 (Davidson, fixed reference)
 Cluster corrected energies          -528.76162087 (Davidson, relaxed reference)
 Cluster corrected energies          -528.76168509 (Davidson, rotated reference)

 Cluster corrected energies          -528.75823061 (Pople, fixed reference)
 Cluster corrected energies          -528.75817060 (Pople, relaxed reference)
 Cluster corrected energies          -528.75823061 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97113067 (fixed)   0.97123846 (relaxed)   0.97120763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009361   -0.00054767   -0.45800161
 Singles      0.01508241   -0.06222169   -0.06648762
 Pairs        0.04499477   -0.00000000   -0.02324111
 Total        1.06017079   -0.06276935   -0.54773034
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.17118127
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62230804
 One electron energy                 -724.97904699
 Two electron energy                  196.26013537
 Virial quotient                       -0.97979439
 Correlation energy                    -0.54773034
 !MRCI STATE 2.1 Energy              -528.718911614326

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.75186898 (Davidson, fixed reference)
 Cluster corrected energies          -528.75183211 (Davidson, relaxed reference)
 Cluster corrected energies          -528.75186898 (Davidson, rotated reference)

 Cluster corrected energies          -528.74841516 (Pople, fixed reference)
 Cluster corrected energies          -528.74838071 (Pople, relaxed reference)
 Cluster corrected energies          -528.74841516 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97113084 (fixed)   0.97123863 (relaxed)   0.97120780 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009362   -0.00054767   -0.45800183
 Singles      0.01508234   -0.06222156   -0.06648757
 Pairs        0.04499446   -0.00000000   -0.02324087
 Total        1.06017041   -0.06276922   -0.54773027
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.17118127
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62230275
 One electron energy                 -724.97904666
 Two electron energy                  196.26013512
 Virial quotient                       -0.97979440
 Correlation energy                    -0.54773027
 !MRCI STATE 3.1 Energy              -528.718911539475

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.75186870 (Davidson, fixed reference)
 Cluster corrected energies          -528.75183182 (Davidson, relaxed reference)
 Cluster corrected energies          -528.75186870 (Davidson, rotated reference)

 Cluster corrected energies          -528.74841489 (Pople, fixed reference)
 Cluster corrected energies          -528.74838043 (Pople, relaxed reference)
 Cluster corrected energies          -528.74841489 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97120583 (fixed)   0.97123852 (relaxed)   0.97120769 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009362   -0.00054766   -0.45800154
 Singles      0.01508253   -0.06222168   -0.06648759
 Pairs        0.04499450   -0.00000000   -0.02324107
 Total        1.06017065   -0.06276935   -0.54773020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.17118127
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62230958
 One electron energy                 -724.97903943
 Two electron energy                  196.26012795
 Virial quotient                       -0.97979439
 Correlation energy                    -0.54773020
 !MRCI STATE 4.1 Energy              -528.718911472133

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.75186875 (Davidson, fixed reference)
 Cluster corrected energies          -528.75183188 (Davidson, relaxed reference)
 Cluster corrected energies          -528.75186875 (Davidson, rotated reference)

 Cluster corrected energies          -528.74841494 (Pople, fixed reference)
 Cluster corrected energies          -528.74838049 (Pople, relaxed reference)
 Cluster corrected energies          -528.74841494 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97120583 (fixed)   0.97123852 (relaxed)   0.97120768 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009362   -0.00054766   -0.45800236
 Singles      0.01508246   -0.06222160   -0.06648755
 Pairs        0.04499458    0.00000080   -0.02324028
 Total        1.06017066   -0.06276847   -0.54773020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.17118127
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62230886
 One electron energy                 -724.97904141
 Two electron energy                  196.26012994
 Virial quotient                       -0.97979439
 Correlation energy                    -0.54773020
 !MRCI STATE 5.1 Energy              -528.718911469906

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.75186876 (Davidson, fixed reference)
 Cluster corrected energies          -528.75183189 (Davidson, relaxed reference)
 Cluster corrected energies          -528.75186876 (Davidson, rotated reference)

 Cluster corrected energies          -528.74841494 (Pople, fixed reference)
 Cluster corrected energies          -528.74838049 (Pople, relaxed reference)
 Cluster corrected energies          -528.74841494 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97120782 (fixed)   0.97123866 (relaxed)   0.97120782 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009363   -0.00054766   -0.45800170
 Singles      0.01508246   -0.06222160   -0.06648753
 Pairs        0.04499427   -0.00000000   -0.02324091
 Total        1.06017036   -0.06276926   -0.54773014
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.17118127
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62230625
 One electron energy                 -724.97904409
 Two electron energy                  196.26013268
 Virial quotient                       -0.97979440
 Correlation energy                    -0.54773014
 !MRCI STATE 6.1 Energy              -528.718911412021

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.75186853 (Davidson, fixed reference)
 Cluster corrected energies          -528.75183165 (Davidson, relaxed reference)
 Cluster corrected energies          -528.75186853 (Davidson, rotated reference)

 Cluster corrected energies          -528.74841473 (Pople, fixed reference)
 Cluster corrected energies          -528.74838027 (Pople, relaxed reference)
 Cluster corrected energies          -528.74841473 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.97121733 (fixed)   0.97125558 (relaxed)   0.97121733 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011022   -0.00056450   -0.45871321
 Singles      0.01480056   -0.06174579   -0.06589124
 Pairs        0.04523882   -0.00000006   -0.02338562
 Total        1.06014960   -0.06231034   -0.54799007
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16482226
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63100998
 One electron energy                 -724.97964159
 Two electron energy                  196.26682926
 Virial quotient                       -0.97976729
 Correlation energy                    -0.54799007
 !MRCI STATE 7.1 Energy              -528.712812327024

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74577371 (Davidson, fixed reference)
 Cluster corrected energies          -528.74572796 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74577371 (Davidson, rotated reference)

 Cluster corrected energies          -528.74231901 (Pople, fixed reference)
 Cluster corrected energies          -528.74227626 (Pople, relaxed reference)
 Cluster corrected energies          -528.74231901 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.97119769 (fixed)   0.97126092 (relaxed)   0.97122270 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011018   -0.00056450   -0.45543786
 Singles      0.01479565   -0.06173863   -0.06588936
 Pairs        0.04523205   -0.00348487   -0.02666284
 Total        1.06013789   -0.06578800   -0.54799005
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16482226
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63118969
 One electron energy                 -724.97967964
 Two electron energy                  196.26686734
 Virial quotient                       -0.97976696
 Correlation energy                    -0.54799005
 !MRCI STATE 8.1 Energy              -528.712812307189

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74576727 (Davidson, fixed reference)
 Cluster corrected energies          -528.74572154 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74576727 (Davidson, rotated reference)

 Cluster corrected energies          -528.74231299 (Pople, fixed reference)
 Cluster corrected energies          -528.74227027 (Pople, relaxed reference)
 Cluster corrected energies          -528.74231299 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97119769 (fixed)   0.97126092 (relaxed)   0.97122270 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011018   -0.00056450   -0.00060123
 Singles      0.01479565   -0.06173863   -0.06588935
 Pairs        0.04523205   -0.48567441   -0.48149947
 Total        1.06013789   -0.54797754   -0.54799004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16482226
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63118966
 One electron energy                 -724.97968028
 Two electron energy                  196.26686798
 Virial quotient                       -0.97976696
 Correlation energy                    -0.54799004
 !MRCI STATE 9.1 Energy              -528.712812304530

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.74576727 (Davidson, fixed reference)
 Cluster corrected energies          -528.74572154 (Davidson, relaxed reference)
 Cluster corrected energies          -528.74576727 (Davidson, rotated reference)

 Cluster corrected energies          -528.74231299 (Pople, fixed reference)
 Cluster corrected energies          -528.74227027 (Pople, relaxed reference)
 Cluster corrected energies          -528.74231299 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3339.68       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5702.32   2836.74   2853.19      8.20      0.39      3.42
 REAL TIME  *      6023.34 SEC
 DISK USED  *         3.32 GB (local),       99.97 GB (total)
 SF USED    *        17.10 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -528.76162087  AU                              
 SETTING HLSDIAG(12)    =      -528.75183211  AU                              
 SETTING HLSDIAG(13)    =      -528.75183182  AU                              
 SETTING HLSDIAG(14)    =      -528.75183188  AU                              
 SETTING HLSDIAG(15)    =      -528.75183189  AU                              
 SETTING HLSDIAG(16)    =      -528.75183165  AU                              
 SETTING HLSDIAG(17)    =      -528.74572796  AU                              
 SETTING HLSDIAG(18)    =      -528.74572154  AU                              
 SETTING HLSDIAG(19)    =      -528.74572154  AU                              


         HLSDIAG
    -529.2396060
    -528.7492359
    -528.7492361
    -528.7492361
    -528.7492360
    -528.7492361
    -528.7461974
    -528.7461976
    -528.7461975
    -528.7295527
    -528.7616209
    -528.7518321
    -528.7518318
    -528.7518319
    -528.7518319
    -528.7518317
    -528.7457280
    -528.7457215
    -528.7457215
                                                  

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

 Time for Seward_LS:      15.35 sec

 CPU time:     15.36 sec, REAL time:     16.11 sec


 SORTLS1 read   167389343. and wrote   167389343. SO integrals in   679 records. CPU time:      1.44 sec, REAL time:      2.19 sec
 SORTLS2 read   167389343. and wrote   167389343. SO integrals in    90 records. CPU time:      0.30 sec, REAL time:      0.65 sec

 FILE SIZES: FILE 1:    58.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    58.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.90       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3339.68       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5720.17     17.79   2836.74   2853.19      8.20      0.39      3.42
 REAL TIME  *      6043.16 SEC
 DISK USED  *         3.32 GB (local),      104.76 GB (total)
 SF USED    *        17.10 GB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -529.198136   -528.716338   -528.716338   -528.716338   -528.716338   -528.716338   -528.713050   -528.713050
                      -528.713050   -528.693576
 Replaced energies:   -529.239606   -528.749236   -528.749236   -528.749236   -528.749236   -528.749236   -528.746197   -528.746198
                      -528.746197   -528.729553

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:   -528.728691   -528.718912   -528.718912   -528.718911   -528.718911   -528.718911   -528.712812   -528.712812
                      -528.712812
 Replaced energies:   -528.761621   -528.751832   -528.751832   -528.751832   -528.751832   -528.751832   -528.745728   -528.745722
                      -528.745722



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -529.23960601

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00  107623.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00  107623.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00  107623.76       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00  107623.78       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00  107623.75       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00  108290.67       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  108290.63       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  108290.65       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  111943.76
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     266.49      -0.03       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.55    -266.49      -0.00

   12   2.1  1.0  1.0      -0.00      -4.15      -0.01      -0.00       0.00      -0.00    -187.58       0.02      -0.00      -0.00
                           -0.00       0.00      -0.00       0.26    -307.81      -0.00      -0.00      -0.20     -95.67       0.00

   13   3.1  1.0  1.0       0.00    -357.83       0.01      -0.01      -0.00       0.02       2.18      -0.01       0.00       0.00
                            0.00       0.00       0.01      -0.16     182.51       0.02      -0.00      -0.33    -161.36       0.00

   14   4.1  1.0  1.0      -0.00      -0.00       0.01       0.20     178.93       0.00       0.00       0.66     162.46      -0.00
                            0.00    -178.92      -0.34      -0.01       0.00      -0.60    -162.46       0.02      -0.00       0.00

   15   5.1  1.0  1.0       0.00       0.02      -0.00    -178.93       0.20       0.00      -0.02    -162.46       0.66       0.00
                           -0.00      -0.33     171.92       0.00      -0.01     313.84      -0.32       0.00       0.01      -0.00

   16   6.1  1.0  1.0      -0.00      -0.01    -357.76       0.00       0.01      -8.04       0.01       0.00       0.01      -0.00
                            0.00      -0.01      -0.00     178.92       0.16      -0.00      -0.02    -162.46       0.34       0.00

   17   7.1  1.0  1.0    -169.33       0.01      -4.20      -0.00      -0.00     187.15       0.00      -0.00       0.00    -253.30
                            0.00       0.00      -0.00     162.11       0.14       0.00      -0.01    -178.19       0.37       0.00

   18   8.1  1.0  1.0       0.00      -0.00       0.00      -1.30     162.11      -0.00      -0.00      -0.91     178.19       0.00
                            1.21     162.11      -1.18      -0.00      -0.00       0.64     178.18      -0.01      -0.00       1.82

   19   9.1  1.0  1.0      -0.00       0.00       0.00    -162.11      -1.30      -0.00      -0.02    -178.19      -0.91      -0.00
                          169.32      -1.16    -164.17       0.00      -0.00      89.93      -1.28       0.00       0.00     253.29

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.04    -376.87       0.78      -0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -441.19      -0.36      -0.00      -0.01    -129.98       0.26       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.00    -247.94      -0.21      -0.00       0.03     231.28      -0.48      -0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.52    -262.82      -0.00      -0.02     432.49      -0.45       0.00       0.01      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -253.04      -0.51       0.01      -0.00       0.86     229.76      -0.03       0.00      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.01      -0.20     253.04       0.02      -0.00      -0.47    -229.76       0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.19    -229.27      -0.00       0.00       0.52     252.00       0.01

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          239.46       1.65     226.23      -0.00       0.00     137.48      -1.81       0.00      -0.00     358.22

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.72     229.26      -1.62       0.00       0.00      -1.00    -251.99       0.02      -0.00      -2.57

   29   1.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     266.49      -0.03       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.55     266.49       0.00

   30   2.1  1.0 -1.0      -0.00      -4.15      -0.01      -0.00       0.00      -0.00    -187.58       0.02      -0.00      -0.00
                            0.00      -0.00       0.00      -0.26     307.81       0.00       0.00       0.20      95.67      -0.00

   31   3.1  1.0 -1.0       0.00    -357.83       0.01      -0.01      -0.00       0.02       2.18      -0.01       0.00       0.00
                           -0.00      -0.00      -0.01       0.16    -182.51      -0.02       0.00       0.33     161.36      -0.00

   32   4.1  1.0 -1.0      -0.00      -0.00       0.01       0.20     178.93       0.00       0.00       0.66     162.46      -0.00
                           -0.00     178.92       0.34       0.01      -0.00       0.60     162.46      -0.02       0.00      -0.00

   33   5.1  1.0 -1.0       0.00       0.02      -0.00    -178.93       0.20       0.00      -0.02    -162.46       0.66       0.00
                            0.00       0.33    -171.92      -0.00       0.01    -313.84       0.32      -0.00      -0.01       0.00

   34   6.1  1.0 -1.0      -0.00      -0.01    -357.76       0.00       0.01      -8.04       0.01       0.00       0.01      -0.00
                           -0.00       0.01       0.00    -178.92      -0.16       0.00       0.02     162.46      -0.34      -0.00

   35   7.1  1.0 -1.0    -169.33       0.01      -4.20      -0.00      -0.00     187.15       0.00      -0.00       0.00    -253.30
                           -0.00      -0.00       0.00    -162.11      -0.14      -0.00       0.01     178.19      -0.37      -0.00

   36   8.1  1.0 -1.0       0.00      -0.00       0.00      -1.30     162.11      -0.00      -0.00      -0.91     178.19       0.00
                           -1.21    -162.11       1.18       0.00       0.00      -0.64    -178.18       0.01       0.00      -1.82

   37   9.1  1.0 -1.0      -0.00       0.00       0.00    -162.11      -1.30      -0.00      -0.02    -178.19      -0.91      -0.00
                         -169.32       1.16     164.17      -0.00       0.00     -89.93       1.28      -0.00      -0.00    -253.29


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -169.33       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -1.21    -169.32       0.00

    2   2.1  0.0  0.0      -0.00      -4.15    -357.83      -0.00       0.02      -0.01       0.01      -0.00       0.00       0.00
                            0.00      -0.00      -0.00     178.92       0.33       0.01      -0.00    -162.11       1.16       0.00

    3   3.1  0.0  0.0      -0.00      -0.01       0.01       0.01      -0.00    -357.76      -4.20       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.34    -171.92       0.00       0.00       1.18     164.17       0.00

    4   4.1  0.0  0.0      -0.00      -0.00      -0.01       0.20    -178.93       0.00      -0.00      -1.30    -162.11       0.00
                            0.00      -0.26       0.16       0.01      -0.00    -178.92    -162.11       0.00      -0.00      -0.00

    5   5.1  0.0  0.0      -0.00       0.00      -0.00     178.93       0.20       0.01      -0.00     162.11      -1.30       0.00
                           -0.00     307.81    -182.51      -0.00       0.01      -0.16      -0.14       0.00       0.00      -0.00

    6   6.1  0.0  0.0      -0.00      -0.00       0.02       0.00       0.00      -8.04     187.15      -0.00      -0.00       0.00
                           -0.00       0.00      -0.02       0.60    -313.84       0.00      -0.00      -0.64     -89.93       0.00

    7   7.1  0.0  0.0     266.49    -187.58       2.18       0.00      -0.02       0.01       0.00      -0.00      -0.02       0.00
                            0.00       0.00       0.00     162.46       0.32       0.02       0.01    -178.18       1.28       0.04

    8   8.1  0.0  0.0      -0.03       0.02      -0.01       0.66    -162.46       0.00      -0.00      -0.91    -178.19       0.00
                            0.55       0.20       0.33      -0.02      -0.00     162.46     178.19       0.01      -0.00     376.87

    9   9.1  0.0  0.0       0.00      -0.00       0.00     162.46       0.66       0.01       0.00     178.19      -0.91       0.00
                          266.49      95.67     161.36       0.00      -0.01      -0.34      -0.37       0.00      -0.00      -0.78

   10  10.1  0.0  0.0      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -253.30       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -1.82    -253.29       0.00

   11   1.1  1.0  1.0  104905.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.01    -412.28       2.96      -0.00

   12   2.1  1.0  1.0       0.00  107054.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -402.33      -0.78      -0.02      -0.00    -142.64       1.02      -0.00

   13   3.1  1.0  1.0       0.00       0.00  107054.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -226.10      -0.45      -0.02       0.02     253.82      -1.82      -0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00  107054.05       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00     402.33     226.10       0.00      -0.02       0.44      -0.49       0.00       0.01      -0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00  107054.05       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.78       0.45       0.02      -0.00    -230.76     252.15      -0.02       0.00       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00  107054.10       0.00       0.00       0.00      -0.00
                            0.00       0.02       0.02      -0.44     230.76      -0.00      -0.00      -1.80    -252.15      -0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00  108393.70       0.00       0.00     291.53
                            0.01       0.00      -0.02       0.49    -252.15       0.00       0.00       1.65     229.63      -0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  108395.11       0.00      -0.00
                          412.28     142.64    -253.82      -0.00       0.02       1.80      -1.65      -0.00      -0.00      -2.09

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  108395.11       0.00
                           -2.96      -1.02       1.82      -0.01      -0.00     252.15    -229.63       0.00       0.00    -291.51

   20   1.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -0.00     291.53      -0.00       0.00  104905.61
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       2.09     291.51       0.00

   21   2.1  1.0  0.0      -0.00       0.00       0.01       0.00      -0.00      -3.79    -205.86       0.00      -0.00       0.00
                           -0.00       0.00       0.01      -0.55     280.70      -0.00       0.00       0.76     105.00      -0.00

   22   3.1  1.0  0.0      -0.00      -0.01      -0.00       0.00      -0.00    -326.31       2.39      -0.01       0.00       0.00
                           -0.00      -0.01       0.00       0.33    -166.43       0.00       0.00       1.27     177.08      -0.00

   23   4.1  1.0  0.0       0.00      -0.00      -0.00       0.00     163.17      -0.00       0.00       1.63     178.29       0.00
                           -0.00       0.55      -0.33       0.00       0.00     163.16     178.29      -0.01       0.00      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00    -163.17      -0.00       0.01      -0.00    -178.29       1.63       0.00
                            0.00    -280.70     166.43      -0.00       0.00       0.33       0.35      -0.00      -0.01      -0.00

   25   6.1  1.0  0.0       0.00       3.79     326.31       0.00      -0.01       0.00       0.01       0.00       0.01       0.00
                           -0.00       0.00      -0.00    -163.16      -0.33       0.00       0.01     178.29      -1.28      -0.00

   26   7.1  1.0  0.0    -291.53     205.86      -2.39      -0.00       0.00      -0.01      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -178.29      -0.35      -0.01       0.00     162.36      -1.17      -0.00

   27   8.1  1.0  0.0       0.00      -0.00       0.01      -1.63     178.29      -0.00      -0.00      -0.00     162.37       0.00
                           -2.09      -0.76      -1.27       0.01       0.00    -178.29    -162.36       0.00       0.00      -0.00

   28   9.1  1.0  0.0      -0.00       0.00      -0.00    -178.29      -1.63      -0.01      -0.00    -162.37       0.00       0.00
                         -291.51    -105.00    -177.08      -0.00       0.01       1.28       1.17      -0.00       0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -291.53
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.09

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -291.51


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00    -239.46       1.72      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -4.15
                            0.00       0.01      -0.52     253.04      -0.00      -0.00      -1.65    -229.26      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01
                            0.00       0.00     262.82       0.51       0.01      -0.00    -226.23       1.62       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                          441.19     247.94       0.00      -0.01       0.20      -0.19       0.00      -0.00      -0.00       0.26

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.36       0.21       0.02       0.00    -253.04     229.27      -0.00      -0.00       0.00    -307.81

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00    -432.49      -0.86      -0.02       0.00    -137.48       1.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     266.49    -187.58
                            0.01      -0.03       0.45    -229.76       0.00      -0.00       1.81     251.99      -0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03       0.02
                          129.98    -231.28      -0.00       0.03       0.47      -0.52      -0.00      -0.02      -0.55      -0.20

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.26       0.48      -0.01      -0.00     229.76    -252.00       0.00       0.00    -266.49     -95.67

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.01    -358.22       2.57      -0.00       0.00

   11   1.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00    -291.53       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       2.09     291.51       0.00       0.00

   12   2.1  1.0  1.0       0.00      -0.01      -0.00       0.00       3.79     205.86      -0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.55     280.70      -0.00       0.00       0.76     105.00       0.00       0.00

   13   3.1  1.0  1.0       0.01      -0.00      -0.00       0.00     326.31      -2.39       0.01      -0.00       0.00       0.00
                           -0.01      -0.00       0.33    -166.43       0.00       0.00       1.27     177.08       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00    -163.17       0.00      -0.00      -1.63    -178.29       0.00       0.00
                            0.55      -0.33      -0.00       0.00     163.16     178.29      -0.01       0.00       0.00       0.00

   15   5.1  1.0  1.0      -0.00      -0.00     163.17      -0.00      -0.01       0.00     178.29      -1.63       0.00       0.00
                         -280.70     166.43      -0.00      -0.00       0.33       0.35      -0.00      -0.01       0.00       0.00

   16   6.1  1.0  1.0      -3.79    -326.31      -0.00       0.01       0.00      -0.01      -0.00      -0.01       0.00       0.00
                            0.00      -0.00    -163.16      -0.33      -0.00       0.01     178.29      -1.28       0.00       0.00

   17   7.1  1.0  1.0    -205.86       2.39       0.00      -0.00       0.01      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -178.29      -0.35      -0.01      -0.00     162.36      -1.17       0.00       0.00

   18   8.1  1.0  1.0       0.00      -0.01       1.63    -178.29       0.00       0.00      -0.00    -162.37       0.00       0.00
                           -0.76      -1.27       0.01       0.00    -178.29    -162.36      -0.00       0.00       0.00       0.00

   19   9.1  1.0  1.0      -0.00       0.00     178.29       1.63       0.01       0.00     162.37       0.00       0.00       0.00
                         -105.00    -177.08      -0.00       0.01       1.28       1.17      -0.00      -0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   21   2.1  1.0  0.0  107054.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   22   3.1  1.0  0.0       0.00  107054.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01

   23   4.1  1.0  0.0       0.00       0.00  107054.05       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.55

   24   5.1  1.0  0.0       0.00       0.00       0.00  107054.05       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    -280.70

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00  107054.10       0.00       0.00       0.00      -0.00      -3.79
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00  108393.70       0.00       0.00     291.53    -205.86
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00  108395.11       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -2.09      -0.76

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  108395.11       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -291.51    -105.00

   29   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00     291.53      -0.00       0.00  104905.61       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       2.09     291.51       0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.01       0.00      -0.00      -3.79    -205.86       0.00      -0.00       0.00  107054.00
                            0.00       0.01      -0.55     280.70      -0.00       0.00       0.76     105.00      -0.00      -0.00

   31   3.1  1.0 -1.0      -0.01      -0.00       0.00      -0.00    -326.31       2.39      -0.01       0.00       0.00       0.00
                           -0.01       0.00       0.33    -166.43       0.00       0.00       1.27     177.08       0.00      -0.00

   32   4.1  1.0 -1.0      -0.00      -0.00       0.00     163.17      -0.00       0.00       1.63     178.29       0.00       0.00
                            0.55      -0.33       0.00       0.00     163.16     178.29      -0.01       0.00       0.00    -402.33

   33   5.1  1.0 -1.0       0.00       0.00    -163.17      -0.00       0.01      -0.00    -178.29       1.63       0.00       0.00
                         -280.70     166.43      -0.00       0.00       0.33       0.35      -0.00      -0.01       0.00      -0.78

   34   6.1  1.0 -1.0       3.79     326.31       0.00      -0.01       0.00       0.01       0.00       0.01       0.00       0.00
                            0.00      -0.00    -163.16      -0.33       0.00       0.01     178.29      -1.28      -0.00      -0.02

   35   7.1  1.0 -1.0     205.86      -2.39      -0.00       0.00      -0.01      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -178.29      -0.35      -0.01       0.00     162.36      -1.17      -0.01      -0.00

   36   8.1  1.0 -1.0      -0.00       0.01      -1.63     178.29      -0.00      -0.00      -0.00     162.37       0.00       0.00
                           -0.76      -1.27       0.01       0.00    -178.29    -162.36       0.00       0.00    -412.28    -142.64

   37   9.1  1.0 -1.0       0.00      -0.00    -178.29      -1.63      -0.01      -0.00    -162.37       0.00       0.00       0.00
                         -105.00    -177.08      -0.00       0.01       1.28       1.17      -0.00       0.00       2.96       1.02


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00    -169.33       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       1.21     169.32

    2   2.1  0.0  0.0    -357.83      -0.00       0.02      -0.01       0.01      -0.00       0.00
                            0.00    -178.92      -0.33      -0.01       0.00     162.11      -1.16

    3   3.1  0.0  0.0       0.01       0.01      -0.00    -357.76      -4.20       0.00       0.00
                            0.01      -0.34     171.92      -0.00      -0.00      -1.18    -164.17

    4   4.1  0.0  0.0      -0.01       0.20    -178.93       0.00      -0.00      -1.30    -162.11
                           -0.16      -0.01       0.00     178.92     162.11      -0.00       0.00

    5   5.1  0.0  0.0      -0.00     178.93       0.20       0.01      -0.00     162.11      -1.30
                          182.51       0.00      -0.01       0.16       0.14      -0.00      -0.00

    6   6.1  0.0  0.0       0.02       0.00       0.00      -8.04     187.15      -0.00      -0.00
                            0.02      -0.60     313.84      -0.00       0.00       0.64      89.93

    7   7.1  0.0  0.0       2.18       0.00      -0.02       0.01       0.00      -0.00      -0.02
                           -0.00    -162.46      -0.32      -0.02      -0.01     178.18      -1.28

    8   8.1  0.0  0.0      -0.01       0.66    -162.46       0.00      -0.00      -0.91    -178.19
                           -0.33       0.02       0.00    -162.46    -178.19      -0.01       0.00

    9   9.1  0.0  0.0       0.00     162.46       0.66       0.01       0.00     178.19      -0.91
                         -161.36      -0.00       0.01       0.34       0.37      -0.00       0.00

   10  10.1  0.0  0.0       0.00      -0.00       0.00      -0.00    -253.30       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       1.82     253.29

   11   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   1.1  1.0  0.0      -0.00       0.00       0.00       0.00    -291.53       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       2.09     291.51

   21   2.1  1.0  0.0      -0.01      -0.00       0.00       3.79     205.86      -0.00       0.00
                            0.01      -0.55     280.70      -0.00       0.00       0.76     105.00

   22   3.1  1.0  0.0      -0.00      -0.00       0.00     326.31      -2.39       0.01      -0.00
                           -0.00       0.33    -166.43       0.00       0.00       1.27     177.08

   23   4.1  1.0  0.0       0.00       0.00    -163.17       0.00      -0.00      -1.63    -178.29
                           -0.33      -0.00       0.00     163.16     178.29      -0.01       0.00

   24   5.1  1.0  0.0      -0.00     163.17      -0.00      -0.01       0.00     178.29      -1.63
                          166.43      -0.00      -0.00       0.33       0.35      -0.00      -0.01

   25   6.1  1.0  0.0    -326.31      -0.00       0.01       0.00      -0.01      -0.00      -0.01
                           -0.00    -163.16      -0.33      -0.00       0.01     178.29      -1.28

   26   7.1  1.0  0.0       2.39       0.00      -0.00       0.01      -0.00      -0.00      -0.00
                           -0.00    -178.29      -0.35      -0.01      -0.00     162.36      -1.17

   27   8.1  1.0  0.0      -0.01       1.63    -178.29       0.00       0.00      -0.00    -162.37
                           -1.27       0.01       0.00    -178.29    -162.36      -0.00       0.00

   28   9.1  1.0  0.0       0.00     178.29       1.63       0.01       0.00     162.37       0.00
                         -177.08      -0.00       0.01       1.28       1.17      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.01     412.28      -2.96

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     402.33       0.78       0.02       0.00     142.64      -1.02

   31   3.1  1.0 -1.0  107054.06       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     226.10       0.45       0.02      -0.02    -253.82       1.82

   32   4.1  1.0 -1.0       0.00  107054.05       0.00       0.00       0.00       0.00       0.00
                         -226.10      -0.00       0.02      -0.44       0.49      -0.00      -0.01

   33   5.1  1.0 -1.0       0.00       0.00  107054.05       0.00       0.00       0.00       0.00
                           -0.45      -0.02       0.00     230.76    -252.15       0.02      -0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00  107054.10       0.00       0.00       0.00
                           -0.02       0.44    -230.76       0.00       0.00       1.80     252.15

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00  108393.70       0.00       0.00
                            0.02      -0.49     252.15      -0.00      -0.00      -1.65    -229.63

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00  108395.11       0.00
                          253.82       0.00      -0.02      -1.80       1.65       0.00       0.00

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00  108395.11
                           -1.82       0.01       0.00    -252.15     229.63      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by   -529.23960601 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000  107623.805       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000  107623.765       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000  107623.762       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000  107623.784       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000  107623.746       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000  108290.667       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000  108290.627
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.001      -0.000      -0.000      -0.000      -0.000     376.871      -0.036
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -5.870      -0.016      -0.000       0.000      -0.000    -265.279       0.025
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -506.045       0.010      -0.012      -0.000       0.028       3.077      -0.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      -0.000       0.019       0.284     253.038       0.004       0.000       0.927
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.024      -0.000    -253.039       0.284       0.000      -0.022    -229.752
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.011    -505.951       0.000       0.010     -11.365       0.009       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+           -239.466       0.015      -5.945      -0.000      -0.000     264.666       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.004      -0.000       0.000      -1.836     229.259      -0.001      -0.000      -1.284
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000    -229.260      -1.836      -0.000      -0.024    -251.993
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.001       0.000      -0.000      -0.036    -376.872

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    -441.187      -0.359      -0.000      -0.012    -129.975

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.012      -0.000    -247.940      -0.211      -0.000       0.033     231.279

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.518    -262.820      -0.000      -0.016     432.486      -0.449       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -253.042      -0.513       0.012      -0.000       0.859     229.756      -0.032

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.010      -0.201     253.042       0.020      -0.000      -0.470

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004       0.000       0.004       0.191    -229.268      -0.001       0.000       0.524

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              239.457       1.653     226.232      -0.000       0.002     137.482      -1.808       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.718     229.263      -1.624       0.000       0.000      -0.999    -251.990       0.024

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.002       0.000      -0.000      -0.784

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.371    -435.308      -0.006      -0.000      -0.289

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.011      -0.220     258.104       0.024      -0.000      -0.471

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -253.037      -0.475      -0.009       0.000      -0.853    -229.753       0.030

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.470     243.131       0.000      -0.019     443.844      -0.449       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.009      -0.000     253.037       0.229      -0.000      -0.030    -229.753

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.004      -0.000     229.264       0.191       0.000      -0.020    -251.992

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.718     229.258      -1.666      -0.004      -0.000       0.900     251.987      -0.020

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              239.452      -1.638    -232.174       0.000      -0.002     127.183      -1.808       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000      -0.001      -5.870    -506.045      -0.000       0.024      -0.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000      -0.016       0.010       0.019      -0.000    -505.951
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.000      -0.000      -0.012       0.284    -253.039       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000     253.038       0.284       0.010
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000      -0.000       0.028       0.004       0.000     -11.365
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000     376.871    -265.279       3.077       0.000      -0.022       0.009
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000      -0.036       0.025      -0.011       0.927    -229.752       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>          108290.653       0.000       0.000      -0.000       0.000     229.753       0.927       0.009
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000  111943.756      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000      -0.000  104905.611       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000  107053.997       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000  107054.060       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+            229.753      -0.000       0.000       0.000       0.000  107054.047       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.927       0.000       0.000       0.000       0.000       0.000  107054.046       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.009      -0.000       0.000       0.000       0.000       0.000       0.000  107054.098
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.004    -358.222       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            251.993       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -1.284      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.784      -0.000       0.000       0.000       0.000       0.000      -0.001       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.263       0.000      -0.000       0.000       0.019      -0.783     396.964      -0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.477      -0.000      -0.000      -0.019       0.000       0.464    -235.370       0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.009      -0.001      -0.000       0.783      -0.464       0.000       0.000     230.748

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.001    -396.964     235.370      -0.000       0.000       0.468

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                             -229.756       0.000      -0.000       0.000      -0.000    -230.748      -0.468       0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                              251.996       0.006      -0.000      -0.000      -0.000    -252.144      -0.493      -0.014

    8    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.004     358.218      -2.958      -1.073      -1.792       0.014       0.000    -252.138

    9    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -2.570    -412.263    -148.488    -250.432      -0.000       0.012       1.809

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -376.867      -0.000      -0.000      -0.000       0.000       0.001       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -135.304       0.000       0.000       0.000      -0.000    -402.331      -0.779      -0.015

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -228.197       0.000      -0.000       0.000      -0.000    -226.105      -0.446      -0.019

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.001     402.331     226.105       0.000      -0.019       0.442

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.011      -0.001      -0.000       0.779       0.446       0.019      -0.000    -230.756

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.478       0.000       0.000       0.015       0.019      -0.442     230.756      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.524       0.000       0.007       0.002      -0.016       0.493    -252.153       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.570     412.279     142.644    -253.819      -0.000       0.016       1.800

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     358.211      -2.958      -1.015       1.816      -0.009      -0.000     252.147

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>            -239.466       0.004      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.001       0.000

    2    1  |0 0>               0.015      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.012      -0.518     253.042

    3    1  |0 0>              -5.945       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     262.820       0.513

    4    1  |0 0>              -0.000      -1.836    -229.260       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001     441.187     247.940       0.000      -0.012

    5    1  |0 0>              -0.000     229.259      -1.836       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.359       0.211       0.016       0.000

    6    1  |0 0>             264.666      -0.001      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000    -432.486      -0.859

    7    1  |0 0>               0.000      -0.000      -0.024       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.036       0.012      -0.033       0.449    -229.756

    8    1  |0 0>              -0.000      -1.284    -251.993       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     376.872     129.975    -231.279      -0.000       0.032

    9    1  |0 0>               0.004     251.993      -1.284       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.784      -0.263       0.477      -0.009      -0.000

   10    1  |0 0>            -358.222       0.006      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.001       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.001

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.019      -0.783     396.964

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.019       0.000       0.464    -235.370

    4    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.783      -0.464       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.001    -396.964     235.370      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000    -230.748      -0.468

    7    1  |1 1>+         108393.704       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000    -252.144      -0.493

    8    1  |1 1>+              0.000  108395.111       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -2.958      -1.073      -1.792       0.014       0.000

    9    1  |1 1>+              0.000       0.000  108395.112      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000    -412.263    -148.488    -250.432      -0.000       0.012

    1    1  |1 0>              -0.000      -0.000      -0.000  104905.611       0.000       0.000       0.000       0.000
                                0.000       2.958     412.263       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000  107053.997       0.000       0.000       0.000
                                0.000       1.073     148.488      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000  107054.060       0.000       0.000
                                0.000       1.792     250.432      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000  107054.047       0.000
                              252.144      -0.014       0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000  107054.046
                                0.493      -0.000      -0.012      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.014     252.138      -1.809      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     229.618      -1.648      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -229.618       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.648      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.007    -412.279       2.958      -0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.015      -0.000       0.000
                               -0.002    -142.644       1.015      -0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.015       0.000      -0.007       0.000
                                0.016     253.819      -1.816       0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.007       0.000    -230.751
                               -0.493       0.000       0.009       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000      -0.000     230.751       0.000
                              252.153      -0.016       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000      -0.000      -5.354    -461.474      -0.000       0.013
                               -0.000      -1.800    -252.147      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000     412.279    -291.136       3.377       0.000      -0.004
                                0.000       1.648     229.626       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000      -0.007       0.005      -0.012       2.302    -252.139
                               -1.648      -0.000      -0.004      -0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000     252.139       2.302
                             -229.626       0.004       0.000      -0.000       0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.004    -239.457       1.718       0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -1.653    -229.263       0.000      -0.000      -0.000     253.037

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.010      -0.004    -226.232       1.624      -0.000       0.000      -0.011       0.475

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.201      -0.191       0.000      -0.000       0.000      -0.371       0.220       0.009

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -253.042     229.268      -0.002      -0.000      -0.002     435.308    -258.104      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.020       0.001    -137.482       0.999      -0.000       0.006      -0.024       0.853

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       1.808     251.990       0.000       0.000       0.000     229.753

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.470      -0.524      -0.000      -0.024       0.784       0.289       0.471      -0.030

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              229.756    -251.996       0.004       0.000     376.867     135.304     228.197       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.006    -358.218       2.570       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       2.958     412.263      -0.000      -0.000       0.000       0.001

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       1.073     148.488       0.000       0.000      -0.000    -402.331

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       1.792     250.432      -0.000       0.000      -0.000    -226.105

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              230.748     252.144      -0.014       0.000      -0.001     402.331     226.105       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.468       0.493      -0.000      -0.012      -0.000       0.779       0.446       0.019

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.014     252.138      -1.809       0.000       0.015       0.019      -0.442

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.014       0.000     229.618      -1.648       0.007       0.002      -0.016       0.493

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -252.138    -229.618       0.000       0.000     412.279     142.644    -253.819      -0.000

    9    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                1.809       1.648      -0.000       0.000      -2.958      -1.015       1.816      -0.009

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.015       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.015       0.000       0.007
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.007       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    -230.751
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>          107054.098       0.000       0.000       0.000       0.000       5.354     461.474       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000  108393.704       0.000       0.000    -412.279     291.136      -3.377      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000  108395.111       0.000       0.007      -0.005       0.012      -2.302
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000  108395.112      -0.000       0.000      -0.000    -252.139
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000    -412.279       0.007      -0.000  104905.611       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              5.354     291.136      -0.005       0.000       0.000  107053.997       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-            461.474      -3.377       0.012      -0.000       0.000       0.000  107054.060       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000      -0.000      -2.302    -252.139       0.000       0.000       0.000  107054.047
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.013       0.004     252.139      -2.302       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.009      -0.000      -0.009       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.009       0.000      -0.000      -0.004       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000    -229.631       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.009       0.004     229.631       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -1.718    -239.452

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.470       0.009      -0.004    -229.258       1.638

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -243.131       0.000       0.000       1.666     232.174

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000    -253.037    -229.264       0.004      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.019      -0.229      -0.191       0.000       0.002

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -443.844       0.000      -0.000      -0.900    -127.183

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.449       0.030       0.020    -251.987       1.808

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000     229.753     251.992       0.020      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.011      -0.478      -0.524       0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000      -2.570    -358.211

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.007    -412.279       2.958

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.779      -0.015      -0.002    -142.644       1.015

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.446      -0.019       0.016     253.819      -1.816

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.019       0.442      -0.493       0.000       0.009

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000    -230.756     252.153      -0.016       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              230.756      -0.000      -0.000      -1.800    -252.147

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -252.153       0.000       0.000       1.648     229.626

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.016       1.800      -1.648      -0.000      -0.004

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000     252.147    -229.626       0.004       0.000

    1    1  |1 0>              -0.000      -0.000     412.279      -0.007       0.000
                                0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>              -0.000      -5.354    -291.136       0.005      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 0>              -0.000    -461.474       3.377      -0.012       0.000
                                0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>             230.751      -0.000       0.000       2.302     252.139
                                0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.013      -0.004    -252.139       2.302
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>              -0.013       0.000       0.009       0.000       0.009
                                0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.004      -0.009       0.000       0.000       0.004
                                0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 0>             252.139      -0.000      -0.000       0.000     229.631
                                0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 0>              -2.302      -0.009      -0.004    -229.631       0.000
                                0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-         107054.046       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000  107054.098       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000  108393.704       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000  108395.111       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000  108395.112
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -529.23961321    -0.00000720       -1.58      0.00000000        0.00      0.0000
    2  -528.76216138     0.47744463   104786.98      0.47745183   104788.56     12.9921
    3  -528.76216137     0.47744464   104786.99      0.47745184   104788.57     12.9921
    4  -528.76216131     0.47744470   104787.00      0.47745190   104788.58     12.9921
    5  -528.75393480     0.48567121   106592.51      0.48567841   106594.09     13.2160
    6  -528.75393477     0.48567124   106592.52      0.48567844   106594.10     13.2160
    7  -528.75393471     0.48567130   106592.53      0.48567850   106594.11     13.2160
    8  -528.75393463     0.48567138   106592.55      0.48567858   106594.13     13.2160
    9  -528.75393457     0.48567144   106592.56      0.48567864   106594.14     13.2160
   10  -528.75393451     0.48567150   106592.57      0.48567870   106594.15     13.2160
   11  -528.75393450     0.48567151   106592.58      0.48567871   106594.16     13.2160
   12  -528.75302478     0.48658123   106792.24      0.48658843   106793.82     13.2407
   13  -528.75302476     0.48658125   106792.24      0.48658845   106793.82     13.2407
   14  -528.75302470     0.48658131   106792.25      0.48658851   106793.83     13.2407
   15  -528.75302457     0.48658144   106792.28      0.48658864   106793.86     13.2408
   16  -528.75302455     0.48658146   106792.29      0.48658866   106793.87     13.2408
   17  -528.75047361     0.48913240   107352.15      0.48913960   107353.73     13.3102
   18  -528.75047356     0.48913245   107352.16      0.48913965   107353.74     13.3102
   19  -528.75047329     0.48913272   107352.22      0.48913992   107353.80     13.3102
   20  -528.74925415     0.49035186   107619.79      0.49035906   107621.37     13.3433
   21  -528.74925364     0.49035237   107619.91      0.49035957   107621.49     13.3434
   22  -528.74925360     0.49035241   107619.91      0.49035961   107621.49     13.3434
   23  -528.74925218     0.49035383   107620.23      0.49036103   107621.81     13.3434
   24  -528.74925212     0.49035390   107620.24      0.49036110   107621.82     13.3434
   25  -528.74544619     0.49415982   108455.55      0.49416702   108457.13     13.4470
   26  -528.74544615     0.49415986   108455.55      0.49416707   108457.13     13.4470
   27  -528.74544568     0.49416033   108455.66      0.49416753   108457.24     13.4470
   28  -528.74450983     0.49509618   108661.05      0.49510338   108662.63     13.4724
   29  -528.74450925     0.49509676   108661.18      0.49510396   108662.76     13.4725
   30  -528.74450921     0.49509680   108661.19      0.49510400   108662.77     13.4725
   31  -528.74450748     0.49509853   108661.57      0.49510573   108663.15     13.4725
   32  -528.74450745     0.49509856   108661.57      0.49510576   108663.15     13.4725
   33  -528.74417066     0.49543535   108735.49      0.49544255   108737.07     13.4817
   34  -528.74309345     0.49651256   108971.91      0.49651976   108973.49     13.5110
   35  -528.74309343     0.49651258   108971.92      0.49651978   108973.50     13.5110
   36  -528.74309111     0.49651490   108972.43      0.49652210   108974.01     13.5111
   37  -528.72900601     0.51060000   112063.75      0.51060720   112065.33     13.8943

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999274 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000027  0.00000008  0.00000000 -0.00000000  0.00001285
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000209  0.00000000  0.00000000 -0.00000004 -0.00005407 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000180  0.00000000  0.00000000 -0.00000000  0.00004752 -0.00000005  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000005  0.00000677 -0.09132197  0.00000678 -0.00000000  0.00000000 -0.00000004
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00020883  0.09131999  0.00000677 -0.00000000  0.00000000 -0.00000144  0.00000000
                           0.00000000  0.00000000  0.00000013  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.09131710 -0.00020883  0.00000003 -0.00000000  0.00000112  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00002112  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000033  0.00001997  0.98571383  0.00000013  0.00000000  0.00000000 -0.00000062
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000003  0.00165707  0.75792759  0.00000342  0.00000872  0.15979376
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000007 -0.00002016  0.11519729  0.00000159  0.00002599 -0.56575474
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00143833  0.00000252  0.00000000 -0.00000353  0.72071057 -0.00143356  0.00000164
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000251 -0.00143846  0.00000003 -0.00001146  0.00141121  0.73011090  0.00001541
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000

   6    1  |1 1>+          0.00000000  0.00000005  0.00000000 -0.00000005 -0.00001007  0.00001707 -0.00000052 -0.00001884
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00219992  0.00000167 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000004  0.10005058 -0.00073845  0.00000005 -0.00000000  0.00001133  0.00000006  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00073848 -0.10004570  0.00000203  0.00000000 -0.00000008  0.00000890  0.00000000
                          -0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000143 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00020284  0.98571059 -0.00001997  0.00000000  0.00000000 -0.00000002 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000
                          -0.00000000 -0.00000021 -0.00081634  0.00000002  0.00000532 -0.00000002 -0.63007414  0.00000912

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                          -0.00000000  0.00000032  0.00144385 -0.00000010  0.00001935  0.00002139  0.20389034 -0.00000278

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000005  0.00000000  0.00000281 -0.00062313  0.00000749  0.00000046 -0.00128655

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000010 -0.00143563  0.31277792  0.00000036  0.00000352  0.65992500

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00143500  0.00000035 -0.00000000 -0.00000048  0.06620545  0.00000154  0.00000234

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000004  0.10009297 -0.00002060  0.00000005  0.00000000 -0.00001332  0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00219982 -0.00000166  0.00000001  0.00071789  0.00000001  0.00000000  0.00000000  0.00000003

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001578 -0.00000003  0.00000203  0.10004909  0.00000147  0.00000000 -0.00000000  0.00000377

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.98571038 -0.00020284  0.00000033 -0.00000000  0.00000058  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00084936  0.00000013 -0.00000000 -0.00000309  0.62762542 -0.00001098  0.00000143

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00142592  0.00000032 -0.00000000 -0.00000128  0.28684047  0.00002223 -0.00000157

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000008  0.00143528 -0.56075285 -0.00000355  0.00000919  0.46785044

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000007  0.00000000  0.00000280 -0.00108396 -0.00002336 -0.00000046  0.00091120

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000000 -0.00000029 -0.00143483  0.00000008 -0.00001319  0.00000665 -0.16843789 -0.00001039

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00002060 -0.10009311  0.00000036  0.00000000 -0.00000000 -0.00000851  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001578  0.00000003 -0.00000036 -0.10005412 -0.00000606 -0.00000000 -0.00000000  0.00000046

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00219977 -0.00000000  0.00000001  0.00071792  0.00000004  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000  0.00000000 -0.00000003
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000317 -0.00000547  0.00000099  0.56014069  0.00016101
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00004698  0.00000000  0.00000000  0.00000435  0.08509180  0.00001276 -0.00015831  0.55366249
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00002511 -0.00000002  0.56011728 -0.00001533 -0.00026119  0.00000317 -0.00000204
                          -0.00000000  0.00000000  0.00000000 -0.00000041  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000003  0.00002568  0.00026119  0.00002152  0.56011068 -0.00000098 -0.00001621
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000162  0.00000000 -0.00000000 -0.00001483 -0.55361750  0.00002374 -0.00002987  0.08508845
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000532 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000547 -0.00000000  0.00003668 -0.00000000  0.00000008  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000001 -0.00000222 -0.00000009  0.00000000  0.00003138 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000492  0.00000000 -0.00000000  0.00000092
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000150  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000363 -0.00000004 -0.00000036 -0.00000004  0.00000310  0.00000001  0.00774349  0.00002325
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00001628 -0.00002612  0.00000179  0.00001180  0.00002798  0.00000118  0.66822493  0.00017320
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000106  0.00003078  0.11766817 -0.00053066 -0.00001123 -0.33424115  0.00000065 -0.00001594
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000053 -0.01451983  0.00025516  0.33424343 -0.00000916 -0.00053064 -0.00002926 -0.00000122
                           0.00000000 -0.00000012  0.00000000 -0.00000025  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.57728105 -0.00000375 -0.00003561  0.00000477  0.08665852  0.00000308 -0.00017563  0.66265784
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000540  0.00000000  0.00000000 -0.00000280 -0.10375977  0.00000435  0.00000083  0.01357077
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000002  0.00001275 -0.00068285  0.00000391  0.09054595 -0.00000016 -0.00000264
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000266 -0.00000009 -0.09053942  0.00000246 -0.00068289 -0.00000051  0.00000035
                           0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000065 -0.00000000  0.00001316 -0.00000000  0.00000001  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000018  0.00000000  0.00000043 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000037  0.02075982 -0.00000031  0.58251803 -0.00001593  0.00020292  0.00000330 -0.00000213

   3    1  |1 0>           0.00000000 -0.00000598 -0.00000001  0.00000024 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000472  0.70316662 -0.00015508  0.32734844 -0.00000895  0.00012630  0.00001743 -0.00000120

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.57737918  0.00000376  0.00001273  0.00001785  0.61716192  0.00000463 -0.00075149  0.25619872

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00113124 -0.00000719 -0.00000192 -0.00001712  0.00122089  0.00000057  0.33411854  0.00059351

   6    1  |1 0>           0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00002989  0.00016316  0.72725724  0.00011012  0.00001518 -0.33415527  0.00000056  0.00001854

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000661  0.00003323 -0.00000284 -0.09063154  0.00000017  0.00000403

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001261  0.00000000  0.00000000 -0.00000075 -0.04010174  0.00000504  0.00062455  0.09654337

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000009 -0.00000000 -0.00000000 -0.00000051  0.00029176  0.00000013  0.09053256 -0.00066757

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000087 -0.00000000  0.00000000  0.00001169  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001739  0.00002300  0.09419319 -0.00022136  0.00001376  0.57476338 -0.00000101 -0.00001535

   3    1  |1 1>-         -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001455 -0.00016278 -0.66961081  0.00013124  0.00001658 -0.34078240  0.00000060 -0.00000984

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00111430 -0.00000138 -0.00000154  0.00001063 -0.00102196  0.00000061  0.33410602  0.00088683

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57738838 -0.00000370 -0.00000882  0.00001302  0.53051753 -0.00000766  0.00074231 -0.40628906

   6    1  |1 1>-          0.00000000 -0.00000605 -0.00000001 -0.00000025  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000443  0.71057361 -0.00016985 -0.33414503  0.00000910 -0.00014724  0.00001065  0.00000126

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000061  0.00000000  0.09063394 -0.00000249  0.00003323  0.00000202 -0.00000034

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000005 -0.00000000  0.00000000 -0.00000203 -0.00045221  0.00000015  0.09054143 -0.00057031

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000727 -0.00000000  0.00000000 -0.00000204 -0.06358151 -0.00000070 -0.00062378 -0.08298822

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000151 -0.00000000  0.00000000 -0.00000003 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000001  0.00000000  0.00001002  0.00003479  0.00001008  0.00000022 -0.00003487  0.65829499
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

   3    1  |0 0>           0.00000000  0.00000001 -0.00000000 -0.01386932  0.00000007 -0.00001019  0.65813881  0.00003560
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00039952  0.00000081 -0.00000001  0.00000079  0.65817203  0.00008708 -0.00000005 -0.00001008
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000025 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000081 -0.00038942 -0.00000000  0.00000872 -0.00008708  0.65817506  0.00001038 -0.00000022
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.65798005 -0.00000079 -0.00000894  0.01387460 -0.00003406
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00002522 -0.00000133  0.49009820 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000217
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.49011625  0.00042339 -0.00002521 -0.00000000  0.00030540  0.00000092 -0.00000000  0.00000000
                          -0.00000021 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00042338  0.49011131  0.00000136  0.00000000 -0.00000093  0.00030307 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00005512  0.00000000 -0.00000000  0.00000113  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000024  0.00000002 -0.00553891  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000276
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00002177 -0.00000142  0.50755040 -0.00000001 -0.00000006 -0.00000000 -0.00000881 -0.00327970
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00002075 -0.00000001 -0.00588071  0.00000058 -0.00001089 -0.00000010  0.00002096 -0.28244322
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00139414 -0.43959857 -0.00000129  0.00000396  0.00013925  0.14080640  0.00001288 -0.00000007
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.43959287 -0.00139416  0.00001912 -0.00000016 -0.14080258  0.00013927  0.00000001  0.00001533
                          -0.00000019 -0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000005 -0.00001651 -0.00001627 -0.00039706 -0.00000002  0.00000984 -0.28248642 -0.00002086
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000002 -0.00000401 -0.00000000 -0.54634120  0.00000072  0.00000738  0.00075754 -0.00000106
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00143102 -0.24017974 -0.00000061 -0.00000412  0.00384892 -0.47280309 -0.00000762  0.00000010
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.24017990  0.00143102  0.00001031  0.00000067  0.47280428  0.00384891  0.00000002 -0.00000724
                          -0.00000010 -0.00000000 -0.00000000  0.00000000  0.00000018 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00556831 -0.00000678  0.00000024 -0.00000000 -0.00006736 -0.00000007  0.00000000 -0.00000000

   2    1  |1 0>           0.00000010  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000  0.00000000 -0.00000000
                           0.24872011 -0.00028875  0.00001066 -0.00000030 -0.24589926 -0.00023284  0.00000002  0.00000377

   3    1  |1 0>          -0.00000019 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000
                          -0.44242636  0.00053024 -0.00003947 -0.00000017 -0.13866064 -0.00013650  0.00000001 -0.00000447

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000010 -0.00001650  0.00085910  0.24424735 -0.00000031 -0.00000986 -0.14157252  0.00026865

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00003948  0.00000120 -0.43960222  0.00047761  0.00000431 -0.00000005 -0.00026885 -0.14123088

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00051872  0.43952912  0.00000128  0.00001312 -0.00013137  0.14150771 -0.00000304 -0.00000004

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00029321 -0.24089059 -0.00000066  0.00000866 -0.00045654  0.47298164 -0.00000025 -0.00000021

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000007  0.00000399  0.00172517 -0.27348125  0.00000025  0.00000738 -0.47235044 -0.00341872

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00001031 -0.00000067  0.24043056  0.00196327 -0.00000724 -0.00000027  0.00341545 -0.47273197

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000678  0.00557203  0.00000002  0.00000000  0.00000006 -0.00006460  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00032915  0.25892591  0.00000074 -0.00000678  0.00023868 -0.24260541 -0.00000391  0.00000008

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00052306  0.43653732  0.00000124  0.00001543 -0.00014197  0.14431807  0.00000889 -0.00000005

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00003536 -0.00000117  0.43961402 -0.00047779 -0.00000748 -0.00000002 -0.00026753 -0.14122804

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000006 -0.00002035  0.00085912  0.24462982 -0.00000028 -0.00001583  0.14089985 -0.00026770

   6    1  |1 1>-          0.00000019  0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000
                           0.43953517 -0.00053502  0.00003536  0.00000016  0.14150109  0.00014702 -0.00000002 -0.00000746

   7    1  |1 1>-          0.00000010  0.00000000  0.00000000  0.00000000  0.00000018 -0.00000000  0.00000000 -0.00000000
                           0.24088954 -0.00029320  0.00000633 -0.00000061 -0.47297918 -0.00045654  0.00000009 -0.00000063

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000631  0.00000068 -0.24042918 -0.00195201  0.00000063 -0.00000015  0.00342086 -0.47272849

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000007 -0.00000000  0.00172515 -0.27217714  0.00000042 -0.00000000  0.47310427  0.00341763

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00002419 -0.00000000  0.00000000  0.00000016  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000001 -0.00000000  0.00000518  0.00002872  0.00000843  0.00000023  0.00008671  0.50288177
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000001  0.00000000 -0.01358230 -0.00000034  0.00000821  0.50268643 -0.00008590
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00063023 -0.00000246  0.00000001 -0.00000048  0.50306787  0.00006893  0.00000033 -0.00000843
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000057 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000247  0.00063564 -0.00000000  0.00000568  0.00006894 -0.50307126  0.00000837  0.00000022
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000001 -0.00000000  0.50293544  0.00000047  0.00000590  0.01357438 -0.00003103
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00004277  0.00000091  0.70615145  0.00000000 -0.00000011  0.00000000 -0.00000001 -0.00000848
                          -0.00000000 -0.00000000  0.00000053  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.70588869 -0.00069493 -0.00004279  0.00000000 -0.00147059  0.00000410  0.00000000  0.00000000
                          -0.00000044 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00069490  0.70587807 -0.00000095  0.00000000  0.00000408  0.00147922 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00119623  0.00000000 -0.00000000 -0.00000775 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000040  0.00000002  0.01174979  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000131
                           0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00001268 -0.00000052 -0.37576941  0.00000004 -0.00000008 -0.00000000 -0.00001266 -0.00434237
                          -0.00000000  0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00001534  0.00000005  0.00435525 -0.00000086 -0.00001500 -0.00000016 -0.00005650 -0.37456466
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00163510  0.32573101 -0.00000040  0.00000480  0.00023547 -0.18712391  0.00001725  0.00000004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.32573018  0.00163509 -0.00001119  0.00000018 -0.18712752 -0.00023546 -0.00000012  0.00002060
                           0.00000020  0.00000000 -0.00000000  0.00000000 -0.00000021  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000006  0.00001224  0.00001205  0.00170127  0.00000026 -0.00001337 -0.37459284  0.00005664
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000002 -0.00000454 -0.00000000  0.60152718  0.00000050  0.00000696  0.00269555 -0.00000180
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00111770 -0.27198055  0.00000042  0.00000345 -0.00407170 -0.51728454  0.00000878  0.00000030
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.27196723  0.00111778  0.00000918  0.00000039 -0.51728519  0.00407169 -0.00000041  0.00000868
                          -0.00000017  0.00000000  0.00000000  0.00000000 -0.00000059  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01167183  0.00003577 -0.00000039 -0.00000000  0.00026691 -0.00000019  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000012 -0.00000000  0.00000000 -0.00000000  0.00000037 -0.00000000 -0.00000000 -0.00000000
                          -0.18452826  0.00055531 -0.00000622  0.00000030 -0.32652009  0.00022125 -0.00000022  0.00000547

   3    1  |1 0>           0.00000020  0.00000000 -0.00000000 -0.00000000  0.00000021 -0.00000000 -0.00000000 -0.00000000
                           0.32745006 -0.00099766  0.00002623  0.00000017 -0.18380245  0.00013144 -0.00000012 -0.00000566

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000009  0.00001220 -0.00063602  0.32537738  0.00000043  0.00001233 -0.18581918  0.00039683

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000025 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00002625  0.00000050  0.32545289  0.00063546  0.00000544 -0.00000008 -0.00039492 -0.18729589

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00098514 -0.32529035  0.00000040  0.00001708 -0.00012360 -0.18758312 -0.00000378  0.00000010

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00083630 -0.27281932  0.00000038 -0.00000858  0.00036074  0.51837818 -0.00000019 -0.00000018

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000005  0.00000453  0.00195284  0.29292472 -0.00000001  0.00000794  0.51935636  0.00362790

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000918  0.00000038  0.27216046 -0.00210068  0.00000867  0.00000011 -0.00363865  0.51798050

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00003577 -0.01166450  0.00000002 -0.00000000 -0.00000018 -0.00026559  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00059918 -0.19207866  0.00000025 -0.00000837  0.00023017  0.32216589 -0.00000549 -0.00000015

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00098427 -0.32307856  0.00000042  0.00002006 -0.00013668 -0.19133037  0.00001206  0.00000009

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000025 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00002319 -0.00000052 -0.32545870 -0.00063297 -0.00001019 -0.00000012 -0.00040067 -0.18729144

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000007  0.00001505 -0.00063603  0.32367702  0.00000018  0.00002054  0.18876419 -0.00039877

   6    1  |1 1>-         -0.00000020 -0.00000000  0.00000000  0.00000000 -0.00000021  0.00000000  0.00000000  0.00000000
                          -0.32529544  0.00099722 -0.00002320 -0.00000020  0.18758203 -0.00014440  0.00000011 -0.00001017

   7    1  |1 1>-          0.00000017  0.00000000 -0.00000000  0.00000000 -0.00000059  0.00000000  0.00000000  0.00000000
                           0.27279930 -0.00083629  0.00000467 -0.00000045  0.51837942 -0.00036074  0.00000029 -0.00000006

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000021  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000466 -0.00000037 -0.27215391  0.00213670  0.00000007  0.00000023 -0.00361888  0.51798077

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.00000000  0.00195279  0.29762436  0.00000056 -0.00000096 -0.51660105 -0.00362967

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>           0.00374491  0.00000000 -0.00000000  0.00000000  0.00070274
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000016 -0.00000001 -0.00000000  0.00000024  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00009711  0.00000000 -0.00000001  0.00000000  0.00000011
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00053465 -0.00000164 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000005 -0.00000164  0.00053482  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00300739  0.00000000 -0.00000001 -0.00000000  0.00000299
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00003832 -0.00000004  0.50280631 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.50315496 -0.00007709 -0.00003829  0.00000000
                          -0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00007712  0.50317516  0.00000004  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.18987108 -0.00000000 -0.00000000 -0.00000000  0.98180830
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000305 -0.00000001  0.16792710 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000060 -0.00000000  0.03330659 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000001 -0.00000133 -0.00000000 -0.00039025  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000003  0.00011959 -0.02854503 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.02855432 -0.00011957  0.00000054  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00002585  0.00000000 -0.00000106 -0.00000107  0.00000008
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.56276287  0.00000005  0.00000994 -0.00000000 -0.10959637
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000947  0.00296034  0.59913359 -0.00000002  0.00000182
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.59913987 -0.00296031 -0.00001089 -0.00000000
                          -0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.16794977  0.00037524 -0.00000305 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.01590455 -0.00003461  0.00000030  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.02915906  0.00006459 -0.00000187  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00198292  0.00000001 -0.00000109  0.00005637  0.00000230

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000388 -0.00000188 -0.00000000 -0.02884628  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000011 -0.00006367  0.02896742  0.00000001  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000936 -0.00133475  0.59739283 -0.00000001  0.00000182

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.56881692 -0.00000006 -0.00000997 -0.00429373  0.10963517

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00408145 -0.00001090  0.00000004 -0.59840251 -0.00078667

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00037525 -0.16795142 -0.00000002 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000006 -0.00003795  0.01657108  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000013 -0.00006376  0.02878017  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000382  0.00000161  0.00000000  0.02884584 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00195704  0.00000000 -0.00000136  0.00005637  0.00000220

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.02897622 -0.00006472  0.00000161 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000008  0.00000000 -0.00000000 -0.00000000
                           0.00000007  0.59740287  0.00133475 -0.00000093  0.00000001

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00408192  0.00000093 -0.00000006  0.59840637  0.00078666

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.56888495 -0.00000008 -0.00000000 -0.00429376  0.10963346


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -529.23961321     -0.00000720       -1.58      0.00000000        0.00      0.0000
     2   1   -528.76216138      0.47744463   104786.98      0.47745183   104788.56     12.9921
     3   1   -528.76216137      0.47744464   104786.99      0.47745184   104788.57     12.9921
     4   1   -528.76216131      0.47744470   104787.00      0.47745190   104788.58     12.9921
     5   1   -528.75393480      0.48567121   106592.51      0.48567841   106594.09     13.2160
     6   1   -528.75393477      0.48567124   106592.52      0.48567844   106594.10     13.2160
     7   1   -528.75393471      0.48567130   106592.53      0.48567850   106594.11     13.2160
     8   1   -528.75393463      0.48567138   106592.55      0.48567858   106594.13     13.2160
     9   1   -528.75393457      0.48567144   106592.56      0.48567864   106594.14     13.2160
    10   1   -528.75393451      0.48567150   106592.57      0.48567870   106594.15     13.2160
    11   1   -528.75393450      0.48567151   106592.58      0.48567871   106594.16     13.2160
    12   1   -528.75302478      0.48658123   106792.24      0.48658843   106793.82     13.2407
    13   1   -528.75302476      0.48658125   106792.24      0.48658845   106793.82     13.2407
    14   1   -528.75302470      0.48658131   106792.25      0.48658851   106793.83     13.2407
    15   1   -528.75302457      0.48658144   106792.28      0.48658864   106793.86     13.2408
    16   1   -528.75302455      0.48658146   106792.29      0.48658866   106793.87     13.2408
    17   1   -528.75047361      0.48913240   107352.15      0.48913960   107353.73     13.3102
    18   1   -528.75047356      0.48913245   107352.16      0.48913965   107353.74     13.3102
    19   1   -528.75047329      0.48913272   107352.22      0.48913992   107353.80     13.3102
    20   1   -528.74925415      0.49035186   107619.79      0.49035906   107621.37     13.3433
    21   1   -528.74925364      0.49035237   107619.91      0.49035957   107621.49     13.3434
    22   1   -528.74925360      0.49035241   107619.91      0.49035961   107621.49     13.3434
    23   1   -528.74925218      0.49035383   107620.23      0.49036103   107621.81     13.3434
    24   1   -528.74925212      0.49035390   107620.24      0.49036110   107621.82     13.3434
    25   1   -528.74544619      0.49415982   108455.55      0.49416702   108457.13     13.4470
    26   1   -528.74544615      0.49415986   108455.55      0.49416707   108457.13     13.4470
    27   1   -528.74544568      0.49416033   108455.66      0.49416753   108457.24     13.4470
    28   1   -528.74450983      0.49509618   108661.05      0.49510338   108662.63     13.4724
    29   1   -528.74450925      0.49509676   108661.18      0.49510396   108662.76     13.4725
    30   1   -528.74450921      0.49509680   108661.19      0.49510400   108662.77     13.4725
    31   1   -528.74450748      0.49509853   108661.57      0.49510573   108663.15     13.4725
    32   1   -528.74450745      0.49509856   108661.57      0.49510576   108663.15     13.4725
    33   1   -528.74417066      0.49543535   108735.49      0.49544255   108737.07     13.4817
    34   1   -528.74309345      0.49651256   108971.91      0.49651976   108973.49     13.5110
    35   1   -528.74309343      0.49651258   108971.92      0.49651978   108973.50     13.5110
    36   1   -528.74309111      0.49651490   108972.43      0.49652210   108974.01     13.5111
    37   1   -528.72900601      0.51060000   112063.75      0.51060720   112065.33     13.8943

 E0 =   -529.23960601 is the energy of the lowest zeroth-order state
 E1 =   -529.23961321 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999274 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000027  0.00000008  0.00000000 -0.00000000  0.00001285
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000209  0.00000000  0.00000000 -0.00000004 -0.00005407 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000180  0.00000000  0.00000000 -0.00000000  0.00004752 -0.00000005  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000005  0.00000677 -0.09132197  0.00000678 -0.00000000  0.00000000 -0.00000004
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00020883  0.09131999  0.00000677 -0.00000000  0.00000000 -0.00000144  0.00000000
                                0.00000000  0.00000000  0.00000013  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.09131710 -0.00020883  0.00000003 -0.00000000  0.00000112  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00002112  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000 -0.00000033  0.00001997  0.98571383  0.00000013  0.00000000  0.00000000 -0.00000062
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000003  0.00165707  0.75792759  0.00000342  0.00000872  0.15979376
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000007 -0.00002016  0.11519729  0.00000159  0.00002599 -0.56575474
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00000000  0.00143833  0.00000252  0.00000000 -0.00000353  0.72071057 -0.00143356  0.00000164
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00000000  0.00000251 -0.00143846  0.00000003 -0.00001146  0.00141121  0.73011090  0.00001541
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000

 16  1     6    1  |1 1>+       0.00000000  0.00000005  0.00000000 -0.00000005 -0.00001007  0.00001707 -0.00000052 -0.00001884
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+       0.00219992  0.00000167 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00000004  0.10005058 -0.00073845  0.00000005 -0.00000000  0.00001133  0.00000006  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.00000000 -0.00073848 -0.10004570  0.00000203  0.00000000 -0.00000008  0.00000890  0.00000000
                               -0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000143 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00020284  0.98571059 -0.00001997  0.00000000  0.00000000 -0.00000002 -0.00000000

 21  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000
                               -0.00000000 -0.00000021 -0.00081634  0.00000002  0.00000532 -0.00000002 -0.63007414  0.00000912

 22  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                               -0.00000000  0.00000032  0.00144385 -0.00000010  0.00001935  0.00002139  0.20389034 -0.00000278

 23  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000005  0.00000000  0.00000281 -0.00062313  0.00000749  0.00000046 -0.00128655

 24  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000010 -0.00143563  0.31277792  0.00000036  0.00000352  0.65992500

 25  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00143500  0.00000035 -0.00000000 -0.00000048  0.06620545  0.00000154  0.00000234

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000004  0.10009297 -0.00002060  0.00000005  0.00000000 -0.00001332  0.00000000  0.00000000

 27  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00219982 -0.00000166  0.00000001  0.00071789  0.00000001  0.00000000  0.00000000  0.00000003

 28  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001578 -0.00000003  0.00000203  0.10004909  0.00000147  0.00000000 -0.00000000  0.00000377

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.98571038 -0.00020284  0.00000033 -0.00000000  0.00000058  0.00000000  0.00000000

 30  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00084936  0.00000013 -0.00000000 -0.00000309  0.62762542 -0.00001098  0.00000143

 31  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00142592  0.00000032 -0.00000000 -0.00000128  0.28684047  0.00002223 -0.00000157

 32  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000008  0.00143528 -0.56075285 -0.00000355  0.00000919  0.46785044

 33  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000007  0.00000000  0.00000280 -0.00108396 -0.00002336 -0.00000046  0.00091120

 34  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000000 -0.00000029 -0.00143483  0.00000008 -0.00001319  0.00000665 -0.16843789 -0.00001039

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00002060 -0.10009311  0.00000036  0.00000000 -0.00000000 -0.00000851  0.00000000

 36  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001578  0.00000003 -0.00000036 -0.10005412 -0.00000606 -0.00000000 -0.00000000  0.00000046

 37  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00219977 -0.00000000  0.00000001  0.00071792  0.00000004  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000  0.00000000 -0.00000003
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000317 -0.00000547  0.00000099  0.56014069  0.00016101
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00004698  0.00000000  0.00000000  0.00000435  0.08509180  0.00001276 -0.00015831  0.55366249
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00002511 -0.00000002  0.56011728 -0.00001533 -0.00026119  0.00000317 -0.00000204
                               -0.00000000  0.00000000  0.00000000 -0.00000041  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000003  0.00002568  0.00026119  0.00002152  0.56011068 -0.00000098 -0.00001621
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000162  0.00000000 -0.00000000 -0.00001483 -0.55361750  0.00002374 -0.00002987  0.08508845
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000532 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000547 -0.00000000  0.00003668 -0.00000000  0.00000008  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000001 -0.00000222 -0.00000009  0.00000000  0.00003138 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000492  0.00000000 -0.00000000  0.00000092
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000150  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00000363 -0.00000004 -0.00000036 -0.00000004  0.00000310  0.00000001  0.00774349  0.00002325
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00001628 -0.00002612  0.00000179  0.00001180  0.00002798  0.00000118  0.66822493  0.00017320
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00000106  0.00003078  0.11766817 -0.00053066 -0.00001123 -0.33424115  0.00000065 -0.00001594
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.00000053 -0.01451983  0.00025516  0.33424343 -0.00000916 -0.00053064 -0.00002926 -0.00000122
                                0.00000000 -0.00000012  0.00000000 -0.00000025  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.57728105 -0.00000375 -0.00003561  0.00000477  0.08665852  0.00000308 -0.00017563  0.66265784
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.00000540  0.00000000  0.00000000 -0.00000280 -0.10375977  0.00000435  0.00000083  0.01357077
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.00000000 -0.00000002  0.00001275 -0.00068285  0.00000391  0.09054595 -0.00000016 -0.00000264
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+      -0.00000000 -0.00000266 -0.00000009 -0.09053942  0.00000246 -0.00068289 -0.00000051  0.00000035
                                0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000065 -0.00000000  0.00001316 -0.00000000  0.00000001  0.00000000 -0.00000000

 21  1     2    1  |1 0>        0.00000000 -0.00000018  0.00000000  0.00000043 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000037  0.02075982 -0.00000031  0.58251803 -0.00001593  0.00020292  0.00000330 -0.00000213

 22  1     3    1  |1 0>        0.00000000 -0.00000598 -0.00000001  0.00000024 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000472  0.70316662 -0.00015508  0.32734844 -0.00000895  0.00012630  0.00001743 -0.00000120

 23  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.57737918  0.00000376  0.00001273  0.00001785  0.61716192  0.00000463 -0.00075149  0.25619872

 24  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00113124 -0.00000719 -0.00000192 -0.00001712  0.00122089  0.00000057  0.33411854  0.00059351

 25  1     6    1  |1 0>        0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00002989  0.00016316  0.72725724  0.00011012  0.00001518 -0.33415527  0.00000056  0.00001854

 26  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000661  0.00003323 -0.00000284 -0.09063154  0.00000017  0.00000403

 27  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001261  0.00000000  0.00000000 -0.00000075 -0.04010174  0.00000504  0.00062455  0.09654337

 28  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000009 -0.00000000 -0.00000000 -0.00000051  0.00029176  0.00000013  0.09053256 -0.00066757

 29  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000087 -0.00000000  0.00000000  0.00001169  0.00000000 -0.00000000

 30  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001739  0.00002300  0.09419319 -0.00022136  0.00001376  0.57476338 -0.00000101 -0.00001535

 31  1     3    1  |1 1>-      -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001455 -0.00016278 -0.66961081  0.00013124  0.00001658 -0.34078240  0.00000060 -0.00000984

 32  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00111430 -0.00000138 -0.00000154  0.00001063 -0.00102196  0.00000061  0.33410602  0.00088683

 33  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57738838 -0.00000370 -0.00000882  0.00001302  0.53051753 -0.00000766  0.00074231 -0.40628906

 34  1     6    1  |1 1>-       0.00000000 -0.00000605 -0.00000001 -0.00000025  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000443  0.71057361 -0.00016985 -0.33414503  0.00000910 -0.00014724  0.00001065  0.00000126

 35  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000061  0.00000000  0.09063394 -0.00000249  0.00003323  0.00000202 -0.00000034

 36  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000005 -0.00000000  0.00000000 -0.00000203 -0.00045221  0.00000015  0.09054143 -0.00057031

 37  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000727 -0.00000000  0.00000000 -0.00000204 -0.06358151 -0.00000070 -0.00062378 -0.08298822


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000151 -0.00000000  0.00000000 -0.00000003 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000001  0.00000000  0.00001002  0.00003479  0.00001008  0.00000022 -0.00003487  0.65829499
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

  3  1     3    1  |0 0>        0.00000000  0.00000001 -0.00000000 -0.01386932  0.00000007 -0.00001019  0.65813881  0.00003560
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00039952  0.00000081 -0.00000001  0.00000079  0.65817203  0.00008708 -0.00000005 -0.00001008
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000025 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000081 -0.00038942 -0.00000000  0.00000872 -0.00008708  0.65817506  0.00001038 -0.00000022
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.65798005 -0.00000079 -0.00000894  0.01387460 -0.00003406
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00002522 -0.00000133  0.49009820 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000217
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.49011625  0.00042339 -0.00002521 -0.00000000  0.00030540  0.00000092 -0.00000000  0.00000000
                               -0.00000021 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00042338  0.49011131  0.00000136  0.00000000 -0.00000093  0.00030307 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00005512  0.00000000 -0.00000000  0.00000113  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000024  0.00000002 -0.00553891  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000276
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00002177 -0.00000142  0.50755040 -0.00000001 -0.00000006 -0.00000000 -0.00000881 -0.00327970
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.00002075 -0.00000001 -0.00588071  0.00000058 -0.00001089 -0.00000010  0.00002096 -0.28244322
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     4    1  |1 1>+      -0.00139414 -0.43959857 -0.00000129  0.00000396  0.00013925  0.14080640  0.00001288 -0.00000007
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.43959287 -0.00139416  0.00001912 -0.00000016 -0.14080258  0.00013927  0.00000001  0.00001533
                               -0.00000019 -0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00000005 -0.00001651 -0.00001627 -0.00039706 -0.00000002  0.00000984 -0.28248642 -0.00002086
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+       0.00000002 -0.00000401 -0.00000000 -0.54634120  0.00000072  0.00000738  0.00075754 -0.00000106
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.00143102 -0.24017974 -0.00000061 -0.00000412  0.00384892 -0.47280309 -0.00000762  0.00000010
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.24017990  0.00143102  0.00001031  0.00000067  0.47280428  0.00384891  0.00000002 -0.00000724
                               -0.00000010 -0.00000000 -0.00000000  0.00000000  0.00000018 -0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00556831 -0.00000678  0.00000024 -0.00000000 -0.00006736 -0.00000007  0.00000000 -0.00000000

 21  1     2    1  |1 0>        0.00000010  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000  0.00000000 -0.00000000
                                0.24872011 -0.00028875  0.00001066 -0.00000030 -0.24589926 -0.00023284  0.00000002  0.00000377

 22  1     3    1  |1 0>       -0.00000019 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000
                               -0.44242636  0.00053024 -0.00003947 -0.00000017 -0.13866064 -0.00013650  0.00000001 -0.00000447

 23  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000010 -0.00001650  0.00085910  0.24424735 -0.00000031 -0.00000986 -0.14157252  0.00026865

 24  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00003948  0.00000120 -0.43960222  0.00047761  0.00000431 -0.00000005 -0.00026885 -0.14123088

 25  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00051872  0.43952912  0.00000128  0.00001312 -0.00013137  0.14150771 -0.00000304 -0.00000004

 26  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00029321 -0.24089059 -0.00000066  0.00000866 -0.00045654  0.47298164 -0.00000025 -0.00000021

 27  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000007  0.00000399  0.00172517 -0.27348125  0.00000025  0.00000738 -0.47235044 -0.00341872

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00001031 -0.00000067  0.24043056  0.00196327 -0.00000724 -0.00000027  0.00341545 -0.47273197

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000678  0.00557203  0.00000002  0.00000000  0.00000006 -0.00006460  0.00000000 -0.00000000

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00032915  0.25892591  0.00000074 -0.00000678  0.00023868 -0.24260541 -0.00000391  0.00000008

 31  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00052306  0.43653732  0.00000124  0.00001543 -0.00014197  0.14431807  0.00000889 -0.00000005

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00003536 -0.00000117  0.43961402 -0.00047779 -0.00000748 -0.00000002 -0.00026753 -0.14122804

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000006 -0.00002035  0.00085912  0.24462982 -0.00000028 -0.00001583  0.14089985 -0.00026770

 34  1     6    1  |1 1>-       0.00000019  0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000
                                0.43953517 -0.00053502  0.00003536  0.00000016  0.14150109  0.00014702 -0.00000002 -0.00000746

 35  1     7    1  |1 1>-       0.00000010  0.00000000  0.00000000  0.00000000  0.00000018 -0.00000000  0.00000000 -0.00000000
                                0.24088954 -0.00029320  0.00000633 -0.00000061 -0.47297918 -0.00045654  0.00000009 -0.00000063

 36  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000631  0.00000068 -0.24042918 -0.00195201  0.00000063 -0.00000015  0.00342086 -0.47272849

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000007 -0.00000000  0.00172515 -0.27217714  0.00000042 -0.00000000  0.47310427  0.00341763


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00002419 -0.00000000  0.00000000  0.00000016  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000001 -0.00000000  0.00000518  0.00002872  0.00000843  0.00000023  0.00008671  0.50288177
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000001  0.00000000 -0.01358230 -0.00000034  0.00000821  0.50268643 -0.00008590
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00063023 -0.00000246  0.00000001 -0.00000048  0.50306787  0.00006893  0.00000033 -0.00000843
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000057 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000247  0.00063564 -0.00000000  0.00000568  0.00006894 -0.50307126  0.00000837  0.00000022
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000001 -0.00000000  0.50293544  0.00000047  0.00000590  0.01357438 -0.00003103
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00004277  0.00000091  0.70615145  0.00000000 -0.00000011  0.00000000 -0.00000001 -0.00000848
                               -0.00000000 -0.00000000  0.00000053  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.70588869 -0.00069493 -0.00004279  0.00000000 -0.00147059  0.00000410  0.00000000  0.00000000
                               -0.00000044 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00069490  0.70587807 -0.00000095  0.00000000  0.00000408  0.00147922 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00119623  0.00000000 -0.00000000 -0.00000775 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000040  0.00000002  0.01174979  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000131
                                0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00001268 -0.00000052 -0.37576941  0.00000004 -0.00000008 -0.00000000 -0.00001266 -0.00434237
                               -0.00000000  0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.00001534  0.00000005  0.00435525 -0.00000086 -0.00001500 -0.00000016 -0.00005650 -0.37456466
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00163510  0.32573101 -0.00000040  0.00000480  0.00023547 -0.18712391  0.00001725  0.00000004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.32573018  0.00163509 -0.00001119  0.00000018 -0.18712752 -0.00023546 -0.00000012  0.00002060
                                0.00000020  0.00000000 -0.00000000  0.00000000 -0.00000021  0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00000006  0.00001224  0.00001205  0.00170127  0.00000026 -0.00001337 -0.37459284  0.00005664
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00000002 -0.00000454 -0.00000000  0.60152718  0.00000050  0.00000696  0.00269555 -0.00000180
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.00111770 -0.27198055  0.00000042  0.00000345 -0.00407170 -0.51728454  0.00000878  0.00000030
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.27196723  0.00111778  0.00000918  0.00000039 -0.51728519  0.00407169 -0.00000041  0.00000868
                               -0.00000017  0.00000000  0.00000000  0.00000000 -0.00000059  0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01167183  0.00003577 -0.00000039 -0.00000000  0.00026691 -0.00000019  0.00000000 -0.00000000

 21  1     2    1  |1 0>       -0.00000012 -0.00000000  0.00000000 -0.00000000  0.00000037 -0.00000000 -0.00000000 -0.00000000
                               -0.18452826  0.00055531 -0.00000622  0.00000030 -0.32652009  0.00022125 -0.00000022  0.00000547

 22  1     3    1  |1 0>        0.00000020  0.00000000 -0.00000000 -0.00000000  0.00000021 -0.00000000 -0.00000000 -0.00000000
                                0.32745006 -0.00099766  0.00002623  0.00000017 -0.18380245  0.00013144 -0.00000012 -0.00000566

 23  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000009  0.00001220 -0.00063602  0.32537738  0.00000043  0.00001233 -0.18581918  0.00039683

 24  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000025 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00002625  0.00000050  0.32545289  0.00063546  0.00000544 -0.00000008 -0.00039492 -0.18729589

 25  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00098514 -0.32529035  0.00000040  0.00001708 -0.00012360 -0.18758312 -0.00000378  0.00000010

 26  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00083630 -0.27281932  0.00000038 -0.00000858  0.00036074  0.51837818 -0.00000019 -0.00000018

 27  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000005  0.00000453  0.00195284  0.29292472 -0.00000001  0.00000794  0.51935636  0.00362790

 28  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000918  0.00000038  0.27216046 -0.00210068  0.00000867  0.00000011 -0.00363865  0.51798050

 29  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00003577 -0.01166450  0.00000002 -0.00000000 -0.00000018 -0.00026559  0.00000000 -0.00000000

 30  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00059918 -0.19207866  0.00000025 -0.00000837  0.00023017  0.32216589 -0.00000549 -0.00000015

 31  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00098427 -0.32307856  0.00000042  0.00002006 -0.00013668 -0.19133037  0.00001206  0.00000009

 32  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000025 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00002319 -0.00000052 -0.32545870 -0.00063297 -0.00001019 -0.00000012 -0.00040067 -0.18729144

 33  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000007  0.00001505 -0.00063603  0.32367702  0.00000018  0.00002054  0.18876419 -0.00039877

 34  1     6    1  |1 1>-      -0.00000020 -0.00000000  0.00000000  0.00000000 -0.00000021  0.00000000  0.00000000  0.00000000
                               -0.32529544  0.00099722 -0.00002320 -0.00000020  0.18758203 -0.00014440  0.00000011 -0.00001017

 35  1     7    1  |1 1>-       0.00000017  0.00000000 -0.00000000  0.00000000 -0.00000059  0.00000000  0.00000000  0.00000000
                                0.27279930 -0.00083629  0.00000467 -0.00000045  0.51837942 -0.00036074  0.00000029 -0.00000006

 36  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000021  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000466 -0.00000037 -0.27215391  0.00213670  0.00000007  0.00000023 -0.00361888  0.51798077

 37  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.00000000  0.00195279  0.29762436  0.00000056 -0.00000096 -0.51660105 -0.00362967


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>        0.00374491  0.00000000 -0.00000000  0.00000000  0.00070274
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000016 -0.00000001 -0.00000000  0.00000024  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00009711  0.00000000 -0.00000001  0.00000000  0.00000011
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00053465 -0.00000164 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000005 -0.00000164  0.00053482  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00300739  0.00000000 -0.00000001 -0.00000000  0.00000299
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00003832 -0.00000004  0.50280631 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.50315496 -0.00007709 -0.00003829  0.00000000
                               -0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00007712  0.50317516  0.00000004  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.18987108 -0.00000000 -0.00000000 -0.00000000  0.98180830
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.00000305 -0.00000001  0.16792710 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00000000  0.00000060 -0.00000000  0.03330659 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00000001 -0.00000133 -0.00000000 -0.00039025  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00000003  0.00011959 -0.02854503 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.00000000 -0.02855432 -0.00011957  0.00000054  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.00002585  0.00000000 -0.00000106 -0.00000107  0.00000008
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.56276287  0.00000005  0.00000994 -0.00000000 -0.10959637
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.00000947  0.00296034  0.59913359 -0.00000002  0.00000182
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00000000  0.59913987 -0.00296031 -0.00001089 -0.00000000
                               -0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.16794977  0.00037524 -0.00000305 -0.00000000

 21  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.01590455 -0.00003461  0.00000030  0.00000000

 22  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.02915906  0.00006459 -0.00000187  0.00000000

 23  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00198292  0.00000001 -0.00000109  0.00005637  0.00000230

 24  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000388 -0.00000188 -0.00000000 -0.02884628  0.00000000

 25  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000011 -0.00006367  0.02896742  0.00000001  0.00000000

 26  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000936 -0.00133475  0.59739283 -0.00000001  0.00000182

 27  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.56881692 -0.00000006 -0.00000997 -0.00429373  0.10963517

 28  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00408145 -0.00001090  0.00000004 -0.59840251 -0.00078667

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00037525 -0.16795142 -0.00000002 -0.00000000

 30  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000006 -0.00003795  0.01657108  0.00000000 -0.00000000

 31  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000013 -0.00006376  0.02878017  0.00000000  0.00000000

 32  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000382  0.00000161  0.00000000  0.02884584 -0.00000000

 33  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00195704  0.00000000 -0.00000136  0.00005637  0.00000220

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.02897622 -0.00006472  0.00000161 -0.00000000

 35  1     7    1  |1 1>-      -0.00000000 -0.00000008  0.00000000 -0.00000000 -0.00000000
                                0.00000007  0.59740287  0.00133475 -0.00000093  0.00000001

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00408192  0.00000093 -0.00000006  0.59840637  0.00078666

 37  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.56888495 -0.00000008 -0.00000000 -0.00429376  0.10963346



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.83%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.83%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%   97.16%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   57.45%    0.00%    0.00%    2.55%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    1.33%    0.00%    0.00%   32.01%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   51.94%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   53.31%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    1.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    1.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%   97.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.70%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.16%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    9.78%    0.00%    0.00%   43.55%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.44%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    1.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    1.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   97.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   39.39%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    8.23%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   31.44%    0.00%    0.00%   21.89%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.84%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    1.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    1.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   31.38%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.72%    0.00%    0.00%   30.65%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   31.37%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   31.37%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   30.65%    0.00%    0.00%    0.72%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   44.65%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    1.38%    0.00%    0.00%   11.17%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.02%    0.00%   11.17%    0.00%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    0.75%    0.00%    0.00%   43.91%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    1.08%    0.00%    0.00%    0.02%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.82%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.82%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.04%    0.00%   33.93%    0.00%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%   49.44%    0.00%   10.72%    0.00%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>         33.34%    0.00%    0.00%    0.00%   38.09%    0.00%    0.00%    6.56%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.16%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%   52.89%    0.00%    0.00%   11.17%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.82%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.16%    0.00%    0.00%    0.93%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.82%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.89%    0.00%    0.00%   33.04%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%   44.84%    0.00%    0.00%   11.61%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.16%    0.00%
 33  1     5    1  |1 1>-        33.34%    0.00%    0.00%    0.00%   28.14%    0.00%    0.00%   16.51%
 34  1     6    1  |1 1>-         0.00%   50.49%    0.00%   11.17%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.82%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.82%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.69%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   43.34%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%   43.31%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   43.32%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   43.32%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   43.29%    0.00%    0.00%    0.02%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%   24.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         24.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   24.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%   25.76%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.98%
 14  1     4    1  |1 1>+         0.00%   19.32%    0.00%    0.00%    0.00%    1.98%    0.00%    0.00%
 15  1     5    1  |1 1>+        19.32%    0.00%    0.00%    0.00%    1.98%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.98%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%   29.85%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    5.77%    0.00%    0.00%    0.00%   22.35%    0.00%    0.00%
 19  1     9    1  |1 1>+         5.77%    0.00%    0.00%    0.00%   22.35%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          6.19%    0.00%    0.00%    0.00%    6.05%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>         19.57%    0.00%    0.00%    0.00%    1.92%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    5.97%    0.00%    0.00%    2.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%   19.33%    0.00%    0.00%    0.00%    0.00%    1.99%
 25  1     6    1  |1 0>          0.00%   19.32%    0.00%    0.00%    0.00%    2.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    5.80%    0.00%    0.00%    0.00%   22.37%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    7.48%    0.00%    0.00%   22.31%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    5.78%    0.00%    0.00%    0.00%    0.00%   22.35%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    6.70%    0.00%    0.00%    0.00%    5.89%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%   19.06%    0.00%    0.00%    0.00%    2.08%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%   19.33%    0.00%    0.00%    0.00%    0.00%    1.99%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    5.98%    0.00%    0.00%    1.99%    0.00%
 34  1     6    1  |1 1>-        19.32%    0.00%    0.00%    0.00%    2.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         5.80%    0.00%    0.00%    0.00%   22.37%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    5.78%    0.00%    0.00%    0.00%    0.00%   22.35%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    7.41%    0.00%    0.00%   22.38%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.29%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%   25.27%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   25.31%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   25.31%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   25.29%    0.00%    0.00%    0.02%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%   49.86%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         49.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   49.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%   14.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.03%
 14  1     4    1  |1 1>+         0.00%   10.61%    0.00%    0.00%    0.00%    3.50%    0.00%    0.00%
 15  1     5    1  |1 1>+        10.61%    0.00%    0.00%    0.00%    3.50%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.03%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%   36.18%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    7.40%    0.00%    0.00%    0.00%   26.76%    0.00%    0.00%
 19  1     9    1  |1 1>+         7.40%    0.00%    0.00%    0.00%   26.76%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          3.41%    0.00%    0.00%    0.00%   10.66%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>         10.72%    0.00%    0.00%    0.00%    3.38%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%   10.59%    0.00%    0.00%    3.45%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%   10.59%    0.00%    0.00%    0.00%    0.00%    3.51%
 25  1     6    1  |1 0>          0.00%   10.58%    0.00%    0.00%    0.00%    3.52%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    7.44%    0.00%    0.00%    0.00%   26.87%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    8.58%    0.00%    0.00%   26.97%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    7.41%    0.00%    0.00%    0.00%    0.00%   26.83%
 29  1     1    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    3.69%    0.00%    0.00%    0.00%   10.38%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%   10.44%    0.00%    0.00%    0.00%    3.66%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%   10.59%    0.00%    0.00%    0.00%    0.00%    3.51%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%   10.48%    0.00%    0.00%    3.56%    0.00%
 34  1     6    1  |1 1>-        10.58%    0.00%    0.00%    0.00%    3.52%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         7.44%    0.00%    0.00%    0.00%   26.87%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    7.41%    0.00%    0.00%    0.00%    0.00%   26.83%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    8.86%    0.00%    0.00%   26.69%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   25.28%    0.00%
  8  1     8    1  |0 0>          0.00%   25.32%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   25.32%    0.00%    0.00%
 10  1    10    1  |0 0>          3.61%    0.00%    0.00%    0.00%   96.39%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    2.82%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.11%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.08%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.08%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+        31.67%    0.00%    0.00%    0.00%    1.20%
 18  1     8    1  |1 1>+         0.00%    0.00%   35.90%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%   35.90%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    2.82%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.03%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.09%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.08%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.08%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%   35.69%    0.00%    0.00%
 27  1     8    1  |1 0>         32.36%    0.00%    0.00%    0.00%    1.20%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%   35.81%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    2.82%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.08%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.08%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.08%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%   35.69%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%   35.81%    0.00%
 37  1     9    1  |1 1>-        32.36%    0.00%    0.00%    0.00%    1.20%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.90       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3339.68       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     61098.64  55378.46     17.79   2836.74   2853.19      8.20      0.39      3.42
 REAL TIME  *     62144.39 SEC
 DISK USED  *         3.32 GB (local),      104.76 GB (total)
 SF USED    *        17.10 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -528.729006007084

              CI              CI           MULTI         RHF-SCF
   -528.71281230   -528.69357599   -528.16482226   -527.39968833
 **********************************************************************************************************************************
 Molpro calculation terminated
