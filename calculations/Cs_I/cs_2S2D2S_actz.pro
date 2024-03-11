
 Working directory              : /wrk/irikura/molpro.UHwKwvc9Vx/
 Global scratch directory       : /wrk/irikura/molpro.UHwKwvc9Vx/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.UHwKwvc9Vx/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Cs SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Cs};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=54,sym=1,spin=0}
 
 {multi
     closed,15,12
     occ,22,12
     wf,nelec=55,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,8,6
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cs SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 15:25:52  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CS     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry CS     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry CS     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry CS     F aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  CS     55.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   55
 NUMBER OF PRIMITIVE AOS:         304
 NUMBER OF SYMMETRY AOS:          265
 NUMBER OF CONTRACTIONS:          109   (   51Ag  +   58Au  )
 NUMBER OF INNER CORE ORBITALS:    23   (   14Ag  +    9Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     23.331 MB (compressed) written to integral file ( 13.8%)

     Node minimum: 0.524 MB, node maximum: 4.456 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     759972.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     759972      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    20698825. AND WROTE      157893. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     1914443. AND WROTE     9150775. INTEGRALS IN    132 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      758964.  Node maximum:      765474. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.172E-03 0.170E-02 0.170E-02 0.170E-02 0.170E-02 0.170E-02 0.292E-02 0.166E-01
         2 0.370E-02 0.370E-02 0.370E-02 0.847E-02 0.847E-02 0.847E-02 0.898E-01 0.898E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         5.48      5.26
 REAL TIME  *         6.30 SEC
 DISK USED  *        29.87 MB (local),      416.51 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  15  12

 NELEC=   54   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -7783.29309138   -7783.29309138     0.00D+00     0.19D+00     0     0       0.00      0.01    start
   2    -7783.29350935      -0.00041797     0.42D-03     0.14D-02     1     0       0.01      0.02    diag
   3    -7783.29352863      -0.00001928     0.17D-03     0.39D-03     2     0       0.01      0.03    diag
   4    -7783.29353033      -0.00000169     0.32D-04     0.15D-03     3     0       0.00      0.03    diag
   5    -7783.29353034      -0.00000001     0.33D-05     0.15D-04     4     0       0.01      0.04    diag
   6    -7783.29353034      -0.00000000     0.21D-06     0.81D-06     5     0       0.01      0.05    diag
   7    -7783.29353034      -0.00000000     0.15D-07     0.33D-07     0     0       0.00      0.05    diag

 Final occupancy:  15  12

 !RHF STATE 1.1 Energy              -7783.293530341752
  RHF One-electron energy            -10632.5503648421    
  RHF Two-electron energy            2849.256834500312
  RHF Kinetic energy                 9196.151380433426
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.846364224376

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1329.08046     1  1  s    1.00000
    2.1     2.00000  -212.45340     1  2  s    1.00000
    3.1     2.00000   -45.95306     1  3  s    1.00000
    4.1     2.00000   -27.98922     1  1  d0   1.00000
    5.1     2.00000   -27.98922     1  1  d2+  0.99974
    6.1     2.00000   -27.98922     1  1  d2-  0.99973
    7.1     2.00000   -27.98922     1  1  d1+  0.99999
    8.1     2.00000   -27.98922     1  1  d1-  0.99992
    9.1     2.00000    -9.51069     1  4  s    0.99984
   10.1     2.00000    -3.43358     1  2  d0   1.00012
   11.1     2.00000    -3.43358     1  2  d1+  0.85093    1  2  d1-  0.52544
   12.1     2.00000    -3.43358     1  2  d1+ -0.52509    1  2  d1-  0.85053
   13.1     2.00000    -3.43358     1  2  d2- -0.29209    1  2  d2+  0.95597
   14.1     2.00000    -3.43358     1  2  d2-  0.95648    1  2  d2+  0.29196
   15.1     2.00000    -1.48951     1  5  s    1.00322
    1.2     2.00000  -190.49034     1  1  px   0.99983
    2.2     2.00000  -190.49034     1  1  py   0.99987
    3.2     2.00000  -190.49034     1  1  pz   0.99982
    4.2     2.00000   -38.69902     1  2  px   1.00000
    5.2     2.00000   -38.69902     1  2  py   0.99999
    6.2     2.00000   -38.69902     1  2  pz   0.99999
    7.2     2.00000    -7.08798     1  3  pz   1.00016
    8.2     2.00000    -7.08798     1  3  px   1.00016
    9.2     2.00000    -7.08798     1  3  py   1.00016
   10.2     2.00000    -0.86174     1  4  pz   1.01201
   11.2     2.00000    -0.86174     1  4  px   1.01201
   12.2     2.00000    -0.86174     1  4  py   1.01201


 HOMO     12.2    -0.861736 =     -23.4490eV
 LUMO     16.1    -0.127295 =      -3.4639eV
 LUMO-HOMO         0.734441 =      19.9852eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.50       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.49       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         5.56      0.08      5.26
 REAL TIME  *         7.47 SEC
 DISK USED  *        30.41 MB (local),      423.08 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (   15   12)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:      75 (   29   46)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.445D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.294D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.324D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.740D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.210D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.760D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.387D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.397D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.261D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.243D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.687D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.676D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.247D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.252D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.111D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 5 3 4 6 1 2   4 6 5 3 1 1 6 4 3 5   2 1 2 6 4 3 5 1 4 6   3 5 2 1 3 5 2 4 6 1
                                        6 4 5 3 2 6 4 5 3 2   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.253D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.219D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.259D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.207D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.207D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.397D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.397D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.696D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.843D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.622D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 1 2 3   1 2 3 2 1 1 2 3 3 1   2 9 7 810 5 4 6 3 1   210 8 7 9 6 5 4 1 2
                                        3 810 4 5 9 7 6 810   5 4 6 9 7 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  1295  ( 105 closed/active, 987 closed/virtual, 0 active/active, 203 active/virtual )
 Total number of variables:    1344
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0  -7783.36560602   -7783.36584665   -0.00024063    0.02073265 0.00000275 0.00000000  0.40E-01      0.70
   2    3    3    0  -7783.36584683   -7783.36584683   -0.00000000    0.00004383 0.00000000 0.00000000  0.36E-03      1.39

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.20E-08)
                       Final energy:  -7783.36584683
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -7783.421198913482
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.36117375
 One electron energy                        -10642.66641309
 Two electron energy                          2859.24521417
 Virial ratio                                    1.84635880
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -7783.358241770286
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.23085502
 One electron energy                        -10641.21685918
 Two electron energy                          2857.85861741
 Virial ratio                                    1.84636395
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -7783.358241770286
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.23085502
 One electron energy                        -10641.21685918
 Two electron energy                          2857.85861741
 Virial ratio                                    1.84636395
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -7783.358241770267
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.23085502
 One electron energy                        -10641.21685917
 Two electron energy                          2857.85861740
 Virial ratio                                    1.84636395
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -7783.358241770267
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.23085502
 One electron energy                        -10641.21685917
 Two electron energy                          2857.85861740
 Virial ratio                                    1.84636395
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -7783.358241770172
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.23085501
 One electron energy                        -10641.21685913
 Two electron energy                          2857.85861736
 Virial ratio                                    1.84636395
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -7783.348520055336
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.10325108
 One electron energy                        -10637.09360026
 Two electron energy                          2853.74508020
 Virial ratio                                    1.84637463
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     3.999710309571
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000288470548
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000000196333
 !MCSCF expec                      <5.1|LXLX|5.1>     0.998880986338
 !MCSCF expec                      <6.1|LXLX|6.1>     3.001118791499
 !MCSCF expec                      <7.1|LXLX|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000289650388
 !MCSCF expec                      <3.1|LYLY|3.1>     3.999710837536
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000375910
 !MCSCF expec                      <5.1|LYLY|5.1>     1.001119593869
 !MCSCF expec                      <6.1|LYLY|6.1>     2.998880784619
 !MCSCF expec                      <7.1|LYLY|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000000040040
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000691916
 !MCSCF expec                      <4.1|LZLZ|4.1>     3.999999427757
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.999999419793
 !MCSCF expec                      <6.1|LZLZ|6.1>     0.000000423882
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 5 3 4 1 6   2 3 5 4 1 4 3 2 1 1   5 6 2 6 4 3 5 1 4 6   3 5 2 1 3 5 6 2 4 1
                                        6 4 5 3 2 6 4 5 3 2   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 2 3 1 2   3 1 2 3 1 3 2 1 3 2   1 9 7 5 810 4 6 3 2   1 810 5 7 9 6 4 2 1
                                        3 510 8 7 9 6 410 8   5 6 9 7 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1328.92836     1  1  s    1.00000
    2.1     2.00000  -212.30105     1  2  s    1.00000
    3.1     2.00000   -45.80076     1  3  s    1.00000
    4.1     2.00000   -27.83692     1  1  d0   1.00000
    5.1     2.00000   -27.83692     1  1  d1-  1.00000
    6.1     2.00000   -27.83692     1  1  d2+  1.00000
    7.1     2.00000   -27.83692     1  1  d2-  1.00000
    8.1     2.00000   -27.83692     1  1  d1+  1.00000
    9.1     2.00000    -9.35855     1  4  s    0.99977
   10.1     2.00000    -3.28151     1  2  d1-  1.00017
   11.1     2.00000    -3.28151     1  2  d0   1.00017
   12.1     2.00000    -3.28151     1  2  d2-  1.00017
   13.1     2.00000    -3.28151     1  2  d2+  1.00017
   14.1     2.00000    -3.28151     1  2  d1+  1.00017
   15.1     2.00000    -1.33729     1  5  s    0.99625
   16.1     0.14286     0.03775     1  3  d1+  0.99125
   17.1     0.14286     0.03775     1  3  d2-  0.99125
   18.1     0.14286     0.03775     1  3  d0   0.99125
   19.1     0.14286    -0.01697     1  6  s    1.00342
   20.1     0.14286     0.01610     1  6  s    0.78190    1  8  s   -0.52280    1 11  s    1.83923
   21.1     0.14286     0.03775     1  3  d2+  0.99125
   22.1     0.14286     0.03775     1  3  d1-  0.99125
    1.2     2.00000  -190.33799     1  1  py   1.00000
    2.2     2.00000  -190.33799     1  1  px   1.00000
    3.2     2.00000  -190.33799     1  1  pz   1.00000
    4.2     2.00000   -38.54668     1  2  py   1.00000
    5.2     2.00000   -38.54668     1  2  pz   1.00000
    6.2     2.00000   -38.54668     1  2  px   1.00000
    7.2     2.00000    -6.93578     1  3  py   1.00009
    8.2     2.00000    -6.93578     1  3  pz   1.00009
    9.2     2.00000    -6.93578     1  3  px   1.00009
   10.2     2.00000    -0.71087     1  4  py   1.00191
   11.2     2.00000    -0.71087     1  4  pz   1.00191
   12.2     2.00000    -0.71087     1  4  px   1.00191
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 00a0000       -0.00000000      0.00005063     -0.00000796      0.00003096     -0.00032309      0.99999995     -0.00000000
 00000a0       -0.00000000     -0.00005686      0.00022627      0.00152986      0.99999875      0.00032305      0.00000000
 0a00000       -0.00000000     -0.00010473      0.00042363      0.99999873     -0.00152995     -0.00003144      0.00000000
 0000a00        0.00408034     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.99999168
 000a000        0.99999168     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00408034
 000000a        0.00000000      0.99995172      0.00982579      0.00010064      0.00005450     -0.00005054      0.00000000
 a000000       -0.00000000     -0.00982574      0.99995161     -0.00042498     -0.00022617      0.00000840      0.00000000
 
 Energy:    -7783.42119891  -7783.35824177  -7783.35824177  -7783.35824177  -7783.35824177  -7783.35824177  -7783.34852006
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       70.35       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.96      1.40      0.08      5.26
 REAL TIME  *         9.42 SEC
 DISK USED  *        71.27 MB (local),      913.31 MB (total)
 SF USED    *       103.97 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -7783.421199  -0.0
    -7783.358242   6.0
    -7783.358242   6.0
    -7783.358242   6.0
    -7783.358242   6.0
    -7783.358242   6.0
    -7783.348520  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 55
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:     7378 conf    22302 CSFs
 N-1 el internal:     2640 conf    10102 CSFs
 N-2 el internal:      650 conf     2938 CSFs

 Number of electrons in valence space:                     27
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:  13 (   7   6 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:      75 (  29  46 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.10 sec, npass=  1  Memory used:   1.50 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -7783.42119891
     2     -7783.35824177
     3     -7783.35824177
     4     -7783.35824177
     5     -7783.35824177
     6     -7783.35824177
     7     -7783.34852006

 Number of blocks in overlap matrix:  1209   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    1209
 Number of N-1 electron functions:   10102

 Number of internal configurations:                11130
 Number of singly external configurations:        379352
 Number of doubly external configurations:       1704219
 Total number of contracted configurations:      2094701
 Total number of uncontracted configurations:    4510716

 Diagonal Coupling coefficients finished.               Storage:   7114546 words, CPU-Time:      3.25 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1097762 words, CPU-time:      0.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -7783.42119891    -0.00000000    -0.32990728  0.14D-01  0.78D-01     5.04
    1     2     2     1.00000000     0.00000000 -7783.35824177     0.00000000    -0.32313719  0.12D-01  0.75D-01     5.04
    1     3     3     1.00000000     0.00000000 -7783.35824177    -0.00000000    -0.32313974  0.12D-01  0.75D-01     5.04
    1     4     4     1.00000000     0.00000000 -7783.35824177     0.00000000    -0.32313770  0.12D-01  0.75D-01     5.04
    1     5     5     1.00000000     0.00000000 -7783.35824177     0.00000000    -0.32314200  0.12D-01  0.75D-01     5.04
    1     6     6     1.00000000     0.00000000 -7783.35824177     0.00000000    -0.32312614  0.12D-01  0.75D-01     5.04
    1     7     7     1.00000000     0.00000000 -7783.34852006     0.00000000    -0.31577043  0.12D-01  0.69D-01     5.04
    2     1     1     1.07081012    -0.29064108 -7783.71183999    -0.29064108    -0.00498977  0.78D-03  0.87D-03    47.79
    2     2     2     1.06807650    -0.28659325 -7783.64483502    -0.28659325    -0.00464109  0.70D-03  0.80D-03    47.79
    2     3     3     1.06807724    -0.28659173 -7783.64483350    -0.28659173    -0.00464187  0.69D-03  0.80D-03    47.79
    2     4     4     1.06808438    -0.28659116 -7783.64483293    -0.28659116    -0.00464364  0.70D-03  0.80D-03    47.79
    2     5     5     1.06808363    -0.28658822 -7783.64482999    -0.28658822    -0.00464595  0.70D-03  0.80D-03    47.79
    2     6     6     1.06808272    -0.28658712 -7783.64482889    -0.28658712    -0.00464666  0.70D-03  0.80D-03    47.79
    2     7     7     1.06437048    -0.28335922 -7783.63187927    -0.28335922    -0.00436906  0.50D-03  0.70D-03    47.79
    3     1     1     1.07265202    -0.29580346 -7783.71700237    -0.00516238    -0.00009598  0.12D-04  0.21D-04    90.53
    3     2     2     1.07052019    -0.29141926 -7783.64966103    -0.00482601    -0.00008885  0.13D-04  0.19D-04    90.53
    3     3     3     1.07051989    -0.29141919 -7783.64966096    -0.00482746    -0.00008894  0.13D-04  0.19D-04    90.53
    3     4     4     1.07051799    -0.29141904 -7783.64966081    -0.00482788    -0.00008895  0.13D-04  0.19D-04    90.53
    3     5     5     1.07051749    -0.29141903 -7783.64966080    -0.00483082    -0.00008902  0.13D-04  0.19D-04    90.53
    3     6     6     1.07051838    -0.29141903 -7783.64966080    -0.00483191    -0.00008903  0.13D-04  0.19D-04    90.53
    3     7     7     1.06753879    -0.28791040 -7783.63643045    -0.00455118    -0.00008400  0.93D-05  0.16D-04    90.53
    4     1     1     1.07322662    -0.29590943 -7783.71710834    -0.00010597    -0.00000450  0.19D-05  0.65D-06   132.08
    4     2     2     1.07106755    -0.29151991 -7783.64976168    -0.00010065    -0.00000502  0.32D-05  0.63D-06   132.08
    4     3     3     1.07106763    -0.29151991 -7783.64976168    -0.00010072    -0.00000502  0.32D-05  0.63D-06   132.08
    4     4     4     1.07106750    -0.29151989 -7783.64976166    -0.00010085    -0.00000504  0.33D-05  0.63D-06   132.08
    4     5     5     1.07106728    -0.29151989 -7783.64976166    -0.00010085    -0.00000504  0.33D-05  0.63D-06   132.08
    4     6     6     1.07106695    -0.29151988 -7783.64976165    -0.00010085    -0.00000504  0.33D-05  0.63D-06   132.08
    4     7     7     1.06788304    -0.28800260 -7783.63652266    -0.00009221    -0.00000385  0.12D-05  0.65D-06   132.08
    5     1     1     1.07339563    -0.29591462 -7783.71711353    -0.00000519    -0.00000018  0.34D-07  0.35D-07   173.77
    5     2     2     1.07128289    -0.29152610 -7783.64976787    -0.00000619    -0.00000033  0.12D-06  0.65D-07   173.77
    5     3     3     1.07128295    -0.29152610 -7783.64976787    -0.00000619    -0.00000033  0.12D-06  0.65D-07   173.77
    5     4     4     1.07128295    -0.29152610 -7783.64976787    -0.00000621    -0.00000033  0.12D-06  0.65D-07   173.77
    5     5     5     1.07128299    -0.29152610 -7783.64976787    -0.00000621    -0.00000033  0.12D-06  0.65D-07   173.77
    5     6     6     1.07128302    -0.29152610 -7783.64976787    -0.00000622    -0.00000034  0.12D-06  0.65D-07   173.77
    5     7     7     1.06800349    -0.28800701 -7783.63652707    -0.00000441    -0.00000016  0.28D-07  0.31D-07   173.77
    6     1     1     1.07341517    -0.29591483 -7783.71711374    -0.00000021    -0.00000001  0.13D-08  0.88D-09   215.81
    6     2     2     1.07131440    -0.29152652 -7783.64976829    -0.00000041    -0.00000002  0.53D-08  0.35D-08   215.81
    6     3     3     1.07131442    -0.29152652 -7783.64976829    -0.00000041    -0.00000002  0.53D-08  0.35D-08   215.81
    6     4     4     1.07131441    -0.29152652 -7783.64976829    -0.00000041    -0.00000002  0.53D-08  0.35D-08   215.81
    6     5     5     1.07131440    -0.29152652 -7783.64976829    -0.00000041    -0.00000002  0.53D-08  0.35D-08   215.81
    6     6     6     1.07131442    -0.29152652 -7783.64976829    -0.00000041    -0.00000002  0.53D-08  0.35D-08   215.81
    6     7     7     1.06801627    -0.28800720 -7783.63652725    -0.00000018    -0.00000000  0.14D-08  0.78D-09   215.81


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   6.0%
 S   2.3%  29.4%
 P   0.7%  32.4%  10.3%

 Initialization:   1.6%
 Other:           17.3%

 Total CPU:      215.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220/00000222222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.9658890   0.0000000   0.0000000
 2222222/000000222222          -0.0000000   0.9658890   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2222222000000/222222           0.0000000   0.0000000   0.0000000   0.9658890  -0.0000000   0.0000000  -0.0000000
 222222200000/0222222          -0.0000000  -0.0000000   0.9658849   0.0000000   0.0000000   0.0028141   0.0000000
 222222200/0000222222          -0.0000000  -0.0000000  -0.0028141  -0.0000000   0.0000000   0.9658849  -0.0000000
 22222220000/00222222           0.0542317  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.9656658
 2222222000/000222222           0.9633806  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0566886

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.963594    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.050300
 2          -0.000000    0.000000    0.965889    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.000000    0.000000    0.965885   -0.002814   -0.000000
 4          -0.000000    0.965889    0.000000   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.965889    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.002814    0.965885    0.000000
 7          -0.052748   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.965889

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.964905    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.001161
 2           0.000000    0.965889   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.965889    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.965889   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.965889    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.965889   -0.000000
 7          -0.001161    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.967328


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96359388 (fixed)   0.96490584 (relaxed)   0.96490514 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00060584   -0.00107791   -0.23717300
 Singles      0.01080996   -0.02364497   -0.02499329
 Pairs        0.06264968   -0.01770980   -0.03374854
 Total        1.07406548   -0.04243268   -0.29591483
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.42099220
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.30162634
 One electron energy               -10641.16132116
 Two electron energy                 2857.44420742
 Virial quotient                       -0.84648850
 Correlation energy                    -0.29612154
 !MRCI STATE 1.1 Energy             -7783.717113738864

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.73904612 (Davidson, fixed reference)
 Cluster corrected energies         -7783.73904566 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.73904612 (Davidson, rotated reference)

 Cluster corrected energies         -7783.73870307 (Pople, fixed reference)
 Cluster corrected energies         -7783.73870259 (Pople, relaxed reference)
 Cluster corrected energies         -7783.73870307 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96588903 (fixed)   0.96588903 (relaxed)   0.96588903 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052649   -0.00092682   -0.25170737
 Singles      0.00974797   -0.02188030   -0.02306464
 Pairs        0.06160398    0.00000000   -0.01675451
 Total        1.07187844   -0.02280712   -0.29152652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35824177
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.19370050
 One electron energy               -10639.68648890
 Two electron energy                 2856.03672061
 Virial quotient                       -0.84649112
 Correlation energy                    -0.29152652
 !MRCI STATE 2.1 Energy             -7783.649768285827

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.67072276 (Davidson, fixed reference)
 Cluster corrected energies         -7783.67072276 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.67072276 (Davidson, rotated reference)

 Cluster corrected energies         -7783.67035492 (Pople, fixed reference)
 Cluster corrected energies         -7783.67035492 (Pople, relaxed reference)
 Cluster corrected energies         -7783.67035492 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96588492 (fixed)   0.96588902 (relaxed)   0.96588902 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052649   -0.00092682   -0.25170733
 Singles      0.00974800   -0.02188033   -0.02306464
 Pairs        0.06160397   -0.00000000   -0.01675454
 Total        1.07187845   -0.02280716   -0.29152652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35824177
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.19370056
 One electron energy               -10639.68648956
 Two electron energy                 2856.03672127
 Virial quotient                       -0.84649112
 Correlation energy                    -0.29152652
 !MRCI STATE 3.1 Energy             -7783.649768285814

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.67072276 (Davidson, fixed reference)
 Cluster corrected energies         -7783.67072276 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.67072276 (Davidson, rotated reference)

 Cluster corrected energies         -7783.67035492 (Pople, fixed reference)
 Cluster corrected energies         -7783.67035492 (Pople, relaxed reference)
 Cluster corrected energies         -7783.67035492 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96588902 (fixed)   0.96588902 (relaxed)   0.96588902 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052649   -0.00092682   -0.25170735
 Singles      0.00974800   -0.02188032   -0.02306464
 Pairs        0.06160396    0.00000000   -0.01675452
 Total        1.07187845   -0.02280714   -0.29152652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35824177
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.19370588
 One electron energy               -10639.68649791
 Two electron energy                 2856.03672962
 Virial quotient                       -0.84649111
 Correlation energy                    -0.29152652
 !MRCI STATE 4.1 Energy             -7783.649768285773

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.67072276 (Davidson, fixed reference)
 Cluster corrected energies         -7783.67072276 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.67072276 (Davidson, rotated reference)

 Cluster corrected energies         -7783.67035492 (Pople, fixed reference)
 Cluster corrected energies         -7783.67035492 (Pople, relaxed reference)
 Cluster corrected energies         -7783.67035492 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96588903 (fixed)   0.96588903 (relaxed)   0.96588903 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052649   -0.00092682   -0.25170735
 Singles      0.00974798   -0.02188032   -0.02306464
 Pairs        0.06160397    0.00000000   -0.01675452
 Total        1.07187843   -0.02280714   -0.29152652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35824177
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.19369986
 One electron energy               -10639.68648744
 Two electron energy                 2856.03671915
 Virial quotient                       -0.84649112
 Correlation energy                    -0.29152652
 !MRCI STATE 5.1 Energy             -7783.649768285766

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.67072275 (Davidson, fixed reference)
 Cluster corrected energies         -7783.67072275 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.67072275 (Davidson, rotated reference)

 Cluster corrected energies         -7783.67035492 (Pople, fixed reference)
 Cluster corrected energies         -7783.67035492 (Pople, relaxed reference)
 Cluster corrected energies         -7783.67035492 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96588492 (fixed)   0.96588902 (relaxed)   0.96588902 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052649   -0.00092682   -0.25170733
 Singles      0.00974800   -0.02188033   -0.02306464
 Pairs        0.06160397   -0.00000000   -0.01675454
 Total        1.07187845   -0.02280716   -0.29152652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35824177
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.19370071
 One electron energy               -10639.68649032
 Two electron energy                 2856.03672203
 Virial quotient                       -0.84649111
 Correlation energy                    -0.29152652
 !MRCI STATE 6.1 Energy             -7783.649768285661

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.67072276 (Davidson, fixed reference)
 Cluster corrected energies         -7783.67072276 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.67072276 (Davidson, rotated reference)

 Cluster corrected energies         -7783.67035492 (Pople, fixed reference)
 Cluster corrected energies         -7783.67035492 (Pople, relaxed reference)
 Cluster corrected energies         -7783.67035492 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96588911 (fixed)   0.96732834 (relaxed)   0.96732764 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00063325   -0.00112108   -0.00159452
 Singles      0.00934743   -0.02261567   -0.02368075
 Pairs        0.05871192   -0.26386985   -0.26273193
 Total        1.06869260   -0.28760661   -0.28800720
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.34872677
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.15036012
 One electron energy               -10635.56321829
 Two electron energy                 2851.92669104
 Virial quotient                       -0.84649366
 Correlation energy                    -0.28780048
 !MRCI STATE 7.1 Energy             -7783.636527251819

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.65629701 (Davidson, fixed reference)
 Cluster corrected energies         -7783.65629657 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.65629701 (Davidson, rotated reference)

 Cluster corrected energies         -7783.65589512 (Pople, fixed reference)
 Cluster corrected energies         -7783.65589466 (Pople, relaxed reference)
 Cluster corrected energies         -7783.65589512 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       70.35       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      116.24       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       254.19    247.22      1.40      0.08      5.26
 REAL TIME  *       263.12 SEC
 DISK USED  *       186.69 MB (local),        2.24 GB (total)
 SF USED    *      1019.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -7783.73904612  AU                              
 SETTING HLSDIAG(2)     =     -7783.67072276  AU                              
 SETTING HLSDIAG(3)     =     -7783.67072276  AU                              
 SETTING HLSDIAG(4)     =     -7783.67072276  AU                              
 SETTING HLSDIAG(5)     =     -7783.67072275  AU                              
 SETTING HLSDIAG(6)     =     -7783.67072276  AU                              
 SETTING HLSDIAG(7)     =     -7783.65629701  AU                              


         HLSDIAG
    -7783.739046
    -7783.670723
    -7783.670723
    -7783.670723
    -7783.670723
    -7783.670723
    -7783.656297
                                                  


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

 Time for Seward_LS:      68.57 sec

       11004168. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2693 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     68.57 sec, REAL time:     68.87 sec


 SORTLS1 read    11009864. and wrote    11009864. SO integrals in    72 records. CPU time:      0.09 sec, REAL time:      0.16 sec
 SORTLS2 read    11009864. and wrote    53919399. SO integrals in    36 records. CPU time:      0.06 sec, REAL time:      0.09 sec

 FILE SIZES: FILE 1:   250.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   250.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:  -7783.717114  -7783.649768  -7783.649768  -7783.649768  -7783.649768  -7783.649768  -7783.636527
 Replaced energies:  -7783.739046  -7783.670723  -7783.670723  -7783.670723  -7783.670723  -7783.670723  -7783.656297



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -7783.73904612

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.00   14995.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -10.69
                           -0.00      -0.00      -0.00     -10.64      -0.00       0.00      -0.00       0.00       0.00       0.00

    3   3.1  0.5  0.5       0.00       0.00   14995.24       0.00       0.00       0.00       0.00      -0.00      10.69       0.00
                           -0.00       0.00       0.00      -0.00     -21.28       0.00      -0.00       0.00      -0.00       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   14995.25       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      10.64       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     -10.59

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   14995.25       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      21.28       0.00       0.00       0.06       0.00       0.00     -10.64      -0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   14995.24       0.00       0.00     -18.40       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.06      -0.00       0.00       0.00      -0.00       0.00

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   18161.33       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

    8   1.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

    9   2.1  0.5 -0.5      -0.00       0.00      10.69       0.00       0.00     -18.40       0.00       0.00   14995.25       0.00
                            0.00      -0.00       0.00       0.00      10.64       0.00       0.00       0.00       0.00       0.00

   10   3.1  0.5 -0.5       0.00     -10.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00   14995.24
                            0.00      -0.00      -0.00      10.59       0.00      -0.00       0.00       0.00      -0.00      -0.00

   11   4.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00      10.64       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -10.59       0.00      -0.00     -18.46      -0.00       0.00     -10.64      -0.00

   12   5.1  0.5 -0.5      -0.00      -0.00      -0.00     -10.64       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00     -10.64      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     -21.28

   13   6.1  0.5 -0.5      -0.00      18.40      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      18.46       0.00      -0.00       0.00       0.00       0.00       0.00

   14   7.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00

    2   2.1  0.5  0.5      -0.00      -0.00      18.40      -0.00
                            0.00      10.64       0.00       0.00

    3   3.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00
                           10.59       0.00      -0.00       0.00

    4   4.1  0.5  0.5      -0.00     -10.64      -0.00      -0.00
                           -0.00      -0.00     -18.46      -0.00

    5   5.1  0.5  0.5      10.64       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00
                           18.46       0.00       0.00       0.00

    7   7.1  0.5  0.5       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           10.64       0.00      -0.00       0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      21.28      -0.00       0.00

   11   4.1  0.5 -0.5   14995.25       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

   12   5.1  0.5 -0.5       0.00   14995.25       0.00       0.00
                           -0.00      -0.00      -0.06      -0.00

   13   6.1  0.5 -0.5       0.00       0.00   14995.24       0.00
                            0.00       0.06       0.00      -0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   18161.33
                           -0.00       0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -7783.73904612     0.00000000        0.00      0.00000000        0.00      0.0000
     2 -7783.73904612     0.00000000        0.00      0.00000000        0.00      0.0000
     3 -7783.67086821     0.06817791    14963.32      0.06817791    14963.32      1.8552
     4 -7783.67086821     0.06817791    14963.32      0.06817791    14963.32      1.8552
     5 -7783.67086820     0.06817792    14963.32      0.06817792    14963.32      1.8552
     6 -7783.67086820     0.06817792    14963.32      0.06817792    14963.32      1.8552
     7 -7783.67062580     0.06842032    15016.52      0.06842032    15016.52      1.8618
     8 -7783.67062580     0.06842032    15016.52      0.06842032    15016.52      1.8618
     9 -7783.67062579     0.06842033    15016.53      0.06842033    15016.53      1.8618
    10 -7783.67062579     0.06842033    15016.53      0.06842033    15016.53      1.8618
    11 -7783.67062578     0.06842034    15016.53      0.06842034    15016.53      1.8618
    12 -7783.67062578     0.06842034    15016.53      0.06842034    15016.53      1.8618
    13 -7783.65629701     0.08274911    18161.33      0.08274911    18161.33      2.2517
    14 -7783.65629701     0.08274911    18161.33      0.08274911    18161.33      2.2517


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5  -0.000000000   1.000000000  -0.000000014  -0.000000013   0.000000006   0.000000021   0.000000002   0.000000017
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.000000008  -0.000000000   0.389560384  -0.412407338   0.224563931  -0.059968072  -0.381399403   0.054168446
                        -0.000000004   0.000000000  -0.055225396   0.058464300   0.128422242  -0.034294155  -0.041718199   0.005925046

    3    3.1  0.5  0.5   0.000000000   0.000000000  -0.041035833  -0.038762493  -0.162522102  -0.608600532   0.099790639   0.702624720
                        -0.000000000   0.000000000  -0.000000008   0.000000018  -0.000000012   0.000000007   0.000000010  -0.000000005

    4    4.1  0.5  0.5  -0.000000013   0.000000000  -0.049960650   0.052890762  -0.173790986   0.046409556   0.055593919  -0.007895755
                         0.000000027   0.000000000  -0.352422719   0.373091630   0.303897446  -0.081153491  -0.508255159   0.072185200

    5    5.1  0.5  0.5  -0.000000000   0.000000000  -0.000000008   0.000000018  -0.000000012   0.000000007  -0.000000010   0.000000001
                        -0.000000000  -0.000000021   0.039698957   0.037499679   0.162564494   0.608759279   0.036281290   0.255456132

    6    6.1  0.5  0.5  -0.000000000   0.000000000   0.457944208   0.432574548  -0.014564405  -0.054539635   0.015985509   0.112553776
                        -0.000000000   0.000000000   0.000000011  -0.000000021   0.000000008  -0.000000008  -0.000000002   0.000000003

    7    7.1  0.5  0.5   0.000000000   0.000000000   0.000000003   0.000000002  -0.000000013  -0.000000047  -0.000000005  -0.000000037
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    8    1.1  0.5 -0.5   0.901236124   0.000000000   0.000000013  -0.000000014  -0.000000018   0.000000005   0.000000017  -0.000000002
                         0.433328338   0.000000000  -0.000000002   0.000000002  -0.000000010   0.000000003   0.000000002  -0.000000000

    9    2.1  0.5 -0.5   0.000000000   0.000000009   0.416530775   0.393455381   0.069081537   0.258691382   0.054491529   0.383674227
                        -0.000000000  -0.000000000   0.000000014  -0.000000027   0.000000013  -0.000000010   0.000000001  -0.000000006

   10    3.1  0.5 -0.5   0.000000000  -0.000000000   0.038378768  -0.040629599   0.528311878  -0.141081640   0.698458822  -0.099198977
                         0.000000000  -0.000000000  -0.005440688   0.005759800   0.302127734  -0.080680881   0.076398761  -0.010850563

   11    4.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000006   0.000000009  -0.000000000   0.000000003  -0.000000001  -0.000000003
                        -0.000000000   0.000000030   0.376821970   0.355946400  -0.093486555  -0.350081368  -0.072615743  -0.511286602

   12    5.1  0.5 -0.5  -0.000000009   0.000000000   0.005263440  -0.005572156  -0.302206541   0.080701925   0.027776608  -0.003944978
                         0.000000019  -0.000000000   0.037128455  -0.039305958   0.528449683  -0.141118440  -0.253941519   0.036066178

   13    6.1  0.5 -0.5   0.000000000   0.000000000  -0.428292290   0.453410800   0.047344585  -0.012643015   0.111886440  -0.015890729
                         0.000000000  -0.000000000   0.060716171  -0.064277089   0.027075119  -0.007230218   0.012238349  -0.001738160

   14    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000002   0.000000003   0.000000041  -0.000000011  -0.000000037   0.000000005
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000023  -0.000000006  -0.000000004   0.000000001


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5  -0.000000005   0.000000001   0.000000001  -0.000000015   0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.000021728  -0.000129354   0.666602663   0.056283713   0.000000000  -0.000000011
                         0.000915445   0.005447956  -0.047462457  -0.004007430  -0.000000000  -0.000000016

    3    3.1  0.5  0.5   0.287030992  -0.048230865   0.009082146  -0.107565460   0.000000001  -0.000000000
                        -0.000000003  -0.000000005   0.000000006  -0.000000001   0.000000000   0.000000000

    4    4.1  0.5  0.5  -0.095641093  -0.569178347  -0.000351272  -0.000029653   0.000000000   0.000000027
                        -0.002270773  -0.013513881  -0.004933469  -0.000416557   0.000000000  -0.000000019

    5    5.1  0.5  0.5   0.000000006   0.000000015  -0.000000009  -0.000000006  -0.000000000  -0.000000000
                         0.573009485  -0.096284866   0.037230533  -0.440944176   0.000000051  -0.000000000

    6    6.1  0.5  0.5  -0.487480327   0.081913075   0.049253366  -0.583337865   0.000000000  -0.000000000
                         0.000000000   0.000000006  -0.000000006   0.000000003   0.000000000   0.000000000

    7    7.1  0.5  0.5  -0.000000010   0.000000002  -0.000000001   0.000000010   0.999996716  -0.000995849
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000089718   0.002359871

    8    1.1  0.5 -0.5   0.000000000   0.000000000   0.000000015   0.000000001  -0.000000000   0.000000000
                        -0.000000001  -0.000000005  -0.000000001  -0.000000000  -0.000000000   0.000000000

    9    2.1  0.5 -0.5  -0.005449493   0.000915703  -0.056426198   0.668290203   0.000000019  -0.000000000
                         0.000000004   0.000000006   0.000000001  -0.000000009   0.000000000   0.000000000

   10    3.1  0.5 -0.5  -0.001144806  -0.006812997   0.107293841   0.009059212  -0.000000000   0.000000000
                         0.048217277   0.286950124  -0.007639380  -0.000645026   0.000000000   0.000000000

   11    4.1  0.5 -0.5   0.000000004   0.000000013  -0.000000006  -0.000000006   0.000000000   0.000000000
                         0.569338753  -0.095668046  -0.000417612   0.004945959  -0.000000033   0.000000000

   12    5.1  0.5 -0.5   0.096257739   0.572848044  -0.031316176  -0.002644148   0.000000000   0.000000042
                         0.002285410   0.013601013  -0.439830722  -0.037136521   0.000000000  -0.000000029

   13    6.1  0.5 -0.5   0.001944291   0.011570877   0.581864843   0.049128993  -0.000000000   0.000000000
                        -0.081889997  -0.487342985  -0.041429085  -0.003498005   0.000000000   0.000000000

   14    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000010  -0.000000001  -0.001382400   0.565857810
                        -0.000000002  -0.000000010   0.000000001   0.000000000   0.002156311   0.824498865


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  15.481%  17.350%   6.692%   0.477%  14.721%   0.297%   0.000%   0.003%
    3    3.1  0.5  0.5   0.000%   0.000%   0.168%   0.150%   2.641%  37.039%   0.996%  49.368%   8.239%   0.233%
    4    4.1  0.5  0.5   0.000%   0.000%  12.670%  14.199%  12.256%   0.874%  26.141%   0.527%   0.915%  32.415%
    5    5.1  0.5  0.5   0.000%   0.000%   0.158%   0.141%   2.643%  37.059%   0.132%   6.526%  32.834%   0.927%
    6    6.1  0.5  0.5   0.000%   0.000%  20.971%  18.712%   0.021%   0.297%   0.026%   1.267%  23.764%   0.671%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%  17.350%  15.481%   0.477%   6.692%   0.297%  14.721%   0.003%   0.000%
   10    3.1  0.5 -0.5   0.000%   0.000%   0.150%   0.168%  37.039%   2.641%  49.368%   0.996%   0.233%   8.239%
   11    4.1  0.5 -0.5   0.000%   0.000%  14.199%  12.670%   0.874%  12.256%   0.527%  26.141%  32.415%   0.915%
   12    5.1  0.5 -0.5   0.000%   0.000%   0.141%   0.158%  37.059%   2.643%   6.526%   0.132%   0.927%  32.834%
   13    6.1  0.5 -0.5   0.000%   0.000%  18.712%  20.971%   0.297%   0.021%   1.267%   0.026%   0.671%  23.764%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5  44.661%   0.318%   0.000%   0.000%
    3    3.1  0.5  0.5   0.008%   1.157%   0.000%   0.000%
    4    4.1  0.5  0.5   0.002%   0.000%   0.000%   0.000%
    5    5.1  0.5  0.5   0.139%  19.443%   0.000%   0.000%
    6    6.1  0.5  0.5   0.243%  34.028%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%  99.999%   0.001%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.318%  44.661%   0.000%   0.000%
   10    3.1  0.5 -0.5   1.157%   0.008%   0.000%   0.000%
   11    4.1  0.5 -0.5   0.000%   0.002%   0.000%   0.000%
   12    5.1  0.5 -0.5  19.443%   0.139%   0.000%   0.000%
   13    6.1  0.5 -0.5  34.028%   0.243%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.001%  99.999%


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
              1      24      238.73       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      116.24       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1051.12    796.91    247.22      1.40      0.08      5.26
 REAL TIME  *      1073.05 SEC
 DISK USED  *       186.76 MB (local),        2.88 GB (total)
 SF USED    *      1019.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -7783.656297014641

              CI           MULTI         RHF-SCF
  -7783.63652725  -7783.34852006  -7783.29353034
 **********************************************************************************************************************************
 Molpro calculation terminated
