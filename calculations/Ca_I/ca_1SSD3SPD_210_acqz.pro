
 Working directory              : /wrk/irikura/molpro.Vf1eNoq7Yr/
 Global scratch directory       : /wrk/irikura/molpro.Vf1eNoq7Yr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Vf1eNoq7Yr/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ca SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ca};
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 NSING=7
 NTRIP=9
 
                                                                                 ! Active space (2/10)
 {multi
     closed,3,6
     occ,10,9
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5301.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5301.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ca SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 17-Apr-24          TIME: 12:32:27  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CA     S aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry CA     P aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry CA     D aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry CA     F aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry CA     G aug-cc-pwCVQZ-DK     selected for orbital group  1


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

   1  CA     20.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   20
 NUMBER OF PRIMITIVE AOS:         267
 NUMBER OF SYMMETRY AOS:          223
 NUMBER OF CONTRACTIONS:          143   (   78Ag  +   65Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     54.002 MB (compressed) written to integral file ( 13.6%)

     Node minimum: 1.311 MB, node maximum: 9.175 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2231178.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2231178      RECORD LENGTH: 524288

 Memory used in sort:       2.79 MW

 SORT1 READ    50611021. AND WROTE      415531. INTEGRALS IN      2 RECORDS. CPU TIME:     0.19 SEC, REAL TIME:     0.21 SEC
 SORT2 READ     5153556. AND WROTE    26875641. INTEGRALS IN    252 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC

 Node minimum:     2230310.  Node maximum:     2244345. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.135E-04 0.112E-02 0.123E-02 0.123E-02 0.123E-02 0.123E-02 0.123E-02 0.205E-02
         2 0.228E-03 0.228E-03 0.228E-03 0.665E-02 0.665E-02 0.665E-02 0.161E-01 0.161E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.50      2.33
 REAL TIME  *         3.06 SEC
 DISK USED  *        29.79 MB (local),      483.45 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   4   6

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -679.62929276    -679.62929276     0.00D+00     0.87D-01     0     0       0.02      0.04    start
   2     -679.62929280      -0.00000004     0.54D-04     0.40D-04     1     0       0.01      0.05    diag
   3     -679.62929280      -0.00000000     0.32D-05     0.32D-05     2     0       0.02      0.07    diag
   4     -679.62929280      -0.00000000     0.56D-06     0.58D-06     3     0       0.01      0.08    diag
   5     -679.62929280      -0.00000000     0.27D-07     0.16D-06     0     0       0.01      0.09    diag

 Final occupancy:   4   6

 !RHF STATE 1.1 Energy               -679.629292800450
  RHF One-electron energy            -930.344217367105
  RHF Two-electron energy             250.714924566656
  RHF Kinetic energy                  697.187747143615
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.974815314218

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.10835     1  1  s    0.99730
    2.1     2.00000   -16.96325     1  2  s    1.00435
    3.1     2.00000    -2.26167     1  3  s    0.99383
    4.1     2.00000    -0.19630     1  4  s    1.00116
    1.2     2.00000   -13.63698     1  1  px   0.99997
    2.2     2.00000   -13.63698     1  1  pz   0.99997
    3.2     2.00000   -13.63698     1  1  py   0.99997
    4.2     2.00000    -1.33889     1  2  px   1.00013
    5.2     2.00000    -1.33889     1  2  pz   1.00013
    6.2     2.00000    -1.33889     1  2  py   1.00013


 HOMO      4.1    -0.196295 =      -5.3415eV
 LUMO      7.2     0.009723 =       0.2646eV
 LUMO-HOMO         0.206018 =       5.6060eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        2.79       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.60      0.10      2.33
 REAL TIME  *         3.19 SEC
 DISK USED  *        32.83 MB (local),      519.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (   3   6 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     124 (  68  56 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.422D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.448D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.487D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.469D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.250D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 4 6 3 5 2   1 6 4 3 5 2 6 4 5 3   2 1 812 91110131514   7 6 4 3 5 2 71310 9
                                       11 8121514 1 6 4 5 3   2 911 71310141512 8   6 4 5 3 2 1 1 2 6 4   3 5 5 6 4 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.999D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.985D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.988D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.577D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.577D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.452D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.452D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 2 3 1   3 2 3 1 2 4 5 6 9 7   810 3 1 2 4 9 7 5 6  10 8 3 1 2 4 5 9 7 6
                                       10 8 1 3 2 6 9 7 4 5   810 1 3 2 6 9 7 5 4  10 8 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 
 Number of orbital rotations:  1223  ( 39 closed/active, 540 closed/virtual, 0 active/active, 644 active/virtual )
 Total number of variables:    1845
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   28    5   -679.46268049    -679.53567149   -0.07299099    0.05331128 0.00004571 0.00000000  0.25E+01      1.10
   2    8   14    0   -679.53150984    -679.53420373   -0.00269389    0.05869031 0.00001779 0.00000000  0.27E+00      1.96
   3    8   14    0   -679.53421026    -679.53421089   -0.00000063    0.00044101 0.00000001 0.00000000  0.76E-02      2.82
   4    4    8    0   -679.53421089    -679.53421089   -0.00000000    0.00000090 0.00000000 0.00000000  0.20E-05      3.39

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.44E-10)
                       Final energy:   -679.53421089
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -679.654032076549
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.90776377
 One electron energy                          -929.92546882
 Two electron energy                           250.27143675
 Virial ratio                                    1.97524245
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -679.543231035491
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.17988565
 One electron energy                          -930.78556354
 Two electron energy                           251.24233250
 Virial ratio                                    1.97470286
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -679.543231035486
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.17988565
 One electron energy                          -930.78556354
 Two electron energy                           251.24233250
 Virial ratio                                    1.97470286
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -679.543231035484
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.17988565
 One electron energy                          -930.78556354
 Two electron energy                           251.24233250
 Virial ratio                                    1.97470286
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -679.543231035484
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.17988565
 One electron energy                          -930.78556354
 Two electron energy                           251.24233250
 Virial ratio                                    1.97470286
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -679.543231035465
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.17988565
 One electron energy                          -930.78556353
 Two electron energy                           251.24233250
 Virial ratio                                    1.97470286
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -679.499812524459
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.66389615
 One electron energy                          -927.25604832
 Two electron energy                           247.75623579
 Virial ratio                                    1.97536246
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -679.543173520177
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.33265485
 One electron energy                          -931.58902168
 Two electron energy                           252.04584816
 Virial ratio                                    1.97448925
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -679.543173520176
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.33265485
 One electron energy                          -931.58902168
 Two electron energy                           252.04584816
 Virial ratio                                    1.97448925
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -679.543173520176
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.33265485
 One electron energy                          -931.58902168
 Two electron energy                           252.04584816
 Virial ratio                                    1.97448925
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -679.543173520176
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.33265485
 One electron energy                          -931.58902168
 Two electron energy                           252.04584816
 Virial ratio                                    1.97448925
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -679.543173520140
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.33265485
 One electron energy                          -931.58902168
 Two electron energy                           252.04584816
 Virial ratio                                    1.97448925
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -679.509932150598
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.57135566
 One electron energy                          -926.90583334
 Two electron energy                           247.39590119
 Virial ratio                                    1.97550657
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -679.483858231058
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.86585515
 One electron energy                          -929.02678779
 Two electron energy                           249.54292956
 Virial ratio                                    1.97505690
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -679.483858231051
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.86585515
 One electron energy                          -929.02678779
 Two electron energy                           249.54292956
 Virial ratio                                    1.97505690
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -679.483858231049
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.86585515
 One electron energy                          -929.02678779
 Two electron energy                           249.54292956
 Virial ratio                                    1.97505690
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.801399646679
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000007590759
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000613610882
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999375530371
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.198603621310
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999615962763
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.021112564571
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000038576407
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000166790215
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     2.979066106044
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999911225
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000000895690
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999193084
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.212754685014
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999616376199
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000378551817
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000006522198
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.787243864771
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000018101145
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.979522540878
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.948170277764
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.051500728124
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.020788352089
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000000102718
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999911289
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999985994
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.985845668307
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000376033042
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999007837302
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000617947431
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.014152513919
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000365936092
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999364894551
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.051791145829
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.948332481660
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000145541867
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999986057
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999193021
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000820922
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.11401     1  1  s    0.99730
    2.1     2.00000   -16.96040     1  2  s    1.00419
    3.1     2.00000    -2.25794     1  3  s    1.00470
    4.1     0.78535    -0.09980     1  4  s    0.91076
    5.1     0.12683     0.02569     1  4  s   -0.62491    1  6  s   -0.48474    1  7  s    0.63826    1 11  s    0.95610
    6.1     0.11934     0.09013     1  1  d1-  0.84465
    7.1     0.11934     0.09013     1  1  d1+  0.84465
    8.1     0.11934     0.09013     1  1  d2-  0.84465
    9.1     0.11934     0.09013     1  1  d2+  0.84465
   10.1     0.11934     0.09013     1  1  d0   0.84465
    1.2     2.00000   -13.63645     1  1  px   1.00017
    2.2     2.00000   -13.63645     1  1  pz   1.00017
    3.2     2.00000   -13.63645     1  1  py   1.00017
    4.2     2.00000    -1.34236     1  2  px   1.01676
    5.2     2.00000    -1.34236     1  2  pz   1.01676
    6.2     2.00000    -1.34236     1  2  py   1.01676
    7.2     0.16371     0.02975     1  3  pz   1.23605
    8.2     0.16371     0.02975     1  3  px   1.23605
    9.2     0.16371     0.02975     1  3  py   1.23605
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.826D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.869D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.270D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.177D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.483D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.168D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.341D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.300D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.209D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.722D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.166D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.158D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.266D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.266D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.130D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.130D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.199D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.396D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.245D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.126D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.361D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.183D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.114D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.365D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.751D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.117D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.117D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.339D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.340D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.324D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.106D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.539D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.223D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.171D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.364D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.177D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.177D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.472D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.472D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.140D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.128D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.246D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.557D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.593D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.629D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  71 SYMMETRY CONTAMINATION OF 0.417D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  72 SYMMETRY CONTAMINATION OF 0.409D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  73 SYMMETRY CONTAMINATION OF 0.185D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.188D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.620D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  76 SYMMETRY CONTAMINATION OF 0.620D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 6 4 3 5 2   6 4 5 3 2 1 5 3 6 4   2 112 8 91113101514   7 6 5 3 4 21310 7 9
                                       1112 81514 1 6 4 5 3   2 911 71310141512 8   6 4 5 3 2 1 1 2 6 4   3 5 5 3 6 4 2 1
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.380D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.380D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.204D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.337D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.247D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.247D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.390D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.390D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.176D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.838D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.838D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.302D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.302D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.587D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.587D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.102D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.337D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.337D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.335D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.567D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.567D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.533D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.788D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.788D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.217D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 3 1 2 1   3 2 3 1 2 9 7 6 4 5   810 3 1 2 7 9 4 5 6  10 8 3 1 2 4 5 9 7 6
                                        810 3 1 2 6 9 7 4 5  10 8 3 1 2 6 9 7 5 4  10 8 3 2 1
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95580007     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.01636262
 ab00000 000     -0.00844508      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.69702180
 ba00000 000      0.00844508     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.69702180
 b00a000 000      0.00000000      0.00007769     -0.61371422     -0.00700933     -0.00065563     -0.00005708      0.00000000
 a00b000 000     -0.00000000     -0.00007769      0.61371422      0.00700933      0.00065563      0.00005708     -0.00000000
 b0a0000 000     -0.00000000      0.00062345      0.00074754     -0.00804111     -0.61370116     -0.00003058     -0.00000000
 a0b0000 000      0.00000000     -0.00062345     -0.00074754      0.00804111      0.61370116      0.00003058      0.00000000
 a000b00 000      0.00000000      0.00023591     -0.00700007      0.61366178     -0.00804886     -0.00030992      0.00000000
 b000a00 000     -0.00000000     -0.00023591      0.00700007     -0.61366178      0.00804886      0.00030992     -0.00000000
 b00000a 000      0.00000000      0.03648371      0.00006520     -0.00032176      0.00007188     -0.61266920     -0.00000000
 a00000b 000     -0.00000000     -0.03648371     -0.00006520      0.00032176     -0.00007188      0.61266920      0.00000000
 b0000a0 000     -0.00000000     -0.61266892     -0.00007588      0.00020806     -0.00062340     -0.03648388     -0.00000000
 a0000b0 000      0.00000000      0.61266892      0.00007588     -0.00020806      0.00062340      0.03648388      0.00000000
 0000000 200     -0.16614547      0.02388375      0.00004268     -0.00021064      0.00004706     -0.40107865      0.00604373
 0000000 020     -0.16614547     -0.35928602     -0.00006436      0.00022327     -0.00037696      0.17985530      0.00604374
 0000000 ab0      0.00000000      0.00004405     -0.34793677     -0.00397384     -0.00037170     -0.00003236      0.00000000
 0000000 ba0     -0.00000000     -0.00004405      0.34793677      0.00397384      0.00037170      0.00003236     -0.00000000
 0000000 b0a      0.00000000     -0.00035345     -0.00042381      0.00455879      0.34792936      0.00001733      0.00000000
 0000000 a0b     -0.00000000      0.00035345      0.00042381     -0.00455879     -0.34792936     -0.00001733     -0.00000000
 0000000 0ab     -0.00000000     -0.00013374      0.00396859     -0.34790703      0.00456319      0.00017571     -0.00000000
 0000000 0ba      0.00000000      0.00013374     -0.00396859      0.34790703     -0.00456319     -0.00017571      0.00000000
 0000000 002     -0.16614547      0.33540227      0.00002168     -0.00001264      0.00032990      0.22122336      0.00604374
 0200000 000     -0.01414195     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.15823613
 
 Energy:       -679.65403208   -679.54323104   -679.54323104   -679.54323104   -679.54323104   -679.54323104   -679.49981252
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 aa00000 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      1.00000000      0.00000000
 a00000a 000     -0.00004911      0.00601236     -0.00003016      0.00024661      0.99990838      0.00000000      0.00000000
 a0a0000 000      0.99986423      0.00732773      0.00374951     -0.00753282      0.00000702      0.00000000     -0.00000000
 a0000a0 000     -0.00747400      0.99969983      0.01438843     -0.01241910     -0.00600797     -0.00000000     -0.00000000
 a00a000 000     -0.00266222     -0.01270332      0.99163243      0.12786567      0.00007462     -0.00000000     -0.00000000
 a000a00 000      0.00784521      0.01421263     -0.12765975      0.99161097     -0.00033349      0.00000000      0.00000000
 0000000 aa0     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.93725051
 0000000 0aa      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00011620
 0000000 a0a      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00029203
 0000aa0 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00003866
 000a00a 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.27006819
 00a000a 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00008415
 000a0a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.15592394
 00a0a00 000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.15592394
 00aa000 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00001933
 00a00a0 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00004858
 000aa00 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00004858
 
 Energy:       -679.54317352   -679.54317352   -679.54317352   -679.54317352   -679.54317352   -679.50993215   -679.48385823

 State:                8               9
 aa00000 000      0.00000000     -0.00000000
 a00000a 000     -0.00000000      0.00000000
 a0a0000 000     -0.00000000      0.00000000
 a0000a0 000     -0.00000000     -0.00000000
 a00a000 000     -0.00000000     -0.00000000
 a000a00 000     -0.00000000     -0.00000000
 0000000 aa0      0.00029195     -0.00011640
 0000000 0aa      0.00063561      0.93725034
 0000000 a0a      0.93725030     -0.00063558
 0000aa0 000      0.00021149      0.31184782
 000a00a 000      0.00008413     -0.00003354
 00a000a 000      0.27006813     -0.00018314
 000a0a0 000     -0.00004857      0.00001936
 00a0a00 000     -0.00004857      0.00001936
 00aa000 000      0.00010574      0.15592391
 00a00a0 000      0.15592391     -0.00010574
 000aa00 000     -0.15592391      0.00010574
 
 Energy:       -679.48385823   -679.48385823
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       52.19       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.57       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.31      2.70      0.10      2.33
 REAL TIME  *         7.05 SEC
 DISK USED  *        57.82 MB (local),      819.78 MB (total)
 SF USED    *        63.00 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -679.6540321  -0.0
    -679.5432310   6.0
    -679.5432310   6.0
    -679.5432310   6.0
    -679.5432310   6.0
    -679.5432310   6.0
    -679.4998125  -0.0
    -679.5431735   6.0
    -679.5431735   6.0
    -679.5431735   6.0
    -679.5431735   6.0
    -679.5431735   6.0
    -679.5099322  -0.0
    -679.4838582   2.0
    -679.4838582   2.0
    -679.4838582   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 20
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     124 (  68  56 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.12 sec, npass=  1  Memory used:   1.36 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.65403208
     2      -679.54323104
     3      -679.54323104
     4      -679.54323104
     5      -679.54323104
     6      -679.54323104
     7      -679.49981252

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.79D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        397732
 Number of doubly external configurations:        744158
 Total number of contracted configurations:      1149741
 Total number of uncontracted configurations:    4843605

 Diagonal Coupling coefficients finished.               Storage: 3046226 words, CPU-Time:      0.31 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  570923 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.65403208    -0.00000000    -0.26518683  0.30D-01  0.34D-01     0.84
    1     2     2     1.00000000     0.00000000  -679.54323104     0.00000000    -0.27757672  0.32D-01  0.38D-01     0.84
    1     3     3     1.00000000     0.00000000  -679.54323104    -0.00000000    -0.27763378  0.33D-01  0.38D-01     0.84
    1     4     4     1.00000000     0.00000000  -679.54323104    -0.00000000    -0.27763928  0.33D-01  0.38D-01     0.84
    1     5     5     1.00000000     0.00000000  -679.54323104     0.00000000    -0.27753975  0.32D-01  0.38D-01     0.84
    1     6     6     1.00000000     0.00000000  -679.54323104    -0.00000000    -0.27762829  0.32D-01  0.38D-01     0.84
    1     7     7     1.00000000     0.00000000  -679.49981252     0.00000000    -0.26355391  0.44D-01  0.33D-01     0.84
    2     1     1     1.05829903    -0.27153701  -679.92556908    -0.27153701    -0.00477202  0.13D-02  0.44D-03     7.76
    2     2     2     1.06241163    -0.27457205  -679.81780309    -0.27457205    -0.00539586  0.20D-02  0.52D-03     7.76
    2     3     3     1.06243973    -0.27456430  -679.81779533    -0.27456430    -0.00540489  0.20D-02  0.52D-03     7.76
    2     4     4     1.06250016    -0.27455527  -679.81778630    -0.27455527    -0.00541414  0.20D-02  0.52D-03     7.76
    2     5     5     1.06251416    -0.27454934  -679.81778038    -0.27454934    -0.00542305  0.20D-02  0.52D-03     7.76
    2     6     6     1.06253439    -0.27454192  -679.81777296    -0.27454192    -0.00543069  0.20D-02  0.53D-03     7.76
    2     7     7     1.07062546    -0.27004114  -679.76985366    -0.27004114    -0.00626615  0.30D-02  0.74D-03     7.76
    3     1     1     1.05953050    -0.27649826  -679.93053034    -0.00496126    -0.00018036  0.33D-04  0.21D-04    14.56
    3     2     2     1.06341765    -0.28013992  -679.82337095    -0.00556786    -0.00029807  0.76D-04  0.40D-04    14.56
    3     3     3     1.06341141    -0.28013735  -679.82336839    -0.00557306    -0.00029989  0.78D-04  0.41D-04    14.56
    3     4     4     1.06341011    -0.28013652  -679.82336755    -0.00558125    -0.00030058  0.78D-04  0.41D-04    14.56
    3     5     5     1.06340933    -0.28013569  -679.82336673    -0.00558635    -0.00030142  0.78D-04  0.41D-04    14.56
    3     6     6     1.06341188    -0.28013569  -679.82336673    -0.00559377    -0.00030152  0.78D-04  0.41D-04    14.56
    3     7     7     1.06635788    -0.27613973  -679.77595226    -0.00609860    -0.00029025  0.68D-04  0.44D-04    14.56
    4     1     1     1.06025608    -0.27669609  -679.93072817    -0.00019783    -0.00000988  0.33D-05  0.12D-05    21.41
    4     2     2     1.06494509    -0.28050383  -679.82373486    -0.00036391    -0.00003827  0.29D-04  0.28D-05    21.41
    4     3     3     1.06494252    -0.28050331  -679.82373434    -0.00036595    -0.00003861  0.29D-04  0.29D-05    21.41
    4     4     4     1.06494401    -0.28050322  -679.82373425    -0.00036670    -0.00003870  0.29D-04  0.29D-05    21.41
    4     5     5     1.06494384    -0.28050315  -679.82373419    -0.00036746    -0.00003874  0.29D-04  0.29D-05    21.41
    4     6     6     1.06494360    -0.28050314  -679.82373418    -0.00036745    -0.00003876  0.29D-04  0.29D-05    21.41
    4     7     7     1.06716875    -0.27644820  -679.77626072    -0.00030846    -0.00001580  0.58D-05  0.20D-05    21.41
    5     1     1     1.06046227    -0.27670725  -679.93073933    -0.00001116    -0.00000055  0.21D-06  0.69D-07    28.27
    5     2     2     1.06583086    -0.28055755  -679.82378858    -0.00005372    -0.00000497  0.19D-05  0.47D-06    28.27
    5     3     3     1.06582843    -0.28055748  -679.82378851    -0.00005417    -0.00000503  0.20D-05  0.48D-06    28.27
    5     4     4     1.06582605    -0.28055743  -679.82378847    -0.00005421    -0.00000507  0.20D-05  0.48D-06    28.27
    5     5     5     1.06582666    -0.28055743  -679.82378846    -0.00005427    -0.00000508  0.20D-05  0.48D-06    28.27
    5     6     6     1.06582594    -0.28055742  -679.82378845    -0.00005428    -0.00000508  0.20D-05  0.48D-06    28.27
    5     7     7     1.06725449    -0.27646665  -679.77627918    -0.00001845    -0.00000109  0.68D-06  0.16D-06    28.27
    6     1     1     1.06048402    -0.27670785  -679.93073993    -0.00000060    -0.00000003  0.10D-07  0.42D-08    35.03
    6     2     2     1.06591779    -0.28056360  -679.82379463    -0.00000605    -0.00000051  0.18D-06  0.53D-07    35.03
    6     3     3     1.06591732    -0.28056359  -679.82379462    -0.00000611    -0.00000052  0.18D-06  0.54D-07    35.03
    6     4     4     1.06591718    -0.28056358  -679.82379461    -0.00000615    -0.00000053  0.18D-06  0.55D-07    35.03
    6     5     5     1.06591701    -0.28056358  -679.82379461    -0.00000615    -0.00000053  0.18D-06  0.55D-07    35.03
    6     6     6     1.06591679    -0.28056358  -679.82379461    -0.00000616    -0.00000053  0.18D-06  0.55D-07    35.03
    6     7     7     1.06721293    -0.27646791  -679.77628043    -0.00000126    -0.00000011  0.50D-07  0.18D-07    35.03
    7     1     1     1.06049438    -0.27670789  -679.93073996    -0.00000004    -0.00000000  0.12D-08  0.26D-09    41.71
    7     2     2     1.06595856    -0.28056417  -679.82379520    -0.00000057    -0.00000006  0.47D-07  0.44D-08    41.71
    7     3     3     1.06595825    -0.28056417  -679.82379520    -0.00000058    -0.00000006  0.48D-07  0.45D-08    41.71
    7     4     4     1.06595790    -0.28056417  -679.82379520    -0.00000059    -0.00000006  0.49D-07  0.45D-08    41.71
    7     5     5     1.06595783    -0.28056417  -679.82379520    -0.00000059    -0.00000006  0.49D-07  0.45D-08    41.71
    7     6     6     1.06595781    -0.28056417  -679.82379520    -0.00000059    -0.00000006  0.49D-07  0.46D-08    41.71
    7     7     7     1.06722241    -0.27646803  -679.77628056    -0.00000012    -0.00000001  0.10D-07  0.19D-08    41.71
    8     1     1     1.06049582    -0.27670789  -679.93073997    -0.00000000    -0.00000000  0.36D-09  0.11D-09    47.59
    8     2     2     1.06598492    -0.28056424  -679.82379527    -0.00000007    -0.00000001  0.43D-08  0.99D-09    47.59
    8     3     3     1.06598475    -0.28056424  -679.82379527    -0.00000007    -0.00000001  0.44D-08  0.10D-08    47.59
    8     4     4     1.06598461    -0.28056424  -679.82379527    -0.00000007    -0.00000001  0.46D-08  0.10D-08    47.59
    8     5     5     1.06598461    -0.28056424  -679.82379527    -0.00000007    -0.00000001  0.46D-08  0.10D-08    47.59
    8     6     6     1.06598458    -0.28056424  -679.82379527    -0.00000007    -0.00000001  0.46D-08  0.10D-08    47.59
    8     7     7     1.06721975    -0.27646805  -679.77628057    -0.00000002    -0.00000000  0.34D-09  0.14D-09    47.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.9%
 S   4.7%  24.7%
 P   0.9%  17.3%  11.5%

 Initialization:   1.1%
 Other:           33.9%

 Total CPU:       47.6 seconds
 =====================================



 gnormi=  0.94295516  gnorms=  0.02534379  gnormp=  0.03170105  gnorm=  1.00000000
 ecorri= -0.26092313  ecorrs= -0.00701349  ecorrp= -0.00877127  ecorr= -0.27670789

 gnormi=  0.93809958  gnorms=  0.02718198  gnormp=  0.03471844  gnorm=  1.00000000
 ecorri= -0.26319719  ecorrs= -0.00762623  ecorrp= -0.00974082  ecorr= -0.28056424

 gnormi=  0.93809973  gnorms=  0.02718182  gnormp=  0.03471845  gnorm=  1.00000000
 ecorri= -0.26319723  ecorrs= -0.00762622  ecorrp= -0.00974078  ecorr= -0.28056424

 gnormi=  0.93809985  gnorms=  0.02718166  gnormp=  0.03471849  gnorm=  1.00000000
 ecorri= -0.26319727  ecorrs= -0.00762628  ecorrp= -0.00974069  ecorr= -0.28056424

 gnormi=  0.93809985  gnorms=  0.02718168  gnormp=  0.03471847  gnorm=  1.00000000
 ecorri= -0.26319727  ecorrs= -0.00762624  ecorrp= -0.00974073  ecorr= -0.28056424

 gnormi=  0.93809987  gnorms=  0.02718165  gnormp=  0.03471848  gnorm=  1.00000000
 ecorri= -0.26319727  ecorrs= -0.00762626  ecorrp= -0.00974071  ecorr= -0.28056424

 gnormi=  0.93701414  gnorms=  0.03175364  gnormp=  0.03123222  gnorm=  1.00000000
 ecorri= -0.25905447  ecorrs= -0.00877922  ecorrp= -0.00863435  ecorr= -0.27646805

 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\00000222000          -0.0512680   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.9471044
 22000000222000           0.9310186  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0516545
 2/000\00222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8640456  -0.0000000  -0.0000000
 2/00\000222000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.8640456  -0.0000000
 2/0\0000222000           0.0000000  -0.0000000  -0.0000000   0.8640456  -0.0000000  -0.0000000  -0.0000000
 2/00000\222000          -0.0000000   0.8640441   0.0017005   0.0000000   0.0000000   0.0000000   0.0000000
 2/0000\0222000          -0.0000000  -0.0017005   0.8640440   0.0000000   0.0000000   0.0000000   0.0000000
 20000000222/\0          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.4281601   0.0000000
 20000000222/0\          -0.0000000  -0.0000000   0.0000000  -0.4281600   0.0000000  -0.0000000   0.0000000
 200000002220/\          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.4281600  -0.0000000   0.0000000
 20000000222200          -0.1458752  -0.3495899  -0.0006880   0.0000000   0.0000000  -0.0000000  -0.0105044
 20000000222002          -0.1458752   0.1741991   0.3030980   0.0000000  -0.0000000   0.0000000  -0.0105043
 20000000222020          -0.1458752   0.1753908  -0.3024100   0.0000000  -0.0000000   0.0000000  -0.0105043
 20200000222000          -0.0104526   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1698029

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20\00000222000  22.1    -0.0122853  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0573841

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966675    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.039430
 2          -0.000000   -0.059889   -0.000000    0.000000    0.000000    0.962730   -0.000000
 3           0.000000    0.962731   -0.000000    0.000000   -0.000000    0.059889    0.000000
 4          -0.000000    0.000000   -0.000000    0.000000    0.964592    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.964592   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000    0.964592    0.000000    0.000000    0.000000    0.000000
 7           0.042898   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.963750

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967478   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.001795
 2          -0.000000    0.964591   -0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.964592    0.000000    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.964592    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.964592    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.964592   -0.000000
 7           0.001795    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.964702


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96667534 (fixed)   0.96786270 (relaxed)   0.96747752 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00741701   -0.01725286   -0.19502487
 Singles      0.02707633   -0.08153153   -0.08332804
 Pairs        0.03386819    0.01112836    0.00164502
 Total        1.06836152   -0.08765603   -0.27670789
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.65375208
 Nuclear energy                         0.00000000
 Kinetic energy                       697.37786915
 One electron energy                 -930.35077164
 Two electron energy                  250.42003167
 Virial quotient                       -0.97498181
 Correlation energy                    -0.27698788
 !MRCI STATE 1.1 Energy              -679.930739965101

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.94967528 (Davidson, fixed reference)
 Cluster corrected energies          -679.94943979 (Davidson, relaxed reference)
 Cluster corrected energies          -679.94967528 (Davidson, rotated reference)

 Cluster corrected energies          -679.94652330 (Pople, fixed reference)
 Cluster corrected energies          -679.94631905 (Pople, relaxed reference)
 Cluster corrected energies          -679.94652330 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96273045 (fixed)   0.96613704 (relaxed)   0.96459140 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00823592   -0.01348652   -0.18929113
 Singles      0.02921422   -0.07943159   -0.08153228
 Pairs        0.03731414   -0.00000000   -0.00974082
 Total        1.07476428   -0.09291811   -0.28056424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54323104
 Nuclear energy                         0.00000000
 Kinetic energy                       697.28142126
 One electron energy                 -931.01196805
 Two electron energy                  251.18817278
 Virial quotient                       -0.97496330
 Correlation energy                    -0.28056424
 !MRCI STATE 2.1 Energy              -679.823795272870

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.84477146 (Davidson, fixed reference)
 Cluster corrected energies          -679.84380742 (Davidson, relaxed reference)
 Cluster corrected energies          -679.84477146 (Davidson, rotated reference)

 Cluster corrected energies          -679.84134715 (Pople, fixed reference)
 Cluster corrected energies          -679.84050595 (Pople, relaxed reference)
 Cluster corrected energies          -679.84134715 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96273055 (fixed)   0.96613712 (relaxed)   0.96459150 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00823587   -0.01348652   -0.18929118
 Singles      0.02921405   -0.07943157   -0.08153228
 Pairs        0.03731414    0.00000000   -0.00974078
 Total        1.07476406   -0.09291809   -0.28056424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54323104
 Nuclear energy                         0.00000000
 Kinetic energy                       697.28141989
 One electron energy                 -931.01195642
 Two electron energy                  251.18816115
 Virial quotient                       -0.97496330
 Correlation energy                    -0.28056424
 !MRCI STATE 3.1 Energy              -679.823795272649

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.84477139 (Davidson, fixed reference)
 Cluster corrected energies          -679.84380737 (Davidson, relaxed reference)
 Cluster corrected energies          -679.84477139 (Davidson, rotated reference)

 Cluster corrected energies          -679.84134710 (Pople, fixed reference)
 Cluster corrected energies          -679.84050591 (Pople, relaxed reference)
 Cluster corrected energies          -679.84134710 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96459159 (fixed)   0.96613718 (relaxed)   0.96459159 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00823583   -0.01348652   -0.18929128
 Singles      0.02921386   -0.07943148   -0.08153227
 Pairs        0.03731418   -0.00000000   -0.00974069
 Total        1.07476387   -0.09291800   -0.28056424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54323104
 Nuclear energy                         0.00000000
 Kinetic energy                       697.28141943
 One electron energy                 -931.01194815
 Two electron energy                  251.18815288
 Virial quotient                       -0.97496330
 Correlation energy                    -0.28056424
 !MRCI STATE 4.1 Energy              -679.823795272431

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.84477134 (Davidson, fixed reference)
 Cluster corrected energies          -679.84380733 (Davidson, relaxed reference)
 Cluster corrected energies          -679.84477134 (Davidson, rotated reference)

 Cluster corrected energies          -679.84134705 (Pople, fixed reference)
 Cluster corrected energies          -679.84050588 (Pople, relaxed reference)
 Cluster corrected energies          -679.84134705 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96459158 (fixed)   0.96613718 (relaxed)   0.96459158 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00823583   -0.01348652   -0.18929123
 Singles      0.02921389   -0.07943154   -0.08153227
 Pairs        0.03731416   -0.00000000   -0.00974073
 Total        1.07476388   -0.09291805   -0.28056424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54323104
 Nuclear energy                         0.00000000
 Kinetic energy                       697.28141908
 One electron energy                 -931.01194823
 Two electron energy                  251.18815296
 Virial quotient                       -0.97496330
 Correlation energy                    -0.28056424
 !MRCI STATE 5.1 Energy              -679.823795272419

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.84477134 (Davidson, fixed reference)
 Cluster corrected energies          -679.84380733 (Davidson, relaxed reference)
 Cluster corrected energies          -679.84477134 (Davidson, rotated reference)

 Cluster corrected energies          -679.84134706 (Pople, fixed reference)
 Cluster corrected energies          -679.84050588 (Pople, relaxed reference)
 Cluster corrected energies          -679.84134706 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96459160 (fixed)   0.96613719 (relaxed)   0.96459160 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00823583   -0.01348652   -0.18929126
 Singles      0.02921386   -0.07943151   -0.08153227
 Pairs        0.03731417   -0.00000000   -0.00974071
 Total        1.07476385   -0.09291803   -0.28056424
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54323104
 Nuclear energy                         0.00000000
 Kinetic energy                       697.28141998
 One electron energy                 -931.01194750
 Two electron energy                  251.18815222
 Virial quotient                       -0.97496330
 Correlation energy                    -0.28056424
 !MRCI STATE 6.1 Energy              -679.823795272397

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.84477133 (Davidson, fixed reference)
 Cluster corrected energies          -679.84380732 (Davidson, relaxed reference)
 Cluster corrected energies          -679.84477133 (Davidson, rotated reference)

 Cluster corrected energies          -679.84134705 (Pople, fixed reference)
 Cluster corrected energies          -679.84050587 (Pople, relaxed reference)
 Cluster corrected energies          -679.84134705 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96374981 (fixed)   0.96499695 (relaxed)   0.96470242 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00683757   -0.01663995   -0.01751002
 Singles      0.03411982   -0.08423583   -0.08717336
 Pairs        0.03355955   -0.17530778   -0.17178467
 Total        1.07451694   -0.27618356   -0.27646805
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.50009252
 Nuclear energy                         0.00000000
 Kinetic energy                       697.19949150
 One electron energy                 -927.62099790
 Two electron energy                  247.84471732
 Virial quotient                       -0.97500972
 Correlation energy                    -0.27618806
 !MRCI STATE 7.1 Energy              -679.776280574606

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.79686126 (Davidson, fixed reference)
 Cluster corrected energies          -679.79668013 (Davidson, relaxed reference)
 Cluster corrected energies          -679.79686126 (Davidson, rotated reference)

 Cluster corrected energies          -679.79349897 (Pople, fixed reference)
 Cluster corrected energies          -679.79334070 (Pople, relaxed reference)
 Cluster corrected energies          -679.79349897 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       52.19       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       69.29       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        56.44     51.12      2.70      0.10      2.33
 REAL TIME  *        62.62 SEC
 DISK USED  *       121.54 MB (local),        1.55 GB (total)
 SF USED    *       673.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -679.94967528  AU                              
 SETTING HLSDIAG(2)     =      -679.84477146  AU                              
 SETTING HLSDIAG(3)     =      -679.84477139  AU                              
 SETTING HLSDIAG(4)     =      -679.84477134  AU                              
 SETTING HLSDIAG(5)     =      -679.84477134  AU                              
 SETTING HLSDIAG(6)     =      -679.84477133  AU                              
 SETTING HLSDIAG(7)     =      -679.79686126  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 20
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     124 (  68  56 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.54317352
     2      -679.54317352
     3      -679.54317352
     4      -679.54317352
     5      -679.54317352
     6      -679.50993215
     7      -679.48385823
     8      -679.48385823
     9      -679.48385823

 Number of blocks in overlap matrix:   201   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     225
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        593176
 Number of doubly external configurations:        867826
 Total number of contracted configurations:      1472840
 Total number of uncontracted configurations:    7148176

 Diagonal Coupling coefficients finished.               Storage: 4337576 words, CPU-Time:      0.57 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  582928 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.54317352     0.00000000    -0.28879015  0.37D-01  0.40D-01     1.18
    1     2     2     1.00000000     0.00000000  -679.54317352     0.00000000    -0.28877687  0.37D-01  0.40D-01     1.18
    1     3     3     1.00000000     0.00000000  -679.54317352     0.00000000    -0.28878092  0.37D-01  0.40D-01     1.18
    1     4     4     1.00000000     0.00000000  -679.54317352     0.00000000    -0.28878539  0.37D-01  0.40D-01     1.18
    1     5     5     1.00000000     0.00000000  -679.54317352    -0.00000000    -0.28875573  0.37D-01  0.40D-01     1.18
    1     6     6     1.00000000     0.00000000  -679.50993215    -0.00000000    -0.25867674  0.38D-01  0.31D-01     1.18
    1     7     7     1.00000000     0.00000000  -679.48385823     0.00000000    -0.26301278  0.32D-01  0.34D-01     1.18
    1     8     8     1.00000000     0.00000000  -679.48385823     0.00000000    -0.26302176  0.32D-01  0.34D-01     1.18
    1     9     9     1.00000000     0.00000000  -679.48385823    -0.00000000    -0.26297708  0.32D-01  0.34D-01     1.18
    2     1     1     1.06542452    -0.28051786  -679.82369138    -0.28051786    -0.00571686  0.20D-02  0.50D-03    13.54
    2     2     2     1.06542468    -0.28051499  -679.82368851    -0.28051499    -0.00572139  0.20D-02  0.50D-03    13.54
    2     3     3     1.06542730    -0.28051105  -679.82368457    -0.28051105    -0.00572317  0.20D-02  0.50D-03    13.54
    2     4     4     1.06544420    -0.28051081  -679.82368433    -0.28051081    -0.00572220  0.20D-02  0.50D-03    13.54
    2     5     5     1.06544374    -0.28050675  -679.82368027    -0.28050675    -0.00572579  0.20D-02  0.50D-03    13.54
    2     6     6     1.06590802    -0.26970405  -679.77963620    -0.26970405    -0.00408389  0.93D-03  0.39D-03    13.54
    2     7     7     1.05896048    -0.26538258  -679.74924081    -0.26538258    -0.00578114  0.23D-02  0.55D-03    13.54
    2     8     8     1.05901450    -0.26535305  -679.74921128    -0.26535305    -0.00581934  0.23D-02  0.55D-03    13.54
    2     9     9     1.05901449    -0.26535067  -679.74920890    -0.26535067    -0.00582181  0.23D-02  0.55D-03    13.54
    3     1     1     1.06682104    -0.28654082  -679.82971434    -0.00602296    -0.00026992  0.80D-04  0.30D-04    25.95
    3     2     2     1.06681678    -0.28654051  -679.82971403    -0.00602552    -0.00027024  0.80D-04  0.30D-04    25.95
    3     3     3     1.06681974    -0.28654032  -679.82971384    -0.00602927    -0.00027004  0.80D-04  0.30D-04    25.95
    3     4     4     1.06681399    -0.28654002  -679.82971354    -0.00602922    -0.00027041  0.80D-04  0.30D-04    25.95
    3     5     5     1.06681390    -0.28653993  -679.82971345    -0.00603319    -0.00027052  0.80D-04  0.30D-04    25.95
    3     6     6     1.06661712    -0.27416438  -679.78409653    -0.00446033    -0.00012696  0.24D-04  0.14D-04    25.95
    3     7     7     1.05686577    -0.27102335  -679.75488158    -0.00564077    -0.00027337  0.51D-04  0.41D-04    25.95
    3     8     8     1.05686600    -0.27101908  -679.75487731    -0.00566603    -0.00027689  0.52D-04  0.41D-04    25.95
    3     9     9     1.05686556    -0.27101886  -679.75487709    -0.00566820    -0.00027713  0.52D-04  0.41D-04    25.95
    4     1     1     1.06865960    -0.28689185  -679.83006537    -0.00035103    -0.00003408  0.28D-04  0.20D-05    38.19
    4     2     2     1.06865960    -0.28689172  -679.83006524    -0.00035122    -0.00003412  0.28D-04  0.20D-05    38.19
    4     3     3     1.06865966    -0.28689172  -679.83006524    -0.00035140    -0.00003412  0.28D-04  0.20D-05    38.19
    4     4     4     1.06865867    -0.28689150  -679.83006502    -0.00035148    -0.00003402  0.28D-04  0.20D-05    38.19
    4     5     5     1.06865893    -0.28689128  -679.83006480    -0.00035135    -0.00003408  0.28D-04  0.20D-05    38.19
    4     6     6     1.06740857    -0.27430946  -679.78424161    -0.00014508    -0.00000640  0.27D-05  0.60D-06    38.19
    4     7     7     1.05741860    -0.27130898  -679.75516722    -0.00028563    -0.00001523  0.55D-05  0.17D-05    38.19
    4     8     8     1.05741776    -0.27130794  -679.75516617    -0.00028886    -0.00001540  0.56D-05  0.17D-05    38.19
    4     9     9     1.05741748    -0.27130792  -679.75516616    -0.00028906    -0.00001541  0.56D-05  0.17D-05    38.19
    5     1     1     1.06986752    -0.28693938  -679.83011290    -0.00004753    -0.00000371  0.11D-05  0.39D-06    50.44
    5     2     2     1.06986748    -0.28693932  -679.83011284    -0.00004760    -0.00000371  0.11D-05  0.39D-06    50.44
    5     3     3     1.06986734    -0.28693932  -679.83011284    -0.00004760    -0.00000371  0.11D-05  0.39D-06    50.44
    5     4     4     1.06986681    -0.28693897  -679.83011249    -0.00004746    -0.00000370  0.11D-05  0.39D-06    50.44
    5     5     5     1.06986643    -0.28693882  -679.83011234    -0.00004754    -0.00000371  0.11D-05  0.39D-06    50.44
    5     6     6     1.06754125    -0.27431665  -679.78424880    -0.00000719    -0.00000031  0.84D-07  0.34D-07    50.44
    5     7     7     1.05747967    -0.27132654  -679.75518477    -0.00001755    -0.00000091  0.39D-06  0.11D-06    50.44
    5     8     8     1.05747955    -0.27132568  -679.75518391    -0.00001774    -0.00000092  0.40D-06  0.11D-06    50.44
    5     9     9     1.05747958    -0.27132568  -679.75518391    -0.00001775    -0.00000092  0.40D-06  0.11D-06    50.44
    6     1     1     1.06993628    -0.28694385  -679.83011737    -0.00000447    -0.00000029  0.14D-06  0.21D-07    62.43
    6     2     2     1.06993610    -0.28694379  -679.83011731    -0.00000447    -0.00000029  0.14D-06  0.21D-07    62.43
    6     3     3     1.06993607    -0.28694379  -679.83011731    -0.00000447    -0.00000029  0.14D-06  0.21D-07    62.43
    6     4     4     1.06993577    -0.28694344  -679.83011696    -0.00000447    -0.00000029  0.14D-06  0.21D-07    62.43
    6     5     5     1.06993540    -0.28694329  -679.83011681    -0.00000447    -0.00000029  0.14D-06  0.21D-07    62.43
    6     6     6     1.06754780    -0.27431699  -679.78424914    -0.00000034    -0.00000002  0.15D-07  0.14D-08    62.43
    6     7     7     1.05745013    -0.27132759  -679.75518582    -0.00000105    -0.00000006  0.11D-07  0.11D-07    62.43
    6     8     8     1.05744977    -0.27132674  -679.75518497    -0.00000106    -0.00000006  0.11D-07  0.11D-07    62.43
    6     9     9     1.05744978    -0.27132674  -679.75518497    -0.00000106    -0.00000006  0.11D-07  0.11D-07    62.43
    7     1     1     1.06999033    -0.28694418  -679.83011770    -0.00000033    -0.00000003  0.23D-07  0.17D-08    74.39
    7     2     2     1.06999031    -0.28694412  -679.83011765    -0.00000033    -0.00000003  0.23D-07  0.17D-08    74.39
    7     3     3     1.06999030    -0.28694412  -679.83011765    -0.00000033    -0.00000003  0.23D-07  0.17D-08    74.39
    7     4     4     1.06998958    -0.28694377  -679.83011729    -0.00000033    -0.00000003  0.23D-07  0.17D-08    74.39
    7     5     5     1.06998931    -0.28694362  -679.83011714    -0.00000033    -0.00000003  0.23D-07  0.17D-08    74.39
    7     6     6     1.06755882    -0.27431702  -679.78424917    -0.00000003    -0.00000000  0.15D-08  0.15D-09    74.39
    7     7     7     1.05745073    -0.27132767  -679.75518590    -0.00000008    -0.00000001  0.47D-08  0.59D-09    74.39
    7     8     8     1.05745039    -0.27132681  -679.75518504    -0.00000008    -0.00000001  0.47D-08  0.59D-09    74.39
    7     9     9     1.05745039    -0.27132681  -679.75518504    -0.00000008    -0.00000001  0.47D-08  0.59D-09    74.39
    8     1     1     1.07001718    -0.28694422  -679.83011774    -0.00000004    -0.00000000  0.14D-08  0.42D-09    81.89
    8     2     2     1.07001712    -0.28694416  -679.83011768    -0.00000004    -0.00000000  0.14D-08  0.42D-09    81.89
    8     3     3     1.07001711    -0.28694416  -679.83011768    -0.00000004    -0.00000000  0.14D-08  0.42D-09    81.89
    8     4     4     1.07001647    -0.28694381  -679.83011733    -0.00000004    -0.00000000  0.14D-08  0.42D-09    81.89
    8     5     5     1.07001624    -0.28694366  -679.83011718    -0.00000004    -0.00000000  0.14D-08  0.42D-09    81.89
    8     6     6     1.06755882    -0.27431702  -679.78424917    -0.00000000    -0.00000000  0.15D-08  0.15D-09    81.89
    8     7     7     1.05745072    -0.27132767  -679.75518590    -0.00000000    -0.00000001  0.47D-08  0.59D-09    81.89
    8     8     8     1.05745039    -0.27132681  -679.75518504    -0.00000000    -0.00000001  0.47D-08  0.59D-09    81.89
    8     9     9     1.05745039    -0.27132681  -679.75518504    -0.00000000    -0.00000001  0.47D-08  0.59D-09    81.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   6.6%
 S   4.4%  29.7%
 P   0.7%  19.4%   8.7%

 Initialization:   0.8%
 Other:           29.6%

 Total CPU:       81.9 seconds
 =====================================



 gnormi=  0.93456443  gnorms=  0.03029114  gnormp=  0.03514442  gnorm=  1.00000000
 ecorri= -0.26816786  ecorrs= -0.00869144  ecorrp= -0.01008492  ecorr= -0.28694422

 gnormi=  0.93456449  gnorms=  0.03029107  gnormp=  0.03514444  gnorm=  1.00000000
 ecorri= -0.26816782  ecorrs= -0.00869142  ecorrp= -0.01008492  ecorr= -0.28694416

 gnormi=  0.93456449  gnorms=  0.03029107  gnormp=  0.03514444  gnorm=  1.00000000
 ecorri= -0.26816782  ecorrs= -0.00869142  ecorrp= -0.01008492  ecorr= -0.28694416

 gnormi=  0.93456505  gnorms=  0.03029037  gnormp=  0.03514457  gnorm=  1.00000000
 ecorri= -0.26816765  ecorrs= -0.00869120  ecorrp= -0.01008495  ecorr= -0.28694381

 gnormi=  0.93456526  gnorms=  0.03029015  gnormp=  0.03514460  gnorm=  1.00000000
 ecorri= -0.26816758  ecorrs= -0.00869113  ecorrp= -0.01008496  ecorr= -0.28694366

 gnormi=  0.93671654  gnorms=  0.03273296  gnormp=  0.03055050  gnorm=  1.00000000
 ecorri= -0.25695729  ecorrs= -0.00897947  ecorrp= -0.00838026  ecorr= -0.27431702

 gnormi=  0.94567054  gnorms=  0.02223124  gnormp=  0.03209821  gnorm=  1.00000000
 ecorri= -0.25658658  ecorrs= -0.00603159  ecorrp= -0.00870950  ecorr= -0.27132767

 gnormi=  0.94567084  gnorms=  0.02223092  gnormp=  0.03209823  gnorm=  1.00000000
 ecorri= -0.25658586  ecorrs= -0.00603148  ecorrp= -0.00870947  ecorr= -0.27132681

 gnormi=  0.94567084  gnorms=  0.02223093  gnormp=  0.03209823  gnorm=  1.00000000
 ecorri= -0.25658586  ecorrs= -0.00603148  ecorrp= -0.00870948  ecorr= -0.27132681

 Wavefunction saved on  5301.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//00000222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000030   0.9648706   0.0000000   0.0000000
                         -0.0000000
 2/00000/222000          -0.0000000  -0.0000000   0.0000000  -0.0000012   0.9639170   0.0000033  -0.0000000   0.0000000
                         -0.0000000
 2/0000/0222000          -0.0000000  -0.0000000  -0.0000000   0.9639169   0.0000012   0.0000000   0.0000000   0.0000000
                         -0.0000000
 2/0/0000222000          -0.0000000   0.0000000   0.9639165   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000015
                         -0.0000000
 2/00/000222000           0.0000000   0.9639165  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                         -0.0000015
 2/000/00222000           0.9639165  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                          0.0000000
 200000002220//          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.9000978   0.0000000
                          0.0000000
 20000000222//0          -0.0000000   0.0000011   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                          0.9000978
 20000000222/0/           0.0000000  -0.0000000   0.0000011  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9000978
                         -0.0000000
 20000//0222000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.3226692   0.0000000
                          0.0000000
 200/000/222000          -0.0000000  -0.0000000   0.0000042  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.2794404
                         -0.0000000
 2000/00/222000           0.0000000   0.0000042  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                          0.2794403
 200/0/00222000          -0.0000000  -0.0000002   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                         -0.1613364
 2000//00222000           0.0000000  -0.0000000  -0.0000002  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1613363
                          0.0000000
 2000/0/0222000          -0.0000000   0.0000054   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                         -0.1613360
 200/00/0222000          -0.0000000   0.0000000  -0.0000054   0.0000000   0.0000000  -0.0000000  -0.0000000   0.1613360
                         -0.0000000
 200//000222000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.1613359  -0.0000000
                          0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20/00000222000  22.1     0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001   0.0682700   0.0000000   0.0000000
                         -0.0000000
 2/000000222000  20.1    -0.0000000  -0.0519037  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000003
 2/000000222000  19.1    -0.0000000  -0.0000000  -0.0519037  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000003
                          0.0000000
 2/000000222000  18.1    -0.0519036  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                         -0.0000000
 2/000000222000  17.1     0.0000000   0.0000000   0.0000000  -0.0519025  -0.0000001  -0.0000000   0.0000000   0.0000000
                         -0.0000000
 2/000000222000  21.1     0.0000000   0.0000000  -0.0000000   0.0000001  -0.0519023  -0.0000006   0.0000000   0.0000000
                         -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.000000    0.963864   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000   -0.000000    0.963864   -0.000000   -0.000000   -0.000000    0.000001   -0.000000   -0.000000
 3           0.963864   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000001   -0.000000
 4           0.000000    0.963864    0.000000    0.000000   -0.000001   -0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000001    0.000000    0.000000    0.963864   -0.000003    0.000000   -0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000003    0.964871    0.000000   -0.000000   -0.000000
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.969397
 8          -0.000002    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.969397    0.000000
 9          -0.000000   -0.000000   -0.000002    0.000000   -0.000000   -0.000000    0.969397   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.963864   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.963864   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.963864    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.963864    0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.963864    0.000000    0.000000    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.964871   -0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.969397   -0.000000    0.000000
 8           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.969397    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.969397


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96386351 (fixed)   0.96391763 (relaxed)   0.96386351 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595412   -0.01464160   -0.19228477
 Singles      0.03260503   -0.08167966   -0.08457453
 Pairs        0.03782904    0.00000000   -0.01008492
 Total        1.07638819   -0.09632126   -0.28694422
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54317352
 Nuclear energy                         0.00000000
 Kinetic energy                       697.29161172
 One electron energy                 -931.66231518
 Two electron energy                  251.83219744
 Virial quotient                       -0.97495812
 Correlation energy                    -0.28694422
 !MRCI STATE 1.1 Energy              -679.830117740995

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.85203689 (Davidson, fixed reference)
 Cluster corrected energies          -679.85200221 (Davidson, relaxed reference)
 Cluster corrected energies          -679.85203689 (Davidson, rotated reference)

 Cluster corrected energies          -679.84718976 (Pople, fixed reference)
 Cluster corrected energies          -679.84716174 (Pople, relaxed reference)
 Cluster corrected energies          -679.84718976 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96386355 (fixed)   0.96391767 (relaxed)   0.96386355 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595410   -0.01464157   -0.19228477
 Singles      0.03260495   -0.08167962   -0.08457448
 Pairs        0.03782905    0.00000000   -0.01008492
 Total        1.07638810   -0.09632119   -0.28694416
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54317352
 Nuclear energy                         0.00000000
 Kinetic energy                       697.29161132
 One electron energy                 -931.66231605
 Two electron energy                  251.83219837
 Virial quotient                       -0.97495812
 Correlation energy                    -0.28694416
 !MRCI STATE 2.1 Energy              -679.830117681276

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.85203680 (Davidson, fixed reference)
 Cluster corrected energies          -679.85200212 (Davidson, relaxed reference)
 Cluster corrected energies          -679.85203680 (Davidson, rotated reference)

 Cluster corrected energies          -679.84718967 (Pople, fixed reference)
 Cluster corrected energies          -679.84716166 (Pople, relaxed reference)
 Cluster corrected energies          -679.84718967 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96386355 (fixed)   0.96391767 (relaxed)   0.96386355 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595410   -0.01464157   -0.19228476
 Singles      0.03260495   -0.08167962   -0.08457448
 Pairs        0.03782905    0.00000000   -0.01008492
 Total        1.07638810   -0.09632119   -0.28694416
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54317352
 Nuclear energy                         0.00000000
 Kinetic energy                       697.29161127
 One electron energy                 -931.66231583
 Two electron energy                  251.83219815
 Virial quotient                       -0.97495812
 Correlation energy                    -0.28694416
 !MRCI STATE 3.1 Energy              -679.830117681274

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.85203680 (Davidson, fixed reference)
 Cluster corrected energies          -679.85200212 (Davidson, relaxed reference)
 Cluster corrected energies          -679.85203680 (Davidson, rotated reference)

 Cluster corrected energies          -679.84718967 (Pople, fixed reference)
 Cluster corrected energies          -679.84716165 (Pople, relaxed reference)
 Cluster corrected energies          -679.84718967 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96386386 (fixed)   0.96391799 (relaxed)   0.96386386 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595404   -0.01464159   -0.19228513
 Singles      0.03260418   -0.08167899   -0.08457373
 Pairs        0.03782918    0.00000000   -0.01008495
 Total        1.07638739   -0.09632058   -0.28694381
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54317352
 Nuclear energy                         0.00000000
 Kinetic energy                       697.29161729
 One electron energy                 -931.66232039
 Two electron energy                  251.83220306
 Virial quotient                       -0.97495811
 Correlation energy                    -0.28694381
 !MRCI STATE 4.1 Energy              -679.830117325282

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.85203621 (Davidson, fixed reference)
 Cluster corrected energies          -679.85200153 (Davidson, relaxed reference)
 Cluster corrected energies          -679.85203621 (Davidson, rotated reference)

 Cluster corrected energies          -679.84718913 (Pople, fixed reference)
 Cluster corrected energies          -679.84716111 (Pople, relaxed reference)
 Cluster corrected energies          -679.84718913 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96386397 (fixed)   0.96391809 (relaxed)   0.96386397 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595404   -0.01464157   -0.19228517
 Singles      0.03260393   -0.08167884   -0.08457353
 Pairs        0.03782919   -0.00000000   -0.01008496
 Total        1.07638716   -0.09632041   -0.28694366
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54317352
 Nuclear energy                         0.00000000
 Kinetic energy                       697.29161757
 One electron energy                 -931.66231930
 Two electron energy                  251.83220212
 Virial quotient                       -0.97495811
 Correlation energy                    -0.28694366
 !MRCI STATE 5.1 Energy              -679.830117179986

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.85203599 (Davidson, fixed reference)
 Cluster corrected energies          -679.85200131 (Davidson, relaxed reference)
 Cluster corrected energies          -679.85203599 (Davidson, rotated reference)

 Cluster corrected energies          -679.84718892 (Pople, fixed reference)
 Cluster corrected energies          -679.84716090 (Pople, relaxed reference)
 Cluster corrected energies          -679.84718892 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96487063 (fixed)   0.96487063 (relaxed)   0.96487063 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00616687   -0.01653062   -0.17912316
 Singles      0.03515986   -0.08360493   -0.08681360
 Pairs        0.03281559    0.00000000   -0.00838026
 Total        1.07414231   -0.10013555   -0.27431702
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.50993215
 Nuclear energy                         0.00000000
 Kinetic energy                       697.17135412
 One electron energy                 -927.48793176
 Two electron energy                  247.70368259
 Virial quotient                       -0.97506050
 Correlation energy                    -0.27431702
 !MRCI STATE 6.1 Energy              -679.784249168795

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80458767 (Davidson, fixed reference)
 Cluster corrected energies          -679.80458767 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80458767 (Davidson, rotated reference)

 Cluster corrected energies          -679.80007272 (Pople, fixed reference)
 Cluster corrected energies          -679.80007272 (Pople, relaxed reference)
 Cluster corrected energies          -679.80007272 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96939703 (fixed)   0.96970138 (relaxed)   0.96939703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00632090   -0.01514995   -0.01584854
 Singles      0.02365704   -0.07832294   -0.07963405
 Pairs        0.03415682   -0.17785478   -0.17584507
 Total        1.06413476   -0.27132767   -0.27132767
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.48385823
 Nuclear energy                         0.00000000
 Kinetic energy                       697.23701899
 One electron energy                 -929.12472826
 Two electron energy                  249.36954236
 Virial quotient                       -0.97492699
 Correlation energy                    -0.27132767
 !MRCI STATE 7.1 Energy              -679.755185897582

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.77258743 (Davidson, fixed reference)
 Cluster corrected energies          -679.77240622 (Davidson, relaxed reference)
 Cluster corrected energies          -679.77258743 (Davidson, rotated reference)

 Cluster corrected energies          -679.76865835 (Pople, fixed reference)
 Cluster corrected energies          -679.76851369 (Pople, relaxed reference)
 Cluster corrected energies          -679.76865835 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96939746 (fixed)   0.96970184 (relaxed)   0.96939746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00632033   -0.01514931   -0.18298350
 Singles      0.02365668   -0.07832276   -0.07963384
 Pairs        0.03415682   -0.00000000   -0.00870947
 Total        1.06413383   -0.09347207   -0.27132681
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.48385823
 Nuclear energy                         0.00000000
 Kinetic energy                       697.23698300
 One electron energy                 -929.12468520
 Two electron energy                  249.36950015
 Virial quotient                       -0.97492704
 Correlation energy                    -0.27132681
 !MRCI STATE 8.1 Energy              -679.755185044426

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.77258627 (Davidson, fixed reference)
 Cluster corrected energies          -679.77240504 (Davidson, relaxed reference)
 Cluster corrected energies          -679.77258627 (Davidson, rotated reference)

 Cluster corrected energies          -679.76865725 (Pople, fixed reference)
 Cluster corrected energies          -679.76851257 (Pople, relaxed reference)
 Cluster corrected energies          -679.76865725 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96939746 (fixed)   0.96970184 (relaxed)   0.96939746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00632033   -0.01514931   -0.18298349
 Singles      0.02365668   -0.07832277   -0.07963384
 Pairs        0.03415681   -0.00000000   -0.00870948
 Total        1.06413383   -0.09347207   -0.27132681
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.48385823
 Nuclear energy                         0.00000000
 Kinetic energy                       697.23698311
 One electron energy                 -929.12468543
 Two electron energy                  249.36950038
 Virial quotient                       -0.97492704
 Correlation energy                    -0.27132681
 !MRCI STATE 9.1 Energy              -679.755185044422

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.77258627 (Davidson, fixed reference)
 Cluster corrected energies          -679.77240504 (Davidson, relaxed reference)
 Cluster corrected energies          -679.77258627 (Davidson, rotated reference)

 Cluster corrected energies          -679.76865725 (Pople, fixed reference)
 Cluster corrected energies          -679.76851257 (Pople, relaxed reference)
 Cluster corrected energies          -679.76865725 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       52.19       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      193.82       700     1000      520     2100     2140     5201     5301   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       148.88     92.43     51.12      2.70      0.10      2.33
 REAL TIME  *       162.06 SEC
 DISK USED  *       246.08 MB (local),        3.01 GB (total)
 SF USED    *         1.07 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =      -679.85203689  AU                              
 SETTING HLSDIAG(9)     =      -679.85203680  AU                              
 SETTING HLSDIAG(10)    =      -679.85203680  AU                              
 SETTING HLSDIAG(11)    =      -679.85203621  AU                              
 SETTING HLSDIAG(12)    =      -679.85203599  AU                              
 SETTING HLSDIAG(13)    =      -679.80458767  AU                              
 SETTING HLSDIAG(14)    =      -679.77258743  AU                              
 SETTING HLSDIAG(15)    =      -679.77258627  AU                              
 SETTING HLSDIAG(16)    =      -679.77258627  AU                              


         HLSDIAG
    -679.9496753
    -679.8447715
    -679.8447714
    -679.8447713
    -679.8447713
    -679.8447713
    -679.7968613
    -679.8520369
    -679.8520368
    -679.8520368
    -679.8520362
    -679.8520360
    -679.8045877
    -679.7725874
    -679.7725863
    -679.7725863
                                                  


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

 Time for Seward_LS:      24.42 sec

       32462576. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     7942 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     24.42 sec, REAL time:     25.51 sec


 SORTLS1 read    32490554. and wrote    32490554. SO integrals in   140 records. CPU time:      0.25 sec, REAL time:      0.46 sec
 SORTLS2 read    32490554. and wrote    32490554. SO integrals in    36 records. CPU time:      0.08 sec, REAL time:      0.20 sec

 FILE SIZES: FILE 1:   575.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   575.3 MBYTE
 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  
 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:-679.930740-679.823795-679.823795-679.823795-679.823795-679.823795-679.776281
 Replaced energies:-679.949675-679.844771-679.844771-679.844771-679.844771-679.844771-679.796861

 Wavefunction restored from record  5301.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:-679.830118-679.830118-679.830118-679.830117-679.830117-679.784249-679.755186-679.755185-679.755185
 Replaced energies:-679.852037-679.852037-679.852037-679.852036-679.852036-679.804588-679.772587-679.772586-679.772586



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -679.94967528

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00   23023.73       0.00       0.00       0.00       0.00       0.00      -0.00       7.93       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       7.91

    3   3.1  0.0  0.0       0.00       0.00   23023.74       0.00       0.00       0.00       0.00       0.00      -4.56      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.59

    4   4.1  0.0  0.0       0.00       0.00       0.00   23023.75       0.00       0.00       0.00       4.57      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   23023.75       0.00       0.00      -0.00       0.00      -4.57
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -4.57      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   23023.75       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       4.57      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   33538.80      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00      -0.00       0.00       4.57      -0.00       0.00      -0.00   21429.15       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -4.57       0.00       0.00      -0.00      -0.00

    9   2.1  1.0  1.0      -0.00       7.93      -4.56      -0.00       0.00       0.00       0.00       0.00   21429.17       0.00
                           -0.00      -0.00       0.00      -0.00       4.57       0.00      -0.00       0.00      -0.00      -6.12

   10   3.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -4.57      -0.00       0.00       0.00       0.00   21429.17
                            0.00      -7.91      -4.59      -0.00       0.00      -0.00      -0.00       0.00       6.12       0.00

   11   4.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       4.57      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       4.57       0.00      -0.00      -0.00     -12.25       0.00      -0.00

   12   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00      -7.92       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       7.92      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   13   6.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00      17.47       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      17.47      -0.00       0.00      -0.00       0.00

   15   8.1  1.0  1.0      -0.00      -0.00      -0.00       0.00     -17.47      -0.00       0.00       0.00       0.00       0.00
                           18.13      10.12     -17.45      -0.00       0.00       0.00      -2.37      -0.00      -1.54       0.00

   16   9.1  1.0  1.0     -18.13     -10.05     -17.49       0.00       0.00       0.00       2.37       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      17.47       0.00       0.00      -0.00       0.00       1.54

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -4.33
                            0.00       0.03     -12.93       0.00      -0.00      -0.00       0.00      -0.00      -4.33      -0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       6.47      -0.00      -0.00      -0.00       4.33       0.00      -0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.33       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -6.47       0.00       0.00       0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -4.33      -0.00
                            0.00       0.00      -0.00       0.00      12.93      -0.00      -0.00       0.00      -0.00       4.33

   21   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       7.50       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       7.50

   22   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -1.09
                           25.64     -28.53      -0.06       0.00       0.00      -0.00      -3.35      -0.00       1.09       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.09      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00      24.71      -0.00      -0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00     -24.71       0.00      -0.00       0.00       1.09      -0.00       0.00

   26   1.1  1.0 -1.0       0.00      -0.00       0.00       4.57      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       4.57      -0.00      -0.00      -0.00      -0.00

   27   2.1  1.0 -1.0      -0.00       7.93      -4.56      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -4.57      -0.00       0.00      -0.00      -0.00      -0.00

   28   3.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -4.57      -0.00       0.00       0.00       0.00       0.00
                           -0.00       7.91       4.59       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   29   4.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00       4.57      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -4.57      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   30   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00      -7.92       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -7.92       0.00       0.00       0.00      -0.00      -0.00      -0.00

   31   6.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   32   7.1  1.0 -1.0       0.00       0.00       0.00      17.47       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     -17.47       0.00      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     -17.47      -0.00       0.00       0.00       0.00       0.00
                          -18.13     -10.12      17.45       0.00      -0.00      -0.00       2.37      -0.00      -0.00      -0.00

   34   9.1  1.0 -1.0     -18.13     -10.05     -17.49       0.00       0.00       0.00       2.37       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     -17.47      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00      -0.00     -18.13       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00     -18.13       0.00      -0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0      -0.00       0.00       0.00       0.00      -0.00     -10.05       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     -10.12       0.00      -0.03       0.00      -0.00      -0.00

    3   3.1  0.0  0.0      -0.00       0.00      -0.00       0.00      -0.00     -17.49       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      17.45      -0.00      12.93       0.00      -0.00       0.00

    4   4.1  0.0  0.0      -0.00       0.00      -0.00      17.47       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.57      -7.92       0.00       0.00       0.00      -0.00      -0.00      -6.47       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00     -17.47       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00     -17.47       0.00       0.00       0.00     -12.93

    6   6.1  0.0  0.0       4.57      -7.92       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -17.47      -0.00      -0.00       0.00       0.00       6.47       0.00

    7   7.1  0.0  0.0      -0.00       0.00       0.00      -0.00       0.00       2.37       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       2.37      -0.00      -0.00       0.00      -0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       4.33      -0.00
                           12.25       0.00       0.00      -0.00       0.00       0.00       0.00      -4.33      -0.00      -0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -4.33
                           -0.00       0.00      -0.00       0.00       1.54      -0.00       4.33      -0.00      -0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.33      -0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -1.54       0.00       0.00       0.00      -4.33

   11   4.1  1.0  1.0   21429.30       0.00       0.00       0.00       0.00       0.00       0.00       4.33       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       4.33      -0.00

   12   5.1  1.0  1.0       0.00   21429.35       0.00       0.00       0.00       0.00      -0.00      -7.50      -0.00      -0.00
                            0.00       0.00       0.00      -1.78      -0.00      -0.00      -0.00      -0.00       7.50       0.00

   13   6.1  1.0  1.0       0.00       0.00   31843.05       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -3.62      -0.00      -0.00       0.00      -0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   38866.29       0.00       0.00       0.00      -0.00       1.09      -0.00
                           -0.00       1.78       3.62      -0.00       0.00      -0.00      -0.00       1.09       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   38866.54       0.00      -1.09       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      46.08      -0.00       0.00       0.00      -1.09

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   38866.54       0.00      -0.00       0.00      -1.09
                            0.00       0.00       0.00       0.00     -46.08      -0.00       1.09      -0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00       0.00       0.00      -1.09       0.00   21429.15       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -1.09       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       4.33      -7.50      -0.00      -0.00       0.00      -0.00       0.00   21429.17       0.00       0.00
                            0.00       0.00       0.00      -1.09      -0.00       0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.00       1.09       0.00       0.00       0.00       0.00   21429.17       0.00
                           -4.33      -7.50      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00      -1.09       0.00       0.00       0.00   21429.30
                            0.00      -0.00      -0.00      -0.00       1.09      -0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -0.63       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.63       0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00       2.56       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       2.56      -0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00      -0.00     -32.58       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      32.58      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0      -0.00       0.00      -0.00      32.58      -0.00       0.00       0.00       0.00       0.00       0.00
                           -1.09       0.63      -2.56      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       1.09       0.63      -2.56      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -32.58      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -4.33       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -4.33      -0.00      -0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.33
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.33       0.00      -0.00       0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.33       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -4.33

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -4.33      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       4.33       0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       7.50       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       7.50       0.00

   31   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   32   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -1.09       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.09       0.00       0.00

   33   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.09      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -1.09

   34   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       1.09
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.09      -0.00       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00     -25.64      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       7.93       0.00      -0.00       0.00
                            0.00      -0.00      28.53       0.00       0.00       0.00      -0.00      -7.91      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.56      -0.00      -0.00       0.00
                            0.00      -0.00       0.06      -0.00       0.00      -0.00       0.00      -4.59       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       4.57      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00      24.71      -0.00      -0.00      -0.00       4.57       7.92

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -4.57       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       4.57       0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.57      -7.92
                            0.00       0.00       0.00     -24.71       0.00      -4.57       0.00      -0.00      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       3.35       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

    8   1.1  1.0  1.0       0.00      -0.00      -0.00       1.09      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -1.09       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       7.50       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -1.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00      -1.09      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -7.50      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00      -0.00       1.09       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       1.09      -0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.63       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.63       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00      -0.00       0.00      -0.00      -2.56       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       2.56      -0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0      -0.00      -0.00      -0.00      32.58      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      32.58       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0      -0.00       0.00     -32.58      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.63      -2.56      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0      -0.63       2.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -32.58      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       4.33      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -4.33      -0.00      -0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -4.33       7.50
                            0.00       0.00       0.00       0.00       0.00       4.33      -0.00      -0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -4.33      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.33      -7.50

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       4.33       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.33      -0.00      -0.00

   21   5.1  1.0  0.0   21429.35       0.00       0.00       0.00       0.00      -0.00      -7.50      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       7.50       0.00       0.00

   22   6.1  1.0  0.0       0.00   31843.05       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00   38866.29       0.00       0.00       0.00      -0.00       1.09      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       1.09       0.00       0.00      -0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   38866.54       0.00      -1.09       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -1.09       0.63

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   38866.54       0.00      -0.00       0.00      -1.09      -0.63
                           -0.00      -0.00      -0.00      -0.00       0.00       1.09      -0.00       0.00       0.00      -0.00

   26   1.1  1.0 -1.0      -0.00       0.00       0.00      -1.09       0.00   21429.15       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -1.09      -0.00       0.00       0.00     -12.25      -0.00

   27   2.1  1.0 -1.0      -7.50      -0.00      -0.00       0.00      -0.00       0.00   21429.17       0.00       0.00       0.00
                            0.00       0.00      -1.09      -0.00       0.00      -0.00       0.00       6.12       0.00      -0.00

   28   3.1  1.0 -1.0      -0.00      -0.00       1.09       0.00       0.00       0.00       0.00   21429.17       0.00       0.00
                           -7.50      -0.00      -0.00      -0.00      -0.00      -0.00      -6.12      -0.00      -0.00       0.00

   29   4.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      -1.09       0.00       0.00       0.00   21429.30       0.00
                           -0.00      -0.00      -0.00       1.09      -0.00      12.25      -0.00       0.00      -0.00       0.00

   30   5.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.63       0.00       0.00       0.00       0.00   21429.35
                           -0.00       0.00       0.00      -0.63       0.00       0.00       0.00      -0.00      -0.00      -0.00

   31   6.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       2.56       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       2.56      -0.00       0.00      -0.00       0.00       0.00       0.00

   32   7.1  1.0 -1.0       0.00       0.00      -0.00     -32.58       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      32.58      -0.00       0.00      -0.00       0.00      -1.78

   33   8.1  1.0 -1.0       0.00      -0.00      32.58      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.63      -2.56      -0.00       0.00       0.00       0.00       1.54      -0.00       0.00      -0.00

   34   9.1  1.0 -1.0       0.63      -2.56      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -32.58      -0.00       0.00       0.00      -0.00      -1.54      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  0.0  0.0      -0.00       0.00      -0.00     -18.13
                           -0.00      -0.00      18.13      -0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00     -10.05
                           -0.00      -0.00      10.12      -0.00

    3   3.1  0.0  0.0      -0.00       0.00      -0.00     -17.49
                            0.00       0.00     -17.45       0.00

    4   4.1  0.0  0.0      -0.00      17.47       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00     -17.47       0.00
                            0.00      -0.00       0.00      17.47

    6   6.1  0.0  0.0       0.00       0.00      -0.00       0.00
                           -0.00      17.47       0.00       0.00

    7   7.1  0.0  0.0       0.00      -0.00       0.00       2.37
                            0.00      -0.00      -2.37       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0      -0.00      -0.00       1.09      -0.00
                           -0.00       0.00       0.00      -1.09

   18   2.1  1.0  0.0       0.00       0.00      -0.00       0.00
                            0.00      -1.09      -0.00       0.00

   19   3.1  1.0  0.0       0.00      -1.09      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00      -0.00       1.09
                           -0.00      -0.00       1.09      -0.00

   21   5.1  1.0  0.0      -0.00       0.00       0.00       0.63
                            0.00       0.00      -0.63       0.00

   22   6.1  1.0  0.0      -0.00       0.00      -0.00      -2.56
                           -0.00      -0.00       2.56      -0.00

   23   7.1  1.0  0.0      -0.00      -0.00      32.58      -0.00
                            0.00      -0.00       0.00      32.58

   24   8.1  1.0  0.0       0.00     -32.58      -0.00      -0.00
                           -2.56      -0.00      -0.00       0.00

   25   9.1  1.0  0.0       2.56       0.00       0.00       0.00
                            0.00     -32.58      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.54       0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       1.54

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       1.78       0.00       0.00

   31   6.1  1.0 -1.0   31843.05       0.00       0.00       0.00
                            0.00       3.62       0.00       0.00

   32   7.1  1.0 -1.0       0.00   38866.29       0.00       0.00
                           -3.62       0.00      -0.00       0.00

   33   8.1  1.0 -1.0       0.00       0.00   38866.54       0.00
                           -0.00       0.00      -0.00     -46.08

   34   9.1  1.0 -1.0       0.00       0.00       0.00   38866.54
                           -0.00      -0.00      46.08       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by   -679.94967528 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   23023.728       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   23023.741       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   23023.753       0.000       0.000       0.000       6.467
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   23023.752       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   23023.754       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   33538.799      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000      -0.000       0.000       6.467      -0.000       0.000      -0.000   21429.149
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      11.209      -6.443      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -6.467      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       6.466      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000     -11.199       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000      24.710       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000      -0.000      -0.000       0.000     -24.709      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -25.642     -14.217     -24.734       0.000       0.000       0.000       3.347       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.025     -12.929       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       6.467      -0.000      -0.000      -0.000       6.124

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -6.467       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      12.930      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               25.643     -28.530      -0.056       0.000       0.000      -0.000      -3.347      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      24.710      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000     -24.710       0.000      -0.000       0.000       1.545

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -6.467       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       6.467       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -11.184      -6.487      -0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       6.466       0.000      -0.000      -0.000     -12.246

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      11.199      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      24.710      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               25.642      14.314     -24.678      -0.000       0.000       0.000      -3.347      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      24.709       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000     -25.642
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              11.209       0.000      -0.000       0.000       0.000       0.000      -0.000     -14.217
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -6.443      -0.000      -0.000       0.000      -0.000       0.000      -0.000     -24.734
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      -0.000      -0.000       0.000      -0.000      24.710       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000      -6.467       0.000       0.000       0.000       0.000     -24.709       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000      -0.000       6.466     -11.199       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       3.347
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          21429.169       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   21429.169       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   21429.298       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   21429.347       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   31843.050       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   38866.290       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   38866.545       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   38866.545
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -6.124      -0.000      -0.000       0.000      -0.000       0.000       0.000      -1.545

    2    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -1.545      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -6.123     -10.605      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       6.123       0.000      -0.000      -0.000      -0.000       1.544      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      10.605       0.000       0.000       0.000       0.000      -0.897       0.000

    6    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       3.615      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                1.545       0.000       0.000      -0.000       0.000       0.000       0.000      46.079

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -1.544       0.897      -3.615      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000     -46.079      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      12.246       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -6.124      -0.000       0.000      -0.000       0.000       1.545      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.124       0.000       0.000      -0.000       0.000      -0.000      -0.000      -1.545

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -1.778      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -3.616      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       1.778       3.616      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.545       0.000      -0.000       0.000       0.000      -0.000       0.000      46.081

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       1.545       0.000       0.000       0.000       0.000     -46.081      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000     -25.643      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.025       0.000      -0.000      -0.000       0.000      -0.000      28.530       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.929       0.000      -0.000       0.000       0.000      -0.000       0.056      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -6.467       0.000      -0.000       0.000       0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -12.930      -0.000       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       6.467       0.000       0.000       0.000       0.000     -24.710

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       3.347       0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -6.124      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                6.124       0.000      -0.000       0.000       0.000       0.000      -1.545      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -6.123     -10.605      -0.000      -0.000      -0.000

    4    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000       6.123       0.000      -0.000      -0.000      -0.000       1.544

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000      10.605       0.000       0.000       0.000       0.000      -0.897

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       3.615

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       1.545       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -1.544       0.897      -3.615      -0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                1.545      -0.000       0.000       0.000      -0.000       0.000     -46.079      -0.000

    1    1  |1 0>           21429.149       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   21429.169       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   21429.169       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   21429.298       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   21429.347       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   31843.050       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   38866.290       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   38866.545
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       6.124      -0.000       0.000      -0.000      -0.000       1.545
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-             -0.000       0.000       0.000      -6.123      10.605       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-             -6.124      -0.000       0.000      -0.000       0.000       0.000      -1.545      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       6.123       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-             -0.000     -10.605      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000      -0.000       1.545      -0.000      -0.000      -0.000       0.000      46.079
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-             -1.545       0.000       0.000       0.000      -0.000       0.000     -46.079       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000      -0.000       0.000      -1.544      -0.897       3.615       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      11.184       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       6.487      -0.000      -0.000      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.710       0.000       0.000       0.000      -6.466     -11.199       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -6.467      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       6.467      -0.000       0.000       0.000       0.000       0.000     -24.710

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.545       0.000      -0.000      -0.000      12.246       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -6.124      -0.000       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       6.124       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -12.246       0.000      -0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -1.778

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -3.616

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               46.079       0.000      -0.000       0.000      -0.000       1.778       3.616      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -1.545       0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       1.545       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -6.124       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000      -0.000       6.123     -10.605      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       6.124       0.000       0.000       0.000      -0.000      -0.000       1.545
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -6.123      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000      10.605       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000      -1.545       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       1.545      -0.000      -0.000      -0.000       0.000      -0.000      46.079
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>           38866.545      -0.000       0.000      -0.000       1.544       0.897      -3.615      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000   21429.149       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000   21429.169       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000       0.000   21429.169       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              1.544       0.000       0.000       0.000   21429.298       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.897       0.000       0.000       0.000       0.000   21429.347       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -3.615       0.000       0.000       0.000       0.000       0.000   31843.050       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000       0.000       0.000   38866.290
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34

    1    1  |0 0>               0.000       0.000
                              -25.642       0.000

    2    1  |0 0>               0.000       0.000
                              -14.314       0.000

    3    1  |0 0>               0.000       0.000
                               24.678      -0.000

    4    1  |0 0>               0.000       0.000
                                0.000      -0.000

    5    1  |0 0>               0.000       0.000
                               -0.000     -24.709

    6    1  |0 0>               0.000       0.000
                               -0.000      -0.000

    7    1  |0 0>               0.000       0.000
                                3.347      -0.000

    1    1  |1 1>+              0.000       0.000
                                0.000       0.000

    2    1  |1 1>+              0.000       0.000
                                1.545      -0.000

    3    1  |1 1>+              0.000       0.000
                               -0.000      -1.545

    4    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    5    1  |1 1>+              0.000       0.000
                               -0.000      -0.000

    6    1  |1 1>+              0.000       0.000
                               -0.000      -0.000

    7    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    8    1  |1 1>+              0.000       0.000
                                0.000      46.081

    9    1  |1 1>+              0.000       0.000
                              -46.081      -0.000

    1    1  |1 0>              -1.545       0.000
                                0.000       0.000

    2    1  |1 0>               0.000      -0.000
                                0.000      -0.000

    3    1  |1 0>               0.000       0.000
                                0.000      -0.000

    4    1  |1 0>               0.000      -1.544
                               -0.000       0.000

    5    1  |1 0>              -0.000      -0.897
                               -0.000       0.000

    6    1  |1 0>               0.000       3.615
                                0.000      -0.000

    7    1  |1 0>             -46.079       0.000
                               -0.000      -0.000

    8    1  |1 0>               0.000       0.000
                                0.000       0.000

    9    1  |1 0>              -0.000       0.000
                                0.000       0.000

    1    1  |1 1>-              0.000       0.000
                                0.000       0.000

    2    1  |1 1>-              0.000       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000       0.000
                                0.000       0.000

    4    1  |1 1>-              0.000       0.000
                                0.000       0.000

    5    1  |1 1>-              0.000       0.000
                                0.000       0.000

    6    1  |1 1>-              0.000       0.000
                                0.000       0.000

    7    1  |1 1>-              0.000       0.000
                                0.000       0.000

    8    1  |1 1>-          38866.545       0.000
                                0.000       0.000

    9    1  |1 1>-              0.000   38866.545
                                0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -679.94967551    -0.00000023       -0.05      0.00000000        0.00      0.0000
    2  -679.85212027     0.09755501    21410.85      0.09755524    21410.90      2.6546
    3  -679.85212027     0.09755501    21410.85      0.09755524    21410.90      2.6546
    4  -679.85212017     0.09755510    21410.87      0.09755534    21410.92      2.6546
    5  -679.85206548     0.09760980    21422.87      0.09761003    21422.93      2.6561
    6  -679.85206542     0.09760986    21422.89      0.09761009    21422.94      2.6561
    7  -679.85206502     0.09761025    21422.97      0.09761049    21423.03      2.6561
    8  -679.85206493     0.09761035    21423.00      0.09761058    21423.05      2.6561
    9  -679.85206493     0.09761035    21423.00      0.09761058    21423.05      2.6561
   10  -679.85198103     0.09769425    21441.41      0.09769448    21441.46      2.6584
   11  -679.85198081     0.09769447    21441.46      0.09769470    21441.51      2.6584
   12  -679.85198081     0.09769447    21441.46      0.09769470    21441.51      2.6584
   13  -679.85198081     0.09769447    21441.46      0.09769470    21441.51      2.6584
   14  -679.85198061     0.09769467    21441.50      0.09769490    21441.55      2.6584
   15  -679.85198061     0.09769467    21441.50      0.09769490    21441.55      2.6584
   16  -679.85198052     0.09769476    21441.52      0.09769499    21441.57      2.6584
   17  -679.84477109     0.10490419    23023.81      0.10490442    23023.86      2.8546
   18  -679.84477103     0.10490425    23023.82      0.10490448    23023.87      2.8546
   19  -679.84477098     0.10490430    23023.83      0.10490453    23023.88      2.8546
   20  -679.84477098     0.10490430    23023.83      0.10490453    23023.88      2.8546
   21  -679.84477097     0.10490431    23023.83      0.10490454    23023.89      2.8546
   22  -679.80458768     0.14508760    31843.05      0.14508783    31843.10      3.9480
   23  -679.80458768     0.14508760    31843.05      0.14508783    31843.10      3.9480
   24  -679.80458768     0.14508760    31843.05      0.14508783    31843.10      3.9480
   25  -679.79686129     0.15281399    33538.79      0.15281422    33538.84      4.1583
   26  -679.77300631     0.17666897    38774.36      0.17666920    38774.41      4.8074
   27  -679.77279678     0.17687849    38820.34      0.17687873    38820.39      4.8131
   28  -679.77279678     0.17687849    38820.34      0.17687873    38820.39      4.8131
   29  -679.77279622     0.17687906    38820.47      0.17687929    38820.52      4.8131
   30  -679.77237675     0.17729853    38912.53      0.17729876    38912.58      4.8245
   31  -679.77237655     0.17729873    38912.57      0.17729896    38912.62      4.8246
   32  -679.77237655     0.17729873    38912.57      0.17729896    38912.62      4.8246
   33  -679.77237596     0.17729932    38912.70      0.17729955    38912.75      4.8246
   34  -679.77237596     0.17729932    38912.70      0.17729955    38912.75      4.8246

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999934  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00008716  0.00989435 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00989465  0.00008716  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00001272  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00989757
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000 -0.00989703 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00001277  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000020  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.54929625 -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40986847
                           0.00000000  0.00000002 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000001  0.00000000  0.00000000 -0.00000000  0.41276160 -0.70426908  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.54899160  0.00000000 -0.00000000 -0.41011041 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000070  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000007 -0.54662273 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012
                          -0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000004 -0.31437030 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000020
                          -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00008076  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00012202
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00008119  0.00000000 -0.00000000 -0.00012212 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00066130  0.00000000 -0.00000000 -0.00000000  0.00012170  0.00007136  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.81673108  0.00559069  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.54831653  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000  0.41172286

   3    1  |1 0>          -0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000007 -0.54831120 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000139  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000370 -0.00000000  0.00000000  0.81456973  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.63024379  0.00000000  0.00000000  0.00000714 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00066134  0.00000000  0.00000000  0.00000000 -0.00000097  0.00014110 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00008106 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00008106  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00012226

   1    1  |1 1>-          0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000007  0.54929929  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000 -0.00000070  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.54899997 -0.00000000  0.00000000  0.41010685  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.40308841  0.70984214  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.54662045 -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40660063

   5    1  |1 1>-          0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.31437030  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70503196

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00008076  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00066130  0.00000000  0.00000000  0.00000000  0.00012266 -0.00006969  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00008119 -0.00000000  0.00000000  0.00012212  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000566  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00003897  0.00000000 -0.00000000  0.00002089  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00003144 -0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00989755  0.00000000  0.00000000 -0.00003893 -0.00000000  0.00000000 -0.00002091 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000012 -0.00000000  0.70030986  0.00000009 -0.00000000 -0.19957763 -0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.57755314  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.57544836  0.00000000 -0.00000000  0.44638607
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000116

   4    1  |1 1>+         -0.40659839  0.00000000 -0.00000007  0.52072777  0.00000000  0.00000001 -0.51449741 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000001 -0.00000000 -0.00000000

   5    1  |1 1>+          0.70503577  0.00000000  0.00000004 -0.32132546 -0.00000000  0.00000002 -0.54844947 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000001 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000028 -0.00000000  0.00000000 -0.00000022 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000038  0.00000000  0.00000000  0.00000046
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.57693483 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000001  0.00000000
                          -0.00000012  0.00000000  0.36805116  0.00000005 -0.00000000  0.62797713  0.00000002 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000001 -0.00000000 -0.00000000
                           0.41172246 -0.00000000 -0.00000005  0.36700859  0.00000000 -0.00000002  0.62859192  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.58000888 -0.00000000 -0.00000000  0.00073702

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000202
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00099257  0.00000000 -0.00000000  0.77639666

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00012226 -0.00000000 -0.00000000  0.00000060  0.00000000 -0.00000000  0.00000027  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000060  0.00000000 -0.00000000  0.00000026  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.40986453 -0.00000000 -0.00000009  0.70064059  0.00000000  0.00000001 -0.19841318  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000116
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.57658295  0.00000000 -0.00000000  0.44491254

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.57756261  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000001  0.00000000
                          -0.00000012  0.00000000 -0.51987062 -0.00000007  0.00000000  0.51536416  0.00000001 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009  0.00000001 -0.00000000
                          -0.00000020 -0.00000000 -0.32224057 -0.00000004  0.00000000 -0.54791722 -0.00000002  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00012202  0.00000000 -0.00000000  0.00000028  0.00000000 -0.00000000  0.00000022  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000037  0.00000000  0.00000000  0.00000046

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.99994863 -0.00000183 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000183  0.99994863 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000001  0.99994860 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.99994860  0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000037 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000001  0.00000000  0.99994860  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00404091 -0.00000000 -0.00000000  0.00000008  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00700482 -0.00402637  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00404109 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00404116 -0.00000008 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00699868 -0.00000004 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.99802245  0.06285423  0.00000306
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000057 -0.00000068  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00155393  0.00000000 -0.00003258  0.00051725  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00155387  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00051812
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00089403  0.00155546 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001589 -0.00807918  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00404096 -0.00000000  0.00000001 -0.00000009 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00404095 -0.00000009 -0.00000001 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00808074  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000272 -0.00000557  0.99999973

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00179419  0.00000353 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00155394  0.00051710  0.00003257  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00155394 -0.00000000 -0.00003257  0.00051710  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00404089  0.00000008  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00404109  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00698892 -0.00405389  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00404115 -0.00000000 -0.00000000  0.00000008  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00699870 -0.00000000  0.00000000 -0.00000004 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000077 -0.00000092  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.06285423  0.99802245  0.00000539

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00155393 -0.00051725 -0.00003258 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00090014  0.00155194 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00155387 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00051812

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000147  0.00114543 -0.00000000  0.00000000  0.00000000 -0.00000095  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000190  0.00000000 -0.00000000  0.00000000 -0.00219902 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000429  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000303 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00219920
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000303 -0.00000000 -0.00000000  0.00219920 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.99999939 -0.00110713  0.00000000 -0.00000000 -0.00000000  0.00000091 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00006268 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00006176
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000011 -0.00000000 -0.00000000  0.00000000  0.00010680  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00006274 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00006263 -0.00000000  0.00000000 -0.00006170  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00003591 -0.00000000 -0.00000000  0.00010667 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00073284  0.00000000  0.00000000 -0.00000091  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.70808374 -0.00000017 -0.00000000  0.00000000 -0.00000011 -0.70612656
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000003

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.70710614  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00071411  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00063918 -0.57699813  0.00000000 -0.00000000 -0.00000000  0.40873032  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00006286  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00006158

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00006286 -0.00000000 -0.00000000  0.00006158 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00007286  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000074 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00073274 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00063924  0.57805188 -0.00000000  0.00000000  0.00000000  0.81599751  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000004
                           0.00000000  0.00000000 -0.00000017 -0.70612800  0.00000000 -0.00000000  0.70808230 -0.00000011

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000004  0.00000003
                          -0.00000000  0.00000000  0.70612808 -0.00000017 -0.00000000 -0.00000000  0.00000011  0.70808222

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00006268  0.00000000 -0.00000000  0.00006176 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00006274  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000011 -0.00000000  0.00000000 -0.00000000 -0.00010680 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00006263 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00006170

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00003591  0.00000000  0.00000000 -0.00000000  0.00000000  0.00010667

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00073284  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000091

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005  0.00000004
                           0.00000000 -0.00000000  0.00000017  0.70808383 -0.00000000 -0.00000000  0.70612647 -0.00000011

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00063918  0.57699796 -0.00000000  0.00000000  0.00000000 -0.40875754 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00071411  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.70710631 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |0 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>           0.00000429  0.00000000
                           0.00000000 -0.00000000

   3    1  |0 0>          -0.00219886 -0.00000000
                          -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000
                           0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00219911
                           0.00000000 -0.00000002

   6    1  |0 0>           0.00000000 -0.00000000
                          -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   2    1  |1 1>+         -0.00006164 -0.00000000
                          -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00006164
                           0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000
                           0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000
                          -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000
                           0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000
                           0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.70710515
                          -0.00000000  0.00000525

   9    1  |1 1>+          0.70711286  0.00000000
                           0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000
                          -0.00012334 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000
                           0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000  0.00012323

   5    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000
                           0.00001578 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000
                           0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000
                           0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000  0.00006164

   3    1  |1 1>-          0.00000000 -0.00000000
                          -0.00006165 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000
                           0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000
                           0.70709726  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000525
                           0.00000000 -0.70710498


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1   -679.94967551     -0.00000023       -0.05      0.00000000        0.00      0.0000
   2   1   -679.85212027      0.09755501    21410.85      0.09755524    21410.90      2.6546
   3   1   -679.85212027      0.09755501    21410.85      0.09755524    21410.90      2.6546
   4   1   -679.85212017      0.09755510    21410.87      0.09755534    21410.92      2.6546
   5   1   -679.85206548      0.09760980    21422.87      0.09761003    21422.93      2.6561
   6   1   -679.85206542      0.09760986    21422.89      0.09761009    21422.94      2.6561
   7   1   -679.85206502      0.09761025    21422.97      0.09761049    21423.03      2.6561
   8   1   -679.85206493      0.09761035    21423.00      0.09761058    21423.05      2.6561
   9   1   -679.85206493      0.09761035    21423.00      0.09761058    21423.05      2.6561
  10   1   -679.85198103      0.09769425    21441.41      0.09769448    21441.46      2.6584
  11   1   -679.85198081      0.09769447    21441.46      0.09769470    21441.51      2.6584
  12   1   -679.85198081      0.09769447    21441.46      0.09769470    21441.51      2.6584
  13   1   -679.85198081      0.09769447    21441.46      0.09769470    21441.51      2.6584
  14   1   -679.85198061      0.09769467    21441.50      0.09769490    21441.55      2.6584
  15   1   -679.85198061      0.09769467    21441.50      0.09769490    21441.55      2.6584
  16   1   -679.85198052      0.09769476    21441.52      0.09769499    21441.57      2.6584
  17   1   -679.84477109      0.10490419    23023.81      0.10490442    23023.86      2.8546
  18   1   -679.84477103      0.10490425    23023.82      0.10490448    23023.87      2.8546
  19   1   -679.84477098      0.10490430    23023.83      0.10490453    23023.88      2.8546
  20   1   -679.84477098      0.10490430    23023.83      0.10490453    23023.88      2.8546
  21   1   -679.84477097      0.10490431    23023.83      0.10490454    23023.89      2.8546
  22   1   -679.80458768      0.14508760    31843.05      0.14508783    31843.10      3.9480
  23   1   -679.80458768      0.14508760    31843.05      0.14508783    31843.10      3.9480
  24   1   -679.80458768      0.14508760    31843.05      0.14508783    31843.10      3.9480
  25   1   -679.79686129      0.15281399    33538.79      0.15281422    33538.84      4.1583
  26   1   -679.77300631      0.17666897    38774.36      0.17666920    38774.41      4.8074
  27   1   -679.77279678      0.17687849    38820.34      0.17687873    38820.39      4.8131
  28   1   -679.77279678      0.17687849    38820.34      0.17687873    38820.39      4.8131
  29   1   -679.77279622      0.17687906    38820.47      0.17687929    38820.52      4.8131
  30   1   -679.77237675      0.17729853    38912.53      0.17729876    38912.58      4.8245
  31   1   -679.77237655      0.17729873    38912.57      0.17729896    38912.62      4.8246
  32   1   -679.77237655      0.17729873    38912.57      0.17729896    38912.62      4.8246
  33   1   -679.77237596      0.17729932    38912.70      0.17729955    38912.75      4.8246
  34   1   -679.77237596      0.17729932    38912.70      0.17729955    38912.75      4.8246

 E0 =   -679.94967528 is the energy of the lowest zeroth-order state
 E1 =   -679.94967551 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999934  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00008716  0.00989435 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00989465  0.00008716  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00001272  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00989757
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000 -0.00989703 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00001277  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000020  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.54929625 -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40986847
                                0.00000000  0.00000002 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000001  0.00000000  0.00000000 -0.00000000  0.41276160 -0.70426908  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.54899160  0.00000000 -0.00000000 -0.41011041 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000070  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000007 -0.54662273 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012
                               -0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000004 -0.31437030 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000020
                               -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00008076  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00012202
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00008119  0.00000000 -0.00000000 -0.00012212 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00066130  0.00000000 -0.00000000 -0.00000000  0.00012170  0.00007136  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.81673108  0.00559069  0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000002 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.54831653  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000  0.41172286

 19  1     3    1  |1 0>       -0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000007 -0.54831120 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000139  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000370 -0.00000000  0.00000000  0.81456973  0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.63024379  0.00000000  0.00000000  0.00000714 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00066134  0.00000000  0.00000000  0.00000000 -0.00000097  0.00014110 -0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00008106 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00008106  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00012226

 26  1     1    1  |1 1>-       0.00000000  0.00000001 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000007  0.54929929  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012

 27  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000 -0.00000070  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.54899997 -0.00000000  0.00000000  0.41010685  0.00000000

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.40308841  0.70984214  0.00000000  0.00000000

 29  1     4    1  |1 1>-      -0.00000000 -0.00000002  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.54662045 -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40660063

 30  1     5    1  |1 1>-       0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.31437030  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70503196

 31  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 32  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00008076  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00066130  0.00000000  0.00000000  0.00000000  0.00012266 -0.00006969  0.00000000 -0.00000000

 34  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00008119 -0.00000000  0.00000000  0.00012212  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000566  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00003897  0.00000000 -0.00000000  0.00002089  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00003144 -0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00989755  0.00000000  0.00000000 -0.00003893 -0.00000000  0.00000000 -0.00002091 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000012 -0.00000000  0.70030986  0.00000009 -0.00000000 -0.19957763 -0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.57755314  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.57544836  0.00000000 -0.00000000  0.44638607
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000116

 11  1     4    1  |1 1>+      -0.40659839  0.00000000 -0.00000007  0.52072777  0.00000000  0.00000001 -0.51449741 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000001 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.70503577  0.00000000  0.00000004 -0.32132546 -0.00000000  0.00000002 -0.54844947 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000001 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000028 -0.00000000  0.00000000 -0.00000022 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000038  0.00000000  0.00000000  0.00000046
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.57693483 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000001  0.00000000
                               -0.00000012  0.00000000  0.36805116  0.00000005 -0.00000000  0.62797713  0.00000002 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000001 -0.00000000 -0.00000000
                                0.41172246 -0.00000000 -0.00000005  0.36700859  0.00000000 -0.00000002  0.62859192  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.58000888 -0.00000000 -0.00000000  0.00073702

 21  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000202
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00099257  0.00000000 -0.00000000  0.77639666

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

 23  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00012226 -0.00000000 -0.00000000  0.00000060  0.00000000 -0.00000000  0.00000027  0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000060  0.00000000 -0.00000000  0.00000026  0.00000000 -0.00000000

 26  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.40986453 -0.00000000 -0.00000009  0.70064059  0.00000000  0.00000001 -0.19841318  0.00000000

 27  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000116
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.57658295  0.00000000 -0.00000000  0.44491254

 28  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.57756261  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000001  0.00000000
                               -0.00000012  0.00000000 -0.51987062 -0.00000007  0.00000000  0.51536416  0.00000001 -0.00000000

 30  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009  0.00000001 -0.00000000
                               -0.00000020 -0.00000000 -0.32224057 -0.00000004  0.00000000 -0.54791722 -0.00000002  0.00000000

 31  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 32  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00012202  0.00000000 -0.00000000  0.00000028  0.00000000 -0.00000000  0.00000022  0.00000000

 33  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000037  0.00000000  0.00000000  0.00000046


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.99994863 -0.00000183 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000183  0.99994863 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000001  0.99994860 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.99994860  0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000037 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000001  0.00000000  0.99994860  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00404091 -0.00000000 -0.00000000  0.00000008  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00700482 -0.00402637  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00404109 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000007
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00404116 -0.00000008 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00699868 -0.00000004 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.99802245  0.06285423  0.00000306
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000057 -0.00000068  0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00155393  0.00000000 -0.00003258  0.00051725  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00155387  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00051812
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00089403  0.00155546 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001589 -0.00807918  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00404096 -0.00000000  0.00000001 -0.00000009 -0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00404095 -0.00000009 -0.00000001 -0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00808074  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009

 22  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000272 -0.00000557  0.99999973

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00179419  0.00000353 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00155394  0.00051710  0.00003257  0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00155394 -0.00000000 -0.00003257  0.00051710  0.00000000

 26  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00404089  0.00000008  0.00000000  0.00000000

 27  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00404109  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007

 28  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00698892 -0.00405389  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00404115 -0.00000000 -0.00000000  0.00000008  0.00000000

 30  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00699870 -0.00000000  0.00000000 -0.00000004 -0.00000000

 31  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000077 -0.00000092  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.06285423  0.99802245  0.00000539

 32  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00155393 -0.00051725 -0.00003258 -0.00000000

 33  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00090014  0.00155194 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00155387 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00051812


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000147  0.00114543 -0.00000000  0.00000000  0.00000000 -0.00000095  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000190  0.00000000 -0.00000000  0.00000000 -0.00219902 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000429  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000303 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00219920
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000303 -0.00000000 -0.00000000  0.00219920 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.99999939 -0.00110713  0.00000000 -0.00000000 -0.00000000  0.00000091 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00006268 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00006176
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.00000011 -0.00000000 -0.00000000  0.00000000  0.00010680  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00006274 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00006263 -0.00000000  0.00000000 -0.00006170  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00003591 -0.00000000 -0.00000000  0.00010667 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00073284  0.00000000  0.00000000 -0.00000091  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000  0.70808374 -0.00000017 -0.00000000  0.00000000 -0.00000011 -0.70612656
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000003

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.70710614  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00071411  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00063918 -0.57699813  0.00000000 -0.00000000 -0.00000000  0.40873032  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00006286  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00006158

 19  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00006286 -0.00000000 -0.00000000  0.00006158 -0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00007286  0.00000000 -0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000074 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00073274 -0.00000000 -0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00063924  0.57805188 -0.00000000  0.00000000  0.00000000  0.81599751  0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000004
                                0.00000000  0.00000000 -0.00000017 -0.70612800  0.00000000 -0.00000000  0.70808230 -0.00000011

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000004  0.00000003
                               -0.00000000  0.00000000  0.70612808 -0.00000017 -0.00000000 -0.00000000  0.00000011  0.70808222

 26  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00006268  0.00000000 -0.00000000  0.00006176 -0.00000000

 27  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00006274  0.00000000  0.00000000  0.00000000

 28  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000011 -0.00000000  0.00000000 -0.00000000 -0.00010680 -0.00000000 -0.00000000

 29  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00006263 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00006170

 30  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00003591  0.00000000  0.00000000 -0.00000000  0.00000000  0.00010667

 31  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00073284  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000091

 32  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005  0.00000004
                                0.00000000 -0.00000000  0.00000017  0.70808383 -0.00000000 -0.00000000  0.70612647 -0.00000011

 33  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00063918  0.57699796 -0.00000000  0.00000000  0.00000000 -0.40875754 -0.00000000 -0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00071411  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.70710631 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |0 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000429  0.00000000
                                0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00219886 -0.00000000
                               -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000
                                0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00219911
                                0.00000000 -0.00000002

  6  1     6    1  |0 0>        0.00000000 -0.00000000
                               -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00006164 -0.00000000
                               -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00006164
                                0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000
                                0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000
                               -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000
                                0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000
                                0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.70710515
                               -0.00000000  0.00000525

 16  1     9    1  |1 1>+       0.70711286  0.00000000
                                0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000
                               -0.00012334 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000
                                0.00000000 -0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000  0.00012323

 21  1     5    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 22  1     6    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000 -0.00000000
                                0.00001578 -0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000
                                0.00000000 -0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 26  1     1    1  |1 1>-       0.00000000 -0.00000000
                                0.00000000 -0.00000000

 27  1     2    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000  0.00006164

 28  1     3    1  |1 1>-       0.00000000 -0.00000000
                               -0.00006165 -0.00000000

 29  1     4    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 30  1     5    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 31  1     6    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 32  1     7    1  |1 1>-       0.00000000 -0.00000000
                                0.00000000 -0.00000000

 33  1     8    1  |1 1>-      -0.00000000  0.00000000
                                0.70709726  0.00000000

 34  1     9    1  |1 1>-      -0.00000000  0.00000525
                                0.00000000 -0.70710498



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%   30.17%    0.00%    0.00%    0.00%    0.00%    0.00%   16.80%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   17.04%   49.60%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.14%    0.00%    0.00%   16.82%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   29.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    9.88%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.70%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%   30.07%    0.00%    0.00%    0.00%    0.00%    0.00%   16.95%
 19  1     3    1  |1 0>          0.00%    0.00%   30.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.35%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.72%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%   30.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.14%    0.00%    0.00%   16.82%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.25%   50.39%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%   29.88%    0.00%    0.00%    0.00%    0.00%    0.00%   16.53%
 30  1     5    1  |1 1>-         0.00%    9.88%    0.00%    0.00%    0.00%    0.00%    0.00%   49.71%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   49.04%    0.00%    0.00%    3.98%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%   33.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.11%    0.00%    0.00%   19.93%
 11  1     4    1  |1 1>+        16.53%    0.00%    0.00%   27.12%    0.00%    0.00%   26.47%    0.00%
 12  1     5    1  |1 1>+        49.71%    0.00%    0.00%   10.33%    0.00%    0.00%   30.08%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%   33.29%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%   13.55%    0.00%    0.00%   39.44%    0.00%    0.00%
 19  1     3    1  |1 0>         16.95%    0.00%    0.00%   13.47%    0.00%    0.00%   39.51%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.64%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.28%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-        16.80%    0.00%    0.00%   49.09%    0.00%    0.00%    3.94%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.24%    0.00%    0.00%   19.79%
 28  1     3    1  |1 1>-         0.00%   33.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%   27.03%    0.00%    0.00%   26.56%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%   10.38%    0.00%    0.00%   30.02%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%   99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   99.99%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   99.99%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.99%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   99.60%    0.40%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.40%   99.60%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%   50.14%    0.00%    0.00%    0.00%    0.00%   49.86%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   33.29%    0.00%    0.00%    0.00%   16.71%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   33.41%    0.00%    0.00%    0.00%   66.59%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%   49.86%    0.00%    0.00%   50.14%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%   49.86%    0.00%    0.00%    0.00%    0.00%   50.14%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%   50.14%    0.00%    0.00%   49.86%    0.00%
 33  1     8    1  |1 1>-         0.00%   33.29%    0.00%    0.00%    0.00%   16.71%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |0 0>          0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%   50.00%
 16  1     9    1  |1 1>+        50.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%
 33  1     8    1  |1 1>-        50.00%    0.00%
 34  1     9    1  |1 1>-         0.00%   50.00%


  Expectation values <i|DMX|i>
  ............................

  state:         1           2           3           4           5           6           7           8
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:         9          10          11          12          13          14          15          16
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        17          18          19          20          21          22          23          24
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        25          26          27          28          29          30          31          32
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        33          34
  value:      0.000000    0.000000


  Transition matrix elements <i|DMX| 1> with the ground state
  ...........................................................

                             1           2           3           4           5           6           7           8
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                             9          10          11          12          13          14          15          16
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            17          18          19          20          21          22          23          24
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            25          26          27          28          29          30          31          32
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            33          34
  Real Part  (a.u.):      0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000


  Expectation values <i|DMY|i>
  ............................

  state:         1           2           3           4           5           6           7           8
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:         9          10          11          12          13          14          15          16
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        17          18          19          20          21          22          23          24
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        25          26          27          28          29          30          31          32
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        33          34
  value:      0.000000    0.000000


  Transition matrix elements <i|DMY| 1> with the ground state
  ...........................................................

                             1           2           3           4           5           6           7           8
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                             9          10          11          12          13          14          15          16
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            17          18          19          20          21          22          23          24
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            25          26          27          28          29          30          31          32
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            33          34
  Real Part  (a.u.):      0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000


  Expectation values <i|DMZ|i>
  ............................

  state:         1           2           3           4           5           6           7           8
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:         9          10          11          12          13          14          15          16
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        17          18          19          20          21          22          23          24
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        25          26          27          28          29          30          31          32
  value:      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

  state:        33          34
  value:      0.000000    0.000000


  Transition matrix elements <i|DMZ| 1> with the ground state
  ...........................................................

                             1           2           3           4           5           6           7           8
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                             9          10          11          12          13          14          15          16
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            17          18          19          20          21          22          23          24
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            25          26          27          28          29          30          31          32
  Real Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000

                            33          34
  Real Part  (a.u.):      0.000000    0.000000
  Imag Part  (a.u.):      0.000000    0.000000
  Abs. Value (a.u.):      0.000000    0.000000
  Abs. Value (Debye):     0.000000    0.000000



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      548.69       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      193.82       700     1000      520     2100     2140     5201     5301   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       435.30    286.42     92.43     51.12      2.70      0.10      2.33
 REAL TIME  *       466.13 SEC
 DISK USED  *       246.20 MB (local),        3.94 GB (total)
 SF USED    *         1.07 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy=   -679.772375956228

              CI              CI           MULTI         RHF-SCF
   -679.75518504   -679.77628057   -679.48385823   -679.62929280
 **********************************************************************************************************************************
 Molpro calculation terminated
