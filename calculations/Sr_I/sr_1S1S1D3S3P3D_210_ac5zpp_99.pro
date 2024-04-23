
 Working directory              : /wrk/irikura/molpro.kNRwvo4wZu/
 Global scratch directory       : /wrk/irikura/molpro.kNRwvo4wZu/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.kNRwvo4wZu/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Sr SO-CI
 memory,3000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/10)
 {multi
     closed,1,3
     occ,8,6
     wf,sym=1,spin=2;state,9;
       weight,1,1,1,1,1, 99, 1,1,1
     wf,sym=1,spin=0;state,7;
       weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=2;state,9; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,7; save,5201.2}
 hlsdiag(10) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5201.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 21-Mar-24          TIME: 11:14:22  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sr   ECP ECP28MDF                 selected for group  1
 Library entry SR     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  SR     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         361
 NUMBER OF SYMMETRY AOS:          267
 NUMBER OF CONTRACTIONS:          218   (  106Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7
                                        8 9101112131415 7 8   9101112131415 7 8 9  101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.130E-03 0.301E-03 0.457E-03 0.457E-03 0.457E-03 0.457E-03 0.457E-03 0.102E-02
         2 0.253E-03 0.253E-03 0.253E-03 0.230E-02 0.230E-02 0.230E-02 0.414E-02 0.414E-02


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     243.794 MB (compressed) written to integral file ( 12.2%)

     Node minimum: 10.486 MB, node maximum: 19.399 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    8976855.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    8976855      RECORD LENGTH: 524288

 Memory used in sort:       9.53 MW

 SORT1 READ   248856419. AND WROTE     1595688. INTEGRALS IN      5 RECORDS. CPU TIME:     1.04 SEC, REAL TIME:     1.09 SEC
 SORT2 READ    25623367. AND WROTE   143766176. INTEGRALS IN    976 RECORDS. CPU TIME:     0.16 SEC, REAL TIME:     0.18 SEC

 Node minimum:     8971612.  Node maximum:     8999125. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.87      3.69
 REAL TIME  *         5.21 SEC
 DISK USED  *        30.15 MB (local),      982.56 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -29.86830971     -29.86830971     0.00D+00     0.29D+00     0     0       0.05      0.09    start
   2      -30.22552937      -0.35721966     0.20D-01     0.19D+00     1     0       0.05      0.14    diag
   3      -30.30866028      -0.08313091     0.47D-02     0.74D-01     2     0       0.05      0.19    diag
   4      -30.33645059      -0.02779031     0.21D-02     0.25D-01     3     0       0.05      0.24    diag
   5      -30.34123207      -0.00478147     0.78D-03     0.75D-02     4     0       0.05      0.29    diag
   6      -30.34125036      -0.00001829     0.75D-04     0.17D-02     5     0       0.05      0.34    diag
   7      -30.34125484      -0.00000449     0.29D-04     0.48D-03     6     0       0.05      0.39    diag
   8      -30.34125532      -0.00000047     0.90D-05     0.24D-03     7     0       0.05      0.44    fixocc
   9      -30.34125532      -0.00000001     0.12D-05     0.18D-04     8     0       0.05      0.49    diag
  10      -30.34125532      -0.00000000     0.14D-06     0.46D-05     9     0       0.06      0.55    diag/orth
  11      -30.34125532      -0.00000000     0.39D-07     0.29D-06     9     0       0.05      0.60    diag
  12      -30.34125532      -0.00000000     0.64D-08     0.26D-07     0     0       0.05      0.65    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -30.341255324628
  RHF One-electron energy             -49.818362241544
  RHF Two-electron energy              19.477106916915
  RHF Kinetic energy                    9.485769894765
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.198607562827

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.97189     1  1  s    1.00011
    2.1     2.00000    -0.18127     1  1  s   -0.29987    1  4  s    0.51265    1  5  s    0.54055
    1.2     2.00000    -1.09297     1  1  py   1.00045
    2.2     2.00000    -1.09297     1  1  px   1.00045
    3.2     2.00000    -1.09297     1  1  pz   1.00045


 HOMO      2.1    -0.181273 =      -4.9327eV
 LUMO      4.2     0.008962 =       0.2439eV
 LUMO-HOMO         0.190235 =       5.1766eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.74       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.53      0.66      3.69
 REAL TIME  *         5.91 SEC
 DISK USED  *        32.30 MB (local),     1016.89 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:     204 (   98  106)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.365D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.376D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.459D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.446D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 2 3   5 6 4 1 2 3 5 6 4 9  111310 8121514 7 3 5   6 4 2 1 3 5 4 6 211
                                        9 7131012 81415 1 3   5 4 6 2 812 711 915  141310 1 3 5 4 6 2 7   911141512 81310 1 3
                                        4 6 5 2131012 8 7 9  111415 1 2 4 6 3 5 2   4 6 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.243D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.243D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 3   1 2 6 7 9 4 5 810 1   2 3 7 910 8 6 5 418  20151714161112192113
                                        1 2 3 7 9 6 5 410 8  20181112141615172113  19 2 1 3 7 9 4 5 610   8182015171416111213
                                       2119 7 9 4 5 6 810 2   1 3 7 9 4 5 6 810 2   1 3 9 7 4 5 6 810 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.00877   0.00877   0.00877   0.00877   0.00877   0.86842   0.00877   0.00877
                                          0.00877
 Weight factors for state symmetry  2:    0.00877   0.00877   0.00877   0.00877   0.00877   0.00877   0.00877
 
 Number of orbital rotations:  1436  ( 16 closed/active, 416 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    2058
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   19   36   10    -30.19835529     -30.24082137   -0.04246608    0.05238238 0.00046987 0.00000000  0.25E+01      1.56
   2    7   12    0    -30.23981836     -30.24031503   -0.00049667    0.00802763 0.00000454 0.00000000  0.47E+00      2.62
   3    8   14    0    -30.24031830     -30.24031845   -0.00000014    0.00014098 0.00000000 0.00000000  0.84E-02      3.75
   4    3    6    0    -30.24031845     -30.24031845   -0.00000000    0.00000011 0.00000000 0.00000000  0.70E-05      4.56

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.39E-09)
                       Final energy:    -30.24031845
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.266420130905
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77368197
 One electron energy                           -50.05173797
 Two electron energy                            19.78531784
 Virial ratio                                    4.09672652
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.266420130866
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77368197
 One electron energy                           -50.05173796
 Two electron energy                            19.78531783
 Virial ratio                                    4.09672652
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.266420130866
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77368197
 One electron energy                           -50.05173796
 Two electron energy                            19.78531783
 Virial ratio                                    4.09672652
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.266420130780
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77368196
 One electron energy                           -50.05173795
 Two electron energy                            19.78531781
 Virial ratio                                    4.09672652
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -30.266420130777
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77368196
 One electron energy                           -50.05173794
 Two electron energy                            19.78531781
 Virial ratio                                    4.09672652
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -30.237646790684
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.43564272
 One electron energy                           -48.69007605
 Two electron energy                            18.45242926
 Virial ratio                                    4.20461973
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -30.211938381995
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.61659319
 One electron energy                           -49.29350379
 Two electron energy                            19.08156541
 Virial ratio                                    4.14164671
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -30.211938381986
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.61659319
 One electron energy                           -49.29350379
 Two electron energy                            19.08156541
 Virial ratio                                    4.14164671
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -30.211938381985
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.61659319
 One electron energy                           -49.29350379
 Two electron energy                            19.08156541
 Virial ratio                                    4.14164671
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.358833103518
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.57285907
 One electron energy                           -49.93232505
 Two electron energy                            19.57349194
 Virial ratio                                    4.17134441
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.263650843416
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70989544
 One electron energy                           -49.80100465
 Two electron energy                            19.53735380
 Virial ratio                                    4.11678442
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -30.263650843415
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70989544
 One electron energy                           -49.80100465
 Two electron energy                            19.53735380
 Virial ratio                                    4.11678442
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -30.263650843312
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70989545
 One electron energy                           -49.80100466
 Two electron energy                            19.53735381
 Virial ratio                                    4.11678442
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -30.263650843312
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70989545
 One electron energy                           -49.80100466
 Two electron energy                            19.53735381
 Virial ratio                                    4.11678442
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -30.263650843277
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70989545
 One electron energy                           -49.80100466
 Two electron energy                            19.53735382
 Virial ratio                                    4.11678442
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -30.224267396822
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.50444554
 One electron energy                           -48.92019702
 Two electron energy                            18.69592963
 Virial ratio                                    4.18001374
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.000105325900
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.999999993773
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000022216
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999999999
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999893920682
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999999920
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999999997
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000002201
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.003904603231
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000037
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999993141
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000009251
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.996095396769
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     2.999894670402
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000006227
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999999977784
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000001
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000106083069
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999998
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.000000000003
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999998234
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.996100472147
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999976
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000006852
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999990747
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.003899527853
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000003698
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999996249
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000000083
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999565
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999994924622
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999999987
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000007
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000002
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000005075378
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 2 3 4 2 6   4 3 5 1 2 6 4 3 5 6   4 3 5 211 91310 812  1415 7 1 6 5 3 4 211
                                        9 71310 8121415 1 6   4 3 5 2 812 711 914  151310 1 6 4 5 3 211   7 91415 8121310 1 6
                                        4 5 3 21310 8121114  15 7 9 1 2 5 6 3 4 2   5 3 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 2 1 3 2   1 3 6 5 7 9 410 8 2   1 3 7 9 5 610 8 418  20121416151711192113
                                        3 2 1 7 9 5 6 410 8  20181211141621131915  17 3 2 1 7 9 5 4 6 8  10182015171214162113
                                       1119 7 9 5 4 6 810 3   2 1 7 9 5 4 6 810 2   1 3 7 9 5 4 6 810 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.07122     1  1  s    0.99882
    2.1     0.97030    -0.16219     1  1  s   -0.33365    1  2  s   -0.25134    1  4  s    0.76415    1  5  s    0.27874
    3.1     0.87742    -0.01996     1  4  s   -0.62528    1  5  s   -0.49607    1 11  s    1.25525
    4.1     0.01801     0.01908     1  1  d2+  0.84772
    5.1     0.01801     0.01908     1  1  d1-  0.84772
    6.1     0.01801     0.01908     1  1  d0   0.84772
    7.1     0.01801     0.01908     1  1  d2-  0.84772
    8.1     0.01801     0.01908     1  1  d1+  0.84772
    1.2     2.00000    -1.19317     1  1  py   1.00586
    2.2     2.00000    -1.19317     1  1  pz   1.00586
    3.2     2.00000    -1.19317     1  1  px   1.00586
    4.2     0.02074    -0.00954     1  1  px  -0.42111    1  3  px   0.50303    1  4  px   0.44268
    5.2     0.02074    -0.00954     1  1  pz  -0.42111    1  3  pz   0.50303    1  4  pz   0.44268
    6.2     0.02074    -0.00954     1  1  py  -0.42111    1  3  py   0.50303    1  4  py   0.44268
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 aa00000 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000
 a000a00 000      0.99995966     -0.00000000     -0.00000000      0.00000002     -0.00003040      0.00000000      0.00000000
 a0000a0 000     -0.00000002     -0.00000010     -0.00000004      0.99995966      0.00003579      0.00000000     -0.00000000
 a00000a 000      0.00000000     -0.00004556      0.99995966      0.00000004     -0.00000002     -0.00000000     -0.00000000
 a00a000 000      0.00000000      0.99995966      0.00004556      0.00000010     -0.00000008      0.00000000     -0.00000000
 a0a0000 000      0.00003040      0.00000008      0.00000002     -0.00003579      0.99995966     -0.00000000      0.00000000
 0000000 aa0      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000129
 0000000 0aa      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000791
 0000000 a0a     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.88243626
 00a00a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.42076715
 0000a0a 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000053
 000aa00 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000327
 00a000a 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000031
 00aa000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000189
 000a0a0 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000031
 00000aa 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000189
 000a00a 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.21038357
 
 Energy:        -30.26642013    -30.26642013    -30.26642013    -30.26642013    -30.26642013    -30.23764679    -30.21193838

 State:                8               9
 aa00000 000      0.00000000     -0.00000000
 a000a00 000     -0.00000000      0.00000000
 a0000a0 000      0.00000000     -0.00000000
 a00000a 000      0.00000000      0.00000000
 a00a000 000     -0.00000000     -0.00000000
 a0a0000 000     -0.00000000     -0.00000000
 0000000 aa0      0.88243627     -0.00000162
 0000000 0aa      0.00000162      0.88243627
 0000000 a0a      0.00000129     -0.00000791
 00a00a0 000     -0.00000062      0.00000377
 0000a0a 000      0.36439504     -0.00000067
 000aa00 000      0.00000067      0.36439504
 00a000a 000     -0.21038357      0.00000039
 00aa000 000     -0.00000039     -0.21038357
 000a0a0 000      0.21038357     -0.00000039
 00000aa 000      0.00000039      0.21038357
 000a00a 000      0.00000031     -0.00000189
 
 Energy:        -30.21193838    -30.21193838
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95811998      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.03741062
 ab00000 000      0.02703543      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.69380034
 ba00000 000     -0.02703543     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.69380034
 a0000b0 000     -0.00000000      0.00000009      0.61735123     -0.00000124     -0.00000030      0.00000000      0.00000000
 b0000a0 000      0.00000000     -0.00000009     -0.61735123      0.00000124      0.00000030     -0.00000000     -0.00000000
 b00a000 000     -0.00000000     -0.00000015     -0.00000124     -0.61735122      0.00002950     -0.00000018      0.00000000
 a00b000 000      0.00000000      0.00000015      0.00000124      0.61735122     -0.00002950      0.00000018     -0.00000000
 b00000a 000      0.00000000     -0.00000003     -0.00000030     -0.00002950     -0.61735122      0.00000000      0.00000000
 a00000b 000     -0.00000000      0.00000003      0.00000030      0.00002950      0.61735122     -0.00000000     -0.00000000
 a0b0000 000     -0.00000000      0.61735083     -0.00000009     -0.00000015     -0.00000003     -0.00069540     -0.00000000
 b0a0000 000      0.00000000     -0.61735083      0.00000009      0.00000015      0.00000003      0.00069540      0.00000000
 a000b00 000     -0.00000000      0.00069540     -0.00000000     -0.00000018      0.00000000      0.61735083     -0.00000000
 b000a00 000      0.00000000     -0.00069540      0.00000000      0.00000018     -0.00000000     -0.61735083      0.00000000
 0000000 020     -0.15706254     -0.00043844      0.00000000      0.00000011     -0.00000000     -0.38923072     -0.00411417
 0000000 002     -0.15706254      0.33730291     -0.00000005     -0.00000014     -0.00000002      0.19423566     -0.00411417
 0000000 a0b      0.00000000     -0.00000005     -0.33708390      0.00000068      0.00000017     -0.00000000      0.00000000
 0000000 b0a     -0.00000000      0.00000005      0.33708390     -0.00000068     -0.00000017      0.00000000     -0.00000000
 0000000 ba0     -0.00000000      0.00000002      0.00000017      0.00001611      0.33708390     -0.00000000      0.00000000
 0000000 ab0      0.00000000     -0.00000002     -0.00000017     -0.00001611     -0.33708390      0.00000000     -0.00000000
 0000000 0ab     -0.00000000     -0.00000008     -0.00000068     -0.33708390      0.00001611     -0.00000010     -0.00000000
 0000000 0ba      0.00000000      0.00000008      0.00000068      0.33708390     -0.00001611      0.00000010      0.00000000
 0000000 200     -0.15706254     -0.33686447      0.00000005      0.00000003      0.00000002      0.19499506     -0.00411417
 0200000 000     -0.02511901     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.16098921
 0000ab0 000     -0.00000000      0.00000001      0.05015591     -0.00000010     -0.00000002      0.00000000      0.00000000
 0000ba0 000      0.00000000     -0.00000001     -0.05015591      0.00000010      0.00000002     -0.00000000     -0.00000000
 0000200 000     -0.03437263     -0.00005650      0.00000000      0.00000001     -0.00000000     -0.05015588      0.04452937
 00b0a00 000     -0.00000000     -0.05015588      0.00000001      0.00000001      0.00000000      0.00005650      0.00000000
 00a0b00 000      0.00000000      0.05015588     -0.00000001     -0.00000001     -0.00000000     -0.00005650     -0.00000000
 0000020 000     -0.03437263      0.00005650     -0.00000000     -0.00000001      0.00000000      0.05015588      0.04452937
 0020000 000     -0.03437263      0.00005650     -0.00000000     -0.00000001      0.00000000      0.05015588      0.04452937
 
 Energy:        -30.35883310    -30.26365084    -30.26365084    -30.26365084    -30.26365084    -30.26365084    -30.22426740
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.76       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.38      3.85      0.66      3.69
 REAL TIME  *        11.22 SEC
 DISK USED  *        61.46 MB (local),        1.45 GB (total)
 SF USED    *        92.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.26642013   6.0
    -30.26642013   6.0
    -30.26642013   6.0
    -30.26642013   6.0
    -30.26642013   6.0
    -30.23764679  -0.0
    -30.21193838   2.0
    -30.21193838   2.0
    -30.21193838   2.0
    -30.35883310  -0.0
    -30.26365084   6.0
    -30.26365084   6.0
    -30.26365084   6.0
    -30.26365084   6.0
    -30.26365084   6.0
    -30.22426740  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.26642013
     2       -30.26642013
     3       -30.26642013
     4       -30.26642013
     5       -30.26642013
     6       -30.23764679
     7       -30.21193838
     8       -30.21193838
     9       -30.21193838

 Number of blocks in overlap matrix:   201   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     225
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        975676
 Number of doubly external configurations:       2344806
 Total number of contracted configurations:      3332320
 Total number of uncontracted configurations:   18697016

 Diagonal Coupling coefficients finished.               Storage: 4509206 words, CPU-Time:      0.48 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1548998 words, CPU-time:      0.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.26642013     0.00000000    -0.28596492  0.41D-01  0.49D-01     1.47
    1     2     2     1.00000000     0.00000000   -30.26642013    -0.00000000    -0.28598550  0.41D-01  0.49D-01     1.47
    1     3     3     1.00000000     0.00000000   -30.26642013     0.00000000    -0.28597357  0.41D-01  0.49D-01     1.47
    1     4     4     1.00000000     0.00000000   -30.26642013     0.00000000    -0.28598059  0.41D-01  0.49D-01     1.47
    1     5     5     1.00000000     0.00000000   -30.26642013     0.00000000    -0.28598820  0.41D-01  0.49D-01     1.47
    1     6     6     1.00000000     0.00000000   -30.23764679     0.00000000    -0.25810810  0.31D-01  0.40D-01     1.47
    1     7     7     1.00000000     0.00000000   -30.21193838    -0.00000000    -0.25840606  0.26D-01  0.42D-01     1.47
    1     8     8     1.00000000     0.00000000   -30.21193838     0.00000000    -0.25843842  0.26D-01  0.42D-01     1.47
    1     9     9     1.00000000     0.00000000   -30.21193838    -0.00000000    -0.25842950  0.26D-01  0.42D-01     1.47
    2     1     1     1.07331599    -0.26756014   -30.53398027    -0.26756014    -0.00666982  0.26D-02  0.79D-03    25.22
    2     2     2     1.07333156    -0.26755413   -30.53397426    -0.26755413    -0.00667724  0.26D-02  0.79D-03    25.22
    2     3     3     1.07333533    -0.26755242   -30.53397255    -0.26755242    -0.00667773  0.26D-02  0.79D-03    25.22
    2     4     4     1.07334147    -0.26755083   -30.53397096    -0.26755083    -0.00667792  0.26D-02  0.79D-03    25.22
    2     5     5     1.07334326    -0.26754925   -30.53396938    -0.26754925    -0.00667905  0.26D-02  0.79D-03    25.22
    2     6     6     1.06453906    -0.25550351   -30.49315030    -0.25550351    -0.00462538  0.13D-02  0.52D-03    25.22
    2     7     7     1.06078303    -0.25249486   -30.46443324    -0.25249486    -0.00509106  0.19D-02  0.55D-03    25.22
    2     8     8     1.06079241    -0.25248199   -30.46442037    -0.25248199    -0.00510598  0.19D-02  0.55D-03    25.22
    2     9     9     1.06079636    -0.25248024   -30.46441862    -0.25248024    -0.00510824  0.19D-02  0.56D-03    25.22
    3     1     1     1.07183950    -0.27435510   -30.54077523    -0.00679496    -0.00026335  0.81D-04  0.39D-04    48.47
    3     2     2     1.07184098    -0.27435498   -30.54077511    -0.00680085    -0.00026354  0.81D-04  0.39D-04    48.47
    3     3     3     1.07183871    -0.27435485   -30.54077498    -0.00680243    -0.00026379  0.82D-04  0.39D-04    48.47
    3     4     4     1.07183571    -0.27435453   -30.54077467    -0.00680371    -0.00026393  0.82D-04  0.39D-04    48.47
    3     5     5     1.07183536    -0.27435439   -30.54077453    -0.00680514    -0.00026403  0.82D-04  0.39D-04    48.47
    3     6     6     1.06409259    -0.26037248   -30.49801927    -0.00486897    -0.00014395  0.28D-04  0.20D-04    48.47
    3     7     7     1.06010560    -0.25766575   -30.46960413    -0.00517089    -0.00019105  0.30D-04  0.33D-04    48.47
    3     8     8     1.06010261    -0.25766374   -30.46960212    -0.00518175    -0.00019235  0.30D-04  0.34D-04    48.47
    3     9     9     1.06010354    -0.25766371   -30.46960209    -0.00518347    -0.00019240  0.30D-04  0.34D-04    48.47
    4     1     1     1.07330585    -0.27467558   -30.54109571    -0.00032048    -0.00002662  0.23D-04  0.19D-05    71.48
    4     2     2     1.07330509    -0.27467551   -30.54109564    -0.00032054    -0.00002664  0.23D-04  0.19D-05    71.48
    4     3     3     1.07330544    -0.27467550   -30.54109563    -0.00032065    -0.00002666  0.23D-04  0.19D-05    71.48
    4     4     4     1.07330532    -0.27467529   -30.54109542    -0.00032075    -0.00002657  0.23D-04  0.19D-05    71.48
    4     5     5     1.07330515    -0.27467525   -30.54109538    -0.00032086    -0.00002657  0.23D-04  0.19D-05    71.48
    4     6     6     1.06448197    -0.26053010   -30.49817689    -0.00015762    -0.00000665  0.35D-05  0.72D-06    71.48
    4     7     7     1.06062747    -0.25787231   -30.46981069    -0.00020656    -0.00001031  0.65D-05  0.97D-06    71.48
    4     8     8     1.06062589    -0.25787146   -30.46980984    -0.00020772    -0.00001038  0.65D-05  0.98D-06    71.48
    4     9     9     1.06062545    -0.25787145   -30.46980983    -0.00020774    -0.00001038  0.65D-05  0.98D-06    71.48
    5     1     1     1.07433134    -0.27471176   -30.54113189    -0.00003618    -0.00000280  0.81D-06  0.40D-06    94.45
    5     2     2     1.07433130    -0.27471173   -30.54113186    -0.00003622    -0.00000280  0.81D-06  0.40D-06    94.45
    5     3     3     1.07433126    -0.27471173   -30.54113186    -0.00003624    -0.00000280  0.81D-06  0.40D-06    94.45
    5     4     4     1.07433061    -0.27471141   -30.54113154    -0.00003612    -0.00000280  0.81D-06  0.40D-06    94.45
    5     5     5     1.07433082    -0.27471137   -30.54113150    -0.00003612    -0.00000279  0.80D-06  0.40D-06    94.45
    5     6     6     1.06457108    -0.26053759   -30.49818438    -0.00000749    -0.00000039  0.15D-06  0.51D-07    94.45
    5     7     7     1.06076629    -0.25788466   -30.46982304    -0.00001235    -0.00000073  0.25D-06  0.10D-06    94.45
    5     8     8     1.06076575    -0.25788386   -30.46982224    -0.00001240    -0.00000073  0.25D-06  0.10D-06    94.45
    5     9     9     1.06076563    -0.25788386   -30.46982224    -0.00001241    -0.00000073  0.25D-06  0.10D-06    94.45
    6     1     1     1.07442984    -0.27471500   -30.54113513    -0.00000324    -0.00000020  0.97D-07  0.19D-07   117.37
    6     2     2     1.07442981    -0.27471497   -30.54113510    -0.00000324    -0.00000020  0.97D-07  0.19D-07   117.37
    6     3     3     1.07442976    -0.27471497   -30.54113510    -0.00000324    -0.00000020  0.97D-07  0.19D-07   117.37
    6     4     4     1.07442909    -0.27471464   -30.54113477    -0.00000324    -0.00000020  0.97D-07  0.19D-07   117.37
    6     5     5     1.07442901    -0.27471460   -30.54113473    -0.00000323    -0.00000019  0.97D-07  0.19D-07   117.37
    6     6     6     1.06457594    -0.26053803   -30.49818482    -0.00000044    -0.00000003  0.15D-07  0.25D-08   117.37
    6     7     7     1.06076908    -0.25788553   -30.46982391    -0.00000087    -0.00000005  0.11D-07  0.72D-08   117.37
    6     8     8     1.06076869    -0.25788473   -30.46982311    -0.00000087    -0.00000005  0.11D-07  0.73D-08   117.37
    6     9     9     1.06076871    -0.25788473   -30.46982311    -0.00000087    -0.00000005  0.11D-07  0.73D-08   117.37
    7     1     1     1.07448163    -0.27471522   -30.54113535    -0.00000022    -0.00000002  0.12D-07  0.16D-08   140.31
    7     2     2     1.07448163    -0.27471519   -30.54113532    -0.00000022    -0.00000002  0.12D-07  0.16D-08   140.31
    7     3     3     1.07448163    -0.27471519   -30.54113532    -0.00000022    -0.00000002  0.12D-07  0.16D-08   140.31
    7     4     4     1.07448077    -0.27471486   -30.54113499    -0.00000022    -0.00000002  0.12D-07  0.16D-08   140.31
    7     5     5     1.07448064    -0.27471482   -30.54113495    -0.00000022    -0.00000002  0.12D-07  0.16D-08   140.31
    7     6     6     1.06457925    -0.26053806   -30.49818485    -0.00000003    -0.00000000  0.17D-08  0.21D-09   140.31
    7     7     7     1.06077150    -0.25788558   -30.46982397    -0.00000006    -0.00000000  0.22D-08  0.38D-09   140.31
    7     8     8     1.06077114    -0.25788479   -30.46982317    -0.00000006    -0.00000000  0.23D-08  0.38D-09   140.31
    7     9     9     1.06077115    -0.25788479   -30.46982317    -0.00000006    -0.00000000  0.23D-08  0.38D-09   140.31
    8     1     1     1.07450209    -0.27471524   -30.54113537    -0.00000002    -0.00000000  0.81D-09  0.28D-09   153.84
    8     2     2     1.07450206    -0.27471521   -30.54113534    -0.00000002    -0.00000000  0.81D-09  0.28D-09   153.84
    8     3     3     1.07450206    -0.27471521   -30.54113534    -0.00000002    -0.00000000  0.81D-09  0.28D-09   153.84
    8     4     4     1.07450123    -0.27471488   -30.54113501    -0.00000002    -0.00000000  0.81D-09  0.28D-09   153.84
    8     5     5     1.07450110    -0.27471484   -30.54113497    -0.00000002    -0.00000000  0.81D-09  0.28D-09   153.84
    8     6     6     1.06457925    -0.26053806   -30.49818485    -0.00000000    -0.00000000  0.17D-08  0.21D-09   153.84
    8     7     7     1.06077150    -0.25788558   -30.46982397    -0.00000000    -0.00000000  0.22D-08  0.38D-09   153.84
    8     8     8     1.06077114    -0.25788479   -30.46982317    -0.00000000    -0.00000000  0.23D-08  0.38D-09   153.84
    8     9     9     1.06077115    -0.25788479   -30.46982317    -0.00000000    -0.00000000  0.23D-08  0.38D-09   153.84


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.9%
 S   2.5%  17.7%
 P   0.8%  16.0%   9.9%

 Initialization:   0.5%
 Other:           49.7%

 Total CPU:      153.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//00000222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000036   0.9669797   0.0000000  -0.0000000
                         -0.0000000
 2/000/00222000          -0.0000000  -0.0000000  -0.0000000  -0.0000037   0.9622968   0.0000040   0.0000000   0.0000000
                         -0.0000000
 2/0/0000222000          -0.0000000  -0.0000000   0.0000000   0.9622967   0.0000037   0.0000000  -0.0000000   0.0000000
                         -0.0000000
 2/00000/222000           0.0000000   0.0000000   0.9622963  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000013
 2/00/000222000          -0.0000000   0.9622963  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000013
                         -0.0000000
 2/0000/0222000           0.9622963   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                          0.0000000
 20000000222/0/           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.8439480   0.0000000
                          0.0000000
 200000002220//           0.0000000   0.0000009  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.8439473
                         -0.0000000
 20000000222//0          -0.0000000   0.0000000  -0.0000009   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                          0.8439472
 200/00/0222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.4257828   0.0000000
                          0.0000000
 20000/0/222000           0.0000000  -0.0000000  -0.0000051  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                          0.3687399
 2000//00222000           0.0000000   0.0000051   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.3687399
                         -0.0000000
 2000/0/0222000           0.0000000   0.0000000  -0.0000002  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                          0.2128952
 200000//222000           0.0000000   0.0000002  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.2128952
                         -0.0000000
 2000/00/222000          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.2128946   0.0000000
                          0.0000000
 200//000222000          -0.0000000   0.0000075  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2128941
                          0.0000000
 200/000/222000           0.0000000  -0.0000000  -0.0000075  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                         -0.2128940

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.000000    0.962186   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.962186    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000001
 3          -0.000000   -0.000000    0.962186   -0.000000    0.000000    0.000000    0.000000   -0.000001   -0.000000
 4          -0.000004    0.000000   -0.000000    0.000000    0.962187    0.000000    0.000000    0.000000   -0.000000
 5           0.962187    0.000000    0.000000    0.000000    0.000004   -0.000004   -0.000000    0.000000   -0.000000
 6           0.000004    0.000000   -0.000000    0.000000    0.000000    0.966980   -0.000000    0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.968675   -0.000000   -0.000000
 8           0.000000   -0.000001    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.968676
 9          -0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000000    0.000000    0.968676   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962186   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.962186    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.962186    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.962187   -0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.962187    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.966980   -0.000000    0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.968675    0.000000    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.968676    0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.968676


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96218619 (fixed)   0.96232908 (relaxed)   0.96218619 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00525097   -0.00984101   -0.19538825
 Singles      0.03093265   -0.06511026   -0.06814662
 Pairs        0.04396064   -0.00000000   -0.01118037
 Total        1.08014427   -0.07495127   -0.27471524
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26642013
 Nuclear energy                         0.00000000
 Kinetic energy                         9.95092170
 One electron energy                  -49.93056078
 Two electron energy                   19.38942541
 Virial quotient                       -3.06917653
 Correlation energy                    -0.27471524
 !MRCI STATE 1.1 Energy               -30.541135367925

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56315222 (Davidson, fixed reference)
 Cluster corrected energies           -30.56306411 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56315222 (Davidson, rotated reference)

 Cluster corrected energies           -30.55831490 (Pople, fixed reference)
 Cluster corrected energies           -30.55824348 (Pople, relaxed reference)
 Cluster corrected energies           -30.55831490 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96218621 (fixed)   0.96232909 (relaxed)   0.96218621 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00525096   -0.00984099   -0.19538804
 Singles      0.03093261   -0.06511025   -0.06814660
 Pairs        0.04396066   -0.00000022   -0.01118057
 Total        1.08014422   -0.07495145   -0.27471521
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26642013
 Nuclear energy                         0.00000000
 Kinetic energy                         9.95092177
 One electron energy                  -49.93056091
 Two electron energy                   19.38942557
 Virial quotient                       -3.06917651
 Correlation energy                    -0.27471521
 !MRCI STATE 2.1 Energy               -30.541135337080

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56315217 (Davidson, fixed reference)
 Cluster corrected energies           -30.56306406 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56315217 (Davidson, rotated reference)

 Cluster corrected energies           -30.55831486 (Pople, fixed reference)
 Cluster corrected energies           -30.55824343 (Pople, relaxed reference)
 Cluster corrected energies           -30.55831486 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96218621 (fixed)   0.96232910 (relaxed)   0.96218621 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00525096   -0.00984099   -0.19538824
 Singles      0.03093260   -0.06511025   -0.06814660
 Pairs        0.04396066    0.00000000   -0.01118037
 Total        1.08014422   -0.07495124   -0.27471521
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26642013
 Nuclear energy                         0.00000000
 Kinetic energy                         9.95092174
 One electron energy                  -49.93056086
 Two electron energy                   19.38942553
 Virial quotient                       -3.06917652
 Correlation energy                    -0.27471521
 !MRCI STATE 3.1 Energy               -30.541135337078

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56315217 (Davidson, fixed reference)
 Cluster corrected energies           -30.56306406 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56315217 (Davidson, rotated reference)

 Cluster corrected energies           -30.55831486 (Pople, fixed reference)
 Cluster corrected energies           -30.55824343 (Pople, relaxed reference)
 Cluster corrected energies           -30.55831486 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96218658 (fixed)   0.96232948 (relaxed)   0.96218658 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00525095   -0.00984103   -0.19538862
 Singles      0.03093168   -0.06510967   -0.06814587
 Pairs        0.04396076    0.00000000   -0.01118039
 Total        1.08014338   -0.07495070   -0.27471488
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26642013
 Nuclear energy                         0.00000000
 Kinetic energy                         9.95092057
 One electron energy                  -49.93055900
 Two electron energy                   19.38942399
 Virial quotient                       -3.06917685
 Correlation energy                    -0.27471488
 !MRCI STATE 4.1 Energy               -30.541135011921

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56315159 (Davidson, fixed reference)
 Cluster corrected energies           -30.56306347 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56315159 (Davidson, rotated reference)

 Cluster corrected energies           -30.55831433 (Pople, fixed reference)
 Cluster corrected energies           -30.55824290 (Pople, relaxed reference)
 Cluster corrected energies           -30.55831433 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96218661 (fixed)   0.96232951 (relaxed)   0.96218661 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00525100   -0.00984106   -0.19538869
 Singles      0.03093153   -0.06510958   -0.06814575
 Pairs        0.04396077    0.00000000   -0.01118040
 Total        1.08014331   -0.07495064   -0.27471484
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26642013
 Nuclear energy                         0.00000000
 Kinetic energy                         9.95092042
 One electron energy                  -49.93055887
 Two electron energy                   19.38942390
 Virial quotient                       -3.06917689
 Correlation energy                    -0.27471484
 !MRCI STATE 5.1 Energy               -30.541134969613

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56315153 (Davidson, fixed reference)
 Cluster corrected energies           -30.56306341 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56315153 (Davidson, rotated reference)

 Cluster corrected energies           -30.55831426 (Pople, fixed reference)
 Cluster corrected energies           -30.55824284 (Pople, relaxed reference)
 Cluster corrected energies           -30.55831426 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96697969 (fixed)   0.96697969 (relaxed)   0.96697969 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458641   -0.01004639   -0.18663022
 Singles      0.02517389   -0.06213909   -0.06423665
 Pairs        0.03970155   -0.00000000   -0.00967118
 Total        1.06946185   -0.07218547   -0.26053806
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.23764679
 Nuclear energy                         0.00000000
 Kinetic energy                         9.67292314
 One electron energy                  -48.58119421
 Two electron energy                   18.08300936
 Virial quotient                       -3.15294399
 Correlation energy                    -0.26053806
 !MRCI STATE 6.1 Energy               -30.498184846811

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51628230 (Davidson, fixed reference)
 Cluster corrected energies           -30.51628230 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51628230 (Davidson, rotated reference)

 Cluster corrected energies           -30.51223268 (Pople, fixed reference)
 Cluster corrected energies           -30.51223268 (Pople, relaxed reference)
 Cluster corrected energies           -30.51223268 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96867523 (fixed)   0.96894957 (relaxed)   0.96867523 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00466613   -0.00873957   -0.18864193
 Singles      0.01984876   -0.05804921   -0.05927282
 Pairs        0.04120631    0.00000000   -0.00997083
 Total        1.06572120   -0.06678878   -0.25788558
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21193838
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84089807
 One electron energy                  -49.15488210
 Two electron energy                   18.68505814
 Virial quotient                       -3.09624424
 Correlation energy                    -0.25788558
 !MRCI STATE 7.1 Energy               -30.469823965696

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.48677252 (Davidson, fixed reference)
 Cluster corrected energies           -30.48661691 (Davidson, relaxed reference)
 Cluster corrected energies           -30.48677252 (Davidson, rotated reference)

 Cluster corrected energies           -30.48295592 (Pople, fixed reference)
 Cluster corrected energies           -30.48283150 (Pople, relaxed reference)
 Cluster corrected energies           -30.48295592 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96867573 (fixed)   0.96895012 (relaxed)   0.96867573 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00466546   -0.00873893   -0.00932898
 Singles      0.01984836   -0.05804905   -0.05927261
 Pairs        0.04120631   -0.19109680   -0.18928319
 Total        1.06572013   -0.25788479   -0.25788479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21193838
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84089209
 One electron energy                  -49.15487788
 Two electron energy                   18.68505472
 Virial quotient                       -3.09624604
 Correlation energy                    -0.25788479
 !MRCI STATE 8.1 Energy               -30.469823167042

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.48677139 (Davidson, fixed reference)
 Cluster corrected energies           -30.48661575 (Davidson, relaxed reference)
 Cluster corrected energies           -30.48677139 (Davidson, rotated reference)

 Cluster corrected energies           -30.48295485 (Pople, fixed reference)
 Cluster corrected energies           -30.48283042 (Pople, relaxed reference)
 Cluster corrected energies           -30.48295485 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96867572 (fixed)   0.96895012 (relaxed)   0.96867572 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00466546   -0.00873893   -0.18864135
 Singles      0.01984835   -0.05804905   -0.05927261
 Pairs        0.04120632    0.00000000   -0.00997082
 Total        1.06572013   -0.06678798   -0.25788479
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21193838
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84089211
 One electron energy                  -49.15487787
 Two electron energy                   18.68505470
 Virial quotient                       -3.09624603
 Correlation energy                    -0.25788479
 !MRCI STATE 9.1 Energy               -30.469823167042

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.48677139 (Davidson, fixed reference)
 Cluster corrected energies           -30.48661575 (Davidson, relaxed reference)
 Cluster corrected energies           -30.48677139 (Davidson, rotated reference)

 Cluster corrected energies           -30.48295486 (Pople, fixed reference)
 Cluster corrected energies           -30.48283042 (Pople, relaxed reference)
 Cluster corrected energies           -30.48295486 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      235.55       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       171.35    162.96      3.85      0.66      3.69
 REAL TIME  *       189.41 SEC
 DISK USED  *       295.25 MB (local),        5.10 GB (total)
 SF USED    *         2.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.56315222  AU                              
 SETTING HLSDIAG(2)     =       -30.56315217  AU                              
 SETTING HLSDIAG(3)     =       -30.56315217  AU                              
 SETTING HLSDIAG(4)     =       -30.56315159  AU                              
 SETTING HLSDIAG(5)     =       -30.56315153  AU                              
 SETTING HLSDIAG(6)     =       -30.51628230  AU                              
 SETTING HLSDIAG(7)     =       -30.48677252  AU                              
 SETTING HLSDIAG(8)     =       -30.48677139  AU                              
 SETTING HLSDIAG(9)     =       -30.48677139  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.35883310
     2       -30.26365084
     3       -30.26365084
     4       -30.26365084
     5       -30.26365084
     6       -30.26365084
     7       -30.22426740

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.93D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        653612
 Number of doubly external configurations:       2011138
 Total number of contracted configurations:      2672601
 Total number of uncontracted configurations:   12657585

 Diagonal Coupling coefficients finished.               Storage: 3217856 words, CPU-Time:      0.23 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1534433 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.35883310     0.00000000    -0.27632022  0.40D-01  0.45D-01     0.85
    1     2     2     1.00000000     0.00000000   -30.26365084     0.00000000    -0.27625400  0.38D-01  0.47D-01     0.85
    1     3     3     1.00000000     0.00000000   -30.26365084    -0.00000000    -0.27649508  0.38D-01  0.47D-01     0.85
    1     4     4     1.00000000     0.00000000   -30.26365084    -0.00000000    -0.27643162  0.38D-01  0.47D-01     0.85
    1     5     5     1.00000000     0.00000000   -30.26365084    -0.00000000    -0.27655689  0.38D-01  0.47D-01     0.85
    1     6     6     1.00000000     0.00000000   -30.26365084     0.00000000    -0.27631264  0.38D-01  0.47D-01     0.85
    1     7     7     1.00000000     0.00000000   -30.22426740     0.00000000    -0.26944930  0.47D-01  0.43D-01     0.85
    2     1     1     1.07009038    -0.26265252   -30.62148563    -0.26265252    -0.00740584  0.27D-02  0.93D-03    15.33
    2     2     2     1.07124645    -0.26197266   -30.52562351    -0.26197266    -0.00659305  0.29D-02  0.88D-03    15.33
    2     3     3     1.07129932    -0.26196712   -30.52561796    -0.26196712    -0.00660166  0.29D-02  0.88D-03    15.33
    2     4     4     1.07138712    -0.26194217   -30.52559302    -0.26194217    -0.00663031  0.29D-02  0.88D-03    15.33
    2     5     5     1.07140998    -0.26193497   -30.52558581    -0.26193497    -0.00663835  0.29D-02  0.88D-03    15.33
    2     6     6     1.07142944    -0.26192997   -30.52558081    -0.26192997    -0.00664437  0.29D-02  0.88D-03    15.33
    2     7     7     1.07386409    -0.25812221   -30.48238961    -0.25812221    -0.00733712  0.36D-02  0.10D-02    15.33
    3     1     1     1.06647716    -0.26977787   -30.62861098    -0.00712535    -0.00026271  0.54D-04  0.42D-04    29.71
    3     2     2     1.06935175    -0.26843935   -30.53209019    -0.00646668    -0.00033463  0.90D-04  0.63D-04    29.71
    3     3     3     1.06935882    -0.26843814   -30.53208898    -0.00647102    -0.00033598  0.91D-04  0.63D-04    29.71
    3     4     4     1.06936234    -0.26843716   -30.53208801    -0.00649499    -0.00033733  0.92D-04  0.64D-04    29.71
    3     5     5     1.06936444    -0.26843659   -30.53208743    -0.00650162    -0.00033789  0.92D-04  0.64D-04    29.71
    3     6     6     1.06936024    -0.26843614   -30.53208698    -0.00650617    -0.00033811  0.92D-04  0.64D-04    29.71
    3     7     7     1.06719406    -0.26507694   -30.48934434    -0.00695473    -0.00029772  0.77D-04  0.56D-04    29.71
    4     1     1     1.06647912    -0.27005021   -30.62888331    -0.00027233    -0.00001165  0.38D-05  0.18D-05    44.19
    4     2     2     1.07055524    -0.26881541   -30.53246626    -0.00037607    -0.00003434  0.27D-04  0.35D-05    44.19
    4     3     3     1.07055625    -0.26881533   -30.53246618    -0.00037719    -0.00003442  0.27D-04  0.35D-05    44.19
    4     4     4     1.07055480    -0.26881498   -30.53246583    -0.00037782    -0.00003469  0.28D-04  0.35D-05    44.19
    4     5     5     1.07055455    -0.26881493   -30.53246577    -0.00037834    -0.00003474  0.28D-04  0.35D-05    44.19
    4     6     6     1.07055478    -0.26881489   -30.53246573    -0.00037875    -0.00003476  0.28D-04  0.35D-05    44.19
    4     7     7     1.06719500    -0.26538776   -30.48965515    -0.00031082    -0.00001644  0.66D-05  0.28D-05    44.19
    5     1     1     1.06649849    -0.27006326   -30.62889636    -0.00001305    -0.00000065  0.32D-06  0.78D-07    58.51
    5     2     2     1.07138748    -0.26886209   -30.53251294    -0.00004668    -0.00000429  0.19D-05  0.53D-06    58.51
    5     3     3     1.07138521    -0.26886206   -30.53251290    -0.00004672    -0.00000432  0.20D-05  0.53D-06    58.51
    5     4     4     1.07138300    -0.26886198   -30.53251283    -0.00004700    -0.00000438  0.20D-05  0.53D-06    58.51
    5     5     5     1.07138245    -0.26886197   -30.53251281    -0.00004704    -0.00000439  0.20D-05  0.53D-06    58.51
    5     6     6     1.07138271    -0.26886197   -30.53251281    -0.00004708    -0.00000439  0.20D-05  0.53D-06    58.51
    5     7     7     1.06712065    -0.26540665   -30.48967405    -0.00001889    -0.00000125  0.94D-06  0.15D-06    58.51
    6     1     1     1.06645352    -0.27006398   -30.62889708    -0.00000072    -0.00000004  0.13D-07  0.61D-08    72.86
    6     2     2     1.07151766    -0.26886720   -30.53251804    -0.00000511    -0.00000038  0.13D-06  0.56D-07    72.86
    6     3     3     1.07151725    -0.26886719   -30.53251804    -0.00000514    -0.00000039  0.13D-06  0.57D-07    72.86
    6     4     4     1.07151690    -0.26886719   -30.53251803    -0.00000520    -0.00000039  0.13D-06  0.59D-07    72.86
    6     5     5     1.07151655    -0.26886719   -30.53251803    -0.00000521    -0.00000039  0.13D-06  0.59D-07    72.86
    6     6     6     1.07151653    -0.26886718   -30.53251803    -0.00000522    -0.00000039  0.13D-06  0.59D-07    72.86
    6     7     7     1.06705768    -0.26540813   -30.48967552    -0.00000148    -0.00000012  0.55D-07  0.19D-07    72.86
    7     1     1     1.06645179    -0.27006402   -30.62889712    -0.00000004    -0.00000000  0.11D-08  0.37D-09    87.19
    7     2     2     1.07156408    -0.26886761   -30.53251845    -0.00000041    -0.00000004  0.34D-07  0.47D-08    87.19
    7     3     3     1.07156391    -0.26886761   -30.53251845    -0.00000041    -0.00000004  0.35D-07  0.47D-08    87.19
    7     4     4     1.07156349    -0.26886760   -30.53251845    -0.00000042    -0.00000004  0.36D-07  0.48D-08    87.19
    7     5     5     1.07156347    -0.26886760   -30.53251845    -0.00000042    -0.00000004  0.36D-07  0.48D-08    87.19
    7     6     6     1.07156342    -0.26886760   -30.53251845    -0.00000042    -0.00000004  0.36D-07  0.48D-08    87.19
    7     7     7     1.06705509    -0.26540825   -30.48967565    -0.00000013    -0.00000001  0.77D-08  0.20D-08    87.19
    8     1     1     1.06645179    -0.27006402   -30.62889712    -0.00000000    -0.00000000  0.11D-08  0.37D-09    97.70
    8     2     2     1.07159082    -0.26886766   -30.53251850    -0.00000005    -0.00000000  0.70D-09  0.58D-09    97.70
    8     3     3     1.07158601    -0.26886765   -30.53251850    -0.00000005    -0.00000001  0.31D-08  0.84D-09    97.70
    8     4     4     1.07158590    -0.26886765   -30.53251850    -0.00000005    -0.00000001  0.32D-08  0.84D-09    97.70
    8     5     5     1.07158568    -0.26886765   -30.53251850    -0.00000005    -0.00000001  0.33D-08  0.86D-09    97.70
    8     6     6     1.07158570    -0.26886765   -30.53251850    -0.00000005    -0.00000001  0.33D-08  0.86D-09    97.70
    8     7     7     1.06705509    -0.26540825   -30.48967565    -0.00000000    -0.00000001  0.77D-08  0.20D-08    97.70


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.5%
 S   2.5%  13.7%
 P   0.8%  15.0%  12.7%

 Initialization:   0.4%
 Other:           52.3%

 Total CPU:       97.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\00000222000          -0.0364585  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9444272
 22000000222000           0.9325028  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0366575
 2/00000\222000           0.0000000   0.8656073   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/0000\0222000          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.8656064  -0.0000000
 2/00\000222000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.8656064   0.0000000   0.0000000
 2/0\0000222000          -0.0000000  -0.0000000   0.0161075   0.8654565   0.0000000  -0.0000000  -0.0000000
 2/000\00222000          -0.0000000  -0.0000000   0.8654565  -0.0161075  -0.0000000   0.0000000   0.0000000
 200000002220/\          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.4145285   0.0000000   0.0000000
 20000000222/0\           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.4145284  -0.0000000
 20000000222/\0          -0.0000000  -0.4145206   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 20000000222020          -0.1358065  -0.0000000  -0.3384022   0.0062982  -0.0000000   0.0000000  -0.0268891
 20000000222200          -0.1358065  -0.0000000   0.1637467  -0.2962140   0.0000000  -0.0000000  -0.0268891
 20000000222002          -0.1358065   0.0000000   0.1746555   0.2899159  -0.0000000   0.0000000  -0.0268891
 20200000222000          -0.0147734   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.1726950
 20000/\0222000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0680624   0.0000000
 200/0\00222000          -0.0000000   0.0000000   0.0012665   0.0680507  -0.0000000   0.0000000   0.0000000
 200/000\222000          -0.0000000  -0.0589441   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2000/0\0222000          -0.0000000  -0.0589440   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2000/00\222000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0589438  -0.0000000
 200000/\222000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0589438   0.0000000  -0.0000000
 200/\000222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0589438  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.962400   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.074354
 2          -0.000000    0.000000    0.000000   -0.000000    0.962690    0.000000   -0.000000
 3          -0.000000    0.019000   -0.000000   -0.000000   -0.000000    0.962505   -0.000000
 4           0.000000    0.962505    0.000000   -0.000000   -0.000000   -0.019000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.962693    0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.962693   -0.000000    0.000000   -0.000000   -0.000000
 7           0.081602   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.962016

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.965261    0.000000    0.000000   -0.000000    0.000000    0.000000    0.003627
 2           0.000000    0.962690   -0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.962693   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.962693   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.962693   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.962693    0.000000
 7           0.003627    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.965464


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96240013 (fixed)   0.96565983 (relaxed)   0.96526133 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00639613   -0.01143000   -0.20968546
 Singles      0.02607692   -0.06640277   -0.06843076
 Pairs        0.04079990    0.01966112    0.00805221
 Total        1.07327296   -0.05817165   -0.27006402
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.35795509
 Nuclear energy                         0.00000000
 Kinetic energy                         9.76624107
 One electron energy                  -49.81149858
 Two electron energy                   19.18260146
 Virial quotient                       -3.13620122
 Correlation energy                    -0.27094203
 !MRCI STATE 1.1 Energy               -30.628897123565

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.64874985 (Davidson, fixed reference)
 Cluster corrected energies           -30.64850989 (Davidson, relaxed reference)
 Cluster corrected energies           -30.64874985 (Davidson, rotated reference)

 Cluster corrected energies           -30.64549407 (Pople, fixed reference)
 Cluster corrected energies           -30.64528474 (Pople, relaxed reference)
 Cluster corrected energies           -30.64549407 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96269005 (fixed)   0.96420453 (relaxed)   0.96269005 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00692715   -0.00821318   -0.19254820
 Singles      0.02855532   -0.06296796   -0.06547418
 Pairs        0.04353142    0.00000000   -0.01084527
 Total        1.07901390   -0.07118114   -0.26886766
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26365084
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91304304
 One electron energy                  -49.71445221
 Two electron energy                   19.18193371
 Virial quotient                       -3.08003490
 Correlation energy                    -0.26886766
 !MRCI STATE 2.1 Energy               -30.532518500088

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55376278 (Davidson, fixed reference)
 Cluster corrected energies           -30.55285214 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55376278 (Davidson, rotated reference)

 Cluster corrected energies           -30.55034015 (Pople, fixed reference)
 Cluster corrected energies           -30.54954155 (Pople, relaxed reference)
 Cluster corrected energies           -30.55034015 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96250501 (fixed)   0.96420674 (relaxed)   0.96269252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00692649   -0.00821310   -0.19254766
 Singles      0.02855025   -0.06296943   -0.06547383
 Pairs        0.04353161   -0.00000000   -0.01084617
 Total        1.07900834   -0.07118253   -0.26886765
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26365084
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91300247
 One electron energy                  -49.71435353
 Two electron energy                   19.18183503
 Virial quotient                       -3.08004750
 Correlation energy                    -0.26886765
 !MRCI STATE 3.1 Energy               -30.532518495997

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55376128 (Davidson, fixed reference)
 Cluster corrected energies           -30.55285080 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55376128 (Davidson, rotated reference)

 Cluster corrected energies           -30.55033883 (Pople, fixed reference)
 Cluster corrected energies           -30.54954038 (Pople, relaxed reference)
 Cluster corrected energies           -30.55033883 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96250506 (fixed)   0.96420679 (relaxed)   0.96269257 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00692648   -0.00821310   -0.19254769
 Singles      0.02855014   -0.06296942   -0.06547382
 Pairs        0.04353160    0.00000000   -0.01084614
 Total        1.07900823   -0.07118252   -0.26886765
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26365084
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91300193
 One electron energy                  -49.71435186
 Two electron energy                   19.18183336
 Virial quotient                       -3.08004767
 Correlation energy                    -0.26886765
 !MRCI STATE 4.1 Energy               -30.532518495831

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55376125 (Davidson, fixed reference)
 Cluster corrected energies           -30.55285077 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55376125 (Davidson, rotated reference)

 Cluster corrected energies           -30.55033881 (Pople, fixed reference)
 Cluster corrected energies           -30.54954035 (Pople, relaxed reference)
 Cluster corrected energies           -30.55033881 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96269269 (fixed)   0.96420689 (relaxed)   0.96269269 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00692646   -0.00821310   -0.19254777
 Singles      0.02854991   -0.06296937   -0.06547380
 Pairs        0.04353160    0.00000000   -0.01084608
 Total        1.07900797   -0.07118247   -0.26886765
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26365084
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91300101
 One electron energy                  -49.71434832
 Two electron energy                   19.18182983
 Virial quotient                       -3.08004796
 Correlation energy                    -0.26886765
 !MRCI STATE 5.1 Energy               -30.532518495644

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55376118 (Davidson, fixed reference)
 Cluster corrected energies           -30.55285071 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55376118 (Davidson, rotated reference)

 Cluster corrected energies           -30.55033875 (Pople, fixed reference)
 Cluster corrected energies           -30.54954030 (Pople, relaxed reference)
 Cluster corrected energies           -30.55033875 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96269268 (fixed)   0.96420689 (relaxed)   0.96269268 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00692646   -0.00821310   -0.19254777
 Singles      0.02854992   -0.06296937   -0.06547380
 Pairs        0.04353161    0.00000000   -0.01084609
 Total        1.07900800   -0.07118247   -0.26886765
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26365084
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91300113
 One electron energy                  -49.71434874
 Two electron energy                   19.18183024
 Virial quotient                       -3.08004792
 Correlation energy                    -0.26886765
 !MRCI STATE 6.1 Energy               -30.532518495643

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55376119 (Davidson, fixed reference)
 Cluster corrected energies           -30.55285072 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55376119 (Davidson, rotated reference)

 Cluster corrected energies           -30.55033875 (Pople, fixed reference)
 Cluster corrected energies           -30.54954030 (Pople, relaxed reference)
 Cluster corrected energies           -30.55033875 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96201573 (fixed)   0.96578271 (relaxed)   0.96546361 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00540569   -0.01028626   -0.01199434
 Singles      0.02693085   -0.06441012   -0.06670013
 Pairs        0.04048671   -0.18956504   -0.18671379
 Total        1.07282325   -0.26426141   -0.26540825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.22514541
 Nuclear energy                         0.00000000
 Kinetic energy                         9.69797794
 One electron energy                  -48.67287592
 Two electron energy                   18.18320027
 Virial quotient                       -3.14392091
 Correlation energy                    -0.26453024
 !MRCI STATE 7.1 Energy               -30.489675650175

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50893960 (Davidson, fixed reference)
 Cluster corrected energies           -30.50875210 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50893960 (Davidson, rotated reference)

 Cluster corrected energies           -30.50577603 (Pople, fixed reference)
 Cluster corrected energies           -30.50561253 (Pople, relaxed reference)
 Cluster corrected energies           -30.50577603 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      380.20       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       273.20    101.84    162.96      3.85      0.66      3.69
 REAL TIME  *       300.94 SEC
 DISK USED  *       439.90 MB (local),        7.36 GB (total)
 SF USED    *         2.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =       -30.64874985  AU                              
 SETTING HLSDIAG(11)    =       -30.55376278  AU                              
 SETTING HLSDIAG(12)    =       -30.55376128  AU                              
 SETTING HLSDIAG(13)    =       -30.55376125  AU                              
 SETTING HLSDIAG(14)    =       -30.55376118  AU                              
 SETTING HLSDIAG(15)    =       -30.55376119  AU                              
 SETTING HLSDIAG(16)    =       -30.50893960  AU                              


        HLSDIAG
    -30.56315222
    -30.56315217
    -30.56315217
    -30.56315159
    -30.56315153
    -30.51628230
    -30.48677252
    -30.48677139
    -30.48677139
    -30.64874985
    -30.55376278
    -30.55376128
    -30.55376125
    -30.55376118
    -30.55376119
    -30.50893960
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:    -30.541135    -30.541135    -30.541135    -30.541135    -30.541135    -30.498185    -30.469824    -30.469823
                       -30.469823
 Replaced energies:    -30.563152    -30.563152    -30.563152    -30.563152    -30.563152    -30.516282    -30.486773    -30.486771
                       -30.486771

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -30.628897    -30.532519    -30.532518    -30.532518    -30.532518    -30.532518    -30.489676
 Replaced energies:    -30.648750    -30.553763    -30.553761    -30.553761    -30.553761    -30.553761    -30.508940



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.64874985

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0   18786.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      45.09       0.00       0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  1.0  1.0       0.00   18786.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -15.95
                            0.00      -0.00      22.55       0.00      -0.00      -0.00       0.00       0.00       3.72       0.00

    3   3.1  1.0  1.0       0.00       0.00   18786.52       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00     -22.55      -0.00      -0.00      -0.00      -0.00      -0.00       3.72       0.00      15.95

    4   4.1  1.0  1.0       0.00       0.00       0.00   18786.65       0.00       0.00       0.00       0.00       0.00       0.00
                          -45.09      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   18786.66       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -4.28       0.00       0.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   29073.27       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00     -13.05       0.00      -0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   35549.91       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       4.28      13.05       0.00      -0.00       0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35550.16       0.00      -2.64
                            0.00      -0.00      -3.72      -0.00      -0.00      -0.00       0.00      -0.00    -150.91       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35550.16       0.00
                            0.00      -3.72      -0.00      -0.00      -0.00       0.00      -0.00     150.91       0.00      -2.64

   10   1.1  1.0  0.0      -0.00     -15.95      -0.00       0.00      -0.00      -0.00       0.00      -2.64       0.00   18786.51
                            0.00      -0.00     -15.95       0.00       0.00       0.00      -0.00      -0.00       2.64       0.00

   11   2.1  1.0  0.0      15.95       0.00      -0.00       0.00      -0.00      -0.00       2.64       0.00       0.00       0.00
                            0.00       0.00       0.00     -15.94     -27.61      -0.00       0.00      -0.00       0.00      -0.00

   12   3.1  1.0  0.0       0.00       0.00      -0.00      15.94     -27.61      -0.00      -0.00      -0.00      -0.00       0.00
                           15.95      -0.00      -0.00       0.00       0.00       0.00      -2.64       0.00      -0.00      -0.00

   13   4.1  1.0  0.0      -0.00      -0.00     -15.94       0.00       0.00       0.00       0.00      -0.00       2.63       0.00
                           -0.00      15.94      -0.00      -0.00      -0.00       0.00       0.00       2.63      -0.00      -0.00

   14   5.1  1.0  0.0       0.00       0.00      27.61      -0.00       0.00      -0.00      -0.00       0.00       1.53       0.00
                           -0.00      27.61      -0.00       0.00       0.00       0.00       0.00      -1.53       0.00      -0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -9.22       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       9.22       0.00      -0.00

   16   7.1  1.0  0.0      -0.00      -2.64       0.00      -0.00       0.00      -0.00      -0.00    -106.71       0.00       0.00
                            0.00      -0.00       2.64      -0.00      -0.00      -0.00       0.00      -0.00    -106.71      -0.00

   17   8.1  1.0  0.0       2.64      -0.00       0.00       0.00      -0.00      -0.00     106.71       0.00       0.00       0.00
                            0.00       0.00      -0.00      -2.63       1.53      -9.22       0.00      -0.00      -0.00      -0.00

   18   9.1  1.0  0.0      -0.00      -0.00       0.00      -2.63      -1.53       9.22      -0.00      -0.00      -0.00       0.00
                           -2.64      -0.00       0.00       0.00      -0.00      -0.00     106.71       0.00       0.00      -0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      15.95
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      15.95

   22   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.64
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.64

   28   1.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      59.93       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00     -59.93       0.00      -0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00      16.40     -28.39       0.00       0.00      -0.00       0.00       0.00
                           16.40       0.00      -0.00       0.00       0.00       0.00     -56.75      -0.00       0.00      -0.00

   30   3.1  0.0  0.0       0.00       0.00      28.07       0.00      -0.00      -0.00      -0.00       0.00      33.81       0.00
                           -0.00      28.68      -0.00      -0.00      -0.00      -0.00       0.00     -31.70      -0.00       0.86

   31   4.1  0.0  0.0      -0.00       0.00     -16.91       0.00       0.00       0.00       0.00       0.00      56.12       0.00
                           -0.00      15.86      -0.00       0.00       0.00       0.00       0.00      57.34      -0.00      46.33

   32   5.1  0.0  0.0      16.40      -0.00      -0.00       0.00      -0.00      -0.00      56.75       0.00      -0.00       0.00
                            0.00      -0.00       0.00     -16.39     -28.39       0.00       0.00      -0.00      -0.00       0.00

   33   6.1  0.0  0.0       0.00     -16.40       0.00      -0.00       0.00      -0.00      -0.00     -56.75       0.00       0.00
                           -0.00       0.00     -16.40       0.00      -0.00       0.00      -0.00       0.00      56.75      -0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -1.35       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       1.35       0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      15.95       0.00      -0.00       0.00       0.00      -0.00       2.64      -0.00       0.00       0.00
                           -0.00     -15.95       0.00       0.00       0.00      -0.00      -0.00       2.64       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00      -2.64      -0.00      -0.00       0.00       0.00
                           -0.00       0.00     -15.94     -27.61      -0.00       0.00      -0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0      -0.00      -0.00     -15.94      27.61       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -2.64       0.00      -0.00       0.00       0.00

    4   4.1  1.0  1.0       0.00      15.94       0.00      -0.00      -0.00      -0.00       0.00      -2.63       0.00       0.00
                           15.94      -0.00       0.00      -0.00       0.00       0.00       2.63      -0.00       0.00       0.00

    5   5.1  1.0  1.0      -0.00     -27.61       0.00       0.00       0.00       0.00      -0.00      -1.53       0.00       0.00
                           27.61      -0.00       0.00      -0.00       0.00       0.00      -1.53       0.00       0.00       0.00

    6   6.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       9.22       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       9.22       0.00       0.00       0.00

    7   7.1  1.0  1.0       2.64      -0.00       0.00      -0.00       0.00      -0.00     106.71      -0.00       0.00       0.00
                           -0.00       2.64      -0.00      -0.00      -0.00      -0.00      -0.00    -106.71       0.00       0.00

    8   8.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00    -106.71       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -2.63       1.53      -9.22       0.00       0.00      -0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00      -0.00       2.63       1.53      -9.22       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     106.71       0.00      -0.00       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      15.95
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   11   2.1  1.0  0.0   18786.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -15.95       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   12   3.1  1.0  0.0       0.00   18786.52       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      15.95      -0.00

   13   4.1  1.0  0.0       0.00       0.00   18786.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      15.94

   14   5.1  1.0  0.0       0.00       0.00       0.00   18786.66       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      27.61

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00   29073.27       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   35549.91       0.00       0.00       0.00       2.64
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   35550.16       0.00      -2.64       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35550.16       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.64      -0.00

   19   1.1  1.0 -1.0     -15.95      -0.00       0.00      -0.00      -0.00       0.00      -2.64       0.00   18786.51       0.00
                           -0.00     -15.95       0.00       0.00       0.00      -0.00      -0.00       2.64      -0.00       0.00

   20   2.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00       2.64       0.00       0.00       0.00   18786.52
                            0.00       0.00     -15.94     -27.61      -0.00       0.00      -0.00       0.00      -0.00       0.00

   21   3.1  1.0 -1.0       0.00      -0.00      15.94     -27.61      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -2.64       0.00      -0.00      -0.00      22.55

   22   4.1  1.0 -1.0      -0.00     -15.94       0.00       0.00       0.00       0.00      -0.00       2.63       0.00       0.00
                           15.94      -0.00      -0.00      -0.00       0.00       0.00       2.63      -0.00      45.09       0.00

   23   5.1  1.0 -1.0       0.00      27.61      -0.00       0.00      -0.00      -0.00       0.00       1.53       0.00       0.00
                           27.61      -0.00       0.00       0.00       0.00       0.00      -1.53       0.00       0.00      -0.00

   24   6.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -9.22       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       9.22       0.00       0.00      -0.00

   25   7.1  1.0 -1.0      -2.64       0.00      -0.00       0.00      -0.00      -0.00    -106.71       0.00       0.00       0.00
                           -0.00       2.64      -0.00      -0.00      -0.00       0.00      -0.00    -106.71       0.00       0.00

   26   8.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00     106.71       0.00       0.00       0.00       0.00
                            0.00      -0.00      -2.63       1.53      -9.22       0.00      -0.00      -0.00      -0.00       0.00

   27   9.1  1.0 -1.0      -0.00       0.00      -2.63      -1.53       9.22      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     106.71       0.00       0.00      -0.00       3.72

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00     -84.75      -0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           23.19       0.00       0.00       0.00      -0.00       0.00     -80.25      -0.00     -16.40      -0.00

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      92.64       0.00       0.00       0.00     -28.68

   31   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -1.72      -0.00      -0.00       0.00     -15.86

   32   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.40      -0.00
                           -0.00     -23.19      -0.00      -0.00      -0.00       0.00      -0.00     -80.25      -0.00       0.00

   33   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.40
                            0.00      -0.00     -46.36      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       1.90      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.40       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -28.68

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      28.07
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.40       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -28.39      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      56.75      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      59.93       0.00      31.70

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      59.93       0.00      33.81
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   10   1.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00       2.64      -0.00       0.00       0.00       0.00
                          -15.95       0.00       0.00       0.00      -0.00      -0.00       2.64       0.00       0.00      -0.86

   11   2.1  1.0  0.0       0.00      -0.00       0.00       0.00      -2.64      -0.00      -0.00       0.00       0.00       0.00
                            0.00     -15.94     -27.61      -0.00       0.00      -0.00       0.00      -0.00     -23.19       0.00

   12   3.1  1.0  0.0      -0.00     -15.94      27.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -2.64       0.00      -0.00       0.00      -0.00       0.00

   13   4.1  1.0  0.0      15.94       0.00      -0.00      -0.00      -0.00       0.00      -2.63       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       2.63      -0.00       0.00      -0.00       0.00

   14   5.1  1.0  0.0     -27.61       0.00       0.00       0.00       0.00      -0.00      -1.53       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -1.53       0.00      -0.00      -0.00       0.00

   15   6.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      -0.00       9.22       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       9.22       0.00      -0.00       0.00       0.00

   16   7.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00     106.71      -0.00       0.00       0.00       0.00
                            2.64      -0.00      -0.00      -0.00      -0.00      -0.00    -106.71      84.75      -0.00     -92.64

   17   8.1  1.0  0.0      -0.00      -0.00       0.00       0.00    -106.71       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -2.63       1.53      -9.22       0.00       0.00      -0.00       0.00      80.25      -0.00

   18   9.1  1.0  0.0      -0.00       2.63       1.53      -9.22       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     106.71       0.00      -0.00      -0.00       0.00      -0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00     -45.09      -0.00      -0.00      -0.00       0.00       0.00      -0.00      16.40      -0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.55      -0.00       0.00       0.00      -0.00      -0.00      -3.72      -0.00       0.00      28.68

   21   3.1  1.0 -1.0   18786.52       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      28.07
                            0.00       0.00       0.00       0.00       0.00      -3.72      -0.00       0.00      -0.00      -0.00

   22   4.1  1.0 -1.0       0.00   18786.65       0.00       0.00       0.00       0.00       0.00       0.00      16.40       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   23   5.1  1.0 -1.0       0.00       0.00   18786.66       0.00       0.00       0.00       0.00       0.00     -28.39      -0.00
                           -0.00      -0.00       0.00      -0.00       4.28      -0.00      -0.00       0.00       0.00      -0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00   29073.27       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      13.05      -0.00       0.00      -0.00       0.00      -0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   35549.91       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -4.28     -13.05      -0.00       0.00      -0.00       0.00     -56.75       0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   35550.16       0.00       0.00      -0.00       0.00
                            3.72       0.00       0.00       0.00      -0.00       0.00     150.91     -59.93      -0.00     -31.70

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   35550.16      59.93       0.00      33.81
                            0.00       0.00       0.00      -0.00       0.00    -150.91      -0.00       0.00       0.00      -0.00

   28   1.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      59.93       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      59.93      -0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00      16.40     -28.39       0.00       0.00      -0.00       0.00       0.00   20847.25       0.00
                            0.00      -0.00      -0.00      -0.00      56.75       0.00      -0.00      -0.00       0.00       0.00

   30   3.1  0.0  0.0      28.07       0.00      -0.00      -0.00      -0.00       0.00      33.81       0.00       0.00   20847.58
                            0.00       0.00       0.00       0.00      -0.00      31.70       0.00      -0.00      -0.00       0.00

   31   4.1  0.0  0.0     -16.91       0.00       0.00       0.00       0.00       0.00      56.12       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -57.34       0.00      -0.00      -0.00      -0.00

   32   5.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      56.75       0.00      -0.00       0.00       0.00       0.00
                           -0.00      16.39      28.39      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   33   6.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00     -56.75       0.00       0.00       0.00       0.00
                           16.40      -0.00       0.00      -0.00       0.00      -0.00     -56.75      -0.00      -0.00      -0.00

   34   7.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -1.35       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -1.35      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  1.0  1.0      -0.00      16.40       0.00       0.00
                            0.00      -0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00      -0.00     -16.40       0.00
                          -15.86       0.00      -0.00      -0.00

    3   3.1  1.0  1.0     -16.91      -0.00       0.00       0.00
                            0.00      -0.00      16.40      -0.00

    4   4.1  1.0  1.0       0.00       0.00      -0.00      -0.00
                           -0.00      16.39      -0.00       0.00

    5   5.1  1.0  1.0       0.00      -0.00       0.00       0.00
                           -0.00      28.39       0.00       0.00

    6   6.1  1.0  1.0       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00

    7   7.1  1.0  1.0       0.00      56.75      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00     -56.75      -0.00
                          -57.34       0.00      -0.00      -1.35

    9   9.1  1.0  1.0      56.12      -0.00       0.00      -1.35
                            0.00       0.00     -56.75      -0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                          -46.33      -0.00       0.00      -0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      23.19       0.00      -0.00

   13   4.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      46.36      -0.00

   14   5.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00
                            1.72      -0.00       0.00      -1.90

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      80.25      -0.00      -0.00

   19   1.1  1.0 -1.0      -0.00      16.40       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

   20   2.1  1.0 -1.0       0.00      -0.00     -16.40       0.00
                           15.86      -0.00       0.00       0.00

   21   3.1  1.0 -1.0     -16.91      -0.00       0.00       0.00
                           -0.00       0.00     -16.40       0.00

   22   4.1  1.0 -1.0       0.00       0.00      -0.00      -0.00
                            0.00     -16.39       0.00      -0.00

   23   5.1  1.0 -1.0       0.00      -0.00       0.00       0.00
                            0.00     -28.39      -0.00      -0.00

   24   6.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00

   25   7.1  1.0 -1.0       0.00      56.75      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00

   26   8.1  1.0 -1.0       0.00       0.00     -56.75      -0.00
                           57.34      -0.00       0.00       1.35

   27   9.1  1.0 -1.0      56.12      -0.00       0.00      -1.35
                           -0.00      -0.00      56.75       0.00

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   31   4.1  0.0  0.0   20847.59       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   32   5.1  0.0  0.0       0.00   20847.60       0.00       0.00
                           -0.00       0.00       0.00       0.00

   33   6.1  0.0  0.0       0.00       0.00   20847.60       0.00
                           -0.00      -0.00       0.00       0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00   30684.80
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by    -30.64874985 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+          18786.508       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   18786.518       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000   18786.518       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   18786.646       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   18786.660       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   29073.265       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   35549.915       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   35550.163
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000     -22.551       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000     -22.546     -39.052      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               22.551      -0.000       0.000       0.000       0.000       0.000      -3.727       0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      22.546      -0.000       0.000      -0.000       0.000       0.000       3.722

    5    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      39.052      -0.000       0.000       0.000       0.000       0.000      -2.166

    6    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      13.042

    7    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000       3.727      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -3.722       2.166     -13.042       0.000       0.000

    9    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -3.727      -0.000       0.000       0.000      -0.000      -0.000     150.905       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      45.093       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      22.551       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -22.551      -0.000      -0.000      -0.000      -0.000      -0.000       3.725

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -45.093      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -4.280       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000     -13.045       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       4.280      13.045       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -3.725      -0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.725      -0.000      -0.000      -0.000       0.000      -0.000     150.912

    1    1  |0 0>              -0.000       0.000      -0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000      23.186     -40.155       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      39.695       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000       0.000     -23.917       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              23.186      -0.000      -0.000       0.000      -0.000      -0.000      80.252       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000     -23.187       0.000      -0.000       0.000      -0.000      -0.000     -80.251
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000     -22.551       0.000       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     -22.546     -39.052      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      22.551      -0.000       0.000       0.000       0.000       0.000      -3.727

    4    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      22.546      -0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      39.052      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000       3.727      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -3.722       2.166     -13.042       0.000

    9    1  |1 1>+          35550.162       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -3.727      -0.000       0.000       0.000      -0.000      -0.000     150.905

    1    1  |1 0>               0.000   18786.508       0.000       0.000       0.000       0.000       0.000       0.000
                                3.727       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000   18786.518       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000   18786.518       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000   18786.646       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000   18786.660       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000   29073.265       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000   35549.915
                             -150.905      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000      22.551       0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000     -22.551       0.000       0.000      -0.000       0.000       0.000      -3.727
                                3.725      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.000      -0.000       0.000     -22.547      39.052       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000      22.547       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000      -0.000      -0.000     -39.052       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       3.727      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000      -3.727       0.000      -0.000      -0.000       0.000       0.000    -150.905
                             -150.912       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000      -0.000       3.722       2.166     -13.042       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |0 0>              84.750       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000     -84.754

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      23.188       0.000       0.000       0.000      -0.000       0.000

    3    1  |0 0>              47.813       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.862      -0.000      -0.000      -0.000      -0.000      -0.000      92.644

    4    1  |0 0>              79.364       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      46.334       0.000      -0.000       0.000       0.000       0.000      -1.724

    5    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -23.186      -0.000      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     -46.362      -0.000       0.000      -0.000

    7    1  |0 0>              -1.902       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       1.902

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.727       0.000      -0.000      -0.000      45.093       0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      22.551       0.000      -0.000      -0.000

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -22.551      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.722      -0.000     -45.093      -0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.166       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               13.042       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -150.905      -0.000      -0.000       0.000      -0.000       4.280      13.045

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -3.725      -0.000      -0.000      -0.000

    9    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -3.725      -0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000     -22.551      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      22.551       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      22.547     -39.052      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000     -22.547       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      39.052      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000      -0.000      -3.727       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>           35550.163       0.000       3.727      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000   35550.162      -0.000      -0.000       0.000      -3.722      -2.166      13.042
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              3.727      -0.000   18786.508       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000      -0.000       0.000   18786.518       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   18786.518       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000      -3.722       0.000       0.000       0.000   18786.646       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.000      -2.166       0.000       0.000       0.000       0.000   18786.660       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000      13.042       0.000       0.000       0.000       0.000       0.000   29073.265
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-            150.905      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.001       0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -80.253      -0.000      23.188       0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      40.558      -0.000      -0.000      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      22.424      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -80.254       0.000      -0.000       0.000     -23.185     -40.152       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     -23.187       0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      23.186
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       3.725       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.001       0.000      39.695     -23.917      -0.000
                               -0.000       3.725       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      23.186       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000     -40.155      -0.000       0.000      -0.000
                               -4.280       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                              -13.045       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      80.252
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000    -150.912       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000      84.750       0.000      47.813      79.364      -0.000
                               -0.000     150.912       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -3.727       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.862     -46.334      -0.000

    2    1  |1 0>               3.727       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -23.188       0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      23.186

    4    1  |1 0>               0.000      -0.000       3.722       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>              -0.000       0.000       2.166       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000     -13.042       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000    -150.905       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      84.754      -0.000     -92.644       1.724      -0.000

    8    1  |1 0>             150.905       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      80.253      -0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      80.254

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -23.188       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.001      -0.000     -40.558     -22.424       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      23.185

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      40.152

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>-          35549.915       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      80.252      -0.000      -0.000      -0.000

    8    1  |1 1>-              0.000   35550.163       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      84.750       0.000      44.826     -81.088       0.000

    9    1  |1 1>-              0.000       0.000   35550.162       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -84.750       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000   20847.251       0.000       0.000       0.000
                              -80.252      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000   20847.580       0.000       0.000
                                0.000     -44.826      -0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   20847.587       0.000
                                0.000      81.088      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   20847.602
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      80.251      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.902       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34

    1    1  |1 1>+              0.000       0.000
                                0.000       0.000

    2    1  |1 1>+            -23.187       0.000
                                0.000       0.000

    3    1  |1 1>+              0.000       0.000
                                0.000       0.000

    4    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    5    1  |1 1>+              0.000       0.000
                                0.000       0.000

    6    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    7    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    8    1  |1 1>+            -80.251      -0.000
                                0.000       0.000

    9    1  |1 1>+              0.000      -1.902
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                                0.000      -0.000

    2    1  |1 0>               0.000       0.000
                               -0.000       0.000

    3    1  |1 0>               0.000       0.000
                                0.000      -0.000

    4    1  |1 0>               0.000       0.000
                               46.362      -0.000

    5    1  |1 0>               0.000       0.000
                                0.000       0.000

    6    1  |1 0>               0.000       0.000
                               -0.000       0.000

    7    1  |1 0>               0.000       0.000
                                0.000      -1.902

    8    1  |1 0>               0.000       0.000
                                0.000       0.000

    9    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    1    1  |1 1>-              0.000       0.000
                                0.000       0.000

    2    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    3    1  |1 1>-              0.000       0.000
                               23.187      -0.000

    4    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    5    1  |1 1>-              0.000       0.000
                                0.000       0.000

    6    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    7    1  |1 1>-              0.000       0.000
                                0.000       0.000

    8    1  |1 1>-              0.000       0.000
                               -0.000      -1.902

    9    1  |1 1>-              0.000       0.000
                              -80.251      -0.000

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>               0.000       0.000
                                0.000       0.000

    6    1  |0 0>           20847.601       0.000
                                0.000       0.000

    7    1  |0 0>               0.000   30684.802
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.64875263    -0.00000279       -0.61      0.00000000        0.00      0.0000
    2   -30.56346015     0.08528969    18718.92      0.08529248    18719.54      2.3209
    3   -30.56346015     0.08528969    18718.92      0.08529248    18719.54      2.3209
    4   -30.56346012     0.08528973    18718.93      0.08529251    18719.54      2.3209
    5   -30.56326202     0.08548783    18762.41      0.08549061    18763.02      2.3263
    6   -30.56326199     0.08548786    18762.42      0.08549065    18763.03      2.3263
    7   -30.56326158     0.08548827    18762.51      0.08549105    18763.12      2.3263
    8   -30.56326156     0.08548829    18762.51      0.08549108    18763.12      2.3263
    9   -30.56326155     0.08548829    18762.51      0.08549108    18763.12      2.3263
   10   -30.56294669     0.08580316    18831.62      0.08580594    18832.23      2.3349
   11   -30.56294651     0.08580334    18831.66      0.08580612    18832.27      2.3349
   12   -30.56294651     0.08580334    18831.66      0.08580612    18832.27      2.3349
   13   -30.56294651     0.08580334    18831.66      0.08580613    18832.27      2.3349
   14   -30.56294637     0.08580348    18831.69      0.08580626    18832.30      2.3349
   15   -30.56294637     0.08580348    18831.69      0.08580626    18832.30      2.3349
   16   -30.56294633     0.08580351    18831.69      0.08580630    18832.31      2.3349
   17   -30.55375967     0.09499018    20847.93      0.09499296    20848.55      2.5849
   18   -30.55375818     0.09499167    20848.26      0.09499445    20848.87      2.5849
   19   -30.55375815     0.09499170    20848.27      0.09499449    20848.88      2.5849
   20   -30.55375808     0.09499177    20848.28      0.09499455    20848.89      2.5849
   21   -30.55375807     0.09499177    20848.28      0.09499456    20848.90      2.5849
   22   -30.51628255     0.13246730    29073.21      0.13247008    29073.82      3.6047
   23   -30.51628255     0.13246730    29073.21      0.13247008    29073.82      3.6047
   24   -30.51628255     0.13246730    29073.21      0.13247008    29073.82      3.6047
   25   -30.50893961     0.13981023    30684.80      0.13981302    30685.41      3.8045
   26   -30.48814414     0.16060571    35248.88      0.16060850    35249.49      4.3704
   27   -30.48745928     0.16129057    35399.19      0.16129336    35399.80      4.3890
   28   -30.48745928     0.16129057    35399.19      0.16129336    35399.80      4.3890
   29   -30.48745874     0.16129111    35399.31      0.16129389    35399.92      4.3890
   30   -30.48608062     0.16266923    35701.77      0.16267202    35702.38      4.4265
   31   -30.48608042     0.16266943    35701.81      0.16267221    35702.42      4.4265
   32   -30.48608042     0.16266943    35701.81      0.16267222    35702.42      4.4265
   33   -30.48607983     0.16267002    35701.94      0.16267281    35702.55      4.4266
   34   -30.48607982     0.16267002    35701.94      0.16267281    35702.55      4.4266

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.00000000  0.54805143 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.54800746 -0.00000000 -0.00000000 -0.40858403  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000004  0.00000000 -0.00000000  0.00000000  0.40365052  0.70937072 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.54639463 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.40777829
                           0.00000000 -0.03246785 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002388

   5    1  |1 1>+         -0.00000000 -0.31535274 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.70639393
                           0.00000000 -0.01873889 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00004136

   6    1  |1 1>+         -0.00000000 -0.00000053  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00020346  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00020442 -0.00000000 -0.00000000 -0.00039821  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00240431  0.00000000 -0.00000000  0.00000000 -0.00039979  0.00022744  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.81621501  0.00508242 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.03250246  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002393
                           0.00000000 -0.54697699 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40872626

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.54794112  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000198  0.00000000  0.00000000  0.81570499 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.63196263  0.00000000  0.00000000  0.00000228 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000048  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00240443 -0.00000000 -0.00000000 -0.00000000  0.00000286 -0.00046004  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00001208  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                          -0.00000000 -0.00020324 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00039899

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00020359 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.03250894 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002392
                          -0.00000000  0.54708601  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40856307

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000004  0.00000000 -0.00000000 -0.00000000  0.41245230 -0.70429043 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.54800637  0.00000000  0.00000000  0.40858452 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.54736124 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.31590465  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000053  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00001207 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                           0.00000000  0.00020311  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00039757

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00240431 -0.00000000 -0.00000000 -0.00000000  0.00039693  0.00023240 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00020442 -0.00000000 -0.00000000 -0.00039821  0.00000000

   1    1  |0 0>           0.99999133  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000403 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.02726226
                          -0.00000000  0.00000024  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000160

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00067648 -0.02723172  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.02723285  0.00067646 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000405 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.02725493  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000045 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.40856265 -0.00000000 -0.00000000  0.64831581 -0.00000001  0.00000001 -0.33508044  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000001  0.57743327 -0.00000000  0.00000000  0.44631135
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.57737726 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000070  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.40426747  0.00000000 -0.00000000  0.60823604  0.00000002  0.00000000
                           0.00000000  0.00000000 -0.02457917 -0.00000000 -0.00000000 -0.00206038 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.42206513 -0.00000000  0.00000000  0.47120841  0.00000002  0.00000000
                          -0.00000000 -0.00000000  0.02566126  0.00000000  0.00000000 -0.00159620 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00039754 -0.00000000 -0.00000000  0.00000025 -0.00000000 -0.00000000  0.00000046 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000023 -0.00000000 -0.00000000  0.00000084
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000070  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.57729744  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.02956867  0.00000000  0.00000000 -0.00184043 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.48633258  0.00000000 -0.00000000 -0.54330616 -0.00000002 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40872632 -0.00000000 -0.00000000  0.48655475 -0.00000001 -0.00000002  0.54391533 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000001  0.57803953 -0.00000000 -0.00000000 -0.00055695

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00074567 -0.00000000  0.00000000  0.77499848

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000062  0.00000000 -0.00000000 -0.00000053 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00039896  0.00000000  0.00000000 -0.00000062  0.00000000  0.00000000 -0.00000053  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.03931916  0.00000000  0.00000000  0.00113780  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.64670435  0.00000000 -0.00000000  0.33588466  0.00000001  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000070 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.57737610 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.57657659 -0.00000000  0.00000000  0.44741840

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40777245 -0.00000000  0.00000000 -0.40576710  0.00000001 -0.00000002  0.60773880 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.70639774  0.00000000  0.00000000 -0.42226076  0.00000001  0.00000002 -0.47173167  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000002  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000025  0.00000000  0.00000000  0.00000046  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000023  0.00000000  0.00000000 -0.00000084

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00002429 -0.00000000  0.00000000  0.00000434  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000148  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000378  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.02725608 -0.00000000 -0.00000000  0.00002431 -0.00000000 -0.00000000  0.00000436  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002040 -0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.01112931  0.00000074 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.01112972 -0.00000000  0.00000000 -0.00000000 -0.00000071
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.01906129 -0.01146794 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.01113195 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000074 -0.00000000
                           0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.01927860  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000042 -0.00000000
                          -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000  0.00020892  0.99999573 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000379  0.00000036

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00539276  0.00206219 -0.00000043  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00539257  0.00000000  0.00000000 -0.00000000 -0.00206169
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006

   9    1  |1 1>+         -0.00000000 -0.00320935 -0.00533501 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00039946 -0.02224050 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01113194  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000077  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.01112942 -0.00000077  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.02225491  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000008  0.00000000 -0.00000000  0.00000000  0.00000086

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000036  0.00002754
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.99999575

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00622548 -0.00011181 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 0>           0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00539257  0.00000000  0.00000000  0.00000000  0.00000000  0.00000043  0.00206170 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00539274 -0.00206170  0.00000043 -0.00000000

   1    1  |1 1>-          0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01113183  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000074  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.01946080 -0.01077606 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.01112973  0.00000000  0.00000000 -0.00000000 -0.00000071

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.01112928  0.00000074 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.01927432 -0.00000042  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.99999573 -0.00020892  0.00000000

   7    1  |1 1>-          0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                          -0.00539259  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000043 -0.00206219  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00301570  0.00544682  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006
                           0.00000000  0.00000000 -0.00000000  0.00539257  0.00000000 -0.00000000  0.00000000  0.00206169

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.99959913 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                           0.00000316  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.99959953  0.00065046 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00065046  0.99959950  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.99959930 -0.00000003  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.99959933  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00000000  0.00000000  0.00015793  0.00000000  0.00000000  0.00000000 -0.00014520  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00015789  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000001  0.00000014 -0.00000000  0.00000000 -0.00000000  0.00025121  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00015768  0.00000000  0.00000000 -0.00000000 -0.00014481
                          -0.00000000  0.00000000 -0.00000000  0.00000350  0.00000000  0.00000000 -0.00000000 -0.00000702

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00008971  0.00000000 -0.00000000  0.00000000  0.00025064
                          -0.00000000  0.00000000 -0.00000000  0.00000199  0.00000000 -0.00000000  0.00000000  0.00001215

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00291531  0.00000000 -0.00000000 -0.00000000 -0.00000085
                           0.00000000  0.00000000 -0.00000000  0.00006467  0.00000000 -0.00000000 -0.00000000 -0.00000004

   7    1  |1 1>+          0.00000000 -0.00000000  0.70739272  0.00000001  0.00000000 -0.00000000  0.70679701 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.70710323 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00041680  0.57724294  0.00000000 -0.00000000  0.00000000 -0.40890687 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000022 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000351 -0.00000000  0.00000000 -0.00000000 -0.00000702
                           0.00000000  0.00000000 -0.00000000  0.00015801  0.00000000 -0.00000000  0.00000000  0.00014488

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00015804 -0.00000000 -0.00000000  0.00000000 -0.00014505  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00018362 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00291567 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00041673  0.57754996  0.00000000  0.00000000 -0.00000000  0.81632759  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.01567547  0.00000000  0.00000000 -0.00000000 -0.03424827
                          -0.00000000  0.00000000  0.00000001 -0.70664030 -0.00000000 -0.00000000  0.00000000  0.70654603

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.70681465 -0.00000001 -0.00000000 -0.00000000  0.70737509 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000350  0.00000000  0.00000000 -0.00000000 -0.00000703
                           0.00000000 -0.00000000  0.00000000 -0.00015790 -0.00000000 -0.00000000  0.00000000  0.00014502

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000014  0.00000000  0.00000000 -0.00000000 -0.00025142 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00015789 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00015772  0.00000000  0.00000000  0.00000000 -0.00014498  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00008973 -0.00000000 -0.00000000  0.00000000 -0.00025094  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00291603 -0.00000000 -0.00000000 -0.00000000  0.00000085 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.01568831 -0.00000000  0.00000000 -0.00000000 -0.03422023
                          -0.00000000 -0.00000000 -0.00000001  0.70721924  0.00000000 -0.00000000  0.00000000  0.70596761

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00041680  0.57724238  0.00000000  0.00000000  0.00000000 -0.40785533 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710426 -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000345  0.00416446  0.00000000 -0.00000000 -0.00000000 -0.00000095  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000311 -0.00000000 -0.00000000  0.00000000  0.00762982
                          -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000  0.00000000  0.00036984

   3    1  |0 0>           0.00000000 -0.00000217 -0.00000000 -0.00000000 -0.00000000 -0.00763698 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000  0.00013646 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000311  0.00000000  0.00000000 -0.00000000  0.00763901 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.99999974 -0.00072189 -0.00000000  0.00000000  0.00000000  0.00000023 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |1 1>+          0.00000000 -0.00000000
                          -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00014503
                           0.00000000  0.00000000

   3    1  |1 1>+         -0.00014522  0.00000000
                           0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000
                           0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.70708662
                          -0.00000000 -0.00000000

   9    1  |1 1>+         -0.70678203  0.00000000
                           0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000
                          -0.00029028  0.00000000

   2    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00028984

   5    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000
                           0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000
                          -0.00060677  0.00000000

   8    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000
                          -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000
                           0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00014485  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000
                           0.00000000  0.00014503

   4    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000
                           0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000
                           0.70738980 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000
                           0.00000000  0.70708559

   1    1  |0 0>           0.00000000 -0.00000000
                           0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000
                          -0.00000000 -0.00000000

   3    1  |0 0>          -0.00013645  0.00000000
                           0.00000000 -0.00000000

   4    1  |0 0>          -0.00763643  0.00000000
                           0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00763876
                           0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.64875263     -0.00000279       -0.61      0.00000000        0.00      0.0000
     2   1    -30.56346015      0.08528969    18718.92      0.08529248    18719.54      2.3209
     3   1    -30.56346015      0.08528969    18718.92      0.08529248    18719.54      2.3209
     4   1    -30.56346012      0.08528973    18718.93      0.08529251    18719.54      2.3209
     5   1    -30.56326202      0.08548783    18762.41      0.08549061    18763.02      2.3263
     6   1    -30.56326199      0.08548786    18762.42      0.08549065    18763.03      2.3263
     7   1    -30.56326158      0.08548827    18762.51      0.08549105    18763.12      2.3263
     8   1    -30.56326156      0.08548829    18762.51      0.08549108    18763.12      2.3263
     9   1    -30.56326155      0.08548829    18762.51      0.08549108    18763.12      2.3263
    10   1    -30.56294669      0.08580316    18831.62      0.08580594    18832.23      2.3349
    11   1    -30.56294651      0.08580334    18831.66      0.08580612    18832.27      2.3349
    12   1    -30.56294651      0.08580334    18831.66      0.08580612    18832.27      2.3349
    13   1    -30.56294651      0.08580334    18831.66      0.08580613    18832.27      2.3349
    14   1    -30.56294637      0.08580348    18831.69      0.08580626    18832.30      2.3349
    15   1    -30.56294637      0.08580348    18831.69      0.08580626    18832.30      2.3349
    16   1    -30.56294633      0.08580351    18831.69      0.08580630    18832.31      2.3349
    17   1    -30.55375967      0.09499018    20847.93      0.09499296    20848.55      2.5849
    18   1    -30.55375818      0.09499167    20848.26      0.09499445    20848.87      2.5849
    19   1    -30.55375815      0.09499170    20848.27      0.09499449    20848.88      2.5849
    20   1    -30.55375808      0.09499177    20848.28      0.09499455    20848.89      2.5849
    21   1    -30.55375807      0.09499177    20848.28      0.09499456    20848.90      2.5849
    22   1    -30.51628255      0.13246730    29073.21      0.13247008    29073.82      3.6047
    23   1    -30.51628255      0.13246730    29073.21      0.13247008    29073.82      3.6047
    24   1    -30.51628255      0.13246730    29073.21      0.13247008    29073.82      3.6047
    25   1    -30.50893961      0.13981023    30684.80      0.13981302    30685.41      3.8045
    26   1    -30.48814414      0.16060571    35248.88      0.16060850    35249.49      4.3704
    27   1    -30.48745928      0.16129057    35399.19      0.16129336    35399.80      4.3890
    28   1    -30.48745928      0.16129057    35399.19      0.16129336    35399.80      4.3890
    29   1    -30.48745874      0.16129111    35399.31      0.16129389    35399.92      4.3890
    30   1    -30.48608062      0.16266923    35701.77      0.16267202    35702.38      4.4265
    31   1    -30.48608042      0.16266943    35701.81      0.16267221    35702.42      4.4265
    32   1    -30.48608042      0.16266943    35701.81      0.16267222    35702.42      4.4265
    33   1    -30.48607983      0.16267002    35701.94      0.16267281    35702.55      4.4266
    34   1    -30.48607982      0.16267002    35701.94      0.16267281    35702.55      4.4266

 E0 =    -30.64874985 is the energy of the lowest zeroth-order state
 E1 =    -30.64875263 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.54805143 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.54800746 -0.00000000 -0.00000000 -0.40858403  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000004  0.00000000 -0.00000000  0.00000000  0.40365052  0.70937072 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.54639463 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.40777829
                                0.00000000 -0.03246785 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002388

  5  1     5    1  |1 1>+      -0.00000000 -0.31535274 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.70639393
                                0.00000000 -0.01873889 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00004136

  6  1     6    1  |1 1>+      -0.00000000 -0.00000053  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00020346  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00020442 -0.00000000 -0.00000000 -0.00039821  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00240431  0.00000000 -0.00000000  0.00000000 -0.00039979  0.00022744  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.81621501  0.00508242 -0.00000000  0.00000000

 11  1     2    1  |1 0>       -0.00000000  0.03250246  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002393
                                0.00000000 -0.54697699 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40872626

 12  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.54794112  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000198  0.00000000  0.00000000  0.81570499 -0.00000000

 14  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.63196263  0.00000000  0.00000000  0.00000228 -0.00000000

 15  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000048  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00240443 -0.00000000 -0.00000000 -0.00000000  0.00000286 -0.00046004  0.00000000 -0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00001208  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                               -0.00000000 -0.00020324 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00039899

 18  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00020359 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     1    1  |1 1>-       0.00000000 -0.03250894 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002392
                               -0.00000000  0.54708601  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40856307

 20  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000004  0.00000000 -0.00000000 -0.00000000  0.41245230 -0.70429043 -0.00000000 -0.00000000

 21  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.54800637  0.00000000  0.00000000  0.40858452 -0.00000000

 22  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.54736124 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.31590465  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000053  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1     7    1  |1 1>-       0.00000000 -0.00001207 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                                0.00000000  0.00020311  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00039757

 26  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00240431 -0.00000000 -0.00000000 -0.00000000  0.00039693  0.00023240 -0.00000000  0.00000000

 27  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00020442 -0.00000000 -0.00000000 -0.00039821  0.00000000

 28  1     1    1  |0 0>        0.99999133  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     2    1  |0 0>       -0.00000000  0.00000403 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.02726226
                               -0.00000000  0.00000024  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000160

 30  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00067648 -0.02723172  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.02723285  0.00067646 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000405 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 33  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.02725493  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     7    1  |0 0>       -0.00000045 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.40856265 -0.00000000 -0.00000000  0.64831581 -0.00000001  0.00000001 -0.33508044  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000001  0.57743327 -0.00000000  0.00000000  0.44631135
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.57737726 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000070  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00000000  0.40426747  0.00000000 -0.00000000  0.60823604  0.00000002  0.00000000
                                0.00000000  0.00000000 -0.02457917 -0.00000000 -0.00000000 -0.00206038 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.42206513 -0.00000000  0.00000000  0.47120841  0.00000002  0.00000000
                               -0.00000000 -0.00000000  0.02566126  0.00000000  0.00000000 -0.00159620 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00039754 -0.00000000 -0.00000000  0.00000025 -0.00000000 -0.00000000  0.00000046 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000023 -0.00000000 -0.00000000  0.00000084
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |1 0>       -0.00000000  0.00000070  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.57729744  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |1 0>        0.00000000 -0.00000000  0.02956867  0.00000000  0.00000000 -0.00184043 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.48633258  0.00000000 -0.00000000 -0.54330616 -0.00000002 -0.00000000

 12  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40872632 -0.00000000 -0.00000000  0.48655475 -0.00000001 -0.00000002  0.54391533 -0.00000000

 13  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000001  0.57803953 -0.00000000 -0.00000000 -0.00055695

 14  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00074567 -0.00000000  0.00000000  0.77499848

 15  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003

 16  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000062  0.00000000 -0.00000000 -0.00000053 -0.00000000 -0.00000000

 18  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00039896  0.00000000  0.00000000 -0.00000062  0.00000000  0.00000000 -0.00000053  0.00000000

 19  1     1    1  |1 1>-       0.00000000 -0.00000000  0.03931916  0.00000000  0.00000000  0.00113780  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.64670435  0.00000000 -0.00000000  0.33588466  0.00000001  0.00000000

 20  1     2    1  |1 1>-      -0.00000000 -0.00000070 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.57737610 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001 -0.57657659 -0.00000000  0.00000000  0.44741840

 22  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40777245 -0.00000000  0.00000000 -0.40576710  0.00000001 -0.00000002  0.60773880 -0.00000000

 23  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.70639774  0.00000000  0.00000000 -0.42226076  0.00000001  0.00000002 -0.47173167  0.00000000

 24  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000002  0.00000000

 25  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000025  0.00000000  0.00000000  0.00000046  0.00000000  0.00000000

 26  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 27  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000023  0.00000000  0.00000000 -0.00000084

 28  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00002429 -0.00000000  0.00000000  0.00000434  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000148  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

 30  1     3    1  |0 0>       -0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     4    1  |0 0>        0.00000000  0.00000378  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.02725608 -0.00000000 -0.00000000  0.00002431 -0.00000000 -0.00000000  0.00000436  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002040 -0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.01112931  0.00000074 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.01112972 -0.00000000  0.00000000 -0.00000000 -0.00000071
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.01906129 -0.01146794 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.01113195 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000074 -0.00000000
                                0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.01927860  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000042 -0.00000000
                               -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000  0.00020892  0.99999573 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000379  0.00000036

  7  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00539276  0.00206219 -0.00000043  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00539257  0.00000000  0.00000000 -0.00000000 -0.00206169
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006

  9  1     9    1  |1 1>+      -0.00000000 -0.00320935 -0.00533501 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00039946 -0.02224050 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |1 0>        0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01113194  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000077  0.00000000

 12  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.01112942 -0.00000077  0.00000000 -0.00000000

 13  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.02225491  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000008  0.00000000 -0.00000000  0.00000000  0.00000086

 15  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000036  0.00002754
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.99999575

 16  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00622548 -0.00011181 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     8    1  |1 0>        0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00539257  0.00000000  0.00000000  0.00000000  0.00000000  0.00000043  0.00206170 -0.00000000

 18  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00539274 -0.00206170  0.00000043 -0.00000000

 19  1     1    1  |1 1>-       0.00000004  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01113183  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000074  0.00000000

 20  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.01946080 -0.01077606 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.01112973  0.00000000  0.00000000 -0.00000000 -0.00000071

 22  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.01112928  0.00000074 -0.00000000 -0.00000000

 23  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.01927432 -0.00000042  0.00000000  0.00000000

 24  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.99999573 -0.00020892  0.00000000

 25  1     7    1  |1 1>-       0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                               -0.00539259  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000043 -0.00206219  0.00000000

 26  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00301570  0.00544682  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 27  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006
                                0.00000000  0.00000000 -0.00000000  0.00539257  0.00000000 -0.00000000  0.00000000  0.00206169

 28  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     2    1  |0 0>        0.99959913 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                                0.00000316  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     3    1  |0 0>        0.00000000  0.99959953  0.00065046 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 31  1     4    1  |0 0>        0.00000000 -0.00065046  0.99959950  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 32  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.99959930 -0.00000003  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 33  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.99959933  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.00015793  0.00000000  0.00000000  0.00000000 -0.00014520  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00015789  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000001  0.00000014 -0.00000000  0.00000000 -0.00000000  0.00025121  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00015768  0.00000000  0.00000000 -0.00000000 -0.00014481
                               -0.00000000  0.00000000 -0.00000000  0.00000350  0.00000000  0.00000000 -0.00000000 -0.00000702

  5  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00008971  0.00000000 -0.00000000  0.00000000  0.00025064
                               -0.00000000  0.00000000 -0.00000000  0.00000199  0.00000000 -0.00000000  0.00000000  0.00001215

  6  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00291531  0.00000000 -0.00000000 -0.00000000 -0.00000085
                                0.00000000  0.00000000 -0.00000000  0.00006467  0.00000000 -0.00000000 -0.00000000 -0.00000004

  7  1     7    1  |1 1>+       0.00000000 -0.00000000  0.70739272  0.00000001  0.00000000 -0.00000000  0.70679701 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.70710323 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00041680  0.57724294  0.00000000 -0.00000000  0.00000000 -0.40890687 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000022 -0.00000000  0.00000000

 11  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000351 -0.00000000  0.00000000 -0.00000000 -0.00000702
                                0.00000000  0.00000000 -0.00000000  0.00015801  0.00000000 -0.00000000  0.00000000  0.00014488

 12  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00015804 -0.00000000 -0.00000000  0.00000000 -0.00014505  0.00000000

 13  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00018362 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00291567 -0.00000000  0.00000000  0.00000000

 16  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00041673  0.57754996  0.00000000  0.00000000 -0.00000000  0.81632759  0.00000000  0.00000000

 17  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.01567547  0.00000000  0.00000000 -0.00000000 -0.03424827
                               -0.00000000  0.00000000  0.00000001 -0.70664030 -0.00000000 -0.00000000  0.00000000  0.70654603

 18  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.70681465 -0.00000001 -0.00000000 -0.00000000  0.70737509 -0.00000000

 19  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000350  0.00000000  0.00000000 -0.00000000 -0.00000703
                                0.00000000 -0.00000000  0.00000000 -0.00015790 -0.00000000 -0.00000000  0.00000000  0.00014502

 20  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000014  0.00000000  0.00000000 -0.00000000 -0.00025142 -0.00000000 -0.00000000

 21  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00015789 -0.00000000 -0.00000000  0.00000000

 22  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00015772  0.00000000  0.00000000  0.00000000 -0.00014498  0.00000000

 23  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00008973 -0.00000000 -0.00000000  0.00000000 -0.00025094  0.00000000

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00291603 -0.00000000 -0.00000000 -0.00000000  0.00000085 -0.00000000

 25  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.01568831 -0.00000000  0.00000000 -0.00000000 -0.03422023
                               -0.00000000 -0.00000000 -0.00000001  0.70721924  0.00000000 -0.00000000  0.00000000  0.70596761

 26  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00041680  0.57724238  0.00000000  0.00000000  0.00000000 -0.40785533 -0.00000000 -0.00000000

 27  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710426 -0.00000000 -0.00000000 -0.00000000

 28  1     1    1  |0 0>        0.00000345  0.00416446  0.00000000 -0.00000000 -0.00000000 -0.00000095  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000311 -0.00000000 -0.00000000  0.00000000  0.00762982
                               -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000  0.00000000  0.00036984

 30  1     3    1  |0 0>        0.00000000 -0.00000217 -0.00000000 -0.00000000 -0.00000000 -0.00763698 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 31  1     4    1  |0 0>       -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000000  0.00013646 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 32  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000311  0.00000000  0.00000000 -0.00000000  0.00763901 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 33  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 34  1     7    1  |0 0>        0.99999974 -0.00072189 -0.00000000  0.00000000  0.00000000  0.00000023 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |1 1>+       0.00000000 -0.00000000
                               -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00014503
                                0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00014522  0.00000000
                                0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000  0.00000000
                               -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00000000
                                0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.70708662
                               -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.70678203  0.00000000
                                0.00000000  0.00000000

 10  1     1    1  |1 0>       -0.00000000 -0.00000000
                               -0.00029028  0.00000000

 11  1     2    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

 12  1     3    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 13  1     4    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00028984

 14  1     5    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

 15  1     6    1  |1 0>        0.00000000 -0.00000000
                                0.00000000  0.00000000

 16  1     7    1  |1 0>        0.00000000 -0.00000000
                               -0.00060677  0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

 18  1     9    1  |1 0>        0.00000000  0.00000000
                               -0.00000000  0.00000000

 19  1     1    1  |1 1>-       0.00000000  0.00000000
                                0.00000000 -0.00000000

 20  1     2    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00014485  0.00000000

 21  1     3    1  |1 1>-       0.00000000  0.00000000
                                0.00000000  0.00014503

 22  1     4    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 23  1     5    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000  0.00000000

 25  1     7    1  |1 1>-       0.00000000  0.00000000
                                0.00000000  0.00000000

 26  1     8    1  |1 1>-       0.00000000  0.00000000
                                0.70738980 -0.00000000

 27  1     9    1  |1 1>-       0.00000000  0.00000000
                                0.00000000  0.70708559

 28  1     1    1  |0 0>        0.00000000 -0.00000000
                                0.00000000 -0.00000000

 29  1     2    1  |0 0>        0.00000000  0.00000000
                               -0.00000000 -0.00000000

 30  1     3    1  |0 0>       -0.00013645  0.00000000
                                0.00000000 -0.00000000

 31  1     4    1  |0 0>       -0.00763643  0.00000000
                                0.00000000  0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 33  1     6    1  |0 0>       -0.00000000 -0.00763876
                                0.00000000  0.00000000

 34  1     7    1  |0 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   30.04%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.03%    0.00%    0.00%   16.69%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.29%   50.32%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%   29.96%    0.00%    0.00%    0.00%    0.00%    0.00%   16.63%
  5  1     5    1  |1 1>+         0.00%    9.98%    0.00%    0.00%    0.00%    0.00%    0.00%   49.90%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.62%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%   30.02%    0.00%    0.00%    0.00%    0.00%    0.00%   16.71%
 12  1     3    1  |1 0>          0.00%    0.00%   30.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.54%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.94%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%   30.04%    0.00%    0.00%    0.00%    0.00%    0.00%   16.69%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   17.01%   49.60%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.03%    0.00%    0.00%   16.69%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%   29.96%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    9.98%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        16.69%    0.00%    0.00%   42.03%    0.00%    0.00%   11.23%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%   19.92%
  3  1     3    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%   16.40%    0.00%    0.00%   37.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%   17.88%    0.00%    0.00%   22.20%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%   23.74%    0.00%    0.00%   29.52%    0.00%    0.00%
 12  1     3    1  |1 0>         16.71%    0.00%    0.00%   23.67%    0.00%    0.00%   29.58%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.41%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.06%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%   41.98%    0.00%    0.00%   11.28%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.24%    0.00%    0.00%   20.02%
 22  1     4    1  |1 1>-        16.63%    0.00%    0.00%   16.46%    0.00%    0.00%   36.93%    0.00%
 23  1     5    1  |1 1>-        49.90%    0.00%    0.00%   17.83%    0.00%    0.00%   22.25%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.04%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.04%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>         99.92%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%   99.92%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%   99.92%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.92%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%   99.92%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.96%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%   33.32%    0.00%    0.00%    0.00%   16.72%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%   33.36%    0.00%    0.00%    0.00%   66.64%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%
 18  1     9    1  |1 0>          0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.96%
 26  1     8    1  |1 1>-         0.00%   33.32%    0.00%    0.00%    0.00%   16.63%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |1 1>+         0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%   50.00%
  9  1     9    1  |1 1>+        49.95%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%
 26  1     8    1  |1 1>-        50.04%    0.00%
 27  1     9    1  |1 1>-         0.00%   50.00%
 28  1     1    1  |0 0>          0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%
 31  1     4    1  |0 0>          0.01%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.01%
 34  1     7    1  |0 0>          0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      380.20       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       638.25    365.04    101.84    162.96      3.85      0.66      3.69
 REAL TIME  *       700.66 SEC
 DISK USED  *       439.90 MB (local),        7.36 GB (total)
 SF USED    *         2.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -30.486079824104

              CI              CI           MULTI         RHF-SCF
    -30.48967565    -30.46982317    -30.22426740    -30.34125532
 **********************************************************************************************************************************
 Molpro calculation terminated
