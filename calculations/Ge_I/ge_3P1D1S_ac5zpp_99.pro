
 Working directory              : /wrk/irikura/molpro.Mxnol0uYDj/
 Global scratch directory       : /wrk/irikura/molpro.Mxnol0uYDj/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Mxnol0uYDj/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! spherical anion ROHF orbitals
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP = 3
 NSING = 6
 
 {multi
     closed,6,3
     occ,7,6
     wf,nelec=22,sym=1,spin=2;state,NTRIP;
 weight,all,99
     wf,nelec=22,sym=1,spin=0;state,NSING;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5102.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 16:14:38  
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

 Library entry Ge   ECP ECP10MDF                 selected for group  1
 Library entry GE     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GE     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  GE     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
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

         1 0.600E-05 0.229E-03 0.934E-03 0.129E-02 0.129E-02 0.129E-02 0.129E-02 0.129E-02
         2 0.169E-04 0.169E-04 0.169E-04 0.885E-03 0.885E-03 0.885E-03 0.519E-02 0.519E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     544.473 MB (compressed) written to integral file ( 13.3%)

     Node minimum: 36.176 MB, node maximum: 56.361 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   26065404.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15978249      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     4291128. INTEGRALS IN     13 RECORDS. CPU TIME:     2.08 SEC, REAL TIME:     2.18 SEC
 SORT2 READ    53577812. AND WROTE   312900871. INTEGRALS IN   2148 RECORDS. CPU TIME:     0.53 SEC, REAL TIME:     0.59 SEC

 Node minimum:    26062456.  Node maximum:    26096463. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.38      8.18
 REAL TIME  *         9.72 SEC
 DISK USED  *        30.87 MB (local),        1.43 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   6   7
 Initial beta  occupancy:   4   6

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -194.18355241    -194.18355241     0.00D+00     0.14D+00     0     0       0.14      0.27    start
   2     -253.64281725     -59.45926485     0.27D+00     0.20D+00     1     0       0.21      0.48    diag2
   3     -276.68855207     -23.04573482     0.34D+00     0.75D-01     2     0       0.22      0.70    diag2
   4     -291.73714430     -15.04859222     0.19D+00     0.61D-01     3     0       0.17      0.87    diag2
   5     -292.38825077      -0.65110647     0.26D-01     0.72D-01     4     0       0.15      1.02    diag2
   6     -293.21743836      -0.82918759     0.87D-02     0.66D-01     5     0       0.15      1.17    diag2
   7     -293.34694939      -0.12951103     0.45D-02     0.39D-02     6     0       0.16      1.33    diag2
   8     -293.37992997      -0.03298058     0.18D-02     0.23D-02     7     0       0.16      1.49    fixocc
   9     -293.38194993      -0.00201995     0.77D-03     0.90D-03     8     0       0.15      1.64    diag2
  10     -293.38311069      -0.00116077     0.28D-03     0.55D-03     9     0       0.15      1.79    diag2/orth
  11     -293.38329596      -0.00018527     0.10D-03     0.23D-03     9     0       0.16      1.95    diag2
  12     -293.38331351      -0.00001755     0.32D-04     0.80D-04     9     0       0.15      2.10    diag2
  13     -293.38331913      -0.00000561     0.11D-04     0.51D-04     9     0       0.16      2.26    diag2
  14     -293.38331995      -0.00000082     0.42D-05     0.26D-04     9     0       0.16      2.42    diag2
  15     -293.38332006      -0.00000011     0.15D-05     0.74D-05     9     0       0.15      2.57    diag2
  16     -293.38332010      -0.00000004     0.80D-06     0.43D-05     9     0       0.16      2.73    diag2
  17     -293.38332010      -0.00000000     0.23D-06     0.14D-05     9     0       0.16      2.89    diag2
  18     -293.38332010      -0.00000000     0.57D-07     0.16D-06     0     0       0.16      3.05    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -293.383320102615
  RHF One-electron energy            -528.169904412618
  RHF Two-electron energy             234.786584310003
  RHF Kinetic energy                  205.138323079721
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.430173142191

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.09554     1  1  s    0.99990
    2.1     2.00000    -1.35041     1  1  d0   0.49766    1  1  d2+  0.86512
    3.1     2.00000    -1.35041     1  1  d1-  0.99718
    4.1     2.00000    -1.35041     1  1  d2-  0.99911
    5.1     2.00000    -1.35041     1  1  d1+  0.95716
    6.1     2.00000    -1.35041     1  1  d0   0.82861    1  1  d1+ -0.28724    1  1  d2+ -0.47914
    7.1     2.00000    -0.33235     1  1  s   -0.30651    1  5  s    0.44283    1  6  s    0.50143
    1.2     2.00000    -5.01052     1  1  py   0.99949
    2.2     2.00000    -5.01052     1  1  px   0.99980
    3.2     2.00000    -5.01052     1  1  pz   0.99914
    4.2     1.00000    -0.05790     1  5  pz   0.33854    1  6  pz   0.37007    1  7  pz   0.25616
    5.2     1.00000    -0.05790     1  5  px   0.33876    1  6  px   0.37031    1  7  px   0.25633
    6.2     1.00000    -0.05790     1  5  py   0.34003    1  6  py   0.37168    1  7  py   0.25732


 HOMO      6.2    -0.057898 =      -1.5755eV
 LUMO      7.2     0.138221 =       3.7612eV
 LUMO-HOMO         0.196119 =       5.3367eV

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
 CPU TIMES  *        11.43      3.05      8.18
 REAL TIME  *        12.92 SEC
 DISK USED  *        36.95 MB (local),        1.50 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     252 (  122  130)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.393D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.108D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.555D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.314D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 6 3 4 2 1 1 4 2   3 6 5 1 5 3 6 4 2 7   9 8151014131112 2 4   3 6 5 112 913151014
                                        811 7 2 4 3 6 5 110  131114 7 815 912 5 3   6 2 4 1101311 714 8  1512 9 5 3 6 2 41622
                                       27182124201923172625  28 1101311 714 81512   9 5 3 6 2 4 1 5 3 6   4 210131114 7 81512
                                        9 5 3 6 4 2 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.352D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.266D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.591D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.115D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.886D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.351D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 1 3 2 1   3 2 6 4 8 5 710 9 1   3 2 4 6 5 8 710 9 1   3 2 4 6 5 8 710 919
                                       11162114171815201312   9 710 5 8 4 6 2 1 3  18201315121417162111  19 9 710 5 8 4 6 2 1
                                        3182013151214172116  1911 9 710 5 8 4 6 2   1 3 9 710 5 8 4 618  20131512141721161119
                                        2 1 3 9 710 8 5 6 4   2 3 1 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  1649  ( 15 closed/active, 1122 closed/virtual, 0 active/active, 512 active/virtual )
 Total number of variables:    1775
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   18    0   -293.33050641    -293.35958741   -0.02908100    0.13040632 0.00009274 0.00000000  0.43E+00      1.19
   2    8   14    0   -293.35396244    -293.35762630   -0.00366385    0.19179668 0.00001030 0.00000000  0.42E-01      2.39
   3    7   12    0   -293.35765431    -293.35765495   -0.00000064    0.00166372 0.00000000 0.00000000  0.98E-03      3.58
   4    3    6    0   -293.35765496    -293.35765496   -0.00000000    0.00000034 0.00000000 0.00000000  0.31E-06      4.56

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.56E-09)
                       Final energy:   -293.35765496
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -293.358551809352
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07124566
 One electron energy                          -522.74871488
 Two electron energy                           229.39016307
 Virial ratio                                    2.43052016
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -293.358551809349
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07124566
 One electron energy                          -522.74871488
 Two electron energy                           229.39016307
 Virial ratio                                    2.43052016
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -293.358551809316
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07124566
 One electron energy                          -522.74871489
 Two electron energy                           229.39016308
 Virial ratio                                    2.43052016
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -293.318984397875
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07124566
 One electron energy                          -522.74871488
 Two electron energy                           229.42973048
 Virial ratio                                    2.43032722
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -293.318984397856
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07124566
 One electron energy                          -522.74871488
 Two electron energy                           229.42973049
 Virial ratio                                    2.43032722
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -293.318984397852
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07124566
 One electron energy                          -522.74871488
 Two electron energy                           229.42973049
 Virial ratio                                    2.43032722
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -293.318984397793
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07124566
 One electron energy                          -522.74871489
 Two electron energy                           229.42973049
 Virial ratio                                    2.43032722
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -293.318984397792
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.07124566
 One electron energy                          -522.74871489
 Two electron energy                           229.42973049
 Virial ratio                                    2.43032722
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -293.284642012370
 Nuclear energy                                  0.00000000
 Kinetic energy                                205.06384105
 One electron energy                          -522.59039018
 Two electron energy                           229.30574817
 Virial ratio                                    2.43021139
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.002066065141
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.997934337690
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     4.000000000000
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.920258683529
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.079733445566
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.077675251329
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.922332216744
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 3 5 1 1 2 4   6 3 5 1 4 2 6 5 3 9   7 8121114151310 2 4   6 5 3 1 9 7 8121114
                                       151310 2 4 6 5 3 1 9   712 81114151013 2 4   6 5 3 1 9 7 8121115  141310 2 4 6 3 52825
                                       17212326272419201822  16 1 9 712 811141513  10 2 4 6 5 3 1 4 2 6   3 5 9 7 81211141513
                                       10 2 4 6 5 3 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 2 1 3   2 1 4 6 5 810 7 9 3   1 2 4 6 510 8 7 9 3   1 2 4 6 510 8 9 711
                                       19211312141615171820   4 6 510 8 9 7 3 1 2  11192113121416151720  18 4 6 510 8 9 7 3 1
                                        2111921131214161517  1820 4 6 510 8 7 9 3   1 2 4 6 5 810 7 911  19211312141615172018
                                        3 1 2 4 6 5 810 7 9   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.34509     1  1  s    1.00064
    2.1     2.00000    -1.59962     1  1  d1+  1.00000
    3.1     2.00000    -1.59962     1  1  d0   1.00000
    4.1     2.00000    -1.59962     1  1  d1-  1.00000
    5.1     2.00000    -1.59962     1  1  d2-  1.00000
    6.1     2.00000    -1.59962     1  1  d2+  1.00000
    7.1     1.97364    -0.56037     1  1  s   -0.31542    1  5  s    0.47666    1  6  s    0.55455
    1.2     2.00000    -5.25956     1  1  pz   1.00003
    2.2     2.00000    -5.25956     1  1  px   1.00003
    3.2     2.00000    -5.25956     1  1  py   1.00003
    4.2     0.67545    -0.06242     1  5  py   0.42981    1  6  py   0.41038
    5.2     0.67545    -0.06242     1  5  px   0.42981    1  6  px   0.41038
    6.2     0.67545    -0.06242     1  5  pz   0.42981    1  6  pz   0.41038
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a         -0.00000000     -0.00000000      0.99344358
 2 0aa         -0.00000000      0.99344358     -0.00000000
 2 aa0          0.99344358      0.00000000     -0.00000000
 0 aa2         -0.11432344      0.00000000     -0.00000000
 0 2aa          0.00000000     -0.11432344     -0.00000000
 0 a2a          0.00000000      0.00000000     -0.11432344
 
 Energy:     -293.35855181   -293.35855181   -293.35855181
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.81093378     -0.00000000     -0.00000000     -0.01843485      0.00000000      0.56365543
 2 002         -0.38950184     -0.00000000     -0.00000000      0.71150668     -0.00000000      0.56365543
 2 b0a          0.00000000      0.00000000      0.00000000     -0.00000000     -0.70247069      0.00000000
 2 a0b         -0.00000000     -0.00000000     -0.00000000      0.00000000      0.70247069     -0.00000000
 2 0ab         -0.00000000     -0.00000000      0.70247069     -0.00000000     -0.00000000     -0.00000000
 2 0ba          0.00000000      0.00000000     -0.70247069      0.00000000      0.00000000      0.00000000
 2 ba0          0.00000000     -0.70247069      0.00000000      0.00000000      0.00000000      0.00000000
 2 ab0         -0.00000000      0.70247069     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 200         -0.42143194     -0.00000000     -0.00000000     -0.69307183      0.00000000      0.56365543
 0 202          0.09332058     -0.00000000     -0.00000000     -0.00212144      0.00000000     -0.12500355
 0 022         -0.04849752     -0.00000000     -0.00000000     -0.07975727     -0.00000000     -0.12500355
 0 220         -0.04482307     -0.00000000     -0.00000000      0.08187872      0.00000000     -0.12500355
 0 ba2          0.00000000      0.08083888      0.00000000      0.00000000      0.00000000      0.00000000
 0 ab2         -0.00000000     -0.08083888     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 2ab         -0.00000000     -0.00000000     -0.08083888     -0.00000000     -0.00000000     -0.00000000
 0 2ba          0.00000000      0.00000000      0.08083888      0.00000000      0.00000000      0.00000000
 0 a2b         -0.00000000      0.00000000      0.00000000      0.00000000     -0.08083888     -0.00000000
 0 b2a          0.00000000     -0.00000000     -0.00000000     -0.00000000      0.08083888      0.00000000
 
 Energy:     -293.31898440   -293.31898440   -293.31898440   -293.31898440   -293.31898440   -293.28464201
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.12      4.68      3.05      8.18
 REAL TIME  *        18.42 SEC
 DISK USED  *        71.78 MB (local),        1.90 GB (total)
 SF USED    *        95.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -293.3585518   2.0
    -293.3585518   2.0
    -293.3585518   2.0
    -293.3189844   6.0
    -293.3189844   6.0
    -293.3189844   6.0
    -293.3189844   6.0
    -293.3189844   6.0
    -293.2846420  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.35855181
     2      -293.35855181
     3      -293.35855181

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        370584
 Number of doubly external configurations:       7575450
 Total number of contracted configurations:      7946571
 Total number of uncontracted configurations:   43099315

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1990564 words, CPU-time:      0.80 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.35855181    -0.00000000    -1.11378357  0.35D-01  0.74D-01     1.12
    1     2     2     1.00000000     0.00000000  -293.35855181     0.00000000    -1.11339699  0.34D-01  0.74D-01     1.12
    1     3     3     1.00000000     0.00000000  -293.35855181     0.00000000    -1.11356295  0.34D-01  0.74D-01     1.12
    2     1     1     1.07467503    -0.92516372  -294.28371553    -0.92516372    -0.02723555  0.36D-02  0.15D-02    26.98
    2     2     2     1.07484834    -0.92501662  -294.28356843    -0.92501662    -0.02738015  0.37D-02  0.15D-02    26.98
    2     3     3     1.07508881    -0.92481497  -294.28336678    -0.92481497    -0.02757589  0.38D-02  0.15D-02    26.98
    3     1     1     1.06117003    -0.95042792  -294.30897973    -0.02526420    -0.00062543  0.97D-04  0.43D-04    52.59
    3     2     2     1.06116224    -0.95042652  -294.30897833    -0.02540990    -0.00062695  0.97D-04  0.43D-04    52.59
    3     3     3     1.06115144    -0.95042468  -294.30897649    -0.02560971    -0.00062898  0.97D-04  0.44D-04    52.59
    4     1     1     1.06006624    -0.95101911  -294.30957092    -0.00059119    -0.00002860  0.39D-05  0.21D-05    77.90
    4     2     2     1.06006298    -0.95101909  -294.30957090    -0.00059257    -0.00002865  0.39D-05  0.21D-05    77.90
    4     3     3     1.06005836    -0.95101905  -294.30957086    -0.00059437    -0.00002870  0.39D-05  0.21D-05    77.90
    5     1     1     1.06010461    -0.95104640  -294.30959821    -0.00002729    -0.00000096  0.85D-07  0.84D-07   103.62
    5     2     2     1.06010432    -0.95104640  -294.30959821    -0.00002731    -0.00000096  0.85D-07  0.85D-07   103.62
    5     3     3     1.06010393    -0.95104640  -294.30959821    -0.00002735    -0.00000096  0.85D-07  0.85D-07   103.62
    6     1     1     1.06013065    -0.95104736  -294.30959917    -0.00000096    -0.00000003  0.19D-08  0.40D-08   129.36
    6     2     2     1.06013056    -0.95104736  -294.30959917    -0.00000096    -0.00000003  0.19D-08  0.40D-08   129.36
    6     3     3     1.06013045    -0.95104736  -294.30959917    -0.00000096    -0.00000003  0.19D-08  0.40D-08   129.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   1.6%
 P   0.6%   9.1%  25.0%

 Initialization:   0.7%
 Other:           62.9%

 Total CPU:      129.4 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.0000000   0.0000000   0.9655371
 2222222222/0/           0.0000000   0.9655371  -0.0000000
 22222222220//           0.9655371  -0.0000000  -0.0000000
 2222220222//2          -0.0000000  -0.0000000  -0.1039955
 2222220222/2/          -0.0000000  -0.1039954   0.0000000
 22222202222//          -0.1039953   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.971096    0.000000
 2           0.000000   -0.000000    0.971096
 3           0.971096   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971096   -0.000000   -0.000000
 2          -0.000000    0.971096   -0.000000
 3          -0.000000   -0.000000    0.971096


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97109569 (fixed)   0.97112143 (relaxed)   0.97109569 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026841   -0.00058919   -0.85727483
 Singles      0.01151033   -0.04223537   -0.05014972
 Pairs        0.04863646   -0.00000000   -0.04362281
 Total        1.06041520   -0.04282456   -0.95104736
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35855181
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54132287
 One electron energy                 -521.77213142
 Two electron energy                  227.46253225
 Virial quotient                       -1.43187557
 Correlation energy                    -0.95104736
 !MRCI STATE 1.1 Energy              -294.309599169311

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.36705689 (Davidson, fixed reference)
 Cluster corrected energies          -294.36700343 (Davidson, relaxed reference)
 Cluster corrected energies          -294.36705689 (Davidson, rotated reference)

 Cluster corrected energies          -294.36391770 (Pople, fixed reference)
 Cluster corrected energies          -294.36386464 (Pople, relaxed reference)
 Cluster corrected energies          -294.36391770 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97109574 (fixed)   0.97112147 (relaxed)   0.97109574 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026841   -0.00058919   -0.00079635
 Singles      0.01151024   -0.04223527   -0.05014964
 Pairs        0.04863646   -0.90822290   -0.90010137
 Total        1.06041510   -0.95104736   -0.95104736
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35855181
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54132615
 One electron energy                 -521.77213387
 Two electron energy                  227.46253470
 Virial quotient                       -1.43187555
 Correlation energy                    -0.95104736
 !MRCI STATE 2.1 Energy              -294.309599169251

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.36705679 (Davidson, fixed reference)
 Cluster corrected energies          -294.36700334 (Davidson, relaxed reference)
 Cluster corrected energies          -294.36705679 (Davidson, rotated reference)

 Cluster corrected energies          -294.36391761 (Pople, fixed reference)
 Cluster corrected energies          -294.36386455 (Pople, relaxed reference)
 Cluster corrected energies          -294.36391761 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97109579 (fixed)   0.97112152 (relaxed)   0.97109579 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026841   -0.00058919   -0.85727519
 Singles      0.01151013   -0.04223515   -0.05014954
 Pairs        0.04863646    0.00000000   -0.04362263
 Total        1.06041500   -0.04282434   -0.95104736
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.35855181
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54133194
 One electron energy                 -521.77213756
 Two electron energy                  227.46253839
 Virial quotient                       -1.43187551
 Correlation energy                    -0.95104736
 !MRCI STATE 3.1 Energy              -294.309599169160

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.36705669 (Davidson, fixed reference)
 Cluster corrected energies          -294.36700324 (Davidson, relaxed reference)
 Cluster corrected energies          -294.36705669 (Davidson, rotated reference)

 Cluster corrected energies          -294.36391751 (Pople, fixed reference)
 Cluster corrected energies          -294.36386445 (Pople, relaxed reference)
 Cluster corrected energies          -294.36391751 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      188.11       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       147.99    131.84      4.68      3.05      8.18
 REAL TIME  *       159.21 SEC
 DISK USED  *       257.06 MB (local),        4.08 GB (total)
 SF USED    *         1.79 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -294.36705689  AU                              
 SETTING HLSDIAG(2)     =      -294.36705679  AU                              
 SETTING HLSDIAG(3)     =      -294.36705669  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -293.31898440
     2      -293.31898440
     3      -293.31898440
     4      -293.31898440
     5      -293.31898440
     6      -293.28464201

 Number of blocks in overlap matrix:   679   Smallest eigenvalue:  0.25D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:        264542
 Number of doubly external configurations:      12835564
 Total number of contracted configurations:     13100556
 Total number of uncontracted configurations:   33375942

 Diagonal Coupling coefficients finished.               Storage:    700677 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2101206 words, CPU-time:      1.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -293.31898440    -0.00000000    -1.12484534  0.40D-01  0.78D-01     1.90
    1     2     2     1.00000000     0.00000000  -293.31898440    -0.00000000    -1.12525978  0.40D-01  0.78D-01     1.90
    1     3     3     1.00000000     0.00000000  -293.31898440     0.00000000    -1.12559680  0.41D-01  0.78D-01     1.90
    1     4     4     1.00000000     0.00000000  -293.31898440     0.00000000    -1.12458983  0.40D-01  0.78D-01     1.90
    1     5     5     1.00000000     0.00000000  -293.31898440     0.00000000    -1.12534116  0.41D-01  0.78D-01     1.90
    1     6     6     1.00000000     0.00000000  -293.28464201     0.00000000    -1.11124833  0.16D-01  0.93D-01     1.90
    2     1     1     1.08032056    -0.93006444  -294.24904884    -0.93006444    -0.02944355  0.42D-02  0.18D-02    94.31
    2     2     2     1.08033103    -0.93003259  -294.24901699    -0.93003259    -0.02950212  0.42D-02  0.18D-02    94.31
    2     3     3     1.08064291    -0.92973008  -294.24871448    -0.92973008    -0.02983646  0.44D-02  0.19D-02    94.31
    2     4     4     1.08087221    -0.92954333  -294.24852773    -0.92954333    -0.03001450  0.45D-02  0.19D-02    94.31
    2     5     5     1.08095158    -0.92945844  -294.24844283    -0.92945844    -0.03012024  0.45D-02  0.19D-02    94.31
    2     6     6     1.07545164    -0.92648882  -294.21113083    -0.92648882    -0.02743894  0.34D-02  0.24D-02    94.31
    3     1     1     1.06446284    -0.95735119  -294.27633559    -0.02728674    -0.00066235  0.89D-04  0.61D-04   187.23
    3     2     2     1.06446096    -0.95734811  -294.27633251    -0.02731552    -0.00066434  0.89D-04  0.61D-04   187.23
    3     3     3     1.06448562    -0.95733928  -294.27632368    -0.02760920    -0.00067756  0.92D-04  0.62D-04   187.23
    3     4     4     1.06448158    -0.95733529  -294.27631969    -0.02779197    -0.00068105  0.92D-04  0.63D-04   187.23
    3     5     5     1.06448021    -0.95733405  -294.27631845    -0.02787562    -0.00068180  0.92D-04  0.63D-04   187.23
    3     6     6     1.06233488    -0.95184503  -294.23648704    -0.02535621    -0.00067570  0.71D-04  0.96D-04   187.23
    4     1     1     1.06313569    -0.95800731  -294.27699171    -0.00065612    -0.00003439  0.49D-05  0.29D-05   280.50
    4     2     2     1.06313168    -0.95800706  -294.27699146    -0.00065895    -0.00003463  0.49D-05  0.29D-05   280.50
    4     3     3     1.06313750    -0.95800622  -294.27699062    -0.00066694    -0.00003584  0.51D-05  0.30D-05   280.50
    4     4     4     1.06313938    -0.95800619  -294.27699059    -0.00067090    -0.00003584  0.51D-05  0.30D-05   280.50
    4     5     5     1.06313516    -0.95800607  -294.27699046    -0.00067201    -0.00003599  0.51D-05  0.30D-05   280.50
    4     6     6     1.06104437    -0.95252104  -294.23716305    -0.00067600    -0.00003521  0.51D-05  0.34D-05   280.50
    5     1     1     1.06311429    -0.95804060  -294.27702500    -0.00003329    -0.00000136  0.16D-06  0.12D-06   372.96
    5     2     2     1.06311311    -0.95804058  -294.27702498    -0.00003352    -0.00000137  0.16D-06  0.12D-06   372.96
    5     3     3     1.06311476    -0.95804054  -294.27702494    -0.00003432    -0.00000142  0.16D-06  0.12D-06   372.96
    5     4     4     1.06311483    -0.95804054  -294.27702494    -0.00003435    -0.00000142  0.16D-06  0.12D-06   372.96
    5     5     5     1.06311404    -0.95804053  -294.27702493    -0.00003447    -0.00000143  0.16D-06  0.12D-06   372.96
    5     6     6     1.06101557    -0.95255569  -294.23719770    -0.00003465    -0.00000164  0.20D-06  0.15D-06   372.96
    6     1     1     1.06311395    -0.95804195  -294.27702635    -0.00000135    -0.00000004  0.40D-08  0.47D-08   466.62
    6     2     2     1.06311375    -0.95804195  -294.27702634    -0.00000136    -0.00000005  0.41D-08  0.48D-08   466.62
    6     3     3     1.06311409    -0.95804195  -294.27702634    -0.00000140    -0.00000005  0.39D-08  0.50D-08   466.62
    6     4     4     1.06311386    -0.95804195  -294.27702634    -0.00000141    -0.00000005  0.40D-08  0.51D-08   466.62
    6     5     5     1.06311380    -0.95804195  -294.27702634    -0.00000142    -0.00000005  0.41D-08  0.51D-08   466.62
    6     6     6     1.06102234    -0.95255729  -294.23719930    -0.00000160    -0.00000006  0.57D-08  0.69D-08   466.62
    7     1     1     1.06311362    -0.95804199  -294.27702639    -0.00000005    -0.00000000  0.38D-09  0.14D-09   559.29
    7     2     2     1.06311367    -0.95804199  -294.27702639    -0.00000005    -0.00000000  0.40D-09  0.15D-09   559.29
    7     3     3     1.06311358    -0.95804199  -294.27702639    -0.00000005    -0.00000000  0.38D-09  0.15D-09   559.29
    7     4     4     1.06311367    -0.95804199  -294.27702639    -0.00000005    -0.00000000  0.40D-09  0.15D-09   559.29
    7     5     5     1.06311366    -0.95804199  -294.27702639    -0.00000005    -0.00000000  0.40D-09  0.15D-09   559.29
    7     6     6     1.06102023    -0.95255735  -294.23719937    -0.00000006    -0.00000000  0.46D-09  0.21D-09   559.29


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.4%   7.1%  28.4%

 Initialization:   0.3%
 Other:           63.2%

 Total CPU:      559.3 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.9641321  -0.0000000
 22222222220/\          -0.0000000   0.0000000   0.0000000   0.9641321   0.0000000  -0.0000000
 2222222222/\0          -0.0000000   0.9641321  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2222222222020           0.7831668   0.0000000  -0.0796889   0.0000000   0.0000000   0.5486353
 2222222222002          -0.3225708   0.0000000   0.7180868  -0.0000000   0.0000000   0.5486353
 2222222222200          -0.4605960  -0.0000000  -0.6383979  -0.0000000  -0.0000000   0.5486353
 2222220222022          -0.0496068  -0.0000000  -0.0687563  -0.0000000  -0.0000000  -0.1143745
 2222220222202           0.0843480   0.0000000  -0.0085826   0.0000000   0.0000000  -0.1143745
 2222220222220          -0.0347413   0.0000000   0.0773388  -0.0000000   0.0000000  -0.1143745
 2222220222/\2           0.0000000  -0.1038383   0.0000000   0.0000000   0.0000000  -0.0000000
 22222202222/\           0.0000000  -0.0000000  -0.0000000  -0.1038383  -0.0000000   0.0000000
 2222220222/2\           0.0000000  -0.0000000   0.0000000   0.0000000  -0.1038383   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966736   -0.000000   -0.000000    0.075525   -0.000000   -0.000000
 2           0.000000    0.969682    0.000000    0.000000    0.000000   -0.000000
 3          -0.075525   -0.000000    0.000000    0.966736   -0.000000    0.000000
 4           0.000000   -0.000000    0.969682   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.969682    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970615

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969682    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.969682   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.969682    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.969682    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.969682   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970615


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96673639 (fixed)   0.96970780 (relaxed)   0.96968206 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037215   -0.00085396   -0.85792055
 Singles      0.01327076   -0.04599210   -0.05520130
 Pairs        0.04986635    0.00000001   -0.04492015
 Total        1.06350927   -0.04684604   -0.95804199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31898440
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54272704
 One electron energy                 -521.72932454
 Two electron energy                  227.45229815
 Virial quotient                       -1.43170732
 Correlation energy                    -0.95804199
 !MRCI STATE 1.1 Energy              -294.277026392774

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33787094 (Davidson, fixed reference)
 Cluster corrected energies          -294.33781685 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33787094 (Davidson, rotated reference)

 Cluster corrected energies          -294.33534972 (Pople, fixed reference)
 Cluster corrected energies          -294.33529507 (Pople, relaxed reference)
 Cluster corrected energies          -294.33534972 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96968204 (fixed)   0.96970778 (relaxed)   0.96968204 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037215   -0.00085396   -0.85792044
 Singles      0.01327080   -0.04599216   -0.05520137
 Pairs        0.04986636    0.00000000   -0.04492019
 Total        1.06350931   -0.04684611   -0.95804199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31898440
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54274916
 One electron energy                 -521.72934046
 Two electron energy                  227.45231407
 Virial quotient                       -1.43170716
 Correlation energy                    -0.95804199
 !MRCI STATE 2.1 Energy              -294.277026392705

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33787098 (Davidson, fixed reference)
 Cluster corrected energies          -294.33781689 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33787098 (Davidson, rotated reference)

 Cluster corrected energies          -294.33534976 (Pople, fixed reference)
 Cluster corrected energies          -294.33529512 (Pople, relaxed reference)
 Cluster corrected energies          -294.33534976 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96673641 (fixed)   0.96970782 (relaxed)   0.96968208 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037215   -0.00085395   -0.85792054
 Singles      0.01327076   -0.04599210   -0.05520131
 Pairs        0.04986631   -0.00000003   -0.04492015
 Total        1.06350922   -0.04684609   -0.95804199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31898440
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54273117
 One electron energy                 -521.72932931
 Two electron energy                  227.45230292
 Virial quotient                       -1.43170729
 Correlation energy                    -0.95804199
 !MRCI STATE 3.1 Energy              -294.277026392697

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33787090 (Davidson, fixed reference)
 Cluster corrected energies          -294.33781680 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33787090 (Davidson, rotated reference)

 Cluster corrected energies          -294.33534968 (Pople, fixed reference)
 Cluster corrected energies          -294.33529503 (Pople, relaxed reference)
 Cluster corrected energies          -294.33534968 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96968204 (fixed)   0.96970778 (relaxed)   0.96968204 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037215   -0.00085395   -0.85792041
 Singles      0.01327082   -0.04599218   -0.05520137
 Pairs        0.04986634   -0.00000000   -0.04492022
 Total        1.06350932   -0.04684614   -0.95804199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31898440
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54274867
 One electron energy                 -521.72933850
 Two electron energy                  227.45231210
 Virial quotient                       -1.43170717
 Correlation energy                    -0.95804199
 !MRCI STATE 4.1 Energy              -294.277026392693

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33787098 (Davidson, fixed reference)
 Cluster corrected energies          -294.33781689 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33787098 (Davidson, rotated reference)

 Cluster corrected energies          -294.33534977 (Pople, fixed reference)
 Cluster corrected energies          -294.33529512 (Pople, relaxed reference)
 Cluster corrected energies          -294.33534977 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96968205 (fixed)   0.96970779 (relaxed)   0.96968205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00037215   -0.00085395   -0.85792041
 Singles      0.01327082   -0.04599220   -0.05520138
 Pairs        0.04986632   -0.00000000   -0.04492020
 Total        1.06350930   -0.04684615   -0.95804199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.31898440
 Nuclear energy                         0.00000000
 Kinetic energy                       205.54275116
 One electron energy                 -521.72934177
 Two electron energy                  227.45231538
 Virial quotient                       -1.43170715
 Correlation energy                    -0.95804199
 !MRCI STATE 5.1 Energy              -294.277026392648

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.33787097 (Davidson, fixed reference)
 Cluster corrected energies          -294.33781688 (Davidson, relaxed reference)
 Cluster corrected energies          -294.33787097 (Davidson, rotated reference)

 Cluster corrected energies          -294.33534975 (Pople, fixed reference)
 Cluster corrected energies          -294.33529510 (Pople, relaxed reference)
 Cluster corrected energies          -294.33534975 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97061547 (fixed)   0.97069392 (relaxed)   0.97061547 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041897   -0.00069647   -0.00103212
 Singles      0.00565384   -0.02854565   -0.03196687
 Pairs        0.05539196   -0.92331523   -0.91955836
 Total        1.06146477   -0.95255735   -0.95255735
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -293.28464201
 Nuclear energy                         0.00000000
 Kinetic energy                       205.55934079
 One electron energy                 -521.57247505
 Two electron energy                  227.33527568
 Virial quotient                       -1.43139785
 Correlation energy                    -0.95255735
 !MRCI STATE 6.1 Energy              -294.237199366675

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -294.29574808 (Davidson, fixed reference)
 Cluster corrected energies          -294.29558466 (Davidson, relaxed reference)
 Cluster corrected energies          -294.29574808 (Davidson, rotated reference)

 Cluster corrected energies          -294.29322453 (Pople, fixed reference)
 Cluster corrected energies          -294.29306001 (Pople, relaxed reference)
 Cluster corrected energies          -294.29322453 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      792.44       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       722.34    574.33    131.84      4.68      3.05      8.18
 REAL TIME  *       770.65 SEC
 DISK USED  *       861.39 MB (local),       11.16 GB (total)
 SF USED    *         5.66 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -294.33787094  AU                              
 SETTING HLSDIAG(5)     =      -294.33787098  AU                              
 SETTING HLSDIAG(6)     =      -294.33787090  AU                              
 SETTING HLSDIAG(7)     =      -294.33787098  AU                              
 SETTING HLSDIAG(8)     =      -294.33787097  AU                              
 SETTING HLSDIAG(9)     =      -294.29574808  AU                              


         HLSDIAG
    -294.3670569
    -294.3670568
    -294.3670567
    -294.3378709
    -294.3378710
    -294.3378709
    -294.3378710
    -294.3378710
    -294.2957481
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -294.309599   -294.309599   -294.309599
 Replaced energies:   -294.367057   -294.367057   -294.367057

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -294.277026   -294.277026   -294.277026   -294.277026   -294.277026   -294.237199
 Replaced energies:   -294.337871   -294.337871   -294.337871   -294.337871   -294.337871   -294.295748



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -294.36705689

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -216.25
                           -0.00    -454.37       0.00       0.00      -0.00    -321.29       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.02       0.00      -0.00       0.00    -321.29       0.00       0.00       0.00       0.00
                          454.37       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -367.70

    3   3.1  1.0  1.0       0.00       0.00       0.04       0.00     321.29      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00     321.29      -0.00      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00    -321.29       0.00       0.00       0.00       0.00      -0.00    -321.29       0.00

    5   2.1  1.0  0.0       0.00       0.00     321.29       0.00       0.02       0.00      -0.00       0.00    -321.29       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    6   3.1  1.0  0.0      -0.00    -321.29      -0.00       0.00       0.00       0.04       0.00     321.29      -0.00       0.00
                          321.29      -0.00       0.00      -0.00      -0.00       0.00     321.29      -0.00      -0.00     214.18

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -216.25
                           -0.00      -0.00      -0.00      -0.00      -0.00    -321.29       0.00     454.37      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     321.29       0.00       0.02       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00    -454.37      -0.00       0.00     367.70

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -321.29      -0.00       0.00       0.00       0.04      -0.00
                           -0.00      -0.00      -0.00     321.29      -0.00       0.00       0.00      -0.00      -0.00       0.00

   10   1.1  0.0  0.0    -216.25       0.00      -0.00       0.00       0.00       0.00    -216.25       0.00      -0.00    6405.58
                            0.00     367.70       0.00      -0.00       0.00    -214.18      -0.00    -367.70      -0.00       0.00

   11   2.1  0.0  0.0      -0.00    -320.08       0.00       0.00       0.00       0.00      -0.00    -320.08       0.00       0.00
                         -320.08       0.00      -0.00       0.00      -0.00       0.00     320.08      -0.00       0.00      -0.00

   12   3.1  0.0  0.0    -299.73       0.00      -0.00       0.00       0.00       0.00    -299.73       0.00      -0.00       0.00
                            0.00     -37.41      -0.00      -0.00      -0.00     476.80      -0.00      37.41       0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00    -320.08      -0.00    -452.66      -0.00      -0.00      -0.00     320.08      -0.00

   14   5.1  0.0  0.0      -0.00       0.00     320.08       0.00       0.00       0.00      -0.00       0.00     320.08       0.00
                            0.00       0.00      -0.00     452.66      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   15   6.1  0.0  0.0    -533.16       0.00       0.00       0.00       0.00       0.00    -533.16       0.00       0.00       0.00
                           -0.00    -533.16       0.00      -0.00      -0.00    -754.00       0.00     533.16      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00    -299.73      -0.00      -0.00    -533.16
                          320.08      -0.00      -0.00      -0.00       0.00

    2   2.1  1.0  1.0    -320.08       0.00       0.00       0.00       0.00
                           -0.00      37.41      -0.00      -0.00     533.16

    3   3.1  1.0  1.0       0.00      -0.00      -0.00     320.08       0.00
                            0.00       0.00     320.08       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -452.66       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     452.66       0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00    -476.80       0.00      -0.00     754.00

    7   1.1  1.0 -1.0      -0.00    -299.73      -0.00      -0.00    -533.16
                         -320.08       0.00       0.00       0.00      -0.00

    8   2.1  1.0 -1.0    -320.08       0.00       0.00       0.00       0.00
                            0.00     -37.41       0.00       0.00    -533.16

    9   3.1  1.0 -1.0       0.00      -0.00      -0.00     320.08       0.00
                           -0.00      -0.00    -320.08      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6405.57       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6405.58       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6405.57       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6405.57       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15650.47
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -294.36705689 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -454.369      -0.000    -454.369

    2    1  |1 1>+              0.000       0.021       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     454.369       0.000

    3    1  |1 1>+              0.000       0.000       0.043       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     454.369      -0.000       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000    -454.369       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.021       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.043      -0.000    -454.369
                              454.369      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000    -454.369       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    -454.369       0.000       0.021
                              454.369       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     454.369       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>            -305.829       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -214.182       0.000     520.011

    2    1  |0 0>              -0.000    -452.659       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000    -452.660       0.000

    3    1  |0 0>            -423.887       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     476.799       0.000     -52.912

    4    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -452.659      -0.000       0.000       0.000

    5    1  |0 0>              -0.000       0.000     452.659       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     452.659      -0.000       0.000       0.000       0.000

    6    1  |0 0>            -754.002       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000    -754.002      -0.000    -754.002

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000    -305.829      -0.000    -423.887      -0.000      -0.000    -754.002
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000    -452.659       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000     452.659       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000    -452.659       0.000

    2    1  |1 0>             454.369       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     452.659       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     214.182      -0.000    -476.799       0.000      -0.000     754.002

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     452.660      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -520.011      -0.000      52.912      -0.000      -0.000     754.002

    3    1  |1 1>-              0.043       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     452.659       0.000      -0.000

    1    1  |0 0>               0.000    6405.576       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6405.566       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6405.585       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6405.565       0.000       0.000
                             -452.659      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6405.569       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15650.473
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -294.37166371    -0.00460683    -1011.08      0.00000000        0.00      0.0000
    2  -294.36912710    -0.00207021     -454.36      0.00253662      556.72      0.0690
    3  -294.36912705    -0.00207016     -454.35      0.00253667      556.73      0.0690
    4  -294.36912700    -0.00207011     -454.34      0.00253671      556.74      0.0690
    5  -294.36529680     0.00176008      386.29      0.00636691     1397.38      0.1733
    6  -294.36529678     0.00176010      386.30      0.00636693     1397.38      0.1733
    7  -294.36529673     0.00176015      386.31      0.00636698     1397.39      0.1733
    8  -294.36529669     0.00176020      386.32      0.00636702     1397.40      0.1733
    9  -294.36529669     0.00176020      386.32      0.00636703     1397.40      0.1733
   10  -294.33756078     0.02949611     6473.65      0.03410293     7484.73      0.9280
   11  -294.33756078     0.02949611     6473.65      0.03410294     7484.73      0.9280
   12  -294.33756077     0.02949612     6473.65      0.03410295     7484.73      0.9280
   13  -294.33756072     0.02949616     6473.66      0.03410299     7484.74      0.9280
   14  -294.33756068     0.02949620     6473.67      0.03410303     7484.75      0.9280
   15  -294.29528167     0.07177521    15752.84      0.07638204    16763.92      2.0785

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57559339  0.00000000  0.00000000 -0.00000000  0.78163855 -0.00000000 -0.00000000  0.21963996
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.70709817 -0.00000000 -0.00000000  0.00000000  0.70315011 -0.00000000 -0.00000000
                           0.00000000 -0.00017580  0.00000000 -0.00000000 -0.00000000 -0.00003846 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.70708899  0.00000000  0.00000000  0.00000000  0.70151310  0.00000000
                           0.00000000  0.00000000 -0.00012129 -0.00000000  0.00000000 -0.00000000  0.04808758  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00012129  0.00000000  0.00000000 -0.00000000  0.04808513  0.00000000
                          -0.00000000  0.00000000  0.70712455  0.00000000 -0.00000000 -0.00000000 -0.70147747 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00001164 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.70711597 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.57557609 -0.00000000 -0.00000000 -0.00000000  0.20060828 -0.00000000 -0.00000000  0.78675070

   1    1  |1 1>-         -0.00000000  0.00017580 -0.00000000  0.00000000 -0.00000000 -0.00003846 -0.00000000  0.00000000
                          -0.00000000  0.70711535 -0.00000000 -0.00000000 -0.00000000 -0.70313285  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.57558505 -0.00000000  0.00000000 -0.00000000  0.58104475 -0.00000000  0.00000000 -0.56709529

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00001164 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.70709759 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000010 -0.00000000 -0.00000000 -0.00000000  0.08277252 -0.00000000  0.00000000 -0.06582732
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000115  0.00000000 -0.00000000  0.00000000  0.10575495 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000578 -0.00000000  0.00000000

   3    1  |0 0>           0.00000100 -0.00000000 -0.00000000  0.00000000  0.06582702 -0.00000000 -0.00000000  0.08277267
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000115  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000231  0.00000000  0.00000000 -0.00000000 -0.10550744 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00723236 -0.00000000

   6    1  |0 0>           0.07814255 -0.00000000 -0.00000000  0.00000000 -0.00000072  0.00000000  0.00000000 -0.00000076
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.05112538 -0.06958804 -0.04511556
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.07477776  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00059677 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.07244143  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.01855644 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.01855632 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.07244093 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.02127148  0.00181038 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.70281040  0.07475817 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.03470264 -0.07907030  0.04511568

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00059677 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.07477756 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.08582803  0.00948177  0.04511562

   3    1  |1 1>-         -0.02127203  0.00181039 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.70282885  0.07475849 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99435502 -0.00857663  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000005  0.99436056 -0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00793560  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00857667  0.99435503 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.10570684  0.99410074 -0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00319936 -0.02407366  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000001  0.96329027  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.24675440 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004  0.99694220
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -294.37166371     -0.00460683    -1011.08      0.00000000        0.00      0.0000
     2   1   -294.36912710     -0.00207021     -454.36      0.00253662      556.72      0.0690
     3   1   -294.36912705     -0.00207016     -454.35      0.00253667      556.73      0.0690
     4   1   -294.36912700     -0.00207011     -454.34      0.00253671      556.74      0.0690
     5   1   -294.36529680      0.00176008      386.29      0.00636691     1397.38      0.1733
     6   1   -294.36529678      0.00176010      386.30      0.00636693     1397.38      0.1733
     7   1   -294.36529673      0.00176015      386.31      0.00636698     1397.39      0.1733
     8   1   -294.36529669      0.00176020      386.32      0.00636702     1397.40      0.1733
     9   1   -294.36529669      0.00176020      386.32      0.00636703     1397.40      0.1733
    10   1   -294.33756078      0.02949611     6473.65      0.03410293     7484.73      0.9280
    11   1   -294.33756078      0.02949611     6473.65      0.03410294     7484.73      0.9280
    12   1   -294.33756077      0.02949612     6473.65      0.03410295     7484.73      0.9280
    13   1   -294.33756072      0.02949616     6473.66      0.03410299     7484.74      0.9280
    14   1   -294.33756068      0.02949620     6473.67      0.03410303     7484.75      0.9280
    15   1   -294.29528167      0.07177521    15752.84      0.07638204    16763.92      2.0785

 E0 =   -294.36705689 is the energy of the lowest zeroth-order state
 E1 =   -294.37166371 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57559339  0.00000000  0.00000000 -0.00000000  0.78163855 -0.00000000 -0.00000000  0.21963996
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.70709817 -0.00000000 -0.00000000  0.00000000  0.70315011 -0.00000000 -0.00000000
                                0.00000000 -0.00017580  0.00000000 -0.00000000 -0.00000000 -0.00003846 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000  0.70708899  0.00000000  0.00000000  0.00000000  0.70151310  0.00000000
                                0.00000000  0.00000000 -0.00012129 -0.00000000  0.00000000 -0.00000000  0.04808758  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00012129  0.00000000  0.00000000 -0.00000000  0.04808513  0.00000000
                               -0.00000000  0.00000000  0.70712455  0.00000000 -0.00000000 -0.00000000 -0.70147747 -0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00001164 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.70711597 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.57557609 -0.00000000 -0.00000000 -0.00000000  0.20060828 -0.00000000 -0.00000000  0.78675070

  7  1     1    1  |1 1>-      -0.00000000  0.00017580 -0.00000000  0.00000000 -0.00000000 -0.00003846 -0.00000000  0.00000000
                               -0.00000000  0.70711535 -0.00000000 -0.00000000 -0.00000000 -0.70313285  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.57558505 -0.00000000  0.00000000 -0.00000000  0.58104475 -0.00000000  0.00000000 -0.56709529

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00001164 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.70709759 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000010 -0.00000000 -0.00000000 -0.00000000  0.08277252 -0.00000000  0.00000000 -0.06582732
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000115  0.00000000 -0.00000000  0.00000000  0.10575495 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000578 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000100 -0.00000000 -0.00000000  0.00000000  0.06582702 -0.00000000 -0.00000000  0.08277267
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000115  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000  0.00000231  0.00000000  0.00000000 -0.00000000 -0.10550744 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00723236 -0.00000000

 15  1     6    1  |0 0>        0.07814255 -0.00000000 -0.00000000  0.00000000 -0.00000072  0.00000000  0.00000000 -0.00000076
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.05112538 -0.06958804 -0.04511556
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.07477776  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00059677 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.07244143  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.01855644 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.01855632 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.07244093 -0.00000000  0.00000000  0.00000000

  5  1     2    1  |1 0>       -0.02127148  0.00181038 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.70281040  0.07475817 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.03470264 -0.07907030  0.04511568

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00059677 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.07477756 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.08582803  0.00948177  0.04511562

  9  1     3    1  |1 1>-      -0.02127203  0.00181039 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.70282885  0.07475849 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99435502 -0.00857663  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000005  0.99436056 -0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00793560  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00857667  0.99435503 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.10570684  0.99410074 -0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00319936 -0.02407366  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000001  0.96329027  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.24675440 -0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004  0.99694220
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.13%    0.00%    0.00%    0.00%   61.10%    0.00%    0.00%    4.82%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.13%    0.00%    0.00%    0.00%    4.02%    0.00%    0.00%   61.90%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.13%    0.00%    0.00%    0.00%   33.76%    0.00%    0.00%   32.16%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.69%    0.00%    0.00%    0.43%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.12%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.43%    0.00%    0.00%    0.69%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.12%    0.00%
 15  1     6    1  |0 0>          0.61%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.26%    0.48%    0.20%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         49.44%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.12%    0.63%    0.20%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.74%    0.01%    0.20%
  9  1     3    1  |1 1>-        49.44%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.87%    0.01%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   98.88%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   98.87%    0.00%
 13  1     4    1  |0 0>          1.12%   98.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%   98.88%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.39%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      792.44       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       963.39    241.05    574.33    131.84      4.68      3.05      8.18
 REAL TIME  *      1043.54 SEC
 DISK USED  *       861.39 MB (local),       11.16 GB (total)
 SF USED    *         5.66 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -294.295281674530

              CI              CI           MULTI         RHF-SCF
   -294.23719937   -294.30959917   -293.28464201   -293.38332010
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
