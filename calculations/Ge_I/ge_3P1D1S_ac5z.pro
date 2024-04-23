
 Working directory              : /wrk/irikura/molpro.UTXPBeMogR/
 Global scratch directory       : /wrk/irikura/molpro.UTXPBeMogR/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.UTXPBeMogR/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
                                                                                 ! spherical anion (4S) orbitals
 {rhf;wf,nelec=33,sym=2,spin=3}
 
 NTRIP=3
 NSING=6
 
 {multi
     wf,nelec=32,sym=1,spin=2;state,NTRIP;
     wf,nelec=32,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! free KL shells
 core,2,3
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 17:06:36  
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

 Library entry GE     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     H aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     I aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  GE     32.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   32
 NUMBER OF PRIMITIVE AOS:         475
 NUMBER OF SYMMETRY AOS:          342
 NUMBER OF CONTRACTIONS:          263   (  130Ag  +  133Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     472.121 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 24.642 MB, node maximum: 49.283 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   25282566.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15984186      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   497186979. AND WROTE     4168668. INTEGRALS IN     13 RECORDS. CPU TIME:     2.07 SEC, REAL TIME:     2.13 SEC
 SORT2 READ    51756118. AND WROTE   303595781. INTEGRALS IN   2112 RECORDS. CPU TIME:     0.51 SEC, REAL TIME:     0.54 SEC

 Node minimum:    25276762.  Node maximum:    25318282. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415161718
                                       19202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 91011  12131415161718192021  11121314151617181920  21111213141516171819
                                       20211112131415161718  192021

 Eigenvalues of metric

         1 0.112E-05 0.509E-04 0.355E-03 0.111E-02 0.111E-02 0.111E-02 0.111E-02 0.111E-02
         2 0.109E-04 0.109E-04 0.109E-04 0.315E-02 0.315E-02 0.315E-02 0.144E-01 0.144E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.16      8.84
 REAL TIME  *        10.11 SEC
 DISK USED  *        31.64 MB (local),        1.37 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   8  10
 Initial beta  occupancy:   6   9

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2019.91545886   -2019.91545886     0.00D+00     0.26D+00     0     0       0.14      0.26    start
   2    -2066.90014201     -46.98468315     0.19D+00     0.38D+00     1     0       0.15      0.41    diag2
   3    -2085.24509717     -18.34495516     0.27D+00     0.30D+00     2     0       0.15      0.56    diag2
   4    -2095.74326903     -10.49817187     0.14D+00     0.63D-01     3     0       0.15      0.71    diag2
   5    -2095.99487269      -0.25160365     0.30D-01     0.54D-01     4     0       0.14      0.85    diag2
   6    -2096.98609555      -0.99122287     0.11D-01     0.49D-01     5     0       0.15      1.00    diag2
   7    -2097.08199406      -0.09589850     0.40D-02     0.37D-02     6     0       0.14      1.14    diag2
   8    -2097.10401058      -0.02201652     0.15D-02     0.26D-02     7     0       0.14      1.28    fixocc
   9    -2097.10613482      -0.00212424     0.40D-03     0.12D-02     8     0       0.14      1.42    diag2
  10    -2097.10645217      -0.00031736     0.16D-03     0.44D-03     9     0       0.14      1.56    diag2/orth
  11    -2097.10646512      -0.00001295     0.37D-04     0.88D-04     9     0       0.15      1.71    diag2
  12    -2097.10646725      -0.00000213     0.21D-04     0.35D-04     9     0       0.16      1.87    diag2
  13    -2097.10646757      -0.00000033     0.45D-05     0.14D-04     9     0       0.15      2.02    diag2
  14    -2097.10646768      -0.00000011     0.15D-05     0.87D-05     9     0       0.14      2.16    diag2
  15    -2097.10646772      -0.00000003     0.66D-06     0.54D-05     9     0       0.15      2.31    diag2
  16    -2097.10646772      -0.00000000     0.21D-06     0.94D-06     9     0       0.16      2.47    diag2
  17    -2097.10646772      -0.00000000     0.11D-06     0.31D-06     0     0       0.14      2.61    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2097.106467719202
  RHF One-electron energy           -2930.694949074494
  RHF Two-electron energy             833.588481355292
  RHF Kinetic energy                 2223.270063781116
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.943253139546

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.58417     1  1  s    0.96910    1  3  s   -0.56261    1  4  s   -0.73305    1  6  s    0.35420
                                    1  7  s    0.40902
    2.1     2.00000   -53.17965     1  2  s    1.08137    1  4  s    0.27139
    3.1     2.00000    -7.15127     1  3  s    0.91600
    4.1     2.00000    -1.34710     1  1  d2+  0.99972
    5.1     2.00000    -1.34710     1  1  d2-  0.99992
    6.1     2.00000    -1.34710     1  1  d0   0.99972
    7.1     2.00000    -1.34710     1  1  d1-  0.99992
    8.1     2.00000    -1.34710     1  1  d1+  0.99992
    9.1     2.00000    -0.33250     1  4  s    0.98723
    1.2     2.00000   -46.27284     1  1  pz   0.99701
    2.2     2.00000   -46.27284     1  1  px   0.99701
    3.2     2.00000   -46.27284     1  1  py   0.99701
    4.2     2.00000    -4.95687     1  2  pz   1.00320
    5.2     2.00000    -4.95687     1  2  px   1.00320
    6.2     2.00000    -4.95687     1  2  py   1.00320
    7.2     1.00000    -0.05789     1  8  py   0.30439    1  9  py   0.42618    1 10  py   0.32166
    8.2     1.00000    -0.05789     1  8  px   0.30439    1  9  px   0.42618    1 10  px   0.32166
    9.2     1.00000    -0.05788     1  8  pz   0.30437    1  9  pz   0.42616    1 10  pz   0.32163


 HOMO      9.2    -0.057881 =      -1.5750eV
 LUMO     10.2     0.153292 =       4.1713eV
 LUMO-HOMO         0.211174 =       5.7463eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.49       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.81      2.65      8.84
 REAL TIME  *        13.35 SEC
 DISK USED  *        37.63 MB (local),        1.44 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     245 (  121  124)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.195D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.845D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.195D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.630D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.750D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 6 4 1 1   2 6 4 5 3 1 5 3 6 4   2 711 912 814151013   5 3 6 4 2 1 711 912
                                        814151013 2 6 4 5 3   1 711 912 814151310   2 6 4 5 3 1 711 912   814151310 2 6 4 5 3
                                       25272821172326241918  201622 1 7 91112 815  141310 2 6 5 3 4 1 7   911 81214151310 4 2
                                        6 3 5 1 2 4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.464D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.231D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.685D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.567D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.613D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.116D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.118D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.658D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.564D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 1 3 2   1 3 2 1 3 6 5 410 8   7 9 6 5 410 8 7 9 2   1 3 6 5 4 810 9 719
                                       12111321141615172018   3 2 1 6 4 5 810 9 7  19121113211416171518  20 6 5 410 8 7 9 3 2
                                        1191211132114161517  1820 6 5 410 8 9 7 3   1 2 6 4 510 8 9 719  11122113141615171820
                                        3 1 2 6 4 5 810 7 9   1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  2231  ( 26 closed/active, 1712 closed/virtual, 0 active/active, 493 active/virtual )
 Total number of variables:    2357
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   25   36    0  -2097.02938245   -2097.05242817   -0.02304573    0.12873271 0.00039585 0.00000000  0.41E+00      2.54
   2    8   14    0  -2097.04082417   -2097.05175828   -0.01093411    0.53187433 0.00005025 0.00000000  0.50E-01      4.68
   3    6   10    0  -2097.05185481   -2097.05185745   -0.00000264    0.00514771 0.00000021 0.00000000  0.17E-02      6.66
   4    3    6    0  -2097.05185746   -2097.05185746   -0.00000000    0.00000147 0.00000001 0.00000000  0.11E-05      8.35

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-09)
                       Final energy:  -2097.05185746
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2097.081359570769
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.22802090
 One electron energy                         -2922.55413784
 Two electron energy                           825.47277827
 Virial ratio                                    1.94325968
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2097.081359563591
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.22802094
 One electron energy                         -2922.55413785
 Two electron energy                           825.47277828
 Virial ratio                                    1.94325968
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2097.081359560809
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.22802095
 One electron energy                         -2922.55413785
 Two electron energy                           825.47277829
 Virial ratio                                    1.94325968
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2097.042749001992
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.22802090
 One electron energy                         -2922.55413784
 Two electron energy                           825.51138884
 Virial ratio                                    1.94324232
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2097.042749001789
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.22802090
 One electron energy                         -2922.55413784
 Two electron energy                           825.51138884
 Virial ratio                                    1.94324232
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2097.042748994807
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.22802094
 One electron energy                         -2922.55413785
 Two electron energy                           825.51138885
 Virial ratio                                    1.94324232
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2097.042748992095
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.22802095
 One electron energy                         -2922.55413785
 Two electron energy                           825.51138886
 Virial ratio                                    1.94324232
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2097.042748990443
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.22802096
 One electron energy                         -2922.55413785
 Two electron energy                           825.51138886
 Virial ratio                                    1.94324232
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2097.008893421217
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.17022624
 One electron energy                         -2922.31239817
 Two electron energy                           825.30350475
 Virial ratio                                    1.94325161
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000002
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000003
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000002
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.507043403484
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000005
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999999
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000004
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.492956680471
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000003
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000004
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000004
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000005
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.567864183748
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000006
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000004
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000002
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.432135755795
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000004
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000002
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.925092412775
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999996
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000003
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.074907563740
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000007
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000007
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000007
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000007
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000007
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000007
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000007
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000006
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000007
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 6 4 1 1   5 3 6 2 4 1 5 3 2 6   41013141512 811 7 9   5 3 2 6 4 110131415
                                       12 811 7 9 5 3 2 6 4   11310141512 811 7 9   5 3 2 6 4 113101514  1211 8 7 9 5 3 2 6 4
                                       16222018241927262321  172528 1 9 71112 814  151310 5 3 2 6 4 1 9   711 81214151310 4 6
                                        2 3 5 1 4 2 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 3 1 2   1 3 2 1 3 9 710 8 5   4 6 9 710 8 5 4 6 2   1 3 9 7 810 5 4 620
                                       18151714161213211911   2 1 3 810 4 7 9 5 6  18201517141612132119  11 7 9 510 8 6 4 2 1
                                        3201815171416121321  1911 7 9 5 610 4 8 3   1 2 6 4 510 8 9 711  19211312141617152018
                                        3 1 2 4 6 5 810 7 9   1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.84211     1  1  s    0.96910    1  3  s   -0.56254    1  4  s   -0.73296    1  6  s    0.35415
                                    1  7  s    0.40897
    2.1     2.00000   -53.43747     1  2  s    1.08126    1  4  s    0.27106
    3.1     2.00000    -7.40939     1  3  s    0.91655
    4.1     2.00000    -1.60482     1  1  d2+  1.00002
    5.1     2.00000    -1.60482     1  1  d2-  1.00002
    6.1     2.00000    -1.60482     1  1  d0   1.00002
    7.1     2.00000    -1.60482     1  1  d1-  1.00002
    8.1     2.00000    -1.60482     1  1  d1+  1.00002
    9.1     1.96770    -0.56498     1  4  s    1.02484
    1.2     2.00000   -46.53038     1  1  pz   0.99701
    2.2     2.00000   -46.53038     1  1  px   0.99701
    3.2     2.00000   -46.53038     1  1  py   0.99701
    4.2     2.00000    -5.21432     1  2  pz   1.00297
    5.2     2.00000    -5.21432     1  2  px   1.00297
    6.2     2.00000    -5.21432     1  2  py   1.00297
    7.2     0.67743    -0.06821     1  8  py   0.37220    1  9  py   0.49502
    8.2     0.67743    -0.06821     1  8  pz   0.37220    1  9  pz   0.49502
    9.2     0.67743    -0.06821     1  8  px   0.37220    1  9  px   0.49502
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a          0.99371675     -0.00000094     -0.00000062
 2 aa0          0.00000094      0.99371675      0.00000022
 2 0aa          0.00000062     -0.00000022      0.99371675
 0 2aa         -0.00000007      0.00000003     -0.11192419
 0 aa2         -0.00000011     -0.11192418     -0.00000003
 0 a2a         -0.11192418      0.00000011      0.00000007
 
 Energy:    -2097.08135957  -2097.08135956  -2097.08135956
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020         -0.11103239     -0.00000000      0.00000100      0.00000177      0.80373311      0.56417490
 2 200          0.75156968      0.00000062     -0.00000098     -0.00000016     -0.30570983      0.56417456
 2 b0a          0.00000061     -0.70266385      0.00000067      0.00000053      0.00000008     -0.00000000
 2 a0b         -0.00000061      0.70266385     -0.00000067     -0.00000053     -0.00000008      0.00000000
 2 ab0          0.00000060      0.00000067      0.70266385     -0.00000019     -0.00000079     -0.00000000
 2 ba0         -0.00000060     -0.00000067     -0.70266385      0.00000019      0.00000079      0.00000000
 2 0ab         -0.00000050      0.00000053      0.00000019      0.70266385     -0.00000162     -0.00000000
 2 0ba          0.00000050     -0.00000053     -0.00000019     -0.70266385      0.00000162      0.00000000
 2 002         -0.64053712     -0.00000062     -0.00000002     -0.00000161     -0.49802366      0.56417466
 0 022          0.08465068      0.00000007     -0.00000011     -0.00000002     -0.03443263     -0.12263865
 0 220         -0.07214492     -0.00000007     -0.00000000     -0.00000018     -0.05609330     -0.12263864
 0 202         -0.01250580     -0.00000000      0.00000011      0.00000020      0.09052601     -0.12263861
 0 2ba         -0.00000006      0.00000006      0.00000002      0.07914235     -0.00000018     -0.00000000
 0 2ab          0.00000006     -0.00000006     -0.00000002     -0.07914235      0.00000018      0.00000000
 0 ba2          0.00000007      0.00000008      0.07914235     -0.00000002     -0.00000009     -0.00000000
 0 ab2         -0.00000007     -0.00000008     -0.07914235      0.00000002      0.00000009      0.00000000
 0 a2b          0.00000007     -0.07914235      0.00000008      0.00000006      0.00000001     -0.00000000
 0 b2a         -0.00000007      0.07914235     -0.00000008     -0.00000006     -0.00000001      0.00000000
 
 Energy:    -2097.04274900  -2097.04274900  -2097.04274899  -2097.04274899  -2097.04274899  -2097.00889342
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        20.31      8.50      2.65      8.84
 REAL TIME  *        23.28 SEC
 DISK USED  *       103.24 MB (local),        2.21 GB (total)
 SF USED    *       167.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2097.081360   2.0
    -2097.081360   2.0
    -2097.081360   2.0
    -2097.042749   6.0
    -2097.042749   6.0
    -2097.042749   6.0
    -2097.042749   6.0
    -2097.042749   6.0
    -2097.008893   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 32
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     245 ( 121 124 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.73 sec, npass=  1  Memory used:   4.09 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.08135957
     2     -2097.08135956
     3     -2097.08135956

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        360204
 Number of doubly external configurations:       7160547
 Total number of contracted configurations:      7521288
 Total number of uncontracted configurations:   40744710

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1896751 words, CPU-time:      0.75 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.08135957    -0.00000000    -1.10863239  0.34D-01  0.75D-01     1.79
    1     2     2     1.00000000     0.00000000 -2097.08135956    -0.00000000    -1.10875134  0.34D-01  0.75D-01     1.79
    1     3     3     1.00000000     0.00000000 -2097.08135956    -0.00000000    -1.10845385  0.34D-01  0.75D-01     1.79
    2     1     1     1.07266504    -0.90749646 -2097.98885603    -0.90749646    -0.02680102  0.32D-02  0.14D-02    27.39
    2     2     2     1.07286054    -0.90734190 -2097.98870147    -0.90734190    -0.02694959  0.33D-02  0.14D-02    27.39
    2     3     3     1.07296231    -0.90725920 -2097.98861876    -0.90725920    -0.02703160  0.34D-02  0.14D-02    27.39
    3     1     1     1.06028616    -0.93210454 -2098.01346411    -0.02460808    -0.00058878  0.96D-04  0.41D-04    52.57
    3     2     2     1.06027891    -0.93210289 -2098.01346246    -0.02476099    -0.00059063  0.96D-04  0.41D-04    52.57
    3     3     3     1.06027492    -0.93210193 -2098.01346149    -0.02484273    -0.00059160  0.96D-04  0.41D-04    52.57
    4     1     1     1.05912119    -0.93265936 -2098.01401893    -0.00055481    -0.00002678  0.38D-05  0.20D-05    78.09
    4     2     2     1.05911730    -0.93265934 -2098.01401891    -0.00055645    -0.00002684  0.38D-05  0.20D-05    78.09
    4     3     3     1.05911529    -0.93265932 -2098.01401888    -0.00055739    -0.00002688  0.38D-05  0.20D-05    78.09
    5     1     1     1.05913358    -0.93268487 -2098.01404444    -0.00002551    -0.00000098  0.87D-07  0.85D-07   103.62
    5     2     2     1.05913331    -0.93268487 -2098.01404443    -0.00002552    -0.00000098  0.87D-07  0.85D-07   103.62
    5     3     3     1.05913393    -0.93268487 -2098.01404443    -0.00002555    -0.00000098  0.88D-07  0.85D-07   103.62
    6     1     1     1.05916405    -0.93268583 -2098.01404540    -0.00000096    -0.00000004  0.19D-08  0.44D-08   128.91
    6     2     2     1.05916395    -0.93268583 -2098.01404540    -0.00000096    -0.00000004  0.19D-08  0.44D-08   128.91
    6     3     3     1.05916413    -0.93268583 -2098.01404539    -0.00000096    -0.00000004  0.20D-08  0.44D-08   128.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   1.6%
 P   0.5%   8.6%  25.3%

 Initialization:   1.3%
 Other:           62.5%

 Total CPU:      128.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.9662175   0.0000000
 2222222222/0/           0.9662174   0.0000000   0.0000000
 22222222220//          -0.0000000  -0.0000000   0.9662174
 2222220222//2           0.0000000  -0.1017973  -0.0000000
 2222220222/2/          -0.1017972  -0.0000000  -0.0000000
 22222202222//           0.0000000   0.0000000  -0.1017971

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971540   -0.000000   -0.000000
 2           0.000000    0.971540   -0.000000
 3           0.000000    0.000000    0.971540

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971540   -0.000000   -0.000000
 2          -0.000000    0.971540   -0.000000
 3          -0.000000   -0.000000    0.971540


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97154001 (fixed)   0.97156512 (relaxed)   0.97154001 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026572   -0.00057987   -0.84120821
 Singles      0.01158992   -0.04171941   -0.04957892
 Pairs        0.04758985    0.00000000   -0.04189870
 Total        1.05944549   -0.04229928   -0.93268583
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.08135957
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.10743898
 One electron energy                -2921.52890709
 Two electron energy                  823.51486168
 Virial quotient                       -0.94330607
 Correlation energy                    -0.93268583
 !MRCI STATE 1.1 Energy             -2098.014045403449

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.06948937 (Davidson, fixed reference)
 Cluster corrected energies         -2098.06943829 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.06948937 (Davidson, rotated reference)

 Cluster corrected energies         -2098.06641815 (Pople, fixed reference)
 Cluster corrected energies         -2098.06636753 (Pople, relaxed reference)
 Cluster corrected energies         -2098.06641815 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97154006 (fixed)   0.97156517 (relaxed)   0.97154006 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026572   -0.00057987   -0.84120836
 Singles      0.01158985   -0.04171934   -0.04957886
 Pairs        0.04758982    0.00000000   -0.04189861
 Total        1.05944539   -0.04229920   -0.93268583
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.08135956
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.10744127
 One electron energy                -2921.52891060
 Two electron energy                  823.51486521
 Virial quotient                       -0.94330607
 Correlation energy                    -0.93268583
 !MRCI STATE 2.1 Energy             -2098.014045395043

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.06948927 (Davidson, fixed reference)
 Cluster corrected energies         -2098.06943819 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.06948927 (Davidson, rotated reference)

 Cluster corrected energies         -2098.06641805 (Pople, fixed reference)
 Cluster corrected energies         -2098.06636743 (Pople, relaxed reference)
 Cluster corrected energies         -2098.06641805 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97153997 (fixed)   0.97156509 (relaxed)   0.97153997 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026572   -0.00057987   -0.00078126
 Singles      0.01159001   -0.04171950   -0.04957900
 Pairs        0.04758985   -0.89038647   -0.88232557
 Total        1.05944557   -0.93268583   -0.93268583
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.08135956
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.10742986
 One electron energy                -2921.52889825
 Two electron energy                  823.51485286
 Virial quotient                       -0.94330607
 Correlation energy                    -0.93268583
 !MRCI STATE 3.1 Energy             -2098.014045392025

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.06948944 (Davidson, fixed reference)
 Cluster corrected energies         -2098.06943835 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.06948944 (Davidson, rotated reference)

 Cluster corrected energies         -2098.06641822 (Pople, fixed reference)
 Cluster corrected energies         -2098.06636759 (Pople, relaxed reference)
 Cluster corrected energies         -2098.06641822 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      178.29       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       151.65    131.32      8.50      2.65      8.84
 REAL TIME  *       163.21 SEC
 DISK USED  *       278.74 MB (local),        4.27 GB (total)
 SF USED    *         1.71 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2098.06948937  AU                              
 SETTING HLSDIAG(2)     =     -2098.06948927  AU                              
 SETTING HLSDIAG(3)     =     -2098.06948944  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 32
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     245 ( 121 124 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.04274900
     2     -2097.04274900
     3     -2097.04274899
     4     -2097.04274899
     5     -2097.04274899
     6     -2097.00889342

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.25D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:        257153
 Number of doubly external configurations:      12132218
 Total number of contracted configurations:     12389821
 Total number of uncontracted configurations:   31552303

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2005076 words, CPU-time:      1.29 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.04274900    -0.00000000    -1.11876638  0.38D-01  0.78D-01     1.82
    1     2     2     1.00000000     0.00000000 -2097.04274900    -0.00000000    -1.11933974  0.39D-01  0.79D-01     1.82
    1     3     3     1.00000000     0.00000000 -2097.04274899    -0.00000000    -1.11950312  0.39D-01  0.79D-01     1.82
    1     4     4     1.00000000     0.00000000 -2097.04274899    -0.00000000    -1.11987950  0.39D-01  0.79D-01     1.82
    1     5     5     1.00000000     0.00000000 -2097.04274899    -0.00000000    -1.11896706  0.38D-01  0.79D-01     1.82
    1     6     6     1.00000000     0.00000000 -2097.00889342    -0.00000000    -1.10542716  0.14D-01  0.93D-01     1.82
    2     1     1     1.07745227    -0.91253149 -2097.95528049    -0.91253149    -0.02858209  0.36D-02  0.18D-02    96.92
    2     2     2     1.07751064    -0.91251398 -2097.95526298    -0.91251398    -0.02859640  0.36D-02  0.18D-02    96.92
    2     3     3     1.07780622    -0.91221560 -2097.95496459    -0.91221560    -0.02893897  0.38D-02  0.18D-02    96.92
    2     4     4     1.07788263    -0.91214120 -2097.95489019    -0.91214120    -0.02902156  0.38D-02  0.18D-02    96.92
    2     5     5     1.07818456    -0.91194436 -2097.95469335    -0.91194436    -0.02921197  0.39D-02  0.18D-02    96.92
    2     6     6     1.07205994    -0.90906161 -2097.91795503    -0.90906161    -0.02657872  0.27D-02  0.23D-02    96.92
    3     1     1     1.06332185    -0.93874134 -2097.98149034    -0.02620985    -0.00060458  0.82D-04  0.56D-04   190.76
    3     2     2     1.06333783    -0.93873989 -2097.98148889    -0.02622590    -0.00060649  0.82D-04  0.56D-04   190.76
    3     3     3     1.06334960    -0.93873162 -2097.98148062    -0.02651602    -0.00061782  0.84D-04  0.57D-04   190.76
    3     4     4     1.06334615    -0.93873142 -2097.98148041    -0.02659022    -0.00061812  0.84D-04  0.57D-04   190.76
    3     5     5     1.06335759    -0.93872619 -2097.98147518    -0.02678183    -0.00062323  0.84D-04  0.58D-04   190.76
    3     6     6     1.06104885    -0.93328310 -2097.94217653    -0.02422149    -0.00060253  0.57D-04  0.90D-04   190.76
    4     1     1     1.06202720    -0.93933578 -2097.98208478    -0.00059444    -0.00003154  0.45D-05  0.26D-05   285.21
    4     2     2     1.06202773    -0.93933571 -2097.98208472    -0.00059583    -0.00003160  0.45D-05  0.27D-05   285.21
    4     3     3     1.06203260    -0.93933499 -2097.98208399    -0.00060337    -0.00003265  0.47D-05  0.27D-05   285.21
    4     4     4     1.06203100    -0.93933491 -2097.98208390    -0.00060349    -0.00003279  0.47D-05  0.27D-05   285.21
    4     5     5     1.06203399    -0.93933489 -2097.98208388    -0.00060870    -0.00003275  0.47D-05  0.27D-05   285.21
    4     6     6     1.05986903    -0.93388127 -2097.94277469    -0.00059816    -0.00003098  0.46D-05  0.30D-05   285.21
    5     1     1     1.06199725    -0.93936629 -2097.98211529    -0.00003051    -0.00000131  0.15D-06  0.11D-06   378.07
    5     2     2     1.06199707    -0.93936629 -2097.98211529    -0.00003057    -0.00000131  0.15D-06  0.11D-06   378.07
    5     3     3     1.06199782    -0.93936625 -2097.98211524    -0.00003126    -0.00000136  0.15D-06  0.11D-06   378.07
    5     4     4     1.06199846    -0.93936625 -2097.98211524    -0.00003134    -0.00000137  0.15D-06  0.12D-06   378.07
    5     5     5     1.06199823    -0.93936625 -2097.98211524    -0.00003136    -0.00000137  0.15D-06  0.11D-06   378.07
    5     6     6     1.05983921    -0.93391169 -2097.94280511    -0.00003043    -0.00000153  0.18D-06  0.14D-06   378.07
    6     1     1     1.06200547    -0.93936759 -2097.98211659    -0.00000130    -0.00000004  0.34D-08  0.47D-08   472.51
    6     2     2     1.06200567    -0.93936759 -2097.98211659    -0.00000130    -0.00000004  0.33D-08  0.49D-08   472.51
    6     3     3     1.06200554    -0.93936759 -2097.98211658    -0.00000134    -0.00000004  0.34D-08  0.49D-08   472.51
    6     4     4     1.06200526    -0.93936759 -2097.98211658    -0.00000134    -0.00000004  0.34D-08  0.49D-08   472.51
    6     5     5     1.06200538    -0.93936759 -2097.98211658    -0.00000134    -0.00000004  0.34D-08  0.46D-08   472.51
    6     6     6     1.05985552    -0.93391319 -2097.94280661    -0.00000150    -0.00000006  0.51D-08  0.64D-08   472.51
    7     1     1     1.06200516    -0.93936763 -2097.98211664    -0.00000005    -0.00000000  0.35D-09  0.15D-09   566.87
    7     2     2     1.06200523    -0.93936763 -2097.98211664    -0.00000005    -0.00000000  0.36D-09  0.16D-09   566.87
    7     3     3     1.06200522    -0.93936763 -2097.98211663    -0.00000005    -0.00000000  0.36D-09  0.16D-09   566.87
    7     4     4     1.06200519    -0.93936763 -2097.98211663    -0.00000005    -0.00000000  0.36D-09  0.15D-09   566.87
    7     5     5     1.06200513    -0.93936763 -2097.98211662    -0.00000004    -0.00000000  0.34D-09  0.15D-09   566.87
    7     6     6     1.05985447    -0.93391324 -2097.94280667    -0.00000006    -0.00000000  0.43D-09  0.21D-09   566.87


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.4%   6.6%  29.9%

 Initialization:   0.3%
 Other:           62.2%

 Total CPU:      566.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\           0.0000000  -0.0000000  -0.0000000   0.9648757  -0.0000000  -0.0000000
 2222222222/\0           0.0000000   0.0000000   0.9648757   0.0000000   0.0000000  -0.0000000
 2222222222/0\          -0.0000000   0.9648756  -0.0000000   0.0000000  -0.0000000   0.0000000
 2222222222020          -0.1132466   0.0000000   0.0000000   0.0000000   0.7796357   0.5494087
 2222222222200           0.7318077  -0.0000000  -0.0000000  -0.0000000  -0.2917436   0.5494084
 2222222222002          -0.6185611  -0.0000000   0.0000000   0.0000000  -0.4878924   0.5494085
 2222220222220          -0.0651534  -0.0000000   0.0000000   0.0000000  -0.0513899  -0.1121578
 2222220222022           0.0770816  -0.0000000  -0.0000000  -0.0000000  -0.0307294  -0.1121578
 2222220222202          -0.0119283   0.0000000   0.0000000   0.0000000   0.0821194  -0.1121578
 2222220222/2\           0.0000000  -0.1016309   0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220222/\2          -0.0000000  -0.0000000  -0.1016308  -0.0000000  -0.0000000   0.0000000
 22222202222/\          -0.0000000   0.0000000   0.0000000  -0.1016308   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970165   -0.000000    0.000000    0.000000   -0.006758   -0.000000
 2           0.000000    0.970188    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.970188   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.970188    0.000000    0.000000
 5           0.006758   -0.000000    0.000000   -0.000000    0.970165    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.971152

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970188   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.970188    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.970188   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.970188    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.970188    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.971152


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97016454 (fixed)   0.97021333 (relaxed)   0.97018808 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037195   -0.00084492   -0.84203667
 Singles      0.01317346   -0.04513718   -0.05413517
 Pairs        0.04885477    0.00000006   -0.04319579
 Total        1.06240018   -0.04598205   -0.93936763
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04274900
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.10391049
 One electron energy                -2921.46408785
 Two electron energy                  823.48197122
 Virial quotient                       -0.94329321
 Correlation energy                    -0.93936763
 !MRCI STATE 1.1 Energy             -2097.982116636366

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04073334 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04068138 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04073334 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03825147 (Pople, fixed reference)
 Cluster corrected energies         -2098.03819907 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03825147 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97018804 (fixed)   0.97021330 (relaxed)   0.97018804 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037195   -0.00084492   -0.84203649
 Singles      0.01317351   -0.04513726   -0.05413525
 Pairs        0.04885478    0.00000000   -0.04319590
 Total        1.06240025   -0.04598218   -0.93936763
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04274900
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.10393125
 One electron energy                -2921.46411809
 Two electron energy                  823.48200146
 Virial quotient                       -0.94329320
 Correlation energy                    -0.93936763
 !MRCI STATE 2.1 Energy             -2097.982116636182

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04073341 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04068145 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04073341 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03825153 (Pople, fixed reference)
 Cluster corrected energies         -2098.03819914 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03825153 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97018805 (fixed)   0.97021331 (relaxed)   0.97018805 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037195   -0.00084492   -0.84203649
 Singles      0.01317352   -0.04513726   -0.05413524
 Pairs        0.04885477   -0.00000000   -0.04319590
 Total        1.06240024   -0.04598218   -0.93936763
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04274899
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.10393030
 One electron energy                -2921.46411563
 Two electron energy                  823.48199900
 Virial quotient                       -0.94329320
 Correlation energy                    -0.93936763
 !MRCI STATE 3.1 Energy             -2097.982116628390

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04073339 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04068143 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04073339 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03825152 (Pople, fixed reference)
 Cluster corrected energies         -2098.03819912 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03825152 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97018807 (fixed)   0.97021332 (relaxed)   0.97018807 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037195   -0.00084492   -0.84203653
 Singles      0.01317350   -0.04513726   -0.05413522
 Pairs        0.04885475   -0.00000000   -0.04319588
 Total        1.06240020   -0.04598218   -0.93936763
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04274899
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.10392634
 One electron energy                -2921.46411157
 Two electron energy                  823.48199494
 Virial quotient                       -0.94329320
 Correlation energy                    -0.93936763
 !MRCI STATE 4.1 Energy             -2097.982116625935

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04073335 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04068139 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04073335 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03825148 (Pople, fixed reference)
 Cluster corrected energies         -2098.03819908 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03825148 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.97016456 (fixed)   0.97021335 (relaxed)   0.97018809 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037195   -0.00084492   -0.84203664
 Singles      0.01317345   -0.04513717   -0.05413516
 Pairs        0.04885474   -0.00000002   -0.04319583
 Total        1.06240014   -0.04598211   -0.93936763
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04274899
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.10390641
 One electron energy                -2921.46408330
 Two electron energy                  823.48196668
 Virial quotient                       -0.94329321
 Correlation energy                    -0.93936763
 !MRCI STATE 5.1 Energy             -2097.982116622347

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04073330 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04068134 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04073330 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03825142 (Pople, fixed reference)
 Cluster corrected energies         -2098.03819902 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03825142 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97115186 (fixed)   0.97122983 (relaxed)   0.97115186 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041333   -0.00067321   -0.00099900
 Singles      0.00551724   -0.02796925   -0.03123898
 Pairs        0.05436197   -0.90527078   -0.90167527
 Total        1.06029254   -0.93391324   -0.93391324
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.00889342
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.07300930
 One electron energy                -2921.23305844
 Two electron energy                  823.29025178
 Virial quotient                       -0.94328864
 Correlation energy                    -0.93391324
 !MRCI STATE 6.1 Energy             -2097.942806666160

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.99911467 (Davidson, fixed reference)
 Cluster corrected energies         -2097.99895569 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.99911467 (Davidson, rotated reference)

 Cluster corrected energies         -2097.99663407 (Pople, fixed reference)
 Cluster corrected energies         -2097.99647434 (Pople, relaxed reference)
 Cluster corrected energies         -2097.99663407 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      750.01       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       732.91    581.27    131.32      8.50      2.65      8.84
 REAL TIME  *       780.31 SEC
 DISK USED  *       850.46 MB (local),       10.97 GB (total)
 SF USED    *         5.37 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2098.04073334  AU                              
 SETTING HLSDIAG(5)     =     -2098.04073341  AU                              
 SETTING HLSDIAG(6)     =     -2098.04073339  AU                              
 SETTING HLSDIAG(7)     =     -2098.04073335  AU                              
 SETTING HLSDIAG(8)     =     -2098.04073330  AU                              
 SETTING HLSDIAG(9)     =     -2097.99911467  AU                              


         HLSDIAG
    -2098.069489
    -2098.069489
    -2098.069489
    -2098.040733
    -2098.040733
    -2098.040733
    -2098.040733
    -2098.040733
    -2097.999115
                                                  

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

 Time for Seward_LS:      41.81 sec

      286348425. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    86852 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     41.81 sec, REAL time:     43.10 sec


 SORTLS1 read   355580014. and wrote   355580014. SO integrals in  1370 records. CPU time:      3.15 sec, REAL time:      5.01 sec
 SORTLS2 read   355580014. and wrote  1807811302. SO integrals in    36 records. CPU time:      2.19 sec, REAL time:      3.02 sec

 FILE SIZES: FILE 1:  5797.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  5797.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     5528.98       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      750.01       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       780.66     47.74    581.27    131.32      8.50      2.65      8.84
 REAL TIME  *       832.09 SEC
 DISK USED  *       850.85 MB (local),       29.04 GB (total)
 SF USED    *         5.37 GB
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
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:  -2098.014045  -2098.014045  -2098.014045
 Replaced energies:  -2098.069489  -2098.069489  -2098.069489

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2097.982117  -2097.982117  -2097.982117  -2097.982117  -2097.982117  -2097.942807
 Replaced energies:  -2098.040733  -2098.040733  -2098.040733  -2098.040733  -2098.040733  -2097.999115



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2098.06948944

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00     323.40       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00    -323.40       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.04       0.00    -323.40      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -457.35      -0.00      -0.00      -0.00       0.00       0.00       0.00     292.43

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -345.96
                           -0.00     457.35       0.00     323.40       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00    -323.40      -0.00       0.01       0.00       0.00       0.00     323.40       0.00       0.00
                           -0.00       0.00    -323.40       0.00       0.00       0.00       0.00       0.00    -323.40      75.71

    5   2.1  1.0  0.0     323.40      -0.00       0.00       0.00       0.04       0.00    -323.40      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

    6   3.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                          323.40       0.00      -0.00      -0.00      -0.00       0.00     323.40       0.00       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00    -323.40      -0.00       0.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -323.40       0.00       0.00      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00     323.40      -0.00       0.00       0.00       0.04       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     457.35    -292.43

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00    -345.96
                           -0.00      -0.00      -0.00     323.40       0.00      -0.00       0.00    -457.35      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00    -345.96       0.00       0.00       0.00       0.00       0.00    -345.96    6311.23
                           -0.00    -292.43      -0.00     -75.71      -0.00      -0.00       0.00     292.43       0.00       0.00

   11   2.1  0.0  0.0       0.00    -322.54       0.00       0.00       0.00       0.00       0.00    -322.54       0.00       0.00
                           -0.00      -0.00     322.54       0.00       0.00      -0.00       0.00       0.00    -322.54      -0.00

   12   3.1  0.0  0.0     322.53       0.00       0.00       0.00       0.00       0.00     322.53       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00    -456.13      -0.00      -0.00       0.00      -0.00

   13   4.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                         -322.54       0.00      -0.00       0.00    -456.13      -0.00     322.54      -0.00       0.00      -0.00

   14   5.1  0.0  0.0      -0.00       0.00     137.92       0.00       0.00       0.00      -0.00       0.00     137.92       0.00
                            0.00    -230.65      -0.00     521.23       0.00       0.00      -0.00     230.65       0.00      -0.00

   15   6.1  0.0  0.0      -0.00      -0.00     536.77       0.00       0.00       0.00      -0.00      -0.00     536.77       0.00
                            0.00    -536.77      -0.00    -759.11      -0.00      -0.00      -0.00     536.77       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00     322.53       0.00      -0.00      -0.00
                            0.00      -0.00     322.54      -0.00      -0.00

    2   2.1  1.0  1.0    -322.54       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00     230.65     536.77

    3   3.1  1.0  1.0       0.00       0.00       0.00     137.92     536.77
                         -322.54       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -521.23     759.11

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     456.13      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     456.13       0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00     322.53       0.00      -0.00      -0.00
                           -0.00       0.00    -322.54       0.00       0.00

    8   2.1  1.0 -1.0    -322.54       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00    -230.65    -536.77

    9   3.1  1.0 -1.0       0.00       0.00       0.00     137.92     536.77
                          322.54      -0.00      -0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6311.22       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6311.22       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6311.23       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6311.24       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15445.48
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -2098.06948944 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.014       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -457.354      -0.000      -0.000

    2    1  |1 1>+              0.000       0.037       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     457.354       0.000       0.000      -0.000     457.354

    1    1  |1 0>               0.000      -0.000      -0.000       0.014       0.000       0.000       0.000    -457.354
                                0.000       0.000    -457.354       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.037       0.000     457.354       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                              457.354       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000     457.354       0.000       0.014       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    -457.354       0.000      -0.000       0.000       0.037
                                0.000       0.000    -457.354      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     457.354       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000    -489.262       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -75.713      -0.000      -0.000      -0.000    -413.553

    2    1  |0 0>               0.000    -456.134       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |0 0>             456.132       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -456.131       0.000       0.000

    4    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -456.132      -0.000    -456.134       0.000

    5    1  |0 0>              -0.000       0.000     195.050       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     521.235       0.000       0.000       0.000    -326.190

    6    1  |0 0>              -0.000      -0.000     759.110       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -759.106      -0.000      -0.000       0.000    -759.114

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000       0.000     456.132       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000    -456.134       0.000      -0.000       0.000      -0.000
                             -457.354       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -489.262       0.000       0.000       0.000     195.050     759.110
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      75.713      -0.000      -0.000      -0.000    -521.235     759.106

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     456.132      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     456.131       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     456.134      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     413.553       0.000      -0.000      -0.000     326.190     759.114

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -456.135       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000    6311.233       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6311.219       0.000       0.000       0.000       0.000
                              456.135      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6311.222       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6311.231       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6311.243       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15445.477
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2098.07413547    -0.00464603    -1019.69      0.00000000        0.00      0.0000
    2 -2098.07157326    -0.00208383     -457.35      0.00256220      562.34      0.0697
    3 -2098.07157321    -0.00208378     -457.34      0.00256225      562.35      0.0697
    4 -2098.07157318    -0.00208374     -457.33      0.00256228      562.36      0.0697
    5 -2098.06772560     0.00176383      387.12      0.00640986     1406.80      0.1744
    6 -2098.06772559     0.00176385      387.12      0.00640988     1406.81      0.1744
    7 -2098.06772554     0.00176390      387.13      0.00640993     1406.82      0.1744
    8 -2098.06772551     0.00176393      387.14      0.00640996     1406.82      0.1744
    9 -2098.06772550     0.00176393      387.14      0.00640996     1406.82      0.1744
   10 -2098.04041336     0.02907607     6381.46      0.03372210     7401.15      0.9176
   11 -2098.04041335     0.02907608     6381.46      0.03372211     7401.15      0.9176
   12 -2098.04041331     0.02907612     6381.47      0.03372215     7401.16      0.9176
   13 -2098.04041329     0.02907615     6381.48      0.03372218     7401.16      0.9176
   14 -2098.04041324     0.02907619     6381.49      0.03372222     7401.17      0.9176
   15 -2097.99863628     0.07085316    15550.47      0.07549919    16570.16      2.0544

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000 -0.70710110  0.00000000  0.00000000 -0.00000000  0.70295740  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.70709152  0.00000000  0.00000000 -0.00000000  0.70296697 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.57552495 -0.00000000 -0.00000000  0.00000000  0.77366174  0.00000000 -0.00000000 -0.24554887
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57551905 -0.00000000 -0.00000000  0.00000000 -0.59949180 -0.00000000 -0.00000000 -0.54723231

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00132158  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.70709597 -0.00000000  0.00000000 -0.00000000 -0.00000001

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.70711246 -0.00000000 -0.00000000 -0.00000000  0.70294601  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00132161  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.70711512 -0.00000000  0.00000000 -0.00000000 -0.00000001

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57551066 -0.00000000 -0.00000000  0.00000000 -0.17418046 -0.00000000  0.00000001  0.79279514

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.70712204 -0.00000000  0.00000000 -0.00000000  0.70293629 -0.00000000

   1    1  |0 0>           0.00000056 -0.00000000  0.00000000 -0.00000000  0.08371632  0.00000000 -0.00000000 -0.06862947
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000213 -0.00000000  0.00000000 -0.00000000  0.10824976 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000062  0.00000000 -0.00000000  0.00000000 -0.10824879 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000149 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000023  0.00000000  0.00000000 -0.00000000 -0.06862830 -0.00000000 -0.00000000 -0.08371632
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.07960109 -0.00000000 -0.00000000  0.00000000  0.00000041  0.00000000  0.00000000 -0.00000104
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000 -0.00000000  0.07654363 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.07654430 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.08365900  0.02851959  0.04595767
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.01713069 -0.08671020  0.04595744

   2    1  |1 0>           0.00141447  0.00000000  0.00000000  0.00001913  0.00000000 -0.00000000  0.00000000
                           0.70295988  0.00000000  0.00000000  0.07654376  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.07654328 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00141443  0.00000000  0.00000000  0.00001913  0.00000000 -0.00000000  0.00000000
                           0.70294061  0.00000000  0.00000000  0.07654379  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000  0.00000000  0.06652914  0.05819150  0.04595802

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.07654399 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99284089  0.05048300  0.00000003
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.99412373  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000001  0.99412383 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.10824903  0.00000000  0.00000000  0.99412375  0.00000000 -0.00000000  0.00000000
                           0.00021782 -0.00000000 -0.00000000 -0.00024849 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.05048310  0.99284097  0.00000005
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000014  0.99682680
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2098.07413547     -0.00464603    -1019.69      0.00000000        0.00      0.0000
     2   1  -2098.07157326     -0.00208383     -457.35      0.00256220      562.34      0.0697
     3   1  -2098.07157321     -0.00208378     -457.34      0.00256225      562.35      0.0697
     4   1  -2098.07157318     -0.00208374     -457.33      0.00256228      562.36      0.0697
     5   1  -2098.06772560      0.00176383      387.12      0.00640986     1406.80      0.1744
     6   1  -2098.06772559      0.00176385      387.12      0.00640988     1406.81      0.1744
     7   1  -2098.06772554      0.00176390      387.13      0.00640993     1406.82      0.1744
     8   1  -2098.06772551      0.00176393      387.14      0.00640996     1406.82      0.1744
     9   1  -2098.06772550      0.00176393      387.14      0.00640996     1406.82      0.1744
    10   1  -2098.04041336      0.02907607     6381.46      0.03372210     7401.15      0.9176
    11   1  -2098.04041335      0.02907608     6381.46      0.03372211     7401.15      0.9176
    12   1  -2098.04041331      0.02907612     6381.47      0.03372215     7401.16      0.9176
    13   1  -2098.04041329      0.02907615     6381.48      0.03372218     7401.16      0.9176
    14   1  -2098.04041324      0.02907619     6381.49      0.03372222     7401.17      0.9176
    15   1  -2097.99863628      0.07085316    15550.47      0.07549919    16570.16      2.0544

 E0 =  -2098.06948944 is the energy of the lowest zeroth-order state
 E1 =  -2098.07413547 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000 -0.70710110  0.00000000  0.00000000 -0.00000000  0.70295740  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.70709152  0.00000000  0.00000000 -0.00000000  0.70296697 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.57552495 -0.00000000 -0.00000000  0.00000000  0.77366174  0.00000000 -0.00000000 -0.24554887
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57551905 -0.00000000 -0.00000000  0.00000000 -0.59949180 -0.00000000 -0.00000000 -0.54723231

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00132158  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.70709597 -0.00000000  0.00000000 -0.00000000 -0.00000001

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.70711246 -0.00000000 -0.00000000 -0.00000000  0.70294601  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00132161  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.70711512 -0.00000000  0.00000000 -0.00000000 -0.00000001

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57551066 -0.00000000 -0.00000000  0.00000000 -0.17418046 -0.00000000  0.00000001  0.79279514

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.70712204 -0.00000000  0.00000000 -0.00000000  0.70293629 -0.00000000

 10  1     1    1  |0 0>        0.00000056 -0.00000000  0.00000000 -0.00000000  0.08371632  0.00000000 -0.00000000 -0.06862947
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.00000213 -0.00000000  0.00000000 -0.00000000  0.10824976 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000062  0.00000000 -0.00000000  0.00000000 -0.10824879 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000149 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000023  0.00000000  0.00000000 -0.00000000 -0.06862830 -0.00000000 -0.00000000 -0.08371632
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.07960109 -0.00000000 -0.00000000  0.00000000  0.00000041  0.00000000  0.00000000 -0.00000104
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.07654363 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.07654430 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.08365900  0.02851959  0.04595767
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.01713069 -0.08671020  0.04595744

  5  1     2    1  |1 0>        0.00141447  0.00000000  0.00000000  0.00001913  0.00000000 -0.00000000  0.00000000
                                0.70295988  0.00000000  0.00000000  0.07654376  0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.07654328 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00141443  0.00000000  0.00000000  0.00001913  0.00000000 -0.00000000  0.00000000
                                0.70294061  0.00000000  0.00000000  0.07654379  0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000  0.00000000  0.06652914  0.05819150  0.04595802

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.07654399 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.99284089  0.05048300  0.00000003
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.99412373  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000001  0.99412383 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.10824903  0.00000000  0.00000000  0.99412375  0.00000000 -0.00000000  0.00000000
                                0.00021782 -0.00000000 -0.00000000 -0.00024849 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.05048310  0.99284097  0.00000005
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000014  0.99682680
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   49.41%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.42%    0.00%
  3  1     3    1  |1 1>+        33.12%    0.00%    0.00%    0.00%   59.86%    0.00%    0.00%    6.03%
  4  1     1    1  |1 0>         33.12%    0.00%    0.00%    0.00%   35.94%    0.00%    0.00%   29.95%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   49.41%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.12%    0.00%    0.00%    0.00%    3.03%    0.00%    0.00%   62.85%
  9  1     3    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.41%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.70%    0.00%    0.00%    0.47%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.17%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.17%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.47%    0.00%    0.00%    0.70%
 15  1     6    1  |0 0>          0.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.59%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.59%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.70%    0.08%    0.21%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.75%    0.21%
  5  1     2    1  |1 0>         49.42%    0.00%    0.00%    0.59%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.59%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        49.41%    0.00%    0.00%    0.59%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.44%    0.34%    0.21%
  9  1     3    1  |1 1>-         0.00%    0.59%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.57%    0.25%    0.00%
 11  1     2    1  |0 0>          0.00%   98.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%   98.83%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          1.17%    0.00%    0.00%   98.83%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.25%   98.57%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.37%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     5528.98       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      750.01       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1016.50    235.84     47.74    581.27    131.32      8.50      2.65      8.84
 REAL TIME  *      1100.60 SEC
 DISK USED  *       850.85 MB (local),       29.04 GB (total)
 SF USED    *         7.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=  -2097.998636278885

              CI              CI           MULTI         RHF-SCF
  -2097.94280667  -2098.01404539  -2097.00889342  -2097.10646772
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
