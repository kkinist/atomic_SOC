
 Working directory              : /wrk/irikura/molpro.N9zm5xoqqp/
 Global scratch directory       : /wrk/irikura/molpro.N9zm5xoqqp/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.N9zm5xoqqp/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=12
 NTRIP=16
 
                                                                                 ! active space (2/10)
 {multi
     closed,15,12
     occ,22,15
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,9,9
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5101.2,5103.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ba SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 18-Apr-24          TIME: 13:57:00  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
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

 Library entry BA     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     F aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  BA     56.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   56
 NUMBER OF PRIMITIVE AOS:         294
 NUMBER OF SYMMETRY AOS:          256
 NUMBER OF CONTRACTIONS:          109   (   51Ag  +   58Au  )
 NUMBER OF INNER CORE ORBITALS:    23   (   14Ag  +    9Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     23.593 MB (compressed) written to integral file ( 14.4%)

     Node minimum: 0.262 MB, node maximum: 3.670 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     759972.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     759972      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    20698825. AND WROTE      158286. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     1919742. AND WROTE     9150775. INTEGRALS IN    156 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      758964.  Node maximum:      765474. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.442E-03 0.170E-02 0.170E-02 0.170E-02 0.170E-02 0.170E-02 0.228E-02 0.222E-01
         2 0.132E-02 0.132E-02 0.132E-02 0.674E-02 0.674E-02 0.674E-02 0.690E-01 0.690E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.02      3.84
 REAL TIME  *         4.63 SEC
 DISK USED  *        29.73 MB (local),      415.12 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99670480   -8131.99670480     0.00D+00     0.19D+00     0     0       0.02      0.02    start
   2    -8131.99670480      -0.00000000     0.85D-06     0.19D-04     1     0       0.01      0.03    diag
   3    -8131.99670480      -0.00000000     0.14D-06     0.84D-05     2     0       0.01      0.04    diag
   4    -8131.99670480      -0.00000000     0.62D-07     0.40D-05     3     0       0.00      0.04    diag
   5    -8131.99670480      -0.00000000     0.32D-07     0.50D-05     4     0       0.01      0.05    diag
   6    -8131.99670480       0.00000000     0.49D-08     0.13D-06     5     0       0.00      0.05    diag
   7    -8131.99670480      -0.00000000     0.21D-08     0.18D-06     0     0       0.01      0.06    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.996704798137
  RHF One-electron energy            -11100.0286158105    
  RHF Two-electron energy            2968.031911012387
  RHF Kinetic energy                 9672.733921040481
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.840713367201

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.74847     1  1  s    1.00000
    2.1     2.00000  -222.46064     1  2  s    1.00000
    3.1     2.00000   -48.63407     1  3  s    1.00000
    4.1     2.00000   -29.94645     1  1  d1-  0.99987
    5.1     2.00000   -29.94645     1  1  d1+  0.99987
    6.1     2.00000   -29.94645     1  1  d2+  0.99958
    7.1     2.00000   -29.94645     1  1  d2-  0.99960
    8.1     2.00000   -29.94645     1  1  d0   1.00000
    9.1     2.00000   -10.25509     1  4  s    1.00008
   10.1     2.00000    -3.85433     1  2  d2-  0.99723
   11.1     2.00000    -3.85433     1  2  d2+  0.99654
   12.1     2.00000    -3.85433     1  2  d1-  0.99988
   13.1     2.00000    -3.85433     1  2  d1+  0.99995
   14.1     2.00000    -3.85433     1  2  d0   0.99937
   15.1     2.00000    -1.60335     1  5  s    0.99881
   16.1     2.00000    -0.16308     1  6  s    1.00172
    1.2     2.00000  -199.39477     1  1  pz   0.99981
    2.2     2.00000  -199.39477     1  1  px   0.99872
    3.2     2.00000  -199.39477     1  1  py   0.99880
    4.2     2.00000   -41.04464     1  2  pz   1.00000
    5.2     2.00000   -41.04464     1  2  px   0.99956
    6.2     2.00000   -41.04464     1  2  py   0.99956
    7.2     2.00000    -7.69922     1  3  pz   0.99997
    8.2     2.00000    -7.69922     1  3  py   0.99997
    9.2     2.00000    -7.69922     1  3  px   0.99998
   10.2     2.00000    -0.89930     1  4  pz   0.99992
   11.2     2.00000    -0.89930     1  4  py   0.99992
   12.2     2.00000    -0.89930     1  4  px   0.99992


 HOMO     16.1    -0.163084 =      -4.4378eV
 LUMO     13.2     0.008069 =       0.2196eV
 LUMO-HOMO         0.171153 =       4.6573eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        2.73       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.10      0.08      3.84
 REAL TIME  *         4.73 SEC
 DISK USED  *        32.55 MB (local),      448.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (  15  12 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.213D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.221D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.362D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.323D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.742D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.204D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.101D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.364D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.285D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.287D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 3   5 6 4 2 1 1 1 5 3 6   4 2 5 3 6 4 2 1 6 4   5 3 2 1 6 4 5 3 2 1
                                        6 4 2 5 3 2 4 6 5 3   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.259D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.601D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.554D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.196D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.287D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.304D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.158D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.158D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.206D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.653D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.384D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.384D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 2 1 3   2 1 1 2 3 1 2 3 1 2   3 610 8 4 5 7 910 8   4 5 6 9 7 1 2 3 6 7
                                        9 5 410 8 3 2 1 7 9  10 8 5 4 6 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  1424  ( 141 closed/active, 951 closed/virtual, 0 active/active, 332 active/virtual )
 Total number of variables:    2504
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   24    5  -8131.82037969   -8131.94378988   -0.12341019    0.05968126 0.00003262 0.00000000  0.23E+01      1.48
   2    8   14    0  -8131.92188002   -8131.92764124   -0.00576122    0.05293998 0.00007265 0.00000000  0.38E+00      2.81
   3   10   16    0  -8131.92769037   -8131.92769369   -0.00000333    0.00100171 0.00000008 0.00000000  0.87E-02      4.19
   4    4    8    0  -8131.92769370   -8131.92769370   -0.00000000    0.00000171 0.00000001 0.00000000  0.19E-04      5.07

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.73E-09)
                       Final energy:  -8131.92769370
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.017637318705
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.25694661
 One electron energy                        -11098.70337458
 Two electron energy                          2966.68573726
 Virial ratio                                    1.84075699
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -8131.956347499606
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.46403651
 One electron energy                        -11101.25010127
 Two electron energy                          2969.29375377
 Virial ratio                                    1.84073265
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -8131.956347499594
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.46403651
 One electron energy                        -11101.25010127
 Two electron energy                          2969.29375377
 Virial ratio                                    1.84073265
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -8131.956347499580
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.46403651
 One electron energy                        -11101.25010127
 Two electron energy                          2969.29375377
 Virial ratio                                    1.84073265
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -8131.956347499578
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.46403650
 One electron energy                        -11101.25010127
 Two electron energy                          2969.29375377
 Virial ratio                                    1.84073265
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -8131.956347499558
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.46403650
 One electron energy                        -11101.25010126
 Two electron energy                          2969.29375376
 Virial ratio                                    1.84073265
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -8131.902243717708
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64832534
 One electron energy                        -11103.11349256
 Two electron energy                          2971.21124885
 Virial ratio                                    1.84071104
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -8131.902243717688
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64832534
 One electron energy                        -11103.11349256
 Two electron energy                          2971.21124885
 Virial ratio                                    1.84071104
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -8131.902243717678
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64832534
 One electron energy                        -11103.11349257
 Two electron energy                          2971.21124886
 Virial ratio                                    1.84071104
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -8131.902243717662
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64832534
 One electron energy                        -11103.11349257
 Two electron energy                          2971.21124886
 Virial ratio                                    1.84071104
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy            -8131.902243717660
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64832534
 One electron energy                        -11103.11349257
 Two electron energy                          2971.21124886
 Virial ratio                                    1.84071104
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy            -8131.894867647423
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.29194703
 One electron energy                        -11097.23024050
 Two electron energy                          2965.33537285
 Virial ratio                                    1.84074125
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.963112035167
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54015175
 One electron energy                        -11101.98781010
 Two electron energy                          2970.02469806
 Virial ratio                                    1.84072674
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.963112035150
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54015175
 One electron energy                        -11101.98781010
 Two electron energy                          2970.02469806
 Virial ratio                                    1.84072674
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.963112035148
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54015175
 One electron energy                        -11101.98781010
 Two electron energy                          2970.02469806
 Virial ratio                                    1.84072674
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.963112035142
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54015175
 One electron energy                        -11101.98781009
 Two electron energy                          2970.02469806
 Virial ratio                                    1.84072674
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.963112035117
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54015175
 One electron energy                        -11101.98781009
 Two electron energy                          2970.02469806
 Virial ratio                                    1.84072674
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.906647920996
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.85451561
 One electron energy                        -11105.42573678
 Two electron energy                          2973.51908886
 Virial ratio                                    1.84069358
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.906647920991
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.85451561
 One electron energy                        -11105.42573679
 Two electron energy                          2973.51908887
 Virial ratio                                    1.84069358
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.906647920988
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.85451561
 One electron energy                        -11105.42573679
 Two electron energy                          2973.51908886
 Virial ratio                                    1.84069358
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.906647920983
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.85451561
 One electron energy                        -11105.42573678
 Two electron energy                          2973.51908886
 Virial ratio                                    1.84069358
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.906647920972
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.85451561
 One electron energy                        -11105.42573678
 Two electron energy                          2973.51908886
 Virial ratio                                    1.84069358
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.906647920950
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.85451561
 One electron energy                        -11105.42573679
 Two electron energy                          2973.51908886
 Virial ratio                                    1.84069358
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.906647920947
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.85451561
 One electron energy                        -11105.42573679
 Two electron energy                          2973.51908887
 Virial ratio                                    1.84069358
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.902545583929
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.57326509
 One electron energy                        -11102.28297809
 Two electron energy                          2970.38043251
 Virial ratio                                    1.84071760
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.902545583924
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.57326509
 One electron energy                        -11102.28297809
 Two electron energy                          2970.38043251
 Virial ratio                                    1.84071760
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.902545583912
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.57326509
 One electron energy                        -11102.28297808
 Two electron energy                          2970.38043249
 Virial ratio                                    1.84071760
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy            -8131.900230057724
 Nuclear energy                                  0.00000000
 Kinetic energy                               9671.88028045
 One electron energy                        -11092.51707669
 Two electron energy                          2960.61684663
 Virial ratio                                    1.84077759
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.986168890597
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999994153845
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000033379613
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000003055395
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.013800520550
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.689010540524
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999997865113
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     3.310991108474
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.999009662877
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000990823013
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999999652990
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.965878889676
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000231481779
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.033898299773
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999991675783
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.000261546066
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     5.985892037772
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.849119685253
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.551096578308
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.013739074639
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.153275308920
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     8.446615769043
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000046350336
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999954401365
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999248299
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.013899594355
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000001978503
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000003977363
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999985248422
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.986109201357
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.347450491484
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000004470455
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     2.652544876999
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.000990621137
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.999009539926
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999445473
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.033663646829
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999763298962
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.966545393678
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000028215058
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.999950749205
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     6.013625033951
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.068953830626
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.450247972313
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.986272863612
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     8.929132901923
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     2.551816648370
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.999954410451
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000046192637
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999396913
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999931515048
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000003867652
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999962643024
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000011696183
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000090278093
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     3.963538967993
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     3.999997664433
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.036464014527
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.999999715987
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.999999637061
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000901537
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000457463496
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000005219259
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999556306549
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999980109159
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999787704729
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000482928277
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     8.081926484121
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.998655449379
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.999988061748
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.917591789157
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.001567582587
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999239213
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999405999
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000001354788
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     6.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     6.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     6.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>    -0.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.70563     1  1  s    1.00000
    2.1     2.00000  -222.41513     1  2  s    1.00000
    3.1     2.00000   -48.58856     1  3  s    1.00004
    4.1     2.00000   -29.90185     1  1  d1-  0.99987
    5.1     2.00000   -29.90185     1  1  d2+  0.99987
    6.1     2.00000   -29.90185     1  1  d1+  1.00000
    7.1     2.00000   -29.90185     1  1  d2-  1.00000
    8.1     2.00000   -29.90185     1  1  d0   1.00000
    9.1     2.00000   -10.20949     1  4  s    0.99870
   10.1     2.00000    -3.81048     1  2  d2-  1.00073
   11.1     2.00000    -3.81048     1  2  d2+  1.00073
   12.1     2.00000    -3.81048     1  2  d1-  1.00073
   13.1     2.00000    -3.81048     1  2  d1+  1.00073
   14.1     2.00000    -3.81048     1  2  d0   1.00073
   15.1     2.00000    -1.55513     1  5  s    0.97357
   16.1     0.45071    -0.03346     1  6  s    1.12961
   17.1     0.25892     0.05496     1  3  d2+ -0.89000
   18.1     0.25892     0.05496     1  3  d1- -0.89000
   19.1     0.25892     0.05496     1  3  d2- -0.89000
   20.1     0.25892     0.05496     1  3  d0  -0.89000
   21.1     0.25892     0.05496     1  3  d1+ -0.89000
   22.1     0.06264     0.03997     1  6  s   -1.06015    1  8  s    0.25746    1 11  s    1.31532
    1.2     2.00000  -199.34982     1  1  px   0.99999
    2.2     2.00000  -199.34982     1  1  py   0.99999
    3.2     2.00000  -199.34982     1  1  pz   1.00000
    4.2     2.00000   -40.99971     1  2  px   1.00000
    5.2     2.00000   -40.99971     1  2  pz   1.00000
    6.2     2.00000   -40.99971     1  2  py   1.00000
    7.2     2.00000    -7.65485     1  3  pz   0.99959
    8.2     2.00000    -7.65485     1  3  py   0.99959
    9.2     2.00000    -7.65485     1  3  px   0.99959
   10.2     2.00000    -0.86133     1  4  pz   0.97353
   11.2     2.00000    -0.86133     1  4  py   0.97353
   12.2     2.00000    -0.86133     1  4  px   0.97353
   13.2     0.06402     0.05098     1  5  px   1.06332
   14.2     0.06402     0.05098     1  5  py   1.06332
   15.2     0.06402     0.05098     1  5  pz   1.06332
 *** IN SYMMETRY  1 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.160D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.160D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.333D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.971D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.209D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.310D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.310D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.330D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.246D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.254D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.137D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.301D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.300D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.132D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.129D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.318D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.240D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.290D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.135D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.135D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 5 4 3 2 1 3   5 6 4 2 1 1 5 6 3 2   4 1 5 3 6 4 2 1 6 4   5 3 2 1 6 4 5 3 2 1
                                        6 4 2 5 3 2 4 6 5 3   1
 *** IN SYMMETRY  2 ORBITAL   1 SYMMETRY CONTAMINATION OF 0.504D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   2 SYMMETRY CONTAMINATION OF 0.504D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.217D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.217D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.165D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.304D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.304D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.953D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.953D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.865D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.865D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.721D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.707D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.271D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.271D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.709D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.144D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.774D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.121D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.207D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.139D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.139D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.211D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.211D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.431D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.415D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.393D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.376D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.396D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.396D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.682D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.682D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 3 2 1 3   2 1 1 2 3 3 2 1 1 2   3 6 810 4 5 7 910 8   4 5 6 9 7 3 1 2 6 7
                                        9 5 410 8 3 2 1 7 9   810 5 4 6 3 2 1
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                1               2               3               4               5               6               7
 2000000 000      0.95528528      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 b0a0000 000      0.00000000     -0.00055361     -0.64550179     -0.00048361      0.00029168      0.00023014     -0.00000061
 a0b0000 000     -0.00000000      0.00055361      0.64550179      0.00048361     -0.00029168     -0.00023014      0.00000061
 a0000b0 000     -0.00000000     -0.00056008      0.00029283     -0.00107025      0.64550101     -0.00037305      0.00000341
 b0000a0 000      0.00000000      0.00056008     -0.00029283      0.00107025     -0.64550101      0.00037305     -0.00000341
 b00a000 000      0.00000000      0.00136064      0.00048254     -0.64549771     -0.00106833      0.00164859     -0.00006254
 a00b000 000     -0.00000000     -0.00136064     -0.00048254      0.64549771      0.00106833     -0.00164859      0.00006254
 ab00000 000      0.00000000      0.64549523     -0.00055346      0.00136588      0.00056408      0.00257924     -0.04574316
 ba00000 000     -0.00000000     -0.64549523      0.00055346     -0.00136588     -0.00056408     -0.00257924      0.04574316
 a000b00 000      0.00000000     -0.00258284      0.00023129      0.00164269      0.00037343      0.64549491      0.00438758
 b000a00 000     -0.00000000      0.00258284     -0.00023129     -0.00164269     -0.00037343     -0.64549491     -0.00438758
 b00000a 000      0.02919655     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a00000b 000     -0.02919655      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 000ba00 000      0.00000000      0.00027387      0.00009713     -0.12992624     -0.00021504      0.00033183      0.00063837
 000ab00 000     -0.00000000     -0.00027387     -0.00009713      0.12992624      0.00021504     -0.00033183     -0.00063837
 0200000 000     -0.04621881     -0.00051988      0.00004655      0.00033064      0.00007516      0.12992568     -0.04478220
 0002000 000     -0.04621881     -0.00051988      0.00004655      0.00033064      0.00007516      0.12992568     -0.04478220
 0000200 000     -0.04621881      0.00051988     -0.00004655     -0.00033064     -0.00007516     -0.12992568      0.04478220
 0a00b00 000      0.00000000      0.12992574     -0.00011140      0.00027492      0.00011354      0.00051915      0.46688161
 0b00a00 000     -0.00000000     -0.12992574      0.00011140     -0.00027492     -0.00011354     -0.00051915     -0.46688161
 0020000 000     -0.04621881      0.11277893     -0.00011975      0.00007277      0.00006075     -0.06451324      0.42672244
 00a00b0 000      0.00000000      0.00023718      0.00008411     -0.11251943     -0.00018623      0.00028737      0.00055284
 00b00a0 000     -0.00000000     -0.00023718     -0.00008411      0.11251943      0.00018623     -0.00028737     -0.00055284
 0ab0000 000     -0.00000000      0.00009650      0.11252014      0.00008430     -0.00005084     -0.00004012     -0.00000537
 0ba0000 000      0.00000000     -0.00009650     -0.11252014     -0.00008430      0.00005084      0.00004012      0.00000537
 000a0b0 000      0.00000000     -0.00009650     -0.11252014     -0.00008430      0.00005084      0.00004012      0.00000537
 000b0a0 000     -0.00000000      0.00009650      0.11252014      0.00008430     -0.00005084     -0.00004012     -0.00000537
 0a000b0 000      0.00000000      0.00009763     -0.00005104      0.00018656     -0.11252000      0.00006503      0.00003018
 0b000a0 000     -0.00000000     -0.00009763      0.00005104     -0.00018656      0.11252000     -0.00006503     -0.00003018
 00ab000 000      0.00000000      0.00009763     -0.00005104      0.00018656     -0.11252000      0.00006503      0.00003018
 00ba000 000     -0.00000000     -0.00009763      0.00005104     -0.00018656      0.11252000     -0.00006503     -0.00003018
 0000020 000     -0.04621881     -0.11225906      0.00007320     -0.00040341     -0.00013591     -0.06541244     -0.38194023
 0000000 002     -0.15781371      0.00106276     -0.00009517     -0.00067592     -0.00015365     -0.26560132     -0.03556071
 0000000 200     -0.15781370     -0.23054899      0.00024481     -0.00014876     -0.00012418      0.13188157      0.33885232
 0000000 ba0     -0.00000000     -0.00048485     -0.00017195      0.23001849      0.00038069     -0.00058746      0.00043900
 0000000 ab0      0.00000000      0.00048485      0.00017195     -0.23001849     -0.00038069      0.00058746     -0.00043900
 0000000 0ab      0.00000000     -0.00019728     -0.23001994     -0.00017233      0.00010394      0.00008201     -0.00000426
 0000000 0ba     -0.00000000      0.00019728      0.23001994      0.00017233     -0.00010394     -0.00008201      0.00000426
 0000000 b0a     -0.00000000     -0.00019958      0.00010435     -0.00038138      0.23001967     -0.00013293      0.00002397
 0000000 a0b      0.00000000      0.00019958     -0.00010435      0.00038138     -0.23001967      0.00013293     -0.00002397
 0000000 020     -0.15781370      0.22948623     -0.00014964      0.00082468      0.00027783      0.13371976     -0.30329161
 00a0b00 000      0.00000000     -0.00005572     -0.06496353     -0.00004867      0.00002935      0.00002316      0.00000310
 00b0a00 000     -0.00000000      0.00005572      0.06496353      0.00004867     -0.00002935     -0.00002316     -0.00000310
 0000ba0 000      0.00000000     -0.00005637      0.00002947     -0.00010771      0.06496345     -0.00003754     -0.00001743
 0000ab0 000     -0.00000000      0.00005637     -0.00002947      0.00010771     -0.06496345      0.00003754      0.00001743
 0000002 000     -0.01813193     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 000a00b 000     -0.00000000     -0.00006237     -0.00002212      0.02959087      0.00004897     -0.00007557      0.00012826
 000b00a 000      0.00000000      0.00006237      0.00002212     -0.02959087     -0.00004897      0.00007557     -0.00012826
 00a000b 000     -0.00000000      0.00002538      0.02959106      0.00002217     -0.00001337     -0.00001055      0.00000125
 00b000a 000      0.00000000     -0.00002538     -0.02959106     -0.00002217      0.00001337      0.00001055     -0.00000125
 00000ba 000      0.00000000      0.00002568     -0.00001342      0.00004906     -0.02959102      0.00001710     -0.00000700
 00000ab 000     -0.00000000     -0.00002568      0.00001342     -0.00004906      0.02959102     -0.00001710      0.00000700
 0000b0a 000     -0.00000000      0.00011840     -0.00001060     -0.00007530     -0.00001712     -0.02959074     -0.00899737
 0000a0b 000      0.00000000     -0.00011840      0.00001060      0.00007530      0.00001712      0.02959074      0.00899737
 0b0000a 000     -0.00000000     -0.02959076      0.00002537     -0.00006261     -0.00002586     -0.00011824      0.09380300
 0a0000b 000      0.00000000      0.02959076     -0.00002537      0.00006261      0.00002586      0.00011824     -0.09380300
 
 Energy:      -8132.01763732  -8131.95634750  -8131.95634750  -8131.95634750  -8131.95634750  -8131.95634750  -8131.90224372

 State:                8               9              10              11              12
 2000000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00345007
 b0a0000 000      0.00000749      0.00002801      0.04594560      0.00083186      0.00000000
 a0b0000 000     -0.00000749     -0.00002801     -0.04594560     -0.00083186     -0.00000000
 a0000b0 000     -0.00000620     -0.00003032     -0.00083184      0.04594560      0.00000000
 b0000a0 000      0.00000620      0.00003032      0.00083184     -0.04594560     -0.00000000
 b00a000 000      0.04595309      0.00002817     -0.00000762      0.00000609      0.00000000
 a00b000 000     -0.04595309     -0.00002817      0.00000762     -0.00000609     -0.00000000
 ab00000 000     -0.00005957     -0.00438762      0.00000207      0.00000053     -0.00000000
 ba00000 000      0.00005957      0.00438762     -0.00000207     -0.00000053      0.00000000
 a000b00 000      0.00003403     -0.04574317      0.00002848     -0.00002999      0.00000000
 b000a00 000     -0.00003403      0.04574317     -0.00002848      0.00002999     -0.00000000
 b00000a 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.55012756
 a00000b 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.55012756
 000ba00 000     -0.46902430     -0.00028756      0.00007782     -0.00006213      0.00000000
 000ab00 000      0.46902430      0.00028756     -0.00007782      0.00006213     -0.00000000
 0200000 000     -0.00034729      0.46688173     -0.00029066      0.00030610      0.23261188
 0002000 000     -0.00034729      0.46688173     -0.00029066      0.00030610      0.23261188
 0000200 000      0.00034729     -0.46688173      0.00029066     -0.00030610      0.23261188
 0a00b00 000      0.00060799      0.04478264     -0.00002113     -0.00000545     -0.00000000
 0b00a00 000     -0.00060799     -0.04478264      0.00002113      0.00000545      0.00000000
 0020000 000      0.00070018     -0.19465797      0.00012703     -0.00015777      0.23261188
 00a00b0 000     -0.40618696     -0.00024903      0.00006739     -0.00005380      0.00000000
 00b00a0 000      0.40618696      0.00024903     -0.00006739      0.00005380     -0.00000000
 0ab0000 000      0.00006625      0.00024755      0.40612078      0.00735294     -0.00000000
 0ba0000 000     -0.00006625     -0.00024755     -0.40612078     -0.00735294      0.00000000
 000a0b0 000     -0.00006625     -0.00024755     -0.40612078     -0.00735294      0.00000000
 000b0a0 000      0.00006625      0.00024755      0.40612078      0.00735294     -0.00000000
 0a000b0 000     -0.00005481     -0.00026798     -0.00735277      0.40612077      0.00000000
 0b000a0 000      0.00005481      0.00026798      0.00735277     -0.40612077     -0.00000000
 00ab000 000     -0.00005481     -0.00026798     -0.00735277      0.40612077      0.00000000
 00ba000 000      0.00005481      0.00026798      0.00735277     -0.40612077     -0.00000000
 0000020 000     -0.00035289     -0.27222377      0.00016363     -0.00014833      0.23261188
 0000000 002     -0.00027577      0.37074206     -0.00023081      0.00024307     -0.18237371
 0000000 200      0.00055600     -0.15457425      0.00010087     -0.00012528     -0.18237371
 0000000 ba0     -0.32254548     -0.00019775      0.00005351     -0.00004272      0.00000000
 0000000 ab0      0.32254548      0.00019775     -0.00005351      0.00004272     -0.00000000
 0000000 0ab      0.00005261      0.00019657      0.32249293      0.00583883     -0.00000000
 0000000 0ba     -0.00005261     -0.00019657     -0.32249293     -0.00583883      0.00000000
 0000000 b0a     -0.00004352     -0.00021280     -0.00583869      0.32249292      0.00000000
 0000000 a0b      0.00004352      0.00021280      0.00583869     -0.32249292     -0.00000000
 0000000 020     -0.00028023     -0.21616781      0.00012993     -0.00011779     -0.18237371
 00a0b00 000     -0.00003825     -0.00014292     -0.23447394     -0.00424522      0.00000000
 00b0a00 000      0.00003825      0.00014292      0.23447394      0.00424522     -0.00000000
 0000ba0 000      0.00003164      0.00015472      0.00424512     -0.23447394     -0.00000000
 0000ab0 000     -0.00003164     -0.00015472     -0.00424512      0.23447394      0.00000000
 0000002 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.15615859
 000a00b 000     -0.09423350     -0.00005777      0.00001563     -0.00001248      0.00000000
 000b00a 000      0.09423350      0.00005777     -0.00001563      0.00001248     -0.00000000
 00a000b 000     -0.00001537     -0.00005743     -0.09421814     -0.00170585     -0.00000000
 00b000a 000      0.00001537      0.00005743      0.09421814      0.00170585      0.00000000
 00000ba 000      0.00001272      0.00006217      0.00170581     -0.09421814     -0.00000000
 00000ab 000     -0.00001272     -0.00006217     -0.00170581      0.09421814      0.00000000
 0000b0a 000     -0.00006977      0.09380302     -0.00005840      0.00006150     -0.00000000
 0000a0b 000      0.00006977     -0.09380302      0.00005840     -0.00006150      0.00000000
 0b0000a 000      0.00012215      0.00899745     -0.00000424     -0.00000109     -0.00000000
 0a0000b 000     -0.00012215     -0.00899745      0.00000424      0.00000109      0.00000000
 
 Energy:      -8131.90224372  -8131.90224372  -8131.90224372  -8131.90224372  -8131.89486765
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a0a0000 000      0.99999920     -0.00069275      0.00004506     -0.00065581      0.00024755      0.00000000      0.00000000
 a00a000 000     -0.00024755      0.00222697     -0.00024599     -0.00236318      0.99999435     -0.00000000     -0.00000000
 000aa00 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00263988      0.00180445
 0a00a00 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.99996644     -0.00749986
 a0000a0 000     -0.00003693      0.00745504      0.99996125      0.00460687      0.00024026     -0.00000000      0.00000000
 aa00000 000      0.00064862     -0.00976001     -0.00453455      0.99993872      0.00238383      0.00000000     -0.00000000
 a000a00 000      0.00069996      0.99992154     -0.00749901      0.00973063     -0.00220548     -0.00000000      0.00000000
 00a00a0 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00670280      0.89438618
 0aa0000 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00156970      0.00481224
 000a0a0 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00063283      0.00246968
 0a0a000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00335140      0.44719309
 00aa000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00027317      0.00058424
 0a000a0 000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00081066      0.00086283
 0000aa0 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00031032      0.00016084
 00a0a00 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00054090      0.00135248
 0000000 aa0     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 a0a      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 0aa      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 
 Energy:      -8131.96311204  -8131.96311204  -8131.96311204  -8131.96311204  -8131.96311204  -8131.90664792  -8131.90664792

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 a0a0000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 000aa00 000      0.00023681     -0.00077703      0.99999417     -0.00076297     -0.00043374      0.00000000     -0.00000000
 0a00a00 000     -0.00171685     -0.00074437      0.00265314      0.00026223     -0.00050591     -0.00000000     -0.00000000
 a0000a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 aa00000 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 00a00a0 000     -0.00499853     -0.00088560     -0.00159562      0.00023619     -0.00025013     -0.00031510     -0.00028635
 0aa0000 000      0.85079987     -0.00466098     -0.00041757     -0.27578840      0.00572821     -0.37015196      0.00250182
 000a0a0 000      0.47976918     -0.00465529      0.00044996      0.75472545     -0.01351477      0.37015196     -0.00250182
 0a0a000 000     -0.00249926     -0.00044280     -0.00079781      0.00011810     -0.00012506      0.00063019      0.00057269
 00aa000 000      0.00483831      0.71409752      0.00031349     -0.00831596     -0.53849016      0.00250158      0.37015198
 0a000a0 000      0.00390546      0.69996616      0.00079402      0.01179926      0.55667842     -0.00250158     -0.37015198
 0000aa0 000     -0.00053858     -0.00815874      0.00027743      0.01161353      0.63229587      0.00433286      0.64112204
 00a0a00 000      0.21421467     -0.00000329     -0.00050087     -0.59496745      0.01110994      0.64112200     -0.00433328
 0000000 aa0     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00047769     -0.00043410
 0000000 a0a      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00379240      0.56115174
 0000000 0aa      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.56115170      0.00379277
 
 Energy:      -8131.90664792  -8131.90664792  -8131.90664792  -8131.90664792  -8131.90664792  -8131.90254558  -8131.90254558

 State:               15              16
 a00000a 000     -0.00000000      1.00000000
 a0a0000 000     -0.00000000     -0.00000000
 a00a000 000     -0.00000000     -0.00000000
 000aa00 000     -0.00000000      0.00000000
 0a00a00 000     -0.00000000     -0.00000000
 a0000a0 000      0.00000000     -0.00000000
 aa00000 000     -0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000
 00a00a0 000     -0.37016030     -0.00000000
 0aa0000 000      0.00031315      0.00000000
 000a0a0 000     -0.00031315     -0.00000000
 0a0a000 000      0.74032061      0.00000000
 00aa000 000     -0.00028847      0.00000000
 0a000a0 000      0.00028847     -0.00000000
 0000aa0 000     -0.00049965      0.00000000
 00a0a00 000     -0.00054240     -0.00000000
 0000000 aa0     -0.56116435     -0.00000000
 0000000 a0a     -0.00043732     -0.00000000
 0000000 0aa      0.00047474      0.00000000
 
 Energy:      -8131.90254558  -8131.90023006
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       77.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.33       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.75      3.64      0.08      3.84
 REAL TIME  *        10.49 SEC
 DISK USED  *        83.02 MB (local),        1.03 GB (total)
 SF USED    *       118.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.017637   -0.0
    -8131.956347    6.0
    -8131.956347    6.0
    -8131.956347    6.0
    -8131.956347    6.0
    -8131.956347    6.0
    -8131.902244    6.0
    -8131.902244    6.0
    -8131.902244    6.0
    -8131.902244    6.0
    -8131.902244    6.0
    -8131.894868   -0.0
    -8131.963112    6.0
    -8131.963112    6.0
    -8131.963112    6.0
    -8131.963112    6.0
    -8131.963112    6.0
    -8131.906648   12.0
    -8131.906648   12.0
    -8131.906648   12.0
    -8131.906648   12.0
    -8131.906648   12.0
    -8131.906648   12.0
    -8131.906648   12.0
    -8131.902546    2.0
    -8131.902546    2.0
    -8131.902546    2.0
    -8131.900230   -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 56
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:    29620 conf    75790 CSFs
 N-1 el internal:     9955 conf    31960 CSFs
 N-2 el internal:     1621 conf     5743 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.08 sec, npass=  1  Memory used:   1.38 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.01763732
     2     -8131.95634750
     3     -8131.95634750
     4     -8131.95634750
     5     -8131.95634750
     6     -8131.95634750
     7     -8131.90224372
     8     -8131.90224372
     9     -8131.90224372
    10     -8131.90224372
    11     -8131.90224372
    12     -8131.89486765

 Number of blocks in overlap matrix:  1099   Smallest eigenvalue:  0.38D+00
 Number of N-2 electron functions:    1153
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       1148936
 Number of doubly external configurations:       1504729
 Total number of contracted configurations:      2691781
 Total number of uncontracted configurations:    8644507

 Diagonal Coupling coefficients finished.               Storage:24934866 words, CPU-Time:     23.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1100569 words, CPU-time:      0.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.01763732     0.00000000    -0.58872491  0.37D-01  0.70D-01    31.12
    1     2     2     1.00000000     0.00000000 -8131.95634750     0.00000000    -0.59732211  0.44D-01  0.74D-01    31.12
    1     3     3     1.00000000     0.00000000 -8131.95634750    -0.00000000    -0.59758664  0.45D-01  0.75D-01    31.12
    1     4     4     1.00000000     0.00000000 -8131.95634750     0.00000000    -0.59766000  0.45D-01  0.75D-01    31.12
    1     5     5     1.00000000     0.00000000 -8131.95634750    -0.00000000    -0.59776129  0.45D-01  0.75D-01    31.12
    1     6     6     1.00000000     0.00000000 -8131.95634750     0.00000000    -0.59739893  0.44D-01  0.74D-01    31.12
    1     7     7     1.00000000     0.00000000 -8131.90224372     0.00000000    -0.60024797  0.40D-01  0.81D-01    31.12
    1     8     8     1.00000000     0.00000000 -8131.90224372     0.00000000    -0.60080877  0.40D-01  0.81D-01    31.12
    1     9     9     1.00000000     0.00000000 -8131.90224372    -0.00000000    -0.59988238  0.40D-01  0.81D-01    31.12
    1    10    10     1.00000000     0.00000000 -8131.90224372    -0.00000000    -0.60077772  0.40D-01  0.81D-01    31.12
    1    11    11     1.00000000     0.00000000 -8131.90224372    -0.00000000    -0.60082564  0.40D-01  0.81D-01    31.12
    1    12    12     1.00000000     0.00000000 -8131.89486765     0.00000000    -0.59519434  0.46D-01  0.75D-01    31.12
    2     1     1     1.06737469    -0.48256393 -8132.50020125    -0.48256393    -0.00726532  0.13D-02  0.68D-03   176.08
    2     2     2     1.07354260    -0.48172382 -8132.43807132    -0.48172382    -0.00754415  0.14D-02  0.78D-03   176.08
    2     3     3     1.07355527    -0.48171985 -8132.43806735    -0.48171985    -0.00754917  0.14D-02  0.79D-03   176.08
    2     4     4     1.07367984    -0.48166754 -8132.43801504    -0.48166754    -0.00761739  0.15D-02  0.80D-03   176.08
    2     5     5     1.07367050    -0.48166710 -8132.43801460    -0.48166710    -0.00761532  0.15D-02  0.80D-03   176.08
    2     6     6     1.07372441    -0.48164765 -8132.43799515    -0.48164765    -0.00763964  0.15D-02  0.80D-03   176.08
    2     7     7     1.07406416    -0.48079021 -8132.38303392    -0.48079021    -0.00746551  0.14D-02  0.90D-03   176.08
    2     8     8     1.07419328    -0.48069461 -8132.38293833    -0.48069461    -0.00758536  0.15D-02  0.90D-03   176.08
    2     9     9     1.07438442    -0.48058413 -8132.38282785    -0.48058413    -0.00772919  0.16D-02  0.92D-03   176.08
    2    10    10     1.07441031    -0.48057523 -8132.38281894    -0.48057523    -0.00773890  0.16D-02  0.93D-03   176.08
    2    11    11     1.07438961    -0.48057404 -8132.38281775    -0.48057404    -0.00774023  0.16D-02  0.93D-03   176.08
    2    12    12     1.07402817    -0.48158540 -8132.37645305    -0.48158540    -0.00847834  0.23D-02  0.91D-03   176.08
    3     1     1     1.06736080    -0.48948060 -8132.50711792    -0.00691668    -0.00016878  0.25D-04  0.20D-04   315.92
    3     2     2     1.07128284    -0.48886278 -8132.44521028    -0.00713896    -0.00015643  0.24D-04  0.20D-04   315.92
    3     3     3     1.07128946    -0.48886243 -8132.44520993    -0.00714259    -0.00015685  0.24D-04  0.20D-04   315.92
    3     4     4     1.07129400    -0.48886073 -8132.44520823    -0.00719319    -0.00015886  0.24D-04  0.21D-04   315.92
    3     5     5     1.07129341    -0.48886036 -8132.44520786    -0.00719325    -0.00015915  0.24D-04  0.21D-04   315.92
    3     6     6     1.07129293    -0.48886026 -8132.44520776    -0.00721261    -0.00015929  0.24D-04  0.21D-04   315.92
    3     7     7     1.07135485    -0.48782583 -8132.39006955    -0.00703563    -0.00016104  0.24D-04  0.25D-04   315.92
    3     8     8     1.07135161    -0.48782204 -8132.39006576    -0.00712743    -0.00016510  0.25D-04  0.25D-04   315.92
    3     9     9     1.07135328    -0.48781854 -8132.39006226    -0.00723441    -0.00016914  0.25D-04  0.26D-04   315.92
    3    10    10     1.07135529    -0.48781831 -8132.39006202    -0.00724308    -0.00016933  0.25D-04  0.27D-04   315.92
    3    11    11     1.07135122    -0.48781795 -8132.39006166    -0.00724391    -0.00016974  0.25D-04  0.27D-04   315.92
    3    12    12     1.07014621    -0.48953962 -8132.38440727    -0.00795422    -0.00021818  0.44D-04  0.32D-04   315.92
    4     1     1     1.06825833    -0.48965587 -8132.50729319    -0.00017527    -0.00000615  0.23D-05  0.60D-06   456.20
    4     2     2     1.07198700    -0.48902685 -8132.44537435    -0.00016408    -0.00000456  0.16D-05  0.50D-06   456.20
    4     3     3     1.07198819    -0.48902684 -8132.44537434    -0.00016440    -0.00000459  0.16D-05  0.51D-06   456.20
    4     4     4     1.07198612    -0.48902675 -8132.44537425    -0.00016602    -0.00000469  0.17D-05  0.52D-06   456.20
    4     5     5     1.07198541    -0.48902675 -8132.44537425    -0.00016640    -0.00000468  0.17D-05  0.52D-06   456.20
    4     6     6     1.07198570    -0.48902674 -8132.44537424    -0.00016648    -0.00000469  0.17D-05  0.52D-06   456.20
    4     7     7     1.07204645    -0.48799583 -8132.39023955    -0.00017000    -0.00000577  0.29D-05  0.66D-06   456.20
    4     8     8     1.07204292    -0.48799575 -8132.39023947    -0.00017371    -0.00000588  0.29D-05  0.67D-06   456.20
    4     9     9     1.07203898    -0.48799572 -8132.39023943    -0.00017717    -0.00000597  0.29D-05  0.69D-06   456.20
    4    10    10     1.07203941    -0.48799571 -8132.39023943    -0.00017740    -0.00000597  0.29D-05  0.70D-06   456.20
    4    11    11     1.07203845    -0.48799568 -8132.39023940    -0.00017774    -0.00000600  0.29D-05  0.70D-06   456.20
    4    12    12     1.07076673    -0.48977036 -8132.38463800    -0.00023073    -0.00000857  0.40D-05  0.90D-06   456.20
    5     1     1     1.06836762    -0.48966232 -8132.50729963    -0.00000644    -0.00000032  0.68D-07  0.41D-07   591.72
    5     2     2     1.07203092    -0.48903176 -8132.44537926    -0.00000491    -0.00000021  0.47D-07  0.29D-07   591.72
    5     3     3     1.07203078    -0.48903176 -8132.44537926    -0.00000493    -0.00000021  0.47D-07  0.29D-07   591.72
    5     4     4     1.07203104    -0.48903176 -8132.44537926    -0.00000500    -0.00000022  0.49D-07  0.30D-07   591.72
    5     5     5     1.07203096    -0.48903176 -8132.44537925    -0.00000500    -0.00000022  0.49D-07  0.30D-07   591.72
    5     6     6     1.07203110    -0.48903176 -8132.44537925    -0.00000502    -0.00000022  0.49D-07  0.30D-07   591.72
    5     7     7     1.07204922    -0.48800228 -8132.39024600    -0.00000645    -0.00000037  0.10D-06  0.57D-07   591.72
    5     8     8     1.07204912    -0.48800228 -8132.39024600    -0.00000653    -0.00000037  0.10D-06  0.57D-07   591.72
    5     9     9     1.07204867    -0.48800228 -8132.39024600    -0.00000657    -0.00000037  0.10D-06  0.56D-07   591.72
    5    10    10     1.07204904    -0.48800228 -8132.39024600    -0.00000657    -0.00000037  0.10D-06  0.57D-07   591.72
    5    11    11     1.07204803    -0.48800228 -8132.39024600    -0.00000660    -0.00000037  0.10D-06  0.56D-07   591.72
    5    12    12     1.07075041    -0.48977989 -8132.38464753    -0.00000953    -0.00000045  0.13D-06  0.57D-07   591.72
    6     1     1     1.06837086    -0.48966265 -8132.50729997    -0.00000034    -0.00000001  0.30D-08  0.12D-08   727.16
    6     2     2     1.07202957    -0.48903199 -8132.44537949    -0.00000023    -0.00000001  0.29D-08  0.11D-08   727.16
    6     3     3     1.07202951    -0.48903199 -8132.44537949    -0.00000023    -0.00000001  0.29D-08  0.11D-08   727.16
    6     4     4     1.07202945    -0.48903199 -8132.44537949    -0.00000023    -0.00000001  0.30D-08  0.11D-08   727.16
    6     5     5     1.07202945    -0.48903199 -8132.44537949    -0.00000023    -0.00000001  0.30D-08  0.11D-08   727.16
    6     6     6     1.07202948    -0.48903199 -8132.44537949    -0.00000023    -0.00000001  0.30D-08  0.11D-08   727.16
    6     7     7     1.07202946    -0.48800269 -8132.39024641    -0.00000040    -0.00000002  0.54D-08  0.28D-08   727.16
    6     8     8     1.07202943    -0.48800269 -8132.39024641    -0.00000040    -0.00000002  0.54D-08  0.28D-08   727.16
    6     9     9     1.07202940    -0.48800269 -8132.39024641    -0.00000041    -0.00000002  0.54D-08  0.29D-08   727.16
    6    10    10     1.07202918    -0.48800269 -8132.39024641    -0.00000041    -0.00000002  0.54D-08  0.28D-08   727.16
    6    11    11     1.07202892    -0.48800269 -8132.39024640    -0.00000041    -0.00000002  0.54D-08  0.28D-08   727.16
    6    12    12     1.07072862    -0.48978039 -8132.38464803    -0.00000050    -0.00000002  0.53D-08  0.30D-08   727.16


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.1%
 S   2.7%  35.7%
 P   0.7%  26.5%  13.2%

 Initialization:   3.3%
 Other:            7.8%

 Total CPU:      727.2 seconds
 =====================================



 gnormi=  0.93600456  gnorms=  0.02019629  gnormp=  0.04379915  gnorm=  1.00000000
 ecorri= -0.45832648  ecorrs= -0.00989593  ecorrp= -0.02144025  ecorr= -0.48966265

 gnormi=  0.93281009  gnorms=  0.02134593  gnormp=  0.04584398  gnorm=  1.00000000
 ecorri= -0.45617397  ecorrs= -0.01044394  ecorrp= -0.02241408  ecorr= -0.48903199

 gnormi=  0.93281014  gnorms=  0.02134590  gnormp=  0.04584396  gnorm=  1.00000000
 ecorri= -0.45617400  ecorrs= -0.01044393  ecorrp= -0.02241406  ecorr= -0.48903199

 gnormi=  0.93281020  gnorms=  0.02134579  gnormp=  0.04584401  gnorm=  1.00000000
 ecorri= -0.45617403  ecorrs= -0.01044404  ecorrp= -0.02241392  ecorr= -0.48903199

 gnormi=  0.93281020  gnorms=  0.02134578  gnormp=  0.04584402  gnorm=  1.00000000
 ecorri= -0.45617403  ecorrs= -0.01044403  ecorrp= -0.02241393  ecorr= -0.48903199

 gnormi=  0.93281017  gnorms=  0.02134581  gnormp=  0.04584402  gnorm=  1.00000000
 ecorri= -0.45617401  ecorrs= -0.01044403  ecorrp= -0.02241394  ecorr= -0.48903199

 gnormi=  0.93281018  gnorms=  0.01898926  gnormp=  0.04820056  gnorm=  1.00000000
 ecorri= -0.45521388  ecorrs= -0.00927206  ecorrp= -0.02351675  ecorr= -0.48800269

 gnormi=  0.93281021  gnorms=  0.01898924  gnormp=  0.04820055  gnorm=  1.00000000
 ecorri= -0.45521389  ecorrs= -0.00927207  ecorrp= -0.02351672  ecorr= -0.48800269

 gnormi=  0.93281023  gnorms=  0.01898919  gnormp=  0.04820057  gnorm=  1.00000000
 ecorri= -0.45521390  ecorrs= -0.00927207  ecorrp= -0.02351672  ecorr= -0.48800269

 gnormi=  0.93281043  gnorms=  0.01898928  gnormp=  0.04820029  gnorm=  1.00000000
 ecorri= -0.45521400  ecorrs= -0.00927199  ecorrp= -0.02351670  ecorr= -0.48800269

 gnormi=  0.93281066  gnorms=  0.01898925  gnormp=  0.04820009  gnorm=  1.00000000
 ecorri= -0.45521411  ecorrs= -0.00927196  ecorrp= -0.02351662  ecorr= -0.48800269

 gnormi=  0.93394347  gnorms=  0.02044148  gnormp=  0.04561505  gnorm=  1.00000000
 ecorri= -0.45742719  ecorrs= -0.01001850  ecorrp= -0.02233469  ecorr= -0.48978039

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000           0.9227301   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                               0.0000000   0.0000000   0.0000000   0.0545695
 222222/00\000222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8819185  -0.1050734   0.0000000
                               0.0000000   0.0000000  -0.0000000   0.0000000
 222222/0\0000222000           0.0000000   0.0000000   0.0000000   0.8819185   0.0000000   0.0000000   0.0000000  -0.0000000
                              -0.1050734   0.0000000  -0.0000000   0.0000000
 222222/0000\0222000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.8819185  -0.0000000   0.0000000   0.1050734
                               0.0000000   0.0000000  -0.0000000   0.0000000
 222222/000\00222000          -0.0000000  -0.1261735   0.8728462  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                               0.0000000   0.0190285   0.1033355   0.0000000
 222222/\00000222000           0.0000000   0.8728461   0.1261735  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                              -0.0000000  -0.1033357   0.0190285  -0.0000000
 222222/00000\222000          -0.0860694   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                              -0.0000000   0.0000000  -0.0000000   0.7430400
 222222000/\00222000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.1989952   0.6340615  -0.0000000
                              -0.0000000  -0.0000000   0.0000000   0.0000000
 2222220/00\00222000          -0.0000000   0.1969482   0.0284696   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                              -0.0000000   0.6235776  -0.1148274   0.0000000
 22222200/\000222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.1723351   0.0000000   0.0000000   0.5491135
                               0.0000000   0.0000000   0.0000000   0.0000000
 222222000/0\0222000           0.0000000   0.0000000   0.0000000  -0.1723352   0.0000000   0.0000000   0.0000000   0.0000000
                              -0.5491135  -0.0000000  -0.0000000  -0.0000000
 22222200/00\0222000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1723350  -0.5491135   0.0000000
                               0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220/\0000222000          -0.0000000  -0.0000000  -0.0000000   0.1723349  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                               0.5491133   0.0000000   0.0000000   0.0000000
 2222220/000\0222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.1723350   0.0000000   0.0000000   0.5491132
                               0.0000000  -0.0000000   0.0000000   0.0000000
 22222200000002220/\          -0.0000000   0.0000000  -0.0000000  -0.2834006   0.0000000   0.0000000   0.0000000  -0.0000000
                               0.4450378   0.0000000  -0.0000000   0.0000000
 2222220000000222/0\          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.2834006  -0.0000000  -0.0000000  -0.4450378
                               0.0000000   0.0000000  -0.0000000   0.0000000
 2222220000000222/\0          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.2834005   0.4450377   0.0000000
                               0.0000000   0.0000000  -0.0000000   0.0000000
 2222220002000222000          -0.0546418  -0.0201311   0.1392636   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                               0.0000000  -0.0811952  -0.4409358   0.2211883
 2222220000200222000          -0.0546420   0.0201310  -0.1392632   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                               0.0000000   0.0811952   0.4409358   0.2211880
 2222220200000222000          -0.0546419  -0.0201311   0.1392633   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                               0.0000000  -0.0811951  -0.4409356   0.2211880
 2222220020000222000          -0.0546419   0.1306711  -0.0521978   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                               0.0000000   0.4224588   0.1501509   0.2211883
 2222220000000222002          -0.1358926   0.0331051  -0.2290153   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                               0.0000000  -0.0658060  -0.3573640  -0.1854213
 2222220000000222200          -0.1358925  -0.2148856   0.0858378   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                              -0.0000000   0.3423893   0.1216924  -0.1854214
 2222220000020222000          -0.0546418  -0.1105401  -0.0870659   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                               0.0000000  -0.3412636   0.2907849   0.2211883
 2222220000/\0222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0994974   0.0000000   0.0000000   0.3170309
                               0.0000000  -0.0000000  -0.0000000   0.0000000
 22222200/0\00222000           0.0000000   0.0000000   0.0000000  -0.0994974   0.0000000   0.0000000   0.0000000   0.0000000
                              -0.3170308  -0.0000000  -0.0000000  -0.0000000
 2222220000000222020          -0.1358926   0.1817805   0.1431774   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                               0.0000000  -0.2765833   0.2356718  -0.1854214
 2222220000002222000          -0.0097670  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                               0.0000000  -0.0000000  -0.0000000  -0.1592232
 22222200000/\222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0252703  -0.0000000  -0.0000000   0.1271769
                              -0.0000000   0.0000000  -0.0000000  -0.0000000
 222222000/00\222000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0252703  -0.1271769  -0.0000000
                              -0.0000000  -0.0000000   0.0000000   0.0000000
 22222200/000\222000          -0.0000000  -0.0000000  -0.0000000   0.0252703   0.0000000  -0.0000000  -0.0000000  -0.0000000
                              -0.1271767   0.0000000  -0.0000000   0.0000000
 2222220/0000\222000          -0.0000000   0.0250103   0.0036154  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                              -0.0000000  -0.1250741   0.0230315   0.0000001
 2222220000/0\222000          -0.0000000  -0.0036153   0.0250103  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                              -0.0000000   0.0230315   0.1250740  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.962166   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.057822
 2          -0.000000    0.952650   -0.000000    0.000000   -0.000000   -0.136073    0.040990    0.000000    0.001926    0.000000
             0.000000   -0.000000
 3          -0.000000    0.136073    0.000000   -0.000000   -0.000000    0.952650    0.001926   -0.000000   -0.040990   -0.000000
            -0.000000    0.000000
 4          -0.000000   -0.000000    0.962319   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.041035
             0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.962319   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.041035    0.000000
 6          -0.000000    0.000000   -0.000000    0.962319   -0.000000    0.000000    0.000000    0.041035   -0.000000    0.000000
             0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.042126   -0.000000    0.000000   -0.000000    0.962784   -0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000    0.042126    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.962784   -0.000000
 9           0.000000   -0.000000   -0.042126   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.962784
            -0.000000   -0.000000
 10          0.000000   -0.041443    0.000000   -0.000000    0.000000    0.007559    0.959267    0.000000    0.082221    0.000000
             0.000000    0.000000
 11          0.000000    0.007559   -0.000000    0.000000   -0.000000    0.041442   -0.082221   -0.000000    0.959267   -0.000000
             0.000000    0.000000
 12          0.061007    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.961462

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.963900   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.001611
 2          -0.000000    0.963193   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000535
             0.000021    0.000000
 3          -0.000000   -0.000000    0.963193    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000021
             0.000535    0.000000
 4          -0.000000   -0.000000    0.000000    0.963193   -0.000000   -0.000000    0.000000   -0.000000   -0.000535    0.000000
             0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.963193    0.000000   -0.000000    0.000535   -0.000000    0.000000
             0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.963193   -0.000535    0.000000   -0.000000   -0.000000
             0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000535    0.963705    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000    0.000535    0.000000    0.000000    0.963705   -0.000000   -0.000000
            -0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000535   -0.000000   -0.000000    0.000000   -0.000000    0.963706   -0.000000
            -0.000000   -0.000000
 10          0.000000   -0.000535    0.000021    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.963706
             0.000000   -0.000000
 11          0.000000    0.000021    0.000535    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.963706   -0.000000
 12          0.001611    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.963395


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96216594 (fixed)   0.96398300 (relaxed)   0.96390047 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00742700   -0.01535806   -0.41837368
 Singles      0.02173738   -0.07119693   -0.07604529
 Pairs        0.04714127    0.02819551    0.00475632
 Total        1.07630565   -0.05835948   -0.48966265
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.01717062
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.75913686
 One electron energy               -11099.87994573
 Two electron energy                 2967.37264575
 Virial quotient                       -0.84076396
 Correlation energy                    -0.49012936
 !MRCI STATE 1.1 Energy             -8132.507299973450

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54469961 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54460928 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54469961 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54312669 (Pople, fixed reference)
 Cluster corrected energies         -8132.54303466 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54312669 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95264969 (fixed)   0.96334472 (relaxed)   0.96319303 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00546411   -0.01138417   -0.39142910
 Singles      0.02300850   -0.06978769   -0.07518883
 Pairs        0.04941464    0.00000001   -0.02241407
 Total        1.07788726   -0.08117185   -0.48903199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95624672
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.69883098
 One electron energy               -11101.80271109
 Two electron energy                 2969.35733160
 Virial quotient                       -0.84076280
 Correlation energy                    -0.48913277
 !MRCI STATE 2.1 Energy             -8132.445379489788

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48347670 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48331068 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48347670 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48192271 (Pople, fixed reference)
 Cluster corrected energies         -8132.48175314 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48192271 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95264972 (fixed)   0.96334474 (relaxed)   0.96319306 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00546411   -0.01138417   -0.39142909
 Singles      0.02300848   -0.06978770   -0.07518882
 Pairs        0.04941461   -0.00000001   -0.02241407
 Total        1.07788720   -0.08117187   -0.48903199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95624672
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.69883802
 One electron energy               -11101.80271175
 Two electron energy                 2969.35733226
 Virial quotient                       -0.84076280
 Correlation energy                    -0.48913276
 !MRCI STATE 3.1 Energy             -8132.445379489655

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48347667 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48331065 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48347667 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48192269 (Pople, fixed reference)
 Cluster corrected energies         -8132.48175311 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48192269 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96231873 (fixed)   0.96334477 (relaxed)   0.96319309 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00546411   -0.01138417   -0.39142932
 Singles      0.02300835   -0.06978748   -0.07518874
 Pairs        0.04941467   -0.00000000   -0.02241392
 Total        1.07788713   -0.08117165   -0.48903199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95624672
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.69882011
 One electron energy               -11101.80269280
 Two electron energy                 2969.35731331
 Virial quotient                       -0.84076280
 Correlation energy                    -0.48913277
 !MRCI STATE 4.1 Energy             -8132.445379489411

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48347664 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48331061 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48347664 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48192265 (Pople, fixed reference)
 Cluster corrected energies         -8132.48175308 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48192265 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96231873 (fixed)   0.96334477 (relaxed)   0.96319309 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00546411   -0.01138417   -0.39142931
 Singles      0.02300834   -0.06978749   -0.07518874
 Pairs        0.04941468    0.00000000   -0.02241393
 Total        1.07788713   -0.08117166   -0.48903199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95624672
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.69881651
 One electron energy               -11101.80268803
 Two electron energy                 2969.35730854
 Virial quotient                       -0.84076280
 Correlation energy                    -0.48913277
 !MRCI STATE 5.1 Energy             -8132.445379489405

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48347664 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48331062 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48347664 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48192265 (Pople, fixed reference)
 Cluster corrected energies         -8132.48175308 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48192265 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96231871 (fixed)   0.96334476 (relaxed)   0.96319307 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00546411   -0.01138417   -0.39142929
 Singles      0.02300837   -0.06978750   -0.07518875
 Pairs        0.04941469    0.00000000   -0.02241394
 Total        1.07788717   -0.08117167   -0.48903199
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95624672
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.69881688
 One electron energy               -11101.80268991
 Two electron energy                 2969.35731042
 Virial quotient                       -0.84076280
 Correlation energy                    -0.48913277
 !MRCI STATE 6.1 Energy             -8132.445379489397

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48347666 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48331063 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48347666 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48192267 (Pople, fixed reference)
 Cluster corrected energies         -8132.48175310 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48192267 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96278445 (fixed)   0.96375956 (relaxed)   0.96370548 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439519   -0.00963302   -0.39381141
 Singles      0.02044652   -0.06611457   -0.07067453
 Pairs        0.05189953   -0.00000000   -0.02351675
 Total        1.07674124   -0.07574759   -0.48800269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90234449
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68422980
 One electron energy               -11102.60008361
 Two electron energy                 2970.20983720
 Virial quotient                       -0.84075837
 Correlation energy                    -0.48790191
 !MRCI STATE 7.1 Energy             -8132.390246405318

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42768860 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42762964 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42768860 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42612695 (Pople, fixed reference)
 Cluster corrected energies         -8132.42606682 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42612695 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.96278446 (fixed)   0.96375958 (relaxed)   0.96370549 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439519   -0.00963302   -0.39381144
 Singles      0.02044650   -0.06611455   -0.07067452
 Pairs        0.05189951    0.00000000   -0.02351672
 Total        1.07674120   -0.07574757   -0.48800269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90234449
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68423001
 One electron energy               -11102.60007990
 Two electron energy                 2970.20983349
 Virial quotient                       -0.84075837
 Correlation energy                    -0.48790191
 !MRCI STATE 8.1 Energy             -8132.390246405258

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42768859 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42762962 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42768859 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42612693 (Pople, fixed reference)
 Cluster corrected energies         -8132.42606681 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42612693 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96278448 (fixed)   0.96375959 (relaxed)   0.96370550 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439519   -0.00963302   -0.39381147
 Singles      0.02044645   -0.06611453   -0.07067450
 Pairs        0.05189954   -0.00000000   -0.02351672
 Total        1.07674118   -0.07574755   -0.48800269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90234449
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68422989
 One electron energy               -11102.60007506
 Two electron energy                 2970.20982866
 Virial quotient                       -0.84075837
 Correlation energy                    -0.48790191
 !MRCI STATE 9.1 Energy             -8132.390246405227

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42768857 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42762961 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42768857 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42612692 (Pople, fixed reference)
 Cluster corrected energies         -8132.42606679 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42612692 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95926736 (fixed)   0.96375969 (relaxed)   0.96370561 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439517   -0.00963302   -0.39381139
 Singles      0.02044654   -0.06611471   -0.07067461
 Pairs        0.05189922    0.00000001   -0.02351669
 Total        1.07674093   -0.07574772   -0.48800269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90234449
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68424832
 One electron energy               -11102.60006082
 Two electron energy                 2970.20981442
 Virial quotient                       -0.84075837
 Correlation energy                    -0.48790191
 !MRCI STATE 10.1 Energy            -8132.390246405185

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42768845 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42762950 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42768845 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42612679 (Pople, fixed reference)
 Cluster corrected energies         -8132.42606668 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42612679 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95926749 (fixed)   0.96375981 (relaxed)   0.96370574 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00439516   -0.00963301   -0.39381143
 Singles      0.02044649   -0.06611477   -0.07067464
 Pairs        0.05189900    0.00000001   -0.02351661
 Total        1.07674066   -0.07574777   -0.48800269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90234449
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68426407
 One electron energy               -11102.60004088
 Two electron energy                 2970.20979447
 Virial quotient                       -0.84075837
 Correlation energy                    -0.48790191
 !MRCI STATE 11.1 Energy            -8132.390246404990

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42768832 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42762936 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42768832 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42612666 (Pople, fixed reference)
 Cluster corrected energies         -8132.42606654 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42612666 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96146231 (fixed)   0.96343276 (relaxed)   0.96339454 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626468   -0.01342474   -0.01626175
 Singles      0.02202440   -0.06986819   -0.07486519
 Pairs        0.04914731   -0.40545952   -0.39865345
 Total        1.07743640   -0.48875245   -0.48978039
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.89533435
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.63007480
 One electron energy               -11097.21663239
 Two electron energy                 2964.83198436
 Virial quotient                       -0.84076250
 Correlation energy                    -0.48931368
 !MRCI STATE 12.1 Energy            -8132.384648033425

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42253872 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42249688 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42253872 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42097946 (Pople, fixed reference)
 Cluster corrected energies         -8132.42093675 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42097946 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       77.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      261.41       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1938.87   1931.11      3.64      0.08      3.84
 REAL TIME  *      1969.94 SEC
 DISK USED  *       339.10 MB (local),        4.03 GB (total)
 SF USED    *         2.71 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -8132.54469961  AU                              
 SETTING HLSDIAG(2)     =     -8132.48347670  AU                              
 SETTING HLSDIAG(3)     =     -8132.48347667  AU                              
 SETTING HLSDIAG(4)     =     -8132.48347664  AU                              
 SETTING HLSDIAG(5)     =     -8132.48347664  AU                              
 SETTING HLSDIAG(6)     =     -8132.48347666  AU                              
 SETTING HLSDIAG(7)     =     -8132.42768860  AU                              
 SETTING HLSDIAG(8)     =     -8132.42768859  AU                              
 SETTING HLSDIAG(9)     =     -8132.42768857  AU                              
 SETTING HLSDIAG(10)    =     -8132.42768845  AU                              
 SETTING HLSDIAG(11)    =     -8132.42768832  AU                              
 SETTING HLSDIAG(12)    =     -8132.42253872  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 56
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:    28449 conf   120789 CSFs
 N-1 el internal:     8065 conf    49051 CSFs
 N-2 el internal:     1171 conf     8695 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8131.96311204
     2     -8131.96311204
     3     -8131.96311204
     4     -8131.96311204
     5     -8131.96311204
     6     -8131.90664792
     7     -8131.90664792
     8     -8131.90664792
     9     -8131.90664792
    10     -8131.90664792
    11     -8131.90664792
    12     -8131.90664792
    13     -8131.90254558
    14     -8131.90254558
    15     -8131.90254558
    16     -8131.90023006

 Number of blocks in overlap matrix:  1423   Smallest eigenvalue:  0.59D+00
 Number of N-2 electron functions:    1477
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       1764653
 Number of doubly external configurations:       1927621
 Total number of contracted configurations:      3752607
 Total number of uncontracted configurations:   13070967

 Diagonal Coupling coefficients finished.               Storage:36433810 words, CPU-Time:     57.40 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1189174 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96311204    -0.00000000    -0.60263841  0.48D-01  0.75D-01    71.76
    1     2     2     1.00000000     0.00000000 -8131.96311204    -0.00000000    -0.60249953  0.48D-01  0.75D-01    71.76
    1     3     3     1.00000000     0.00000000 -8131.96311204    -0.00000000    -0.60265141  0.48D-01  0.75D-01    71.76
    1     4     4     1.00000000     0.00000000 -8131.96311204    -0.00000000    -0.60250131  0.48D-01  0.75D-01    71.76
    1     5     5     1.00000000     0.00000000 -8131.96311204    -0.00000000    -0.60264010  0.48D-01  0.75D-01    71.76
    1     6     6     1.00000000     0.00000000 -8131.90664792    -0.00000000    -0.60808665  0.43D-01  0.83D-01    71.76
    1     7     7     1.00000000     0.00000000 -8131.90664792     0.00000000    -0.60855770  0.43D-01  0.84D-01    71.76
    1     8     8     1.00000000     0.00000000 -8131.90664792     0.00000000    -0.60838396  0.43D-01  0.83D-01    71.76
    1     9     9     1.00000000     0.00000000 -8131.90664792    -0.00000000    -0.60849590  0.43D-01  0.84D-01    71.76
    1    10    10     1.00000000     0.00000000 -8131.90664792    -0.00000000    -0.60845130  0.43D-01  0.83D-01    71.76
    1    11    11     1.00000000     0.00000000 -8131.90664792    -0.00000000    -0.60846941  0.43D-01  0.84D-01    71.76
    1    12    12     1.00000000     0.00000000 -8131.90664792     0.00000000    -0.60837169  0.43D-01  0.83D-01    71.76
    1    13    13     1.00000000     0.00000000 -8131.90254558     0.00000000    -0.59852443  0.39D-01  0.79D-01    71.76
    1    14    14     1.00000000     0.00000000 -8131.90254558     0.00000000    -0.59854187  0.39D-01  0.79D-01    71.76
    1    15    15     1.00000000     0.00000000 -8131.90254558     0.00000000    -0.59846169  0.39D-01  0.80D-01    71.76
    1    16    16     1.00000000     0.00000000 -8131.90023006    -0.00000000    -0.58427826  0.46D-01  0.67D-01    71.76
    2     1     1     1.07496359    -0.48381811 -8132.44693015    -0.48381811    -0.00808448  0.16D-02  0.79D-03   384.48
    2     2     2     1.07497742    -0.48381499 -8132.44692702    -0.48381499    -0.00808723  0.16D-02  0.79D-03   384.48
    2     3     3     1.07501143    -0.48379041 -8132.44690244    -0.48379041    -0.00812071  0.16D-02  0.80D-03   384.48
    2     4     4     1.07500740    -0.48378853 -8132.44690057    -0.48378853    -0.00812312  0.16D-02  0.80D-03   384.48
    2     5     5     1.07501294    -0.48378310 -8132.44689514    -0.48378310    -0.00812920  0.16D-02  0.80D-03   384.48
    2     6     6     1.07643831    -0.48257148 -8132.38921941    -0.48257148    -0.00768157  0.13D-02  0.89D-03   384.48
    2     7     7     1.07649341    -0.48254434 -8132.38919226    -0.48254434    -0.00771985  0.13D-02  0.91D-03   384.48
    2     8     8     1.07650563    -0.48253446 -8132.38918238    -0.48253446    -0.00773179  0.13D-02  0.92D-03   384.48
    2     9     9     1.07654951    -0.48250832 -8132.38915624    -0.48250832    -0.00776610  0.13D-02  0.92D-03   384.48
    2    10    10     1.07659222    -0.48249357 -8132.38914149    -0.48249357    -0.00778583  0.13D-02  0.93D-03   384.48
    2    11    11     1.07659092    -0.48249252 -8132.38914044    -0.48249252    -0.00778897  0.13D-02  0.93D-03   384.48
    2    12    12     1.07659536    -0.48248705 -8132.38913497    -0.48248705    -0.00779568  0.13D-02  0.93D-03   384.48
    2    13    13     1.07278766    -0.47973887 -8132.38228445    -0.47973887    -0.00761577  0.16D-02  0.89D-03   384.48
    2    14    14     1.07280305    -0.47972300 -8132.38226858    -0.47972300    -0.00763578  0.16D-02  0.89D-03   384.48
    2    15    15     1.07281074    -0.47971755 -8132.38226314    -0.47971755    -0.00764222  0.16D-02  0.89D-03   384.48
    2    16    16     1.07175176    -0.47962629 -8132.37985635    -0.47962629    -0.00721001  0.17D-02  0.64D-03   384.48
    3     1     1     1.07180883    -0.49143319 -8132.45454522    -0.00761507    -0.00016293  0.27D-04  0.20D-04   687.03
    3     2     2     1.07180784    -0.49143308 -8132.45454512    -0.00761809    -0.00016312  0.27D-04  0.20D-04   687.03
    3     3     3     1.07181073    -0.49143211 -8132.45454414    -0.00764170    -0.00016437  0.27D-04  0.20D-04   687.03
    3     4     4     1.07181043    -0.49143200 -8132.45454404    -0.00764347    -0.00016454  0.27D-04  0.20D-04   687.03
    3     5     5     1.07181060    -0.49143181 -8132.45454384    -0.00764870    -0.00016464  0.27D-04  0.20D-04   687.03
    3     6     6     1.07329559    -0.48977963 -8132.39642756    -0.00720815    -0.00014149  0.21D-04  0.20D-04   687.03
    3     7     7     1.07329941    -0.48977837 -8132.39642629    -0.00723403    -0.00014304  0.21D-04  0.20D-04   687.03
    3     8     8     1.07330173    -0.48977803 -8132.39642595    -0.00724357    -0.00014342  0.21D-04  0.20D-04   687.03
    3     9     9     1.07330341    -0.48977796 -8132.39642588    -0.00726964    -0.00014385  0.21D-04  0.20D-04   687.03
    3    10    10     1.07330521    -0.48977701 -8132.39642493    -0.00728344    -0.00014455  0.21D-04  0.21D-04   687.03
    3    11    11     1.07330679    -0.48977682 -8132.39642474    -0.00728430    -0.00014478  0.21D-04  0.21D-04   687.03
    3    12    12     1.07330571    -0.48977666 -8132.39642458    -0.00728961    -0.00014464  0.21D-04  0.21D-04   687.03
    3    13    13     1.07006042    -0.48689456 -8132.38944015    -0.00715569    -0.00016606  0.22D-04  0.26D-04   687.03
    3    14    14     1.07005910    -0.48689384 -8132.38943942    -0.00717084    -0.00016664  0.22D-04  0.26D-04   687.03
    3    15    15     1.07006044    -0.48689361 -8132.38943919    -0.00717605    -0.00016685  0.23D-04  0.26D-04   687.03
    3    16    16     1.06956610    -0.48661729 -8132.38684735    -0.00699100    -0.00017689  0.39D-04  0.20D-04   687.03
    4     1     1     1.07245771    -0.49160451 -8132.45471655    -0.00017133    -0.00000444  0.15D-05  0.47D-06   991.29
    4     2     2     1.07245745    -0.49160446 -8132.45471649    -0.00017138    -0.00000443  0.15D-05  0.47D-06   991.29
    4     3     3     1.07245911    -0.49160446 -8132.45471649    -0.00017235    -0.00000437  0.15D-05  0.46D-06   991.29
    4     4     4     1.07245732    -0.49160445 -8132.45471648    -0.00017245    -0.00000444  0.15D-05  0.47D-06   991.29
    4     5     5     1.07245874    -0.49160440 -8132.45471643    -0.00017259    -0.00000436  0.15D-05  0.46D-06   991.29
    4     6     6     1.07392141    -0.48992920 -8132.39657712    -0.00014957    -0.00000357  0.14D-05  0.46D-06   991.29
    4     7     7     1.07392199    -0.48992910 -8132.39657702    -0.00015073    -0.00000359  0.14D-05  0.46D-06   991.29
    4     8     8     1.07392205    -0.48992910 -8132.39657702    -0.00015107    -0.00000359  0.14D-05  0.46D-06   991.29
    4     9     9     1.07392219    -0.48992892 -8132.39657684    -0.00015096    -0.00000352  0.14D-05  0.45D-06   991.29
    4    10    10     1.07392146    -0.48992859 -8132.39657651    -0.00015158    -0.00000358  0.14D-05  0.46D-06   991.29
    4    11    11     1.07392141    -0.48992858 -8132.39657650    -0.00015176    -0.00000359  0.14D-05  0.46D-06   991.29
    4    12    12     1.07392129    -0.48992855 -8132.39657647    -0.00015189    -0.00000360  0.14D-05  0.46D-06   991.29
    4    13    13     1.07078405    -0.48707138 -8132.38961696    -0.00017681    -0.00000538  0.26D-05  0.67D-06   991.29
    4    14    14     1.07078307    -0.48707124 -8132.38961683    -0.00017740    -0.00000540  0.26D-05  0.66D-06   991.29
    4    15    15     1.07078310    -0.48707124 -8132.38961682    -0.00017763    -0.00000541  0.26D-05  0.67D-06   991.29
    4    16    16     1.07003626    -0.48680441 -8132.38703447    -0.00018712    -0.00000601  0.23D-05  0.67D-06   991.29
    5     1     1     1.07251595    -0.49160931 -8132.45472134    -0.00000480    -0.00000019  0.35D-07  0.26D-07  1284.79
    5     2     2     1.07251582    -0.49160924 -8132.45472128    -0.00000479    -0.00000019  0.35D-07  0.26D-07  1284.79
    5     3     3     1.07251584    -0.49160924 -8132.45472128    -0.00000479    -0.00000019  0.35D-07  0.26D-07  1284.79
    5     4     4     1.07251523    -0.49160919 -8132.45472123    -0.00000474    -0.00000018  0.35D-07  0.25D-07  1284.79
    5     5     5     1.07251514    -0.49160913 -8132.45472116    -0.00000473    -0.00000018  0.34D-07  0.25D-07  1284.79
    5     6     6     1.07396612    -0.48993320 -8132.39658112    -0.00000400    -0.00000017  0.38D-07  0.27D-07  1284.79
    5     7     7     1.07396628    -0.48993311 -8132.39658103    -0.00000401    -0.00000017  0.39D-07  0.27D-07  1284.79
    5     8     8     1.07396629    -0.48993311 -8132.39658103    -0.00000401    -0.00000017  0.39D-07  0.27D-07  1284.79
    5     9     9     1.07396527    -0.48993289 -8132.39658081    -0.00000396    -0.00000017  0.38D-07  0.26D-07  1284.79
    5    10    10     1.07396584    -0.48993260 -8132.39658052    -0.00000401    -0.00000017  0.39D-07  0.27D-07  1284.79
    5    11    11     1.07396585    -0.48993260 -8132.39658052    -0.00000401    -0.00000017  0.39D-07  0.27D-07  1284.79
    5    12    12     1.07396604    -0.48993257 -8132.39658049    -0.00000402    -0.00000017  0.38D-07  0.27D-07  1284.79
    5    13    13     1.07080264    -0.48707752 -8132.38962311    -0.00000615    -0.00000028  0.53D-07  0.47D-07  1284.79
    5    14    14     1.07080269    -0.48707741 -8132.38962299    -0.00000617    -0.00000028  0.53D-07  0.47D-07  1284.79
    5    15    15     1.07080271    -0.48707741 -8132.38962299    -0.00000617    -0.00000028  0.53D-07  0.47D-07  1284.79
    5    16    16     1.07002511    -0.48681085 -8132.38704091    -0.00000644    -0.00000028  0.59D-07  0.41D-07  1284.79
    6     1     1     1.07251518    -0.49160951 -8132.45472155    -0.00000020    -0.00000001  0.26D-08  0.69D-09  1578.75
    6     2     2     1.07251509    -0.49160945 -8132.45472148    -0.00000020    -0.00000001  0.26D-08  0.69D-09  1578.75
    6     3     3     1.07251509    -0.49160945 -8132.45472148    -0.00000020    -0.00000001  0.26D-08  0.69D-09  1578.75
    6     4     4     1.07251469    -0.49160939 -8132.45472143    -0.00000020    -0.00000001  0.25D-08  0.66D-09  1578.75
    6     5     5     1.07251454    -0.49160932 -8132.45472136    -0.00000020    -0.00000001  0.25D-08  0.66D-09  1578.75
    6     6     6     1.07396559    -0.48993339 -8132.39658131    -0.00000019    -0.00000001  0.25D-08  0.89D-09  1578.75
    6     7     7     1.07396581    -0.48993330 -8132.39658122    -0.00000019    -0.00000001  0.25D-08  0.89D-09  1578.75
    6     8     8     1.07396581    -0.48993330 -8132.39658122    -0.00000019    -0.00000001  0.25D-08  0.89D-09  1578.75
    6     9     9     1.07396514    -0.48993307 -8132.39658099    -0.00000019    -0.00000001  0.24D-08  0.88D-09  1578.75
    6    10    10     1.07396545    -0.48993279 -8132.39658071    -0.00000019    -0.00000001  0.25D-08  0.89D-09  1578.75
    6    11    11     1.07396545    -0.48993279 -8132.39658071    -0.00000019    -0.00000001  0.25D-08  0.89D-09  1578.75
    6    12    12     1.07396554    -0.48993276 -8132.39658068    -0.00000019    -0.00000001  0.25D-08  0.89D-09  1578.75
    6    13    13     1.07079061    -0.48707783 -8132.38962341    -0.00000031    -0.00000001  0.29D-08  0.15D-08  1578.75
    6    14    14     1.07079053    -0.48707771 -8132.38962330    -0.00000031    -0.00000001  0.29D-08  0.15D-08  1578.75
    6    15    15     1.07079053    -0.48707771 -8132.38962330    -0.00000031    -0.00000001  0.29D-08  0.15D-08  1578.75
    6    16    16     1.07000838    -0.48681114 -8132.38704120    -0.00000029    -0.00000001  0.40D-08  0.11D-08  1578.75


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.6%
 S   2.5%  38.2%
 P   0.6%  26.6%  12.6%

 Initialization:   3.7%
 Other:            6.3%

 Total CPU:     1578.7 seconds
 =====================================



 gnormi=  0.93238774  gnorms=  0.02186921  gnormp=  0.04574306  gnorm=  1.00000000
 ecorri= -0.45837068  ecorrs= -0.01075616  ecorrp= -0.02248267  ecorr= -0.49160951

 gnormi=  0.93238781  gnorms=  0.02186910  gnormp=  0.04574309  gnorm=  1.00000000
 ecorri= -0.45837066  ecorrs= -0.01075611  ecorrp= -0.02248268  ecorr= -0.49160945

 gnormi=  0.93238781  gnorms=  0.02186910  gnormp=  0.04574309  gnorm=  1.00000000
 ecorri= -0.45837065  ecorrs= -0.01075612  ecorrp= -0.02248267  ecorr= -0.49160945

 gnormi=  0.93238816  gnorms=  0.02186869  gnormp=  0.04574315  gnorm=  1.00000000
 ecorri= -0.45837078  ecorrs= -0.01075577  ecorrp= -0.02248284  ecorr= -0.49160939

 gnormi=  0.93238830  gnorms=  0.02186852  gnormp=  0.04574318  gnorm=  1.00000000
 ecorri= -0.45837078  ecorrs= -0.01075569  ecorrp= -0.02248286  ecorr= -0.49160932

 gnormi=  0.93112853  gnorms=  0.01982498  gnormp=  0.04904649  gnorm=  1.00000000
 ecorri= -0.45619096  ecorrs= -0.00971664  ecorrp= -0.02402580  ecorr= -0.48993339

 gnormi=  0.93112834  gnorms=  0.01982524  gnormp=  0.04904642  gnorm=  1.00000000
 ecorri= -0.45619078  ecorrs= -0.00971682  ecorrp= -0.02402570  ecorr= -0.48993330

 gnormi=  0.93112834  gnorms=  0.01982524  gnormp=  0.04904642  gnorm=  1.00000000
 ecorri= -0.45619078  ecorrs= -0.00971682  ecorrp= -0.02402570  ecorr= -0.48993330

 gnormi=  0.93112892  gnorms=  0.01982458  gnormp=  0.04904650  gnorm=  1.00000000
 ecorri= -0.45619085  ecorrs= -0.00971630  ecorrp= -0.02402592  ecorr= -0.48993307

 gnormi=  0.93112865  gnorms=  0.01982489  gnormp=  0.04904646  gnorm=  1.00000000
 ecorri= -0.45619046  ecorrs= -0.00971662  ecorrp= -0.02402572  ecorr= -0.48993279

 gnormi=  0.93112865  gnorms=  0.01982489  gnormp=  0.04904646  gnorm=  1.00000000
 ecorri= -0.45619046  ecorrs= -0.00971662  ecorrp= -0.02402572  ecorr= -0.48993279

 gnormi=  0.93112857  gnorms=  0.01982498  gnormp=  0.04904646  gnorm=  1.00000000
 ecorri= -0.45619039  ecorrs= -0.00971669  ecorrp= -0.02402568  ecorr= -0.48993276

 gnormi=  0.93388940  gnorms=  0.01846412  gnormp=  0.04764648  gnorm=  1.00000000
 ecorri= -0.45487682  ecorrs= -0.00899820  ecorrp= -0.02320281  ecorr= -0.48707783

 gnormi=  0.93388947  gnorms=  0.01846398  gnormp=  0.04764655  gnorm=  1.00000000
 ecorri= -0.45487675  ecorrs= -0.00899814  ecorrp= -0.02320283  ecorr= -0.48707771

 gnormi=  0.93388947  gnorms=  0.01846398  gnormp=  0.04764655  gnorm=  1.00000000
 ecorri= -0.45487675  ecorrs= -0.00899814  ecorrp= -0.02320282  ecorr= -0.48707771

 gnormi=  0.93457212  gnorms=  0.02227114  gnormp=  0.04315675  gnorm=  1.00000000
 ecorri= -0.45496012  ecorrs= -0.01084683  ecorrp= -0.02100419  ecorr= -0.48681114

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000/222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000027  -0.0000000  -0.0000000   0.0000000
                               0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.9635580
 2222220/00/00222000           0.0000000  -0.0000000  -0.0000000  -0.0000445  -0.0000000   0.0000000   0.0000000  -0.0000000
                               0.9630717  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 222222000//00222000          -0.0000467   0.0000000   0.0000000   0.0000000  -0.0000000   0.9630714   0.0000000   0.0000000
                              -0.0000000  -0.0000000  -0.0000000  -0.0000053   0.0000000  -0.0000000   0.0000000   0.0000000
 222222/000/00222000           0.0000000   0.0000000  -0.0000000  -0.0000097   0.9626706   0.0000000  -0.0000000  -0.0000000
                              -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000031
 222222//00000222000           0.0000000  -0.0000000   0.0000000   0.9626706   0.0000097  -0.0000000   0.0000000   0.0000000
                               0.0000481   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 222222/0/0000222000           0.0000000   0.9626705   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000343   0.0000000
                               0.0000000   0.0000338   0.0000000  -0.0000000  -0.0000000  -0.0000005   0.0000000   0.0000000
 222222/0000/0222000          -0.0000000  -0.0000000   0.9626705  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000343
                               0.0000000  -0.0000000  -0.0000338   0.0000000   0.0000000   0.0000000   0.0000005  -0.0000000
 222222/00/000222000           0.9626705  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000505   0.0000000   0.0000000
                              -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 22222200/00/0222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000047  -0.0000000  -0.0000000
                               0.0000000   0.0000000   0.0000000   0.8614382  -0.3600523   0.0000000   0.0000000  -0.0000000
 2222220//0000222000          -0.0000000   0.0000385  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.7429054   0.0000000
                              -0.0000000  -0.4360118  -0.0000000   0.0000000  -0.0000000  -0.3601370  -0.0000000   0.0000000
 2222220/000/0222000           0.0000000  -0.0000000  -0.0000385  -0.0000000   0.0000000   0.0000000  -0.0000000   0.7428838
                               0.0000000  -0.0000000  -0.4360485   0.0000000  -0.0000000   0.0000000  -0.3601370   0.0000000
 2222220/0/000222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000024   0.0000000   0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.4306175   0.7203478  -0.0000000  -0.0000000   0.0000000
 22222200/0/00222000           0.0000000   0.0000225  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0779995  -0.0000000
                               0.0000000  -0.6040283   0.0000000   0.0000000   0.0000000   0.6238533  -0.0000000  -0.0000000
 2222220000//0222000          -0.0000000  -0.0000000  -0.0000225   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0779697
                              -0.0000000  -0.0000000  -0.6040322   0.0000000   0.0000000   0.0000000   0.6238533  -0.0000000
 222222000/0/0222000           0.0000000   0.0000003  -0.0000000   0.0000000  -0.0000000   0.0000000   0.6078767   0.0000000
                               0.0000000   0.6103693   0.0000000  -0.0000000  -0.0000000   0.3600673   0.0000000  -0.0000000
 22222200//000222000          -0.0000000  -0.0000000  -0.0000003   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6079069
                              -0.0000000  -0.0000000   0.6103393  -0.0000000  -0.0000000  -0.0000000   0.3600673  -0.0000000
 2222220000000222//0          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                              -0.0000000  -0.0000000   0.0000000   0.0000580  -0.5303396   0.0000000   0.0000000   0.0000000
 2222220000000222/0/          -0.0000000  -0.0000000  -0.0000002   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000201
                              -0.0000000  -0.0000000   0.0000497  -0.0000000   0.0000000   0.0000000   0.5303384   0.0000000
 22222200000002220//          -0.0000000  -0.0000002  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000201  -0.0000000
                              -0.0000000  -0.0000497  -0.0000000  -0.0000000  -0.0000000  -0.5303384  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000   -0.000000    0.000000    0.962679    0.000000    0.000000   -0.000000   -0.000000   -0.000047
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.962679    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000038   -0.000000    0.000000
            -0.000024    0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.962679    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000027    0.000000
             0.000000   -0.000035   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000010   -0.000000    0.962679   -0.000000   -0.000045    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.962679    0.000000    0.000010   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000003
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000051    0.000000    0.000005   -0.000000    0.000000    0.963071
             0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000034   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.940195   -0.000000    0.000000
             0.208661   -0.000000    0.000037    0.000000    0.000000   -0.000000
 8           0.000000   -0.000000    0.000034    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.955153    0.000000
             0.000000    0.123242    0.000000    0.000037    0.000000    0.000000
 9           0.000000   -0.000000    0.000000    0.000048   -0.000000    0.963072    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 10          0.000034    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.208661   -0.000000   -0.000000
             0.940196   -0.000000    0.000092   -0.000000    0.000000    0.000000
 11          0.000000    0.000000   -0.000034   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.123242   -0.000000
            -0.000000   -0.955154    0.000000    0.000092   -0.000000    0.000000
 12         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.963072    0.000000    0.000000   -0.000005
            -0.000000    0.000000    0.000000   -0.000000   -0.000108   -0.000000
 13         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000109   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.964174    0.000000
 14         -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000017   -0.000000   -0.000000
            -0.000099    0.000000    0.964174   -0.000000   -0.000000    0.000000
 15          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000049    0.000000
             0.000000    0.000087    0.000000    0.964174   -0.000000    0.000000
 16          0.000000    0.000003   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000    0.963558

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962679    0.000000   -0.000000   -0.000000    0.000000    0.000002    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.962679   -0.000000   -0.000000    0.000000   -0.000000   -0.000001   -0.000000    0.000000    0.000001
             0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.962679    0.000000   -0.000000   -0.000000    0.000000    0.000001    0.000000   -0.000000
            -0.000001    0.000000    0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.962679    0.000000   -0.000000   -0.000000   -0.000000    0.000002   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.962679    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 6           0.000002   -0.000000   -0.000000   -0.000000    0.000000    0.963071   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 7           0.000000   -0.000001    0.000000   -0.000000   -0.000000   -0.000000    0.963071    0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000    0.000001   -0.000000   -0.000000    0.000000    0.000000    0.963071   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000    0.000002   -0.000000   -0.000000   -0.000000   -0.000000    0.963072    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 10          0.000000    0.000001   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.963072
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 11         -0.000000    0.000000   -0.000001   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.963072   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 12          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.963072    0.000000    0.000000   -0.000000   -0.000000
 13         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.964174    0.000000   -0.000000   -0.000000
 14          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.964174    0.000000    0.000000
 15          0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.964174    0.000000
 16          0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.963558

 Energy contributions of internal configurations for state 13
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1929       0.00011493     1.03312374       2222220000000222110             

 Energy contributions of internal configurations for state 14
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1927       0.00011496     1.03324749       2222220000000222011             

 Energy contributions of internal configurations for state 15
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1928       0.00011496     1.03324354       2222220000000222101             


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96267881 (fixed)   0.96273147 (relaxed)   0.96267881 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00608281   -0.01262065   -0.39271507
 Singles      0.02359773   -0.07084497   -0.07641177
 Pairs        0.04935855   -0.00000000   -0.02248267
 Total        1.07903908   -0.08346563   -0.49160951
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96311203
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73224250
 One electron energy               -11102.27335015
 Two electron energy                 2969.81862861
 Virial quotient                       -0.84076086
 Correlation energy                    -0.49160951
 !MRCI STATE 1.1 Energy             -8132.454721546072

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49357791 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49351988 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49357791 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49149715 (Pople, fixed reference)
 Cluster corrected energies         -8132.49143872 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49149715 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96267887 (fixed)   0.96273153 (relaxed)   0.96267887 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00608277   -0.01262061   -0.39271507
 Singles      0.02359761   -0.07084493   -0.07641170
 Pairs        0.04935857    0.00000000   -0.02248268
 Total        1.07903896   -0.08346555   -0.49160945
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96311204
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73224274
 One electron energy               -11102.27335029
 Two electron energy                 2969.81862881
 Virial quotient                       -0.84076086
 Correlation energy                    -0.49160945
 !MRCI STATE 2.1 Energy             -8132.454721481066

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49357778 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49351975 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49357778 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49149702 (Pople, fixed reference)
 Cluster corrected energies         -8132.49143858 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49149702 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96267886 (fixed)   0.96273153 (relaxed)   0.96267886 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00608277   -0.01262061   -0.39271508
 Singles      0.02359761   -0.07084493   -0.07641170
 Pairs        0.04935857    0.00000000   -0.02248267
 Total        1.07903896   -0.08346554   -0.49160945
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96311204
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73224198
 One electron energy               -11102.27334933
 Two electron energy                 2969.81862785
 Virial quotient                       -0.84076086
 Correlation energy                    -0.49160945
 !MRCI STATE 3.1 Energy             -8132.454721481045

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49357778 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49351975 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49357778 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49149702 (Pople, fixed reference)
 Cluster corrected energies         -8132.49143859 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49149702 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96267888 (fixed)   0.96273154 (relaxed)   0.96267888 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00608313   -0.01262093   -0.39271557
 Singles      0.02359717   -0.07084453   -0.07641098
 Pairs        0.04935863   -0.00000000   -0.02248284
 Total        1.07903893   -0.08346545   -0.49160939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96311204
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73226209
 One electron energy               -11102.27339312
 Two electron energy                 2969.81867169
 Virial quotient                       -0.84076086
 Correlation energy                    -0.49160939
 !MRCI STATE 4.1 Energy             -8132.454721426214

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49357771 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49351967 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49357771 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49149695 (Pople, fixed reference)
 Cluster corrected energies         -8132.49143851 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49149695 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96267892 (fixed)   0.96273158 (relaxed)   0.96267892 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00608319   -0.01262096   -0.39271669
 Singles      0.02359698   -0.07084440   -0.07641079
 Pairs        0.04935867    0.00000109   -0.02248185
 Total        1.07903884   -0.08346427   -0.49160932
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96311204
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73225909
 One electron energy               -11102.27338606
 Two electron energy                 2969.81866471
 Virial quotient                       -0.84076086
 Correlation energy                    -0.49160932
 !MRCI STATE 5.1 Energy             -8132.454721358987

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49357759 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49351956 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49357759 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49149683 (Pople, fixed reference)
 Cluster corrected energies         -8132.49143840 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49149683 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96307137 (fixed)   0.96307138 (relaxed)   0.96307138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390515   -0.00863985   -0.39442103
 Singles      0.02137449   -0.06659783   -0.07148656
 Pairs        0.05287995    0.00000000   -0.02402580
 Total        1.07815959   -0.07523769   -0.48993339
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90664792
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73783238
 One electron energy               -11104.80514998
 Two electron energy                 2972.40856867
 Virial quotient                       -0.84075437
 Correlation energy                    -0.48993339
 !MRCI STATE 6.1 Energy             -8132.396581310938

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43487430 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43487430 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43487430 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43279791 (Pople, fixed reference)
 Cluster corrected energies         -8132.43279791 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43279791 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94019525 (fixed)   0.96307136 (relaxed)   0.96307136 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390499   -0.00863966   -0.39442072
 Singles      0.02137477   -0.06659798   -0.07148688
 Pairs        0.05287987   -0.00000000   -0.02402570
 Total        1.07815963   -0.07523764   -0.48993330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90664792
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73784221
 One electron energy               -11104.80520510
 Two electron energy                 2972.40862388
 Virial quotient                       -0.84075437
 Correlation energy                    -0.48993330
 !MRCI STATE 7.1 Energy             -8132.396581219939

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43487423 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43487423 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43487423 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43279784 (Pople, fixed reference)
 Cluster corrected energies         -8132.43279784 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43279784 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95515328 (fixed)   0.96307136 (relaxed)   0.96307136 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390499   -0.00863966   -0.39442072
 Singles      0.02137477   -0.06659798   -0.07148688
 Pairs        0.05287987    0.00000000   -0.02402570
 Total        1.07815963   -0.07523764   -0.48993330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90664792
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73784211
 One electron energy               -11104.80520481
 Two electron energy                 2972.40862359
 Virial quotient                       -0.84075437
 Correlation energy                    -0.48993330
 !MRCI STATE 8.1 Energy             -8132.396581219936

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43487423 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43487423 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43487423 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43279783 (Pople, fixed reference)
 Cluster corrected energies         -8132.43279783 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43279783 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96307166 (fixed)   0.96307166 (relaxed)   0.96307166 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390498   -0.00863975   -0.39442107
 Singles      0.02137405   -0.06659764   -0.07148608
 Pairs        0.05287992    0.00000000   -0.02402592
 Total        1.07815895   -0.07523740   -0.48993307
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90664792
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73782597
 One electron energy               -11104.80510038
 Two electron energy                 2972.40851939
 Virial quotient                       -0.84075437
 Correlation energy                    -0.48993307
 !MRCI STATE 9.1 Energy             -8132.396580993084

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43487365 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43487365 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43487365 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43279726 (Pople, fixed reference)
 Cluster corrected energies         -8132.43279726 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43279726 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.94019560 (fixed)   0.96307174 (relaxed)   0.96307174 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390453   -0.00863931   -0.39442046
 Singles      0.02137438   -0.06659786   -0.07148661
 Pairs        0.05287987   -0.00000000   -0.02402572
 Total        1.07815878   -0.07523717   -0.48993279
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90664792
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73783720
 One electron energy               -11104.80520726
 Two electron energy                 2972.40862655
 Virial quotient                       -0.84075437
 Correlation energy                    -0.48993279
 !MRCI STATE 10.1 Energy            -8132.396580707784

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43487326 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43487326 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43487326 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43279687 (Pople, fixed reference)
 Cluster corrected energies         -8132.43279687 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43279687 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95515367 (fixed)   0.96307174 (relaxed)   0.96307174 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390453   -0.00863931   -0.39442046
 Singles      0.02137438   -0.06659786   -0.07148661
 Pairs        0.05287987   -0.00000000   -0.02402572
 Total        1.07815878   -0.07523717   -0.48993279
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90664792
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73783732
 One electron energy               -11104.80520719
 Two electron energy                 2972.40862648
 Virial quotient                       -0.84075437
 Correlation energy                    -0.48993279
 !MRCI STATE 11.1 Energy            -8132.396580707778

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43487326 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43487326 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43487326 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43279687 (Pople, fixed reference)
 Cluster corrected energies         -8132.43279687 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43279687 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96307172 (fixed)   0.96307173 (relaxed)   0.96307173 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390447   -0.00863923   -0.39442032
 Singles      0.02137447   -0.06659794   -0.07148676
 Pairs        0.05287987   -0.00000000   -0.02402568
 Total        1.07815881   -0.07523716   -0.48993276
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90664792
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73783972
 One electron energy               -11104.80523869
 Two electron energy                 2972.40865802
 Virial quotient                       -0.84075437
 Correlation energy                    -0.48993276
 !MRCI STATE 12.1 Energy            -8132.396580677150

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43487324 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43487324 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43487324 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43279685 (Pople, fixed reference)
 Cluster corrected energies         -8132.43279685 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43279685 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.96417371 (fixed)   0.96426071 (relaxed)   0.96417372 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458078   -0.00990451   -0.39335084
 Singles      0.01986178   -0.06618323   -0.07052418
 Pairs        0.05125311   -0.00000000   -0.02320281
 Total        1.07569567   -0.07608774   -0.48707783
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90254558
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67283066
 One electron energy               -11102.05759262
 Two electron energy                 2969.66796920
 Virial quotient                       -0.84075930
 Correlation energy                    -0.48707783
 !MRCI STATE 13.1 Energy            -8132.389623414349

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42649310 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42639856 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42649310 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42442444 (Pople, fixed reference)
 Cluster corrected energies         -8132.42432977 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42442444 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96417376 (fixed)   0.96426078 (relaxed)   0.96417377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458076   -0.00990446   -0.39335087
 Singles      0.01986162   -0.06618311   -0.07052401
 Pairs        0.05125318   -0.00000000   -0.02320283
 Total        1.07569556   -0.07608757   -0.48707771
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90254558
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67282207
 One electron energy               -11102.05758525
 Two electron energy                 2969.66796195
 Virial quotient                       -0.84075930
 Correlation energy                    -0.48707771
 !MRCI STATE 14.1 Energy            -8132.389623297802

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42649292 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42639836 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42649292 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42442427 (Pople, fixed reference)
 Cluster corrected energies         -8132.42432957 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42442427 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.96417376 (fixed)   0.96426078 (relaxed)   0.96417377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458075   -0.00990446   -0.39335088
 Singles      0.01986163   -0.06618310   -0.07052401
 Pairs        0.05125318    0.00000000   -0.02320282
 Total        1.07569556   -0.07608757   -0.48707771
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90254558
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67282171
 One electron energy               -11102.05758376
 Two electron energy                 2969.66796047
 Virial quotient                       -0.84075930
 Correlation energy                    -0.48707771
 !MRCI STATE 15.1 Energy            -8132.389623297793

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42649292 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42639836 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42649292 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42442426 (Pople, fixed reference)
 Cluster corrected energies         -8132.42432957 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42442426 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.96355802 (fixed)   0.96355802 (relaxed)   0.96355802 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00660035   -0.01438562   -0.01633945
 Singles      0.02398759   -0.07166588   -0.07738459
 Pairs        0.04648287   -0.40075964   -0.39308711
 Total        1.07707081   -0.48681114   -0.48681114
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90023006
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.52855504
 One electron energy               -11093.79604059
 Two electron energy                 2961.40899939
 Virial quotient                       -0.84077157
 Correlation energy                    -0.48681114
 !MRCI STATE 16.1 Energy            -8132.387041199798

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42456013 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42456013 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42456013 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42249446 (Pople, fixed reference)
 Cluster corrected energies         -8132.42249446 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42249446 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       77.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      839.07       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10142.40   8203.52   1931.11      3.64      0.08      3.84
 REAL TIME  *     10246.42 SEC
 DISK USED  *       916.77 MB (local),       10.80 GB (total)
 SF USED    *         4.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -8132.49357791  AU                              
 SETTING HLSDIAG(14)    =     -8132.49357778  AU                              
 SETTING HLSDIAG(15)    =     -8132.49357778  AU                              
 SETTING HLSDIAG(16)    =     -8132.49357771  AU                              
 SETTING HLSDIAG(17)    =     -8132.49357759  AU                              
 SETTING HLSDIAG(18)    =     -8132.43487430  AU                              
 SETTING HLSDIAG(19)    =     -8132.43487423  AU                              
 SETTING HLSDIAG(20)    =     -8132.43487423  AU                              
 SETTING HLSDIAG(21)    =     -8132.43487365  AU                              
 SETTING HLSDIAG(22)    =     -8132.43487326  AU                              
 SETTING HLSDIAG(23)    =     -8132.43487326  AU                              
 SETTING HLSDIAG(24)    =     -8132.43487324  AU                              
 SETTING HLSDIAG(25)    =     -8132.42649310  AU                              
 SETTING HLSDIAG(26)    =     -8132.42649292  AU                              
 SETTING HLSDIAG(27)    =     -8132.42649292  AU                              
 SETTING HLSDIAG(28)    =     -8132.42456013  AU                              


         HLSDIAG
    -8132.544700
    -8132.483477
    -8132.483477
    -8132.483477
    -8132.483477
    -8132.483477
    -8132.427689
    -8132.427689
    -8132.427689
    -8132.427688
    -8132.427688
    -8132.422539
    -8132.493578
    -8132.493578
    -8132.493578
    -8132.493578
    -8132.493578
    -8132.434874
    -8132.434874
    -8132.434874
    -8132.434874
    -8132.434873
    -8132.434873
    -8132.434873
    -8132.426493
    -8132.426493
    -8132.426493
    -8132.424560
                                                  

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

 Time for Seward_LS:      73.24 sec

 CPU time:     73.24 sec, REAL time:     77.19 sec


 SORTLS1 read    11148006. and wrote    11148006. SO integrals in    72 records. CPU time:      0.09 sec, REAL time:      0.18 sec
 SORTLS2 read    11148006. and wrote    11148006. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.08 sec

 FILE SIZES: FILE 1:    81.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    81.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       77.70       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      839.07       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10216.25     73.82   8203.52   1931.11      3.64      0.08      3.84
 REAL TIME  *     10324.43 SEC
 DISK USED  *       916.84 MB (local),       11.20 GB (total)
 SF USED    *         4.99 GB
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
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:**************************************************************************************************************
                   **********************
 Replaced energies:**************************************************************************************************************
                   **********************

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:**************************************************************************************************************
                   ******************************************************************
 Replaced energies:**************************************************************************************************************
                   ******************************************************************



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -8132.54469961

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   13436.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   13436.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   13436.89       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   13436.89       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   13436.89       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   25680.95       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25680.95       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25680.95       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25680.98
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00      -0.00      -0.00      55.95      -0.00       0.00       0.00      -0.00      -9.45       0.00
                            0.00       0.00       0.00       0.00     -55.95       0.00      -0.00      -9.45      -0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00      -0.00       0.00      -0.00     -55.95       9.45      -0.00      -0.00       0.00
                            0.00     -41.50    -103.86       0.00      -0.00       0.00      -0.00       0.00      -0.00       6.30

   15   3.1  1.0  1.0      -0.00     -69.21      87.86       0.00       0.00      -0.00       0.00       0.00       0.00      12.22
                            0.00      -0.00      -0.00      -0.00       0.00      55.95      -9.45      -0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00      55.94      -0.00       0.00       9.46       0.00      -0.00
                            0.00      -0.00      -0.00      55.94       0.00      -0.00       0.00      -0.00      -9.46       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00      -0.00     -96.89      -0.00       0.00     -16.34      -0.00       0.00
                           -0.00       0.00       0.00      96.89       0.00       0.00       0.00       0.00     -16.34      -0.00

   18   6.1  1.0  1.0      -0.00      -0.00      -0.00      20.25      -0.00      -0.00       0.00       0.00      69.57       0.00
                            0.00      -0.00       0.00       0.00     -20.25       0.00      -0.00      69.57       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      25.41      87.33      -0.00      -0.00      -0.00
                            0.00     -23.16      -6.22       0.00      -0.00      -0.00      -0.00      -0.00       0.00     -78.63

   20   8.1  1.0  1.0       0.00      23.98       0.59      -0.00       0.00      -0.00       0.00       0.00       0.00      82.17
                            0.00      -0.00      -0.00       0.00       0.00      25.41      87.33      -0.00      -0.00      -0.00

   21   9.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      20.25      -0.00       0.00     -69.57      -0.00       0.00
                            0.00      -0.00      -0.00      20.25      -0.00      -0.00      -0.00       0.00      69.57       0.00

   22  10.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -0.00      -3.18     -10.89      -0.00       0.00       0.00
                            0.02     -12.63      20.48       0.00      -0.00       0.00      -0.00      -0.00      -0.00     -45.96

   23  11.1  1.0  1.0       0.02       6.31      23.21       0.00       0.00       0.00       0.00      -0.00      -0.00      18.53
                            0.00      -0.00      -0.00       0.00      -0.00      -3.18     -10.90       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00      -0.00     -15.68      -0.00       0.00       0.00      -0.00     -53.91       0.00
                           -0.00       0.00       0.00       0.00     -15.68       0.00       0.00      53.91       0.00       0.00

   25  13.1  1.0  1.0       0.00      -0.00       0.00     -46.82       0.00      -0.00      -0.00      -0.00     178.23      -0.00
                           -0.00       0.00      -0.00       0.00     -46.82      -0.00       0.00    -178.23       0.00       0.00

   26  14.1  1.0  1.0       0.00      -0.00       0.00      -0.00      -0.00     -46.82     178.23      -0.00       0.00      -0.00
                           84.13     -50.16      20.03      -0.00       0.00      -0.00       0.00      -0.00       0.00     193.93

   27  15.1  1.0  1.0      84.13      42.44      33.41       0.00       0.00      -0.00       0.00       0.00       0.00    -156.65
                            0.00      -0.00      -0.00       0.00      -0.00     -46.82     178.23       0.00       0.00      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -156.55     -22.63      -0.00       0.00       0.00      -0.00       0.00       0.00      26.19

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     -79.12      -0.00       0.00     -13.37       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      79.12       0.00       0.00       0.00       0.00     -13.37       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     158.23     -26.66       0.00       0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      28.34       4.10      -0.00       0.00      -0.00       0.00       0.00       0.00      96.74

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       4.65       0.00      -0.00     -15.92      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       4.64      -0.00       0.00      -0.00       0.00      15.92       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -28.61     -98.38       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00     -35.92       0.00      -0.00     123.46       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -35.92       0.00       0.00       0.00      -0.00    -123.47       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       5.52     -38.16      -0.00       0.00      -0.00       0.00      -0.00       0.00      23.95

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -118.98     -10.92      75.57       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      52.73

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      66.21      -0.00      -0.00     252.05      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      66.21      -0.00      -0.00       0.00      -0.00    -252.05       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   45   1.1  1.0 -1.0      -0.00      -0.00      -0.00      55.95      -0.00       0.00       0.00      -0.00      -9.45       0.00
                           -0.00      -0.00      -0.00      -0.00      55.95      -0.00       0.00       9.45       0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00     -55.95       9.45      -0.00      -0.00       0.00
                           -0.00      41.50     103.86      -0.00       0.00      -0.00       0.00      -0.00       0.00      -6.30

   47   3.1  1.0 -1.0      -0.00     -69.21      87.86       0.00       0.00      -0.00       0.00       0.00       0.00      12.22
                           -0.00       0.00       0.00       0.00      -0.00     -55.95       9.45       0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00      55.94      -0.00       0.00       9.46       0.00      -0.00
                           -0.00       0.00       0.00     -55.94      -0.00       0.00      -0.00       0.00       9.46      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00      -0.00     -96.89      -0.00       0.00     -16.34      -0.00       0.00
                            0.00      -0.00      -0.00     -96.89      -0.00      -0.00      -0.00      -0.00      16.34       0.00

   50   6.1  1.0 -1.0      -0.00      -0.00      -0.00      20.25      -0.00      -0.00       0.00       0.00      69.57       0.00
                           -0.00       0.00      -0.00      -0.00      20.25      -0.00       0.00     -69.57      -0.00      -0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      25.41      87.33      -0.00      -0.00      -0.00
                           -0.00      23.16       6.22      -0.00       0.00       0.00       0.00       0.00      -0.00      78.63

   52   8.1  1.0 -1.0       0.00      23.98       0.59      -0.00       0.00      -0.00       0.00       0.00       0.00      82.17
                           -0.00       0.00       0.00      -0.00      -0.00     -25.41     -87.33       0.00       0.00       0.00

   53   9.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      20.25      -0.00       0.00     -69.57      -0.00       0.00
                           -0.00       0.00       0.00     -20.25       0.00       0.00       0.00      -0.00     -69.57      -0.00

   54  10.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      -0.00      -3.18     -10.89      -0.00       0.00       0.00
                           -0.02      12.63     -20.48      -0.00       0.00      -0.00       0.00       0.00       0.00      45.96

   55  11.1  1.0 -1.0       0.02       6.31      23.21       0.00       0.00       0.00       0.00      -0.00      -0.00      18.53
                           -0.00       0.00       0.00      -0.00       0.00       3.18      10.90      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00      -0.00     -15.68      -0.00       0.00       0.00      -0.00     -53.91       0.00
                            0.00      -0.00      -0.00      -0.00      15.68      -0.00      -0.00     -53.91      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00      -0.00       0.00     -46.82       0.00      -0.00      -0.00      -0.00     178.23      -0.00
                            0.00      -0.00       0.00      -0.00      46.82       0.00      -0.00     178.23      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00     -46.82     178.23      -0.00       0.00      -0.00
                          -84.13      50.16     -20.03       0.00      -0.00       0.00      -0.00       0.00      -0.00    -193.93

   59  15.1  1.0 -1.0      84.13      42.44      33.41       0.00       0.00      -0.00       0.00       0.00       0.00    -156.65
                           -0.00       0.00       0.00      -0.00       0.00      46.82    -178.23      -0.00      -0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00       0.00     -69.21       0.00       0.00      -0.00       0.00      23.98
                            0.00       0.00      -0.00      41.50       0.00       0.00      -0.00       0.00      23.16       0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00      -0.00      87.86       0.00       0.00      -0.00       0.00       0.59
                            0.00       0.00      -0.00     103.86       0.00       0.00      -0.00      -0.00       6.22       0.00

    4   4.1  0.0  0.0       0.00       0.00      55.95       0.00       0.00       0.00      -0.00      20.25       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00     -55.94     -96.89      -0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00      55.94     -96.89      -0.00       0.00       0.00
                            0.00       0.00      55.95       0.00      -0.00      -0.00      -0.00      20.25       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00     -55.95      -0.00      -0.00      -0.00      -0.00      25.41      -0.00
                            0.00       0.00      -0.00      -0.00     -55.95       0.00      -0.00      -0.00       0.00     -25.41

    7   7.1  0.0  0.0       0.00       0.00       0.00       9.45       0.00       0.00       0.00       0.00      87.33       0.00
                            0.00       0.00       0.00       0.00       9.45      -0.00      -0.00       0.00       0.00     -87.33

    8   8.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00       9.46     -16.34       0.00      -0.00       0.00
                            0.00       0.00       9.45      -0.00       0.00       0.00      -0.00     -69.57       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00      -9.45      -0.00       0.00       0.00      -0.00      69.57      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       9.46      16.34      -0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      12.22      -0.00       0.00       0.00      -0.00      82.17
                            0.00       0.00      -0.00      -6.30      -0.00      -0.00       0.00      -0.00      78.63       0.00

   11  11.1  0.0  0.0   25681.01       0.00      -0.00      -0.00      14.36       0.00      -0.00       0.00       0.00      -5.20
                            0.00       0.00      -0.00      17.77      -0.00      -0.00       0.00      -0.00     -24.42      -0.00

   12  12.1  0.0  0.0       0.00   26811.22      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.01
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.00

   13   1.1  1.0  1.0      -0.00      -0.00   11219.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00     158.13       0.00      -0.00       0.00      -0.00

   14   2.1  1.0  1.0      -0.00      -0.00       0.00   11219.95       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.77       0.00       0.00      -0.00      79.07      -0.00       0.00       0.00       0.00       0.52

   15   3.1  1.0  1.0      14.36      -0.00       0.00       0.00   11219.95       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -79.07      -0.00      -0.00       0.00       0.00       0.52      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   11219.96       0.00       0.00       0.00       0.00
                            0.00       0.00    -158.13       0.00       0.00      -0.00       0.00       3.04      -0.00      -0.00

   17   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00   11219.99       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   24103.87       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -3.04      -0.00       0.00      -0.00      -0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24103.89       0.00
                           24.42       0.01      -0.00      -0.00      -0.52       0.00       0.00       0.00       0.00     222.56

   20   8.1  1.0  1.0      -5.20       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24103.89
                            0.00       0.00       0.00      -0.52       0.00       0.00      -0.00       0.00    -222.56      -0.00

   21   9.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       3.04      -0.00      -0.00       0.00       0.00    -151.71      -0.00       0.00

   22  10.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.54       0.02       0.00       0.00       3.86       0.00      -0.00      -0.00       0.00      38.51

   23  11.1  1.0  1.0     -80.42       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       3.86       0.00       0.00      -0.00      -0.00     -38.51       0.00

   24  12.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       4.15       0.00      -0.00       0.00

   25  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -8.16      -0.00       0.00      -0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           68.95     168.05       0.00       0.00      -7.10      -0.00       0.00       0.00       0.00      -0.02

   27  15.1  1.0  1.0     133.51     168.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -7.10       0.00       0.00       0.00       0.00       0.02      -0.00

   28  16.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00     -55.91      -0.00      -0.00       0.00       0.00       2.73      -0.00
                           -4.82       0.00      -0.00       0.00     -55.91       0.00       0.00      -0.00       0.00      -2.73

   30   2.1  1.0  0.0       0.00       0.00      55.91      -0.00       0.00      -0.00       0.00       2.19       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00     -55.91     -96.84      -0.00       0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      55.91     -96.84       0.00       0.00      -0.00
                           -0.00      -0.00      55.91      -0.00       0.00      -0.00      -0.00       2.19      -0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00     -55.91       0.00       0.00       0.00      -0.00       2.55
                           -0.00       0.00      -0.00      55.91       0.00      -0.00      -0.00       0.00       2.55       0.00

   33   5.1  1.0  0.0       0.00       0.00      -0.00      -0.00      96.84      -0.00      -0.00      -0.00      -0.00      -0.30
                           -0.00       0.00      -0.00      96.84       0.00       0.00      -0.00       0.00       0.30       0.00

   34   6.1  1.0  0.0       0.00       0.00      -0.00      -2.19      -0.00      -0.00       0.00      -0.00      54.28       0.00
                          -17.81       0.00       0.00       0.00      -2.19      -0.00      -0.00      -0.00      -0.00     -54.29

   35   7.1  1.0  0.0       0.00       0.00      -2.73      -0.00      -0.00       0.00       0.00     -54.28      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -2.55      -0.30       0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -2.55       0.30      -0.00      -0.00      -0.00
                            0.00      -0.00       2.73       0.00      -0.00      -0.00      -0.00      54.29      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -2.19      -0.00      -0.00      -0.00      -0.00      75.99
                           -0.00      -0.00      -0.00       2.19      -0.00      -0.00      -0.00       0.00      75.99      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.35      -0.00       0.00       0.00       0.00     -92.51      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -1.04       2.36      -0.00       0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -1.04      -2.36      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.35      -0.00       0.00      -0.00      -0.00      92.50       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       1.68       0.00       0.00      -0.00       0.00     -16.82       0.00
                          130.07       0.03      -0.00      -0.00      -1.68       0.00       0.00       0.00       0.00     -16.82

   41  13.1  1.0  0.0       0.00       0.00       0.00       5.03       0.00       0.00       0.00       0.00      -0.00       0.00
                          286.34    -237.67      -0.00       0.00      -5.03       0.00       0.00      -0.00       0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       5.03       0.00       0.00       0.00       0.00       0.02      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -5.02       2.92      -0.00      -0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -5.02      -2.92       0.00       0.00       0.00
                            0.00       0.00      -5.03      -0.00      -0.00       0.00       0.00      -0.02      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   45   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.77      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      14.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -24.42      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -5.20       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           68.54      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0     -80.42       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.95    -168.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0     133.51     168.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00      -0.00       0.02       0.00       0.00       0.00      84.13       0.00       0.00       0.00
                           -0.00      -0.02      -0.00       0.00       0.00     -84.13      -0.00       0.00       0.00      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00       6.31       0.00      -0.00      -0.00      42.44       0.00       0.00       0.00
                            0.00      12.63       0.00      -0.00      -0.00      50.16       0.00       0.00     156.55      -0.00

    3   3.1  0.0  0.0      -0.00      -0.00      23.21      -0.00       0.00       0.00      33.41       0.00       0.00       0.00
                            0.00     -20.48       0.00      -0.00       0.00     -20.03       0.00       0.00      22.63       0.00

    4   4.1  0.0  0.0      -0.00      -0.00       0.00     -15.68     -46.82      -0.00       0.00       0.00       0.00       0.00
                          -20.25      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0      20.25      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      15.68      46.82      -0.00       0.00      -0.00      -0.00      79.12

    6   6.1  0.0  0.0      -0.00      -3.18       0.00       0.00      -0.00     -46.82      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       3.18      -0.00       0.00       0.00      46.82       0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00     -10.89       0.00       0.00      -0.00     178.23       0.00      -0.00       0.00       0.00
                            0.00       0.00      10.90      -0.00      -0.00      -0.00    -178.23       0.00       0.00      -0.00

    8   8.1  0.0  0.0     -69.57      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -53.91     178.23       0.00      -0.00       0.00      -0.00      13.37

    9   9.1  0.0  0.0      -0.00       0.00      -0.00     -53.91     178.23       0.00       0.00      -0.00       0.00       0.00
                          -69.57       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00      18.53       0.00      -0.00      -0.00    -156.65       0.00       0.00       0.00
                           -0.00      45.96      -0.00      -0.00      -0.00    -193.93       0.00      -0.00     -26.19      -0.00

   11  11.1  0.0  0.0      -0.00      -0.00     -80.42      -0.00      -0.00       0.00     133.51      -0.00       0.00       0.00
                           -0.00      68.54       0.00      -0.00       0.00     -68.95       0.00       0.00       4.82      -0.00

   12  12.1  0.0  0.0      -0.00      -0.00       0.02      -0.00       0.00       0.00     168.05      -0.00       0.00       0.00
                           -0.00      -0.02      -0.00      -0.00       0.00    -168.05      -0.00       0.00      -0.00       0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      55.91
                           -3.04      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -55.91      -0.00
                            0.00      -0.00      -3.86       0.00      -0.00      -0.00       7.10       0.00      -0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -3.86      -0.00       0.00       0.00       7.10      -0.00      -0.00      55.91      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      55.91

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -4.15       8.16      -0.00      -0.00       0.00      -0.00      96.84

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.19
                          151.71       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.73       0.00
                            0.00      -0.00      38.51       0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00     -38.51      -0.00      -0.00       0.00       0.02       0.00       0.00       2.73       0.00

   21   9.1  1.0  1.0   24104.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       2.19

   22  10.1  1.0  1.0       0.00   24104.10       0.00       0.00       0.00       0.00       0.00       0.00      -0.35       0.00
                           -0.00       0.00     -70.89       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00   24104.10       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      70.89      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.35      -0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   24104.10       0.00       0.00       0.00       0.00      -0.00      -1.68
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   25943.33       0.00       0.00       0.00      -0.00      -5.03
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     -15.92      -0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25943.37       0.00       0.00      -5.03      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00    -218.90      -0.00       0.00      -0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   25943.37       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     218.90      -0.00      -0.00      -5.03      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26367.57      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      15.92       0.00       0.00      -0.00       0.00       0.00

   29   1.1  1.0  0.0      -0.00      -0.35      -0.00      -0.00      -0.00      -5.03       0.00      -0.00   11219.92       0.00
                            0.00      -0.00       0.35       0.00       0.00      -0.00       5.03      -0.00       0.00       0.00

   30   2.1  1.0  0.0      -0.00       0.00       0.00      -1.68      -5.03      -0.00       0.00       0.00       0.00   11219.95
                           -2.19      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       2.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       1.68       5.03      -0.00       0.00      -0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00      -0.00       1.04      -0.00      -0.00      -0.00       5.02       0.00       0.00       0.00
                            0.00       1.04       0.00      -0.00      -0.00       5.02      -0.00       0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00      -0.00       2.36       0.00      -0.00      -0.00       2.92       0.00       0.00       0.00
                            0.00      -2.36       0.00      -0.00      -0.00      -2.92      -0.00       0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00      92.51       0.00      -0.00      -0.00      -0.02      -0.00      -0.00       0.00       0.00
                           -0.00       0.00     -92.50      -0.00       0.00       0.00       0.02      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00      16.82       0.00       0.00      -0.00       0.00       0.00       0.00
                          -75.99      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0     -75.99      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      16.82       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   37   9.1  1.0  0.0      -0.00      -0.00     -75.69       0.00      -0.00       0.00       0.01      -0.00       0.00       0.00
                           -0.00     -75.68       0.00       0.00       0.00       0.01      -0.00      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00      -0.00      -0.00    -130.29      -0.03       0.00       0.00      -0.00       0.00       0.00
                           75.68      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   39  11.1  1.0  0.0      75.69       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -130.29      -0.03      -0.00       0.00      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0      -0.00     130.29       0.00       0.00      -0.00      -0.02       0.00      -0.00       0.00       0.00
                           -0.00       0.00     130.29      -0.00       0.00      -0.00      -0.02      -0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.00       0.03      -0.00       0.00      -0.00     154.79       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.03      -0.00       0.00       0.00     154.79       0.00      -0.00      -0.00

   42  14.1  1.0  0.0      -0.00      -0.00       0.00       0.02    -154.79       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00      -0.00      -0.00      -0.00     -11.26      -0.00      -0.00

   43  15.1  1.0  0.0      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      11.26       0.00       0.00
                            0.00      -0.00      -0.00       0.02    -154.79       0.00      -0.00       0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -0.00     -11.26      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      11.26      -0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -55.91
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      55.91      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      55.91      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      55.91

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      96.84

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.19
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.73      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.73       0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.19

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.35      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.35      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.68
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.03       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -5.03      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.03

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -28.34       0.00       0.00      -0.00       0.00      -0.00      -5.52

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -4.10       0.00      -0.00      -0.00      -0.00       0.00      38.16

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -79.12       0.00       0.00       0.00      -0.00      -4.64       0.00      -0.00      35.92       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -4.65       0.00       0.00      35.92      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -158.23      -0.00       0.00      -0.00      -0.00      28.61      -0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      26.66       0.00      -0.00       0.00       0.00      98.38       0.00      -0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      15.92      -0.00      -0.00    -123.46       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.37      -0.00       0.00      -0.00       0.00     -15.92      -0.00      -0.00     123.47      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -96.74      -0.00      -0.00      -0.00      -0.00      -0.00     -23.95

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      17.81      -0.00      -0.00       0.00      -0.00       0.00    -130.07

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.03

   13   1.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -2.73       0.00       0.00       0.35       0.00       0.00
                          -55.91       0.00       0.00      -0.00       0.00      -2.73       0.00      -0.00       0.35       0.00

   14   2.1  1.0  1.0      -0.00       0.00      -0.00      -2.19      -0.00       0.00       0.00      -0.00      -0.00       1.68
                            0.00     -55.91     -96.84      -0.00       0.00      -0.00      -2.19      -0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00     -55.91      96.84      -0.00      -0.00       0.00      -2.19       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       2.19      -0.00       0.00       0.00       0.00      -0.00       1.68

   16   4.1  1.0  1.0      55.91       0.00      -0.00      -0.00       0.00      -2.55      -0.00       0.00      -1.04       0.00
                            0.00       0.00      -0.00       0.00       2.55       0.00       0.00       1.04       0.00      -0.00

   17   5.1  1.0  1.0     -96.84       0.00      -0.00       0.00       0.00       0.30      -0.00       0.00      -2.36      -0.00
                            0.00       0.00       0.00       0.00       0.30       0.00       0.00      -2.36       0.00      -0.00

   18   6.1  1.0  1.0       0.00       0.00      -0.00      -0.00     -54.28      -0.00      -0.00     -92.51      -0.00       0.00
                           -2.19      -0.00      -0.00       0.00      -0.00     -54.29      -0.00       0.00     -92.50      -0.00

   19   7.1  1.0  1.0       0.00      -0.00      -0.00      54.28      -0.00      -0.00      -0.00      -0.00      -0.00     -16.82
                            0.00      -2.55      -0.30       0.00       0.00       0.00     -75.99      -0.00      -0.00      -0.00

   20   8.1  1.0  1.0      -0.00       2.55      -0.30       0.00       0.00      -0.00      75.99       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      54.29      -0.00       0.00       0.00       0.00       0.00      16.82

   21   9.1  1.0  1.0       2.19       0.00       0.00       0.00       0.00     -75.99      -0.00       0.00      75.69      -0.00
                           -0.00      -0.00      -0.00       0.00      75.99      -0.00       0.00     -75.68       0.00       0.00

   22  10.1  1.0  1.0      -0.00      -0.00      -0.00      92.51       0.00      -0.00      -0.00      -0.00       0.00     130.29
                           -0.00      -1.04       2.36      -0.00       0.00      -0.00      75.68       0.00       0.00      -0.00

   23  11.1  1.0  1.0      -0.00       1.04       2.36       0.00       0.00       0.00     -75.69      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      92.50       0.00      -0.00      -0.00      -0.00       0.00    -130.29

   24  12.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      16.82      -0.00       0.00    -130.29      -0.00       0.00
                           -1.68       0.00       0.00       0.00       0.00     -16.82      -0.00       0.00     130.29       0.00

   25  13.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.03       0.00      -0.00
                           -5.03       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.03      -0.00

   26  14.1  1.0  1.0      -0.00      -0.00      -0.00      -0.02       0.00       0.00       0.00       0.00      -0.00      -0.02
                            0.00      -5.02       2.92      -0.00      -0.00       0.00      -0.01       0.00       0.00       0.00

   27  15.1  1.0  1.0      -0.00       5.02       2.92      -0.00      -0.00      -0.00       0.01       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.02      -0.00      -0.00       0.00      -0.00      -0.00       0.02

   28  16.1  1.0  1.0      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   11219.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   11219.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   11219.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   24103.87       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   24103.89       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   24103.89       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   24104.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24104.10       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24104.10       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24104.10
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       2.73      -0.00      -0.00      -0.35      -0.00      -0.00
                          -55.91       0.00       0.00      -0.00       0.00      -2.73       0.00      -0.00       0.35       0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00       2.19       0.00      -0.00      -0.00       0.00       0.00      -1.68
                            0.00     -55.91     -96.84      -0.00       0.00      -0.00      -2.19      -0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00      55.91     -96.84       0.00       0.00      -0.00       2.19      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       2.19      -0.00       0.00       0.00       0.00      -0.00       1.68

   48   4.1  1.0 -1.0     -55.91       0.00       0.00       0.00      -0.00       2.55       0.00      -0.00       1.04      -0.00
                            0.00      -0.00      -0.00       0.00       2.55       0.00       0.00       1.04       0.00      -0.00

   49   5.1  1.0 -1.0      96.84      -0.00      -0.00      -0.00      -0.00      -0.30       0.00      -0.00       2.36       0.00
                            0.00       0.00      -0.00       0.00       0.30       0.00       0.00      -2.36       0.00      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      54.28       0.00       0.00      92.51       0.00      -0.00
                           -2.19      -0.00      -0.00      -0.00      -0.00     -54.29      -0.00       0.00     -92.50      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00     -54.28      -0.00       0.00       0.00       0.00       0.00      16.82
                            0.00      -2.55      -0.30       0.00      -0.00       0.00     -75.99      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00      -2.55       0.30      -0.00      -0.00      -0.00     -75.99      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      54.29      -0.00      -0.00       0.00       0.00       0.00      16.82

   53   9.1  1.0 -1.0      -2.19      -0.00      -0.00      -0.00      -0.00      75.99      -0.00      -0.00     -75.69       0.00
                           -0.00      -0.00      -0.00       0.00      75.99      -0.00      -0.00     -75.68       0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00     -92.51      -0.00       0.00       0.00      -0.00      -0.00    -130.29
                           -0.00      -1.04       2.36      -0.00       0.00      -0.00      75.68      -0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00      -1.04      -2.36      -0.00      -0.00      -0.00      75.69       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      92.50       0.00      -0.00      -0.00      -0.00      -0.00    -130.29

   56  12.1  1.0 -1.0       0.00       0.00      -0.00       0.00     -16.82       0.00      -0.00     130.29       0.00       0.00
                           -1.68       0.00       0.00       0.00       0.00     -16.82      -0.00       0.00     130.29      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.03      -0.00       0.00
                           -5.03       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.03      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.02      -0.00      -0.00      -0.00      -0.00       0.00       0.02
                            0.00      -5.02       2.92      -0.00      -0.00       0.00      -0.01       0.00       0.00       0.00

   59  15.1  1.0 -1.0       0.00      -5.02      -2.92       0.00       0.00       0.00      -0.01      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.02      -0.00      -0.00       0.00      -0.00      -0.00       0.02

   60  16.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                          118.98      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     -69.21       0.00       0.00      -0.00
                           10.92      -0.00       0.00      -0.00       0.00     -41.50      -0.00      -0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      87.86       0.00       0.00      -0.00
                          -75.57      -0.00       0.00       0.00       0.00    -103.86      -0.00      -0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      55.95       0.00       0.00       0.00      -0.00      20.25
                           -0.00      -0.00     -66.21      -0.00       0.00       0.00      -0.00      55.94      96.89       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      55.94     -96.89      -0.00
                            0.00     -66.21       0.00       0.00     -55.95      -0.00       0.00       0.00       0.00     -20.25

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -55.95      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      55.95      -0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       9.45       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -9.45       0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       9.46     -16.34       0.00
                            0.00    -252.05       0.00       0.00      -9.45       0.00      -0.00      -0.00       0.00      69.57

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -9.45      -0.00       0.00       0.00      -0.00      69.57
                            0.00       0.00     252.05      -0.00      -0.00      -0.00       0.00      -9.46     -16.34       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      12.22      -0.00       0.00       0.00
                          -52.73       0.00      -0.00      -0.00       0.00       6.30       0.00       0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      14.36       0.00      -0.00       0.00
                         -286.34      -0.00      -0.00      -0.00       0.00     -17.77       0.00       0.00      -0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                          237.67      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  1.0       0.00       5.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       5.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       5.03       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.03      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00      -5.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00      -2.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.03      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00    -154.79      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     154.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0     154.79       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -11.26       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00     -11.26       0.00       0.00       0.00       0.00       0.00       0.00
                         -154.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0      -0.00       0.00      11.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      11.26      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      55.91       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     -55.91       0.00       0.00      -0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -55.91      -0.00      -0.00       0.00      -0.00      -2.19
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -55.91     -96.84      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -55.91      96.84      -0.00
                            0.00       0.00       0.00       0.00      55.91      -0.00      -0.00      -0.00      -0.00       2.19

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      55.91       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      55.91       0.00       0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     -96.84       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      96.84       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       2.19       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -2.19      -0.00      -0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       2.73       0.00       0.00      -0.00      -0.00      54.28
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -2.55      -0.30       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       2.55      -0.30       0.00
                            0.00       0.00       0.00       0.00       2.73       0.00      -0.00      -0.00      -0.00      54.29

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       2.19       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       2.19      -0.00      -0.00      -0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.35       0.00      -0.00      -0.00      -0.00      92.51
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.04       2.36      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       1.04       2.36       0.00
                            0.00       0.00       0.00       0.00      -0.35      -0.00       0.00      -0.00      -0.00      92.50

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -1.68      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -1.68       0.00       0.00       0.00

   41  13.1  1.0  0.0   25943.33       0.00       0.00       0.00      -0.00      -5.03      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -5.03       0.00       0.00      -0.00

   42  14.1  1.0  0.0       0.00   25943.37       0.00       0.00      -5.03      -0.00      -0.00      -0.00      -0.00      -0.02
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -5.02       2.92      -0.00

   43  15.1  1.0  0.0       0.00       0.00   25943.37       0.00       0.00       0.00      -0.00       5.02       2.92      -0.00
                           -0.00      -0.00       0.00       0.00      -5.03      -0.00      -0.00       0.00       0.00      -0.02

   44  16.1  1.0  0.0       0.00       0.00       0.00   26367.57      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   45   1.1  1.0 -1.0      -0.00      -5.03       0.00      -0.00   11219.92       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       5.03      -0.00      -0.00       0.00       0.00    -158.13      -0.00       0.00

   46   2.1  1.0 -1.0      -5.03      -0.00       0.00       0.00       0.00   11219.95       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00     -79.07       0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00   11219.95       0.00       0.00       0.00
                            5.03      -0.00       0.00      -0.00      -0.00      79.07       0.00       0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00      -0.00       5.02       0.00       0.00       0.00       0.00   11219.96       0.00       0.00
                           -0.00       5.02      -0.00       0.00     158.13      -0.00      -0.00       0.00      -0.00      -3.04

   49   5.1  1.0 -1.0      -0.00      -0.00       2.92       0.00       0.00       0.00       0.00       0.00   11219.99       0.00
                           -0.00      -2.92      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   24103.87
                            0.00       0.00       0.02      -0.00      -0.00       0.00       0.00       3.04       0.00      -0.00

   51   7.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.52      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.52      -0.00      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0      -0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00      -3.04       0.00       0.00      -0.00      -0.00     151.71

   54  10.1  1.0 -1.0      -0.03       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -3.86      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00       0.00      -0.00      -0.00      -3.86      -0.00      -0.00       0.00       0.00

   56  12.1  1.0 -1.0      -0.00      -0.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.02      -0.00      -0.00       0.00       0.00       0.00      -4.15      -0.00

   57  13.1  1.0 -1.0      -0.00     154.79       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     154.79       0.00       0.00      -0.00       0.00      -0.00       8.16       0.00

   58  14.1  1.0 -1.0    -154.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -11.26      -0.00      -0.00       7.10       0.00      -0.00      -0.00

   59  15.1  1.0 -1.0      -0.00      -0.00       0.00      11.26       0.00       0.00       0.00       0.00       0.00       0.00
                         -154.79       0.00      -0.00       0.00      -0.00       7.10      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00      -0.00     -11.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      11.26      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.02       0.00       0.00       0.00      84.13       0.00
                            0.00       0.00       0.00       0.02       0.00      -0.00      -0.00      84.13       0.00      -0.00

    2   2.1  0.0  0.0       0.00      23.98      -0.00      -0.00       6.31       0.00      -0.00      -0.00      42.44       0.00
                          -23.16      -0.00      -0.00     -12.63      -0.00       0.00       0.00     -50.16      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.59      -0.00      -0.00      23.21      -0.00       0.00       0.00      33.41       0.00
                           -6.22      -0.00      -0.00      20.48      -0.00       0.00      -0.00      20.03      -0.00      -0.00

    4   4.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       0.00     -15.68     -46.82      -0.00       0.00       0.00
                            0.00       0.00      20.25       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00      20.25      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     -15.68     -46.82       0.00      -0.00       0.00

    6   6.1  0.0  0.0      25.41      -0.00      -0.00      -3.18       0.00       0.00      -0.00     -46.82      -0.00      -0.00
                           -0.00      25.41      -0.00       0.00      -3.18       0.00      -0.00      -0.00     -46.82      -0.00

    7   7.1  0.0  0.0      87.33       0.00       0.00     -10.89       0.00       0.00      -0.00     178.23       0.00      -0.00
                           -0.00      87.33      -0.00      -0.00     -10.90       0.00       0.00       0.00     178.23      -0.00

    8   8.1  0.0  0.0      -0.00       0.00     -69.57      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      53.91    -178.23      -0.00       0.00      -0.00

    9   9.1  0.0  0.0      -0.00       0.00      -0.00       0.00      -0.00     -53.91     178.23       0.00       0.00      -0.00
                            0.00      -0.00      69.57      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  0.0  0.0      -0.00      82.17       0.00       0.00      18.53       0.00      -0.00      -0.00    -156.65       0.00
                          -78.63      -0.00       0.00     -45.96       0.00       0.00       0.00     193.93      -0.00       0.00

   11  11.1  0.0  0.0       0.00      -5.20      -0.00      -0.00     -80.42      -0.00      -0.00       0.00     133.51      -0.00
                           24.42       0.00       0.00     -68.54      -0.00       0.00      -0.00      68.95      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.01      -0.00      -0.00       0.02      -0.00       0.00       0.00     168.05      -0.00
                            0.01       0.00       0.00       0.02       0.00       0.00      -0.00     168.05       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0      -2.73       0.00       0.00       0.35       0.00       0.00       0.00       5.03      -0.00       0.00
                            0.00      -2.73       0.00      -0.00       0.35       0.00       0.00      -0.00       5.03      -0.00

   30   2.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00       1.68       5.03       0.00      -0.00      -0.00
                            0.00      -0.00      -2.19      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   31   3.1  1.0  0.0      -0.00       0.00      -2.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       1.68       5.03      -0.00       0.00      -0.00

   32   4.1  1.0  0.0       0.00      -2.55      -0.00       0.00      -1.04       0.00       0.00       0.00      -5.02      -0.00
                            2.55       0.00       0.00       1.04       0.00      -0.00      -0.00       5.02      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.30      -0.00       0.00      -2.36      -0.00       0.00       0.00      -2.92      -0.00
                            0.30       0.00       0.00      -2.36       0.00      -0.00      -0.00      -2.92      -0.00       0.00

   34   6.1  1.0  0.0     -54.28      -0.00      -0.00     -92.51      -0.00       0.00       0.00       0.02       0.00       0.00
                           -0.00     -54.29      -0.00       0.00     -92.50      -0.00       0.00       0.00       0.02      -0.00

   35   7.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00     -16.82      -0.00      -0.00       0.00      -0.00
                            0.00       0.00     -75.99      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   36   8.1  1.0  0.0       0.00      -0.00      75.99       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      16.82       0.00      -0.00       0.00      -0.00

   37   9.1  1.0  0.0       0.00     -75.99      -0.00       0.00      75.69      -0.00       0.00      -0.00      -0.01       0.00
                           75.99      -0.00       0.00     -75.68       0.00       0.00       0.00       0.01      -0.00      -0.00

   38  10.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00     130.29       0.03      -0.00      -0.00       0.00
                            0.00      -0.00      75.68       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00     -75.69      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00    -130.29      -0.03      -0.00       0.00      -0.00

   40  12.1  1.0  0.0      16.82      -0.00       0.00    -130.29      -0.00       0.00       0.00       0.02      -0.00       0.00
                            0.00     -16.82      -0.00       0.00     130.29       0.00       0.00      -0.00      -0.02      -0.00

   41  13.1  1.0  0.0       0.00      -0.00      -0.00      -0.03       0.00      -0.00      -0.00    -154.79      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.03      -0.00      -0.00       0.00     154.79       0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.02     154.79       0.00      -0.00      -0.00
                           -0.00       0.00      -0.01       0.00       0.00       0.00      -0.00       0.00      -0.00     -11.26

   43  15.1  1.0  0.0      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00     -11.26
                           -0.00      -0.00       0.00      -0.00      -0.00       0.02    -154.79       0.00       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      11.26      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      11.26      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       3.04       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.52      -0.00       0.00       3.86      -0.00       0.00       0.00      -7.10      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.52       0.00      -0.00       3.86       0.00      -0.00      -0.00      -7.10       0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       4.15      -8.16       0.00       0.00      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -151.71      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   51   7.1  1.0 -1.0   24103.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -222.56      -0.00       0.00     -38.51      -0.00       0.00       0.00       0.02       0.00

   52   8.1  1.0 -1.0       0.00   24103.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          222.56       0.00       0.00      38.51       0.00       0.00      -0.00      -0.02      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00   24104.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   24104.10       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -38.51       0.00      -0.00      70.89      -0.00       0.00       0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   24104.10       0.00       0.00       0.00       0.00       0.00
                           38.51      -0.00      -0.00     -70.89       0.00       0.00      -0.00      -0.00       0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   24104.10       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   25943.33       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      15.92

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25943.37       0.00       0.00
                           -0.00       0.02       0.00      -0.00       0.00      -0.00       0.00       0.00     218.90       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25943.37       0.00
                           -0.02       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -218.90       0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26367.57
                           -0.00       0.00       0.00      -0.00      -0.00       0.00     -15.92      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by  -8132.54469961 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   13436.876       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   13436.882       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   13436.890       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   13436.890       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   13436.886       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   25680.948       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   25680.952
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000      79.119      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000     -79.123      13.364      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.003     -97.879     124.246       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      79.111      -0.000       0.000      13.372
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000      -0.000    -137.023      -0.000       0.000     -23.111
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000      28.642      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      35.937     123.502      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.007      33.906       0.838      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      28.637      -0.000       0.000     -98.383
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -4.498     -15.406      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.022       8.923      32.828       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000      -0.000     -22.177      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000      -0.000       0.000     -66.215       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000     -66.211     252.055      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            118.981      60.013      47.255       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -156.546     -22.629      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     -79.120      -0.000       0.000     -13.365

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      79.120       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000     158.226     -26.656       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.002      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      28.336       4.096      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       4.646       0.000      -0.000     -15.924

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       4.644      -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000     -28.613     -98.381       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     -35.920       0.000      -0.000     123.464

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -35.920       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.026       5.516     -38.161      -0.000       0.000      -0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -118.983     -10.924      75.573       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      66.214      -0.000      -0.000     252.050

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      66.214      -0.000      -0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -79.119       0.000      -0.000     -13.370

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003     -58.686    -146.878       0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      79.123     -13.364      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      79.109       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     137.025       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     -28.642       0.000      -0.000      98.383

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007     -32.754      -8.800       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      35.937     123.501      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      28.637      -0.000      -0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.022     -17.856      28.957       0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -4.500     -15.412       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     -22.176       0.000       0.000      76.245

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     -66.215      -0.000       0.000    -252.053

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              118.981     -70.939      28.325      -0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000     -66.211     252.055       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.003       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000     -97.879       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     124.246       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      79.119       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      79.111
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000     -79.123      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000      13.364       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      13.372
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           25680.955       0.000       0.000       0.000     -13.370      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   25680.981       0.000       0.000       0.000       0.000      17.281      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   25681.011       0.000      -0.000      -0.000      20.307       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26811.216      -0.000      -0.000      -0.001       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            -13.370       0.000      -0.000      -0.000   11219.917       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000   11219.946       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      17.281      20.307      -0.001       0.000       0.000   11219.945       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000   11219.961
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             98.382       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     116.205      -7.348       0.012       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      26.203    -113.727       0.030       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+            -76.246       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+            252.053      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000    -221.539     188.814     237.661       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      26.193      -4.823       0.000       0.000       0.000     -79.076       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000     -79.067

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              -13.365       0.000      -0.000      -0.000      79.076      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      79.067       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000     136.950       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      96.737     -17.813       0.000       0.000       0.000      -3.098      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -3.603

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.918       0.000       0.000      -0.000       3.866       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       3.091      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -1.468

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                             -123.465       0.000      -0.000       0.000      -0.499      -0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      23.951     130.071       0.031      -0.000      -0.000      -2.372       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      52.727     286.335    -237.672      -0.000       0.000      -7.109       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -7.102

   15    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                             -252.050       0.000       0.000       0.000      -7.110      -0.000      -0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.001       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000     158.134

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       8.914     -25.131       0.001       0.000      -0.000      79.075      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -79.075      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.372       0.000       0.000       0.000    -158.134       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -23.111      -0.000      -0.000       0.000      -0.002      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -3.043

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -111.197      34.532       0.012      -0.000      -0.000      -0.517       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.517       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               98.383       0.000       0.000       0.000       3.044      -0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -65.000     -96.932       0.030       0.000       0.000       3.862       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       3.862       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     274.265      97.516     237.661       0.000       0.000      -7.103      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -7.103       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000       0.000       0.007      -0.000      -0.000       0.022       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000      -0.000       0.000      33.906      -0.000      -0.000       8.923       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000      -0.000       0.000       0.838      -0.000      -0.000      32.828      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      28.642       0.000      -0.000      -0.000      -0.000       0.000     -22.177
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            -137.023      -0.000       0.000       0.000      28.637      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000      -0.000      35.937      -0.000      -0.000      -4.498       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000     123.502       0.000       0.000     -15.406       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>             -23.111       0.000      -0.000       0.000     -98.383      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000      98.382      -0.000       0.000      -0.000       0.000      -0.000     -76.246
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000      -0.000     116.205       0.000       0.000      26.203       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000       0.000       0.000      -7.348      -0.000      -0.000    -113.727      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.000      -0.000       0.000       0.012      -0.000      -0.000       0.030      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          11219.987       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   24103.869       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   24103.886       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   24103.886       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   24104.013       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   24104.099       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   24104.099       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   24104.103
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -3.866       0.000      -0.000       0.499       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                             -136.950      -0.000       0.000      -0.000      -3.091      -0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000       3.098      -0.000       0.000       0.000       0.000      -0.000       2.372

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       3.603       0.000       0.000       1.468       0.000      -0.000

    5    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.418       0.000       0.000      -3.332       0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000     -76.776      -0.000       0.000    -130.817      -0.000

    7    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.418       0.000       0.000       0.000    -107.469      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      76.776      -0.000       0.000       0.000       0.000       0.000      23.781

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000     107.469      -0.000       0.000    -107.033       0.000       0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                3.332      -0.000       0.000      -0.000     107.033       0.000       0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000     130.817       0.000      -0.000      -0.000      -0.000       0.000    -184.254

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -23.781      -0.000       0.000     184.254       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.003      -0.000      -0.000       0.038      -0.000

   14    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                4.132      -0.000      -0.000       0.000      -0.018       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.030      -0.000      -0.000       0.000      -0.000      -0.000       0.034

   16    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.001       0.000       0.000       0.002       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002      -0.000       0.000      -0.000      -3.044      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.517       0.000      -0.000      -3.862       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.517      -0.000       0.000      -3.862      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.043      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -4.149

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     151.707       0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     222.562       0.000      -0.000      38.506       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -222.562      -0.000      -0.000     -38.513      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -151.707      -0.000       0.000       0.000       0.000      -0.000       0.001

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      38.513      -0.000       0.000     -70.891       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -38.506       0.000       0.000      70.891      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.149       0.000      -0.000       0.000      -0.001      -0.000       0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.156      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.024      -0.000       0.000      -0.002       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.024      -0.000       0.000       0.002       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.002

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000     118.981       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |0 0>              -0.000      -0.000      60.013       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     156.546      -0.000      -0.000      -0.000

    3    1  |0 0>               0.000       0.000      47.255       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      22.629       0.000       0.000       0.000

    4    1  |0 0>             -66.215      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -79.120       0.000

    5    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      79.120      -0.000       0.000

    6    1  |0 0>              -0.000     -66.211      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    -158.226

    7    1  |0 0>              -0.000     252.055       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      26.656

    8    1  |0 0>              -0.000      -0.000       0.000       0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      13.365      -0.000      -0.000

    9    1  |0 0>             252.053       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      13.365      -0.000

   10    1  |0 0>              -0.000      -0.000    -221.539       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -26.193      -0.000      -0.000       0.000

   11    1  |0 0>              -0.000       0.000     188.814      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       4.823      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000     237.661      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -79.076       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000     -79.067

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      79.076      -0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      79.067       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000     136.950       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -3.098      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -3.603

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.866       0.000      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       3.091      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -1.468

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.499      -0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -2.372       0.000

   13    1  |1 1>+          25943.331       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -7.109       0.000

   14    1  |1 1>+              0.000   25943.370       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -7.102

   15    1  |1 1>+              0.000       0.000   25943.371       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -7.110      -0.000      -0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000   26367.569       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.001       0.000      -0.000

    1    1  |1 0>               0.000      -0.000      -0.000       0.000   11219.917       0.000       0.000       0.000
                                0.000      -0.000       7.110      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000   11219.946       0.000       0.000
                               -0.000       0.000       0.000      -0.001      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000   11219.945       0.000
                                7.109      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000   11219.961
                               -0.000       7.102      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.132      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.030      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.001      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.003      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.018      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.002      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.038      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.034      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     218.908       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -15.920      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -218.908       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      15.920      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      79.076       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -79.076       0.000      -0.000       0.000
                               -0.000      -0.000       7.103       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000     -79.070
                                0.000       7.103      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      79.070       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000    -136.948       0.000
                                8.156      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       3.098       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       3.866       0.000       0.000      -0.000
                               -0.000      -0.000      -0.024      -0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       3.603
                                0.000       0.024       0.000       0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       3.091       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.499       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.002      -0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       1.468
                                0.000       0.002      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -2.373      -0.000      -0.000
                                0.000      -0.000       0.000       0.002       0.000      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -7.109      -0.000      -0.000
                               -0.000       0.000      -0.000     -15.925      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000      -7.110      -0.000      -0.000      -0.000
                               -0.000      -0.000    -218.902      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       7.102
                                0.000     218.902      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.001       0.000
                               15.925       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.026

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -28.336       0.000       0.000      -0.000       0.000      -0.000      -5.516

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.096       0.000      -0.000      -0.000      -0.000       0.000      38.161

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -4.644       0.000      -0.000      35.920       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -4.646       0.000       0.000      35.920      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002       0.000      -0.000      -0.000      28.613      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      98.381       0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      15.924      -0.000      -0.000    -123.464       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -15.918      -0.000      -0.000     123.465      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -96.737      -0.000      -0.000      -0.000      -0.000      -0.000     -23.951

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      17.813      -0.000      -0.000       0.000      -0.000       0.000    -130.071

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.031

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -3.866       0.000      -0.000       0.499       0.000

    2    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                             -136.950      -0.000       0.000      -0.000      -3.091      -0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000       3.098      -0.000       0.000       0.000       0.000      -0.000       2.372

    4    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       3.603       0.000       0.000       1.468       0.000      -0.000

    5    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.418       0.000       0.000      -3.332       0.000      -0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000     -76.776      -0.000       0.000    -130.817      -0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.418       0.000       0.000       0.000    -107.469      -0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      76.776      -0.000       0.000       0.000       0.000       0.000      23.781

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000     107.469      -0.000       0.000    -107.033       0.000       0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                3.332      -0.000       0.000      -0.000     107.033       0.000       0.000      -0.000

   11    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000     130.817       0.000      -0.000      -0.000      -0.000       0.000    -184.254

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -23.781      -0.000       0.000     184.254       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.003      -0.000      -0.000       0.038      -0.000

   14    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                4.132      -0.000      -0.000       0.000      -0.018       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.030      -0.000      -0.000       0.000      -0.000      -0.000       0.034

   16    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.001       0.000       0.000       0.002       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           11219.987       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   24103.869       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   24103.886       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   24103.886       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   24104.013       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   24104.099       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   24104.099       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   24104.103
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000      -0.000      -3.866       0.000       0.000       0.499       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-             -0.000      -3.098      -0.000       0.000       0.000      -0.000      -0.000       2.373
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>-            136.948      -0.000      -0.000       0.000      -3.091       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-             -0.000      -0.000       0.000      -3.603      -0.000       0.000      -1.468       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.418      -0.000       0.000      -3.333      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.000     -76.770      -0.000      -0.000    -130.823      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000      76.770       0.000      -0.000      -0.000      -0.000      -0.000     -23.791
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-             -0.418       0.000       0.000       0.000     107.464       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000    -107.464       0.000       0.000     107.038      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.000     130.823       0.000      -0.000      -0.000       0.000       0.000     184.252
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              3.333       0.000       0.000       0.000    -107.038      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000      -0.000      23.791      -0.000       0.000    -184.252      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000      -0.000       0.003      -0.000      -0.000      -0.038       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000      -0.030       0.000       0.000       0.000       0.000      -0.000      -0.034
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 1>-              4.132      -0.000      -0.000      -0.000       0.018       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   16    1  |1 1>-              0.000      -0.000       0.000       0.001      -0.000      -0.000       0.002      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              118.983      -0.000      -0.000      -0.000      -0.000      -0.003      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               10.924      -0.000       0.000      -0.000      -0.000      58.686       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -75.573      -0.000       0.000       0.000      -0.000     146.878       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -66.214      -0.000      -0.000      -0.000       0.000     -79.109

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -66.214       0.000       0.000      79.119       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000     -79.123       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      13.364      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -252.050       0.000       0.000      13.370      -0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     252.050      -0.000       0.000       0.000      -0.000      13.372

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -52.727       0.000      -0.000      -0.000      -0.000      -8.914      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -286.335      -0.000      -0.000      -0.000      -0.000      25.131      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              237.672      -0.000      -0.000      -0.000      -0.000      -0.001      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       7.110      -0.000       0.000      -0.000      -0.000     158.134

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.001       0.000      -0.000      79.075      -0.000

    3    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                7.109      -0.000       0.000      -0.000       0.000     -79.075      -0.000      -0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       7.102      -0.000       0.000    -158.134       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.132      -0.000       0.000      -0.002      -0.000      -0.000      -0.000

    6    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.030      -0.000       0.000      -0.000      -0.000      -3.043

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.001      -0.000      -0.000      -0.517       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.003      -0.000       0.000      -0.000       0.000      -0.517       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.018      -0.000      -0.000       3.044      -0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.002       0.000       0.000       3.862       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.038      -0.000       0.000      -0.000       0.000       3.862       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.034      -0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     218.908       0.000      -0.000       0.000      -0.000       0.000

   14    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -15.920       0.000       0.000      -7.103      -0.000

   15    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -218.908       0.000       0.000       0.000       0.000      -7.103       0.000       0.000

   16    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      15.920      -0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -79.076      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      79.076       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      79.070
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     -79.070       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     136.948      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -3.098      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -3.866      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -3.603
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -3.091      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.499      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -1.468
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       2.373       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 0>           25943.331       0.000       0.000       0.000       0.000       7.109       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000   25943.370       0.000       0.000       7.110       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000   25943.371       0.000      -0.000      -0.000       0.000      -7.102
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000   26367.569       0.000      -0.000       0.001      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       7.110      -0.000       0.000   11219.917       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              7.109       0.000      -0.000      -0.000       0.000   11219.946       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.001       0.000       0.000   11219.945       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000      -7.102      -0.000       0.000       0.000       0.000   11219.961
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000      -4.132      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.030       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.003      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000      -0.000      -0.018       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.038      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-             -0.000       0.000      -0.000      -0.002       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.034      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000    -218.908      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-            218.908       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000     -15.920       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             -0.000       0.000      15.920       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.007      -0.000      -0.000      -0.022      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      32.754       0.000       0.000      17.856       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       8.800       0.000       0.000     -28.957       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -137.025      -0.000      -0.000      -0.000     -28.637      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      28.642       0.000      -0.000       0.000       0.000       0.000      22.176

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -35.937       0.000      -0.000       4.500      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    -123.501       0.000       0.000      15.412      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -98.383       0.000       0.000      -0.000       0.000      -0.000     -76.245

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               23.111      -0.000      -0.000       0.000     -98.383       0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     111.197       0.000      -0.000      65.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -34.532      -0.000      -0.000      96.932       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.012      -0.000      -0.000      -0.030      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002      -0.000       0.000      -0.000      -3.044      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.517       0.000      -0.000      -3.862       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.517      -0.000       0.000      -3.862      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.043      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -4.149

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     151.707       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     222.562       0.000      -0.000      38.506       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -222.562      -0.000      -0.000     -38.513      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -151.707      -0.000       0.000       0.000       0.000      -0.000       0.001

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      38.513      -0.000       0.000     -70.891       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -38.506       0.000       0.000      70.891      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.149       0.000      -0.000       0.000      -0.001      -0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.156      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.024      -0.000       0.000      -0.002       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.024      -0.000       0.000       0.002       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.002

    1    1  |1 0>               0.000       0.000       3.866      -0.000      -0.000      -0.499      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>               0.000       3.098       0.000      -0.000      -0.000       0.000       0.000      -2.373
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>            -136.948       0.000       0.000      -0.000       3.091      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000       3.603       0.000      -0.000       1.468      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.000      -0.418       0.000      -0.000       3.333       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000      76.770       0.000       0.000     130.823       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000     -76.770       0.000       0.000       0.000       0.000       0.000      23.791
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>               0.418      -0.000      -0.000       0.000    -107.464      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000     107.464       0.000      -0.000    -107.038       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000    -130.823      -0.000       0.000       0.000       0.000      -0.000    -184.252
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 0>              -3.333      -0.000      -0.000      -0.000     107.038       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000     -23.791       0.000      -0.000     184.252       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000      -0.003       0.000       0.000       0.038      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.030      -0.000      -0.000      -0.000      -0.000       0.000       0.034
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 0>              -4.132       0.000       0.000       0.000      -0.018      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   16    1  |1 0>              -0.000       0.000      -0.000      -0.001       0.000       0.000      -0.002       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          11219.987       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   24103.869       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   24103.886       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   24103.886       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   24104.013       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   24104.099       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   24104.099       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   24104.103
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       57          58          59          60

    1    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000    -118.981      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      70.939       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -28.325       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                               66.215      -0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000      66.211       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000    -252.055       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                              252.053       0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.001

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -274.265       0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -97.516       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000    -237.661      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       7.103       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       7.103      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                                8.156      -0.000      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.024      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.024       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.002      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.002      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.002

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -15.925

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000    -218.902      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000     218.902      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                               15.925       0.000       0.000      -0.000

    1    1  |1 0>              -0.000      -7.110       0.000      -0.000
                                0.000      -0.000       0.000       0.000

    2    1  |1 0>              -7.109      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.001
                                0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       7.102       0.000
                                0.000       0.000      -0.000      -0.000

    5    1  |1 0>              -0.000      -0.000       4.132       0.000
                                0.000       0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.030      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.003       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.001
                                0.000       0.000       0.000       0.000

    9    1  |1 0>              -0.000       0.000       0.018      -0.000
                               -0.000      -0.000      -0.000       0.000

   10    1  |1 0>              -0.038       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000

   11    1  |1 0>               0.000      -0.000       0.000       0.002
                               -0.000       0.000       0.000       0.000

   12    1  |1 0>              -0.000      -0.034       0.000      -0.000
                               -0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000     218.908       0.000      -0.000
                                0.000       0.000       0.000      -0.000

   14    1  |1 0>            -218.908       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000

   15    1  |1 0>              -0.000      -0.000       0.000      15.920
                                0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000     -15.920       0.000
                               -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   13    1  |1 1>-          25943.331       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   25943.370       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   25943.371       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26367.569
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.54470720    -0.00000759       -1.67      0.00000000        0.00      0.0000
    2 -8132.49465860     0.05004101    10982.73      0.05004860    10984.40      1.3619
    3 -8132.49465860     0.05004101    10982.73      0.05004860    10984.40      1.3619
    4 -8132.49465853     0.05004109    10982.75      0.05004867    10984.41      1.3619
    5 -8132.49401258     0.05068703    11124.52      0.05069462    11126.18      1.3795
    6 -8132.49401247     0.05068714    11124.54      0.05069473    11126.21      1.3795
    7 -8132.49401245     0.05068716    11124.55      0.05069475    11126.21      1.3795
    8 -8132.49401241     0.05068721    11124.56      0.05069479    11126.22      1.3795
    9 -8132.49401241     0.05068721    11124.56      0.05069479    11126.22      1.3795
   10 -8132.49285731     0.05184230    11378.07      0.05184989    11379.74      1.4109
   11 -8132.49285731     0.05184230    11378.07      0.05184989    11379.74      1.4109
   12 -8132.49285725     0.05184236    11378.08      0.05184995    11379.75      1.4109
   13 -8132.49285723     0.05184239    11378.09      0.05184997    11379.75      1.4109
   14 -8132.49285719     0.05184242    11378.10      0.05185001    11379.76      1.4109
   15 -8132.49285719     0.05184242    11378.10      0.05185001    11379.76      1.4109
   16 -8132.49285717     0.05184244    11378.10      0.05185003    11379.77      1.4109
   17 -8132.48340733     0.06129229    13452.10      0.06129988    13453.77      1.6681
   18 -8132.48340732     0.06129230    13452.10      0.06129989    13453.77      1.6681
   19 -8132.48340723     0.06129238    13452.12      0.06129997    13453.79      1.6681
   20 -8132.48340722     0.06129239    13452.13      0.06129998    13453.79      1.6681
   21 -8132.48340722     0.06129240    13452.13      0.06129998    13453.79      1.6681
   22 -8132.43635524     0.10834437    23778.84      0.10835196    23780.51      2.9484
   23 -8132.43635504     0.10834457    23778.89      0.10835216    23780.55      2.9484
   24 -8132.43635472     0.10834489    23778.96      0.10835248    23780.62      2.9484
   25 -8132.43635465     0.10834496    23778.97      0.10835255    23780.64      2.9484
   26 -8132.43635465     0.10834496    23778.97      0.10835255    23780.64      2.9484
   27 -8132.43521970     0.10947991    24028.06      0.10948750    24029.73      2.9793
   28 -8132.43521970     0.10947991    24028.06      0.10948750    24029.73      2.9793
   29 -8132.43521947     0.10948014    24028.11      0.10948773    24029.78      2.9793
   30 -8132.43521912     0.10948050    24028.19      0.10948808    24029.86      2.9793
   31 -8132.43521912     0.10948050    24028.19      0.10948808    24029.86      2.9793
   32 -8132.43521905     0.10948057    24028.21      0.10948815    24029.87      2.9793
   33 -8132.43521890     0.10948071    24028.24      0.10948830    24029.90      2.9793
   34 -8132.43383750     0.11086211    24331.42      0.11086970    24333.09      3.0169
   35 -8132.43383750     0.11086211    24331.42      0.11086970    24333.09      3.0169
   36 -8132.43383729     0.11086232    24331.47      0.11086991    24333.13      3.0169
   37 -8132.43383729     0.11086232    24331.47      0.11086991    24333.13      3.0169
   38 -8132.43383698     0.11086263    24331.54      0.11087022    24333.20      3.0169
   39 -8132.43383683     0.11086278    24331.57      0.11087037    24333.23      3.0169
   40 -8132.43383664     0.11086297    24331.61      0.11087056    24333.28      3.0169
   41 -8132.43383664     0.11086297    24331.61      0.11087056    24333.28      3.0169
   42 -8132.43383655     0.11086306    24331.63      0.11087065    24333.29      3.0169
   43 -8132.42902272     0.11567689    25388.14      0.11568448    25389.81      3.1479
   44 -8132.42846643     0.11623319    25510.24      0.11624077    25511.90      3.1631
   45 -8132.42846640     0.11623322    25510.24      0.11624080    25511.91      3.1631
   46 -8132.42846639     0.11623323    25510.24      0.11624081    25511.91      3.1631
   47 -8132.42846634     0.11623327    25510.25      0.11624086    25511.92      3.1631
   48 -8132.42846626     0.11623335    25510.27      0.11624094    25511.94      3.1631
   49 -8132.42749399     0.11720562    25723.66      0.11721321    25725.33      3.1895
   50 -8132.42749399     0.11720563    25723.66      0.11721321    25725.33      3.1895
   51 -8132.42749387     0.11720574    25723.69      0.11721333    25725.35      3.1895
   52 -8132.42461398     0.12008563    26355.75      0.12009322    26357.42      3.2679
   53 -8132.42461398     0.12008564    26355.75      0.12009322    26357.42      3.2679
   54 -8132.42461393     0.12008568    26355.76      0.12009327    26357.43      3.2679
   55 -8132.42461381     0.12008580    26355.79      0.12009339    26357.45      3.2679
   56 -8132.42461343     0.12008618    26355.87      0.12009377    26357.54      3.2679
   57 -8132.42455654     0.12014307    26368.36      0.12015066    26370.02      3.2695
   58 -8132.42455654     0.12014307    26368.36      0.12015066    26370.02      3.2695
   59 -8132.42455654     0.12014307    26368.36      0.12015066    26370.02      3.2695
   60 -8132.42199621     0.12270341    26930.28      0.12271099    26931.95      3.3391

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99996734 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000034 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.08276425 -0.01137013  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01137146  0.08275510 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000599  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.08356780
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000608  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000 -0.08357007  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00007501 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00227176 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000204  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000139 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000139 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00227442
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00223315  0.00039566 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00039500  0.00223653 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00012407  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000008 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.54778656 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40681755
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.54774858  0.00000000 -0.00000000 -0.40683111  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000069  0.00000000 -0.00000000 -0.00036515 -0.00000000

   3    1  |1 1>+          0.00000024  0.00000000  0.00000000 -0.00000000  0.41172813 -0.70176087  0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.54771277 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000009
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.31615975 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000015
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000227 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002593
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000141 -0.00000000 -0.00000000 -0.00003306  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000000

   8    1  |1 1>+         -0.00000029  0.00000000  0.00000000 -0.00000000  0.00003033 -0.00000446  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000194 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000059  0.00000000  0.00000000  0.00000288 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000091 -0.00000000  0.00000000 -0.00000000  0.00001088  0.00002822 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000093  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00002194
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00043900 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00098056
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00044116  0.00000000 -0.00000000 -0.00098246  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000088 -0.00000000

  15    1  |1 1>+         -0.00466559  0.00000000  0.00000000  0.00000000 -0.00097839 -0.00057378  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000 -0.00000094 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.81364680  0.00571172  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.54770672 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000009

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.54770754  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.40691231

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00073026 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000685 -0.00000000  0.00000001  0.81362497 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000080  0.00000000 -0.00000000 -0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.63240901 -0.00000000  0.00000000  0.00000907  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002766  0.00000019  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000093 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000093  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000395

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002734  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000174  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000174 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00003369

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000107  0.00000000  0.00000000  0.00000000  0.00000023 -0.00003341  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00466568  0.00000000  0.00000000  0.00000000  0.00000796 -0.00113433  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00043951 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00043951 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00098419

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000086 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.54778709  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000009

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000024 -0.00000000  0.00000000  0.00000000  0.40183644  0.70747034 -0.00000001 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000069  0.00000000 -0.00000000 -0.00036515 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.54774989 -0.00000000  0.00000000  0.40683043 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.54771863 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40674839

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.31614908  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.70461828

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000227  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000029  0.00000000  0.00000000 -0.00000000 -0.00003026 -0.00000489  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000141  0.00000000 -0.00000000 -0.00003306  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000194 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002578

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000091 -0.00000000  0.00000000  0.00000000 -0.00001128  0.00002806 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000059  0.00000000  0.00000000  0.00000288  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000093 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00043899 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00466559 -0.00000000 -0.00000000  0.00000000  0.00098635 -0.00055999  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000088  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00044116  0.00000000 -0.00000000 -0.00098246  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000094  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000967  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000146 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000002  0.00000116 -0.00000000 -0.00000000 -0.00000000  0.00000218  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.08356778 -0.00000000 -0.00000115  0.00000000 -0.00000000  0.00000000 -0.00000208 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000333 -0.00000000 -0.00000000  0.00000009
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000290  0.00000000  0.00000000 -0.00000004
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00227442 -0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000000  0.00000171 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000  0.00000172 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000015 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000009  0.71881415 -0.00000113 -0.00000000  0.00000000  0.12872480  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57190173 -0.00000000  0.00000000  0.45411737
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000047  0.00000000 -0.00000000 -0.00000027

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.57736864  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.40676190  0.00000109  0.69166137 -0.00000000 -0.00000000  0.00000000 -0.23450959  0.00000000
                           0.00000000  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.70461085 -0.00000007 -0.04692956  0.00000000 -0.00000000  0.00000000 -0.63076856  0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00015288 -0.00000000 -0.00000000  0.00000000 -0.00023496 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014024  0.00000000 -0.00000000 -0.00004560
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00020005 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00002578  0.00000000  0.00018620 -0.00000000  0.00000000 -0.00000000  0.00020915 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00024731  0.00000000  0.00000000  0.00033761
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00019902  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00002598  0.00000000  0.00000000  0.00000000 -0.00034341 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000016  0.00000000  0.00000000 -0.00000000 -0.00000227 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000  0.00000170
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000021  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.57731196 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.40691236  0.00000009  0.05418205 -0.00000000  0.00000000 -0.00000000  0.72824339 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000009  0.05507442 -0.00000009 -0.00000000 -0.00000000  0.72817585  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000047 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.57732577 -0.00000000  0.00000000  0.00696127

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000045
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00934507  0.00000000  0.00000000  0.77457809

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00028273  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000396  0.00000000  0.00041503 -0.00000000 -0.00000000  0.00000000 -0.00004804  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00041497  0.00000000  0.00000000 -0.00000000  0.00004854  0.00000000  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00028215  0.00000000 -0.00000000 -0.00000340

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00003369  0.00000000  0.00006427 -0.00000000  0.00000000 -0.00000000  0.00013382 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00006441  0.00000000  0.00000000  0.00000000 -0.00013375 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00098420 -0.00000000 -0.00000023 -0.00000000 -0.00000000  0.00000000  0.00000132 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000023 -0.00000000  0.00000000 -0.00000000 -0.00000132  0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005

   1    1  |1 1>-          0.00000000 -0.00000001 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40681687  0.00000113  0.71865585 -0.00000000 -0.00000000 -0.00000000  0.12960559  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.57737000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000048 -0.00000000 -0.00000000  0.00000026
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.58269700  0.00000000 -0.00000000  0.44017894

   4    1  |1 1>-          0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000009 -0.69137249  0.00000109  0.00000000 -0.00000000  0.23536978  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000015 -0.04771652  0.00000007  0.00000000  0.00000000 -0.63070649 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002593  0.00000000  0.00015317  0.00000000 -0.00000000  0.00000000 -0.00023477  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00020006  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014131  0.00000000 -0.00000000  0.00004218

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00018646  0.00000000  0.00000000 -0.00000000 -0.00020893 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00019901 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00023909 -0.00000000 -0.00000000 -0.00034348

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002194  0.00000000  0.00002556 -0.00000000  0.00000000 -0.00000000  0.00034345 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00098056  0.00000000  0.00000015 -0.00000000 -0.00000000  0.00000000  0.00000227 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000170

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000001 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000022
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.95022492  0.30001208  0.00000000 -0.00000000 -0.00000000  0.00545757 -0.00000000  0.00078922
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.30001248  0.95022553 -0.00000000  0.00000000 -0.00000000  0.00078768  0.00000000 -0.00546826
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000001 -0.00000007  0.99645886 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.99645887  0.00000007  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.99645868  0.00000000  0.00000001  0.00000000  0.00550464  0.00000000
                           0.00000000 -0.00000000  0.00000375 -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00010566  0.00000000  0.00000000 -0.00000000 -0.10843522 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000119  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00010595 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00010595  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00010187  0.00002778  0.00000000 -0.00000000 -0.00000000 -0.10671002  0.00000000 -0.01965270
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00002816 -0.00010240  0.00000000 -0.00000000  0.00000000  0.01962508  0.00000000 -0.10685666
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000304
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.03412103 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.03412287 -0.00000000 -0.00000000 -0.00000000 -0.00032238 -0.00000000
                          -0.00000000  0.00000000 -0.00000013  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.05638588  0.03838761 -0.00000000  0.00000000 -0.00000000 -0.00032073  0.00000000 -0.00055569
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.03411783  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.05909352 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00277922 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00348715 -0.00000000 -0.00000000  0.00000000  0.60883013  0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000669 -0.00000000

   8    1  |1 1>+         -0.00311287 -0.00106793 -0.00000000  0.00000000  0.00000000  0.56956347 -0.00000000  0.06789205
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00277873 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00043627  0.00000000  0.00000000 -0.00000000 -0.07595853 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000083  0.00000000

  11    1  |1 1>+          0.00013368 -0.00329805  0.00000000 -0.00000000  0.00000000  0.22788972  0.00000000 -0.52696504
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00215205  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00513207 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00513154  0.00000000  0.00000000  0.00000000  0.01161514  0.00000000
                           0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000013 -0.00000000

  15    1  |1 1>+         -0.00333267 -0.00489276  0.00000000  0.00000000  0.00000000 -0.01163563  0.00000000  0.00673498
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.06144081 -0.02963247 -0.00000000  0.00000000  0.00000000 -0.00064119  0.00000000  0.00000014

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.03412186 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.03412184 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000026  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00000000  0.00000000  0.06823686  0.00000000  0.00000000  0.00000000  0.00064012  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000069  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00250259 -0.00120697 -0.00000000  0.00000000  0.00000000  0.48495426 -0.00000000 -0.00010412

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00045076 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00045057 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000533 -0.00000000
                          -0.00000000  0.00000000  0.00277656  0.00000000  0.00000000 -0.00000000 -0.48482371 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00348548  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00348551  0.00000000  0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00162516  0.00336969 -0.00000000  0.00000000 -0.00000000  0.00014189 -0.00000000  0.65066245

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00257080 -0.00533036  0.00000000 -0.00000000  0.00000000  0.00000304 -0.00000000  0.01346389

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00513166 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00513165  0.00000000  0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.03412104 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00506403 -0.06802444  0.00000000 -0.00000000  0.00000000 -0.00032048 -0.00000000  0.00055583

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000013  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.03412282  0.00000000  0.00000000  0.00000000  0.00032239  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.03411664 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.05909425 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00277924  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00277360  0.00177124  0.00000000 -0.00000000 -0.00000000 -0.56952230  0.00000000  0.06817139

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000669  0.00000000
                           0.00000000 -0.00000000 -0.00348713 -0.00000000 -0.00000000  0.00000000  0.60882589  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00277873 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00249782 -0.00215782  0.00000000 -0.00000000  0.00000000 -0.22815210  0.00000000 -0.52686041

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000084 -0.00000000
                          -0.00000000  0.00000000  0.00043644  0.00000000  0.00000000 -0.00000000 -0.07598838 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00215200  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00513207  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00590373 -0.00043811  0.00000000 -0.00000000 -0.00000000  0.01163868 -0.00000000  0.00672991

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000013  0.00000000
                          -0.00000000  0.00000000  0.00513153  0.00000000  0.00000000  0.00000000  0.01161515  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000097 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000001 -0.00550628  0.00000000  0.00000104 -0.00000000 -0.00000056  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00550627 -0.00000001  0.00000104 -0.00000000  0.00000000 -0.00000000 -0.00000056  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000095
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001342
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

   8    1  |0 0>          -0.10845033 -0.00000014  0.00001657 -0.00000000 -0.00000000 -0.00000000 -0.00005688  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000014  0.10845024 -0.00000000 -0.00001654 -0.00000000  0.00005699 -0.00000000 -0.00000000
                          -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001390 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000262  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00032060  0.00000000  0.00030510 -0.00000000  0.00017970 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00028118
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000014

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00028252  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00032087 -0.00000000 -0.00035321  0.00000000  0.00000000 -0.00000000 -0.00001211  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00055558  0.00000000 -0.00008553  0.00000000  0.00000000  0.00000000  0.00029670 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000064 -0.48522058 -0.00000001 -0.46704264  0.00000000  0.33929229 -0.00000062  0.00000000
                           0.00000002  0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000084  0.00000005  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.29210071
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014025

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.40898310  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.48506908 -0.00000064  0.21194869 -0.00000000 -0.00000000  0.00000099  0.53685513 -0.00000000
                           0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000001 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.49785029
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00023904

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.40728957 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000049  0.37552011 -0.00000000 -0.19778810  0.00000000  0.67889536 -0.00000125  0.00000000
                          -0.00000001 -0.00000006 -0.00000000 -0.00000000  0.00000000 -0.00000168  0.00000011  0.00000000

  13    1  |1 1>+          0.00000002 -0.01161050  0.00000000  0.00000104 -0.00000000 -0.00000108  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001023
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000566  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000011  0.00000000  0.00000054 -0.00000000 -0.00000000 -0.00000000 -0.00000032 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00028206 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00032276  0.00000000  0.00009954 -0.00000000 -0.00000000 -0.00000000 -0.00034156  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00032277 -0.00000000 -0.00009968  0.00000000  0.00034152 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000014
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00028184

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.57766385 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000
                          -0.07852513 -0.00000010  0.83508711 -0.00000001 -0.00000000  0.00000038  0.20449729 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000051 -0.00000003 -0.00000000
                           0.00000010 -0.07849470  0.00000001  0.83500632 -0.00000000  0.20484624 -0.00000038  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00027734
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.57762608

  10    1  |1 0>           0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000  0.00000000
                           0.60829736  0.00000080  0.02631216 -0.00000000 -0.00000000  0.00000056  0.30612887 -0.00000000

  11    1  |1 0>           0.00000002  0.00000010 -0.00000000 -0.00000000 -0.00000000  0.00000076 -0.00000005 -0.00000000
                          -0.00000080  0.60830129  0.00000000  0.02614823  0.00000000  0.30612915 -0.00000056  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000326 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01160357  0.00000002 -0.00000395  0.00000000 -0.00000000  0.00000000  0.00000554 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.01160359 -0.00000000 -0.00000393 -0.00000000  0.00000554 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00032060  0.00000000 -0.00030517  0.00000000  0.00000000 -0.00000000 -0.00017958  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00028252  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000014
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00028119

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00032086 -0.00000000 -0.00035320  0.00000000 -0.00001225  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00055559  0.00000000  0.00008564 -0.00000000 -0.00029667  0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000
                           0.48522464  0.00000064  0.46690460 -0.00000001 -0.00000000 -0.00000062 -0.33947151  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.40900382 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00014026
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.29212603

   9    1  |1 1>-         -0.00000002 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000133 -0.00000009 -0.00000000
                           0.00000064 -0.48506898  0.00000000  0.21173456 -0.00000000  0.53693999 -0.00000099  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.40726913  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00023903
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.49782758

  12    1  |1 1>-          0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000011  0.00000001  0.00000000
                           0.37551472  0.00000049 -0.19752166  0.00000000  0.00000000  0.00000125  0.67897820 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01161053 -0.00000002  0.00000107  0.00000000  0.00000000 -0.00000000 -0.00000105 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000565 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001023

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000010 -0.00000000 -0.00000054  0.00000000  0.00000032 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000068 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000000 -0.00000693  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000104 -0.00000000 -0.00000000  0.00000000 -0.00000100  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000022  0.00000000  0.00000000 -0.00000025
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000023  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000170 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000

   7    1  |0 0>          -0.00000006 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000  0.00002211 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000022  0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00002177 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002179 -0.00000000  0.00000000  0.00001570
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000103  0.00000000 -0.00000000 -0.00000000  0.00010126 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000598 -0.00000000  0.00000000 -0.00000000 -0.00001865  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00001128  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000144  0.00000000 -0.00000000 -0.00000160
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00021776  0.00000000  0.00000098 -0.00000000  0.00000000  0.00000000  0.00000030 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000100  0.00000000 -0.00000000 -0.00000000 -0.00000080  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000141 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000039  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000004  0.62511085 -0.00000000  0.00000000  0.19411220
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000013

   7    1  |1 1>+          0.09057861  0.00000001  0.70135045 -0.00000000 -0.00000000  0.00000000  0.19844091  0.00000000
                          -0.00000339 -0.00000000 -0.00007208 -0.00000000 -0.00000000  0.00000000  0.00200791  0.00000000

   8    1  |1 1>+          0.00000000  0.70306590 -0.00000001 -0.00000000  0.00000000 -0.06642065 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.59750918 -0.00000004 -0.00000000 -0.00000000  0.00000011
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005

  10    1  |1 1>+         -0.70127852  0.00000000  0.09040404 -0.00000000  0.00000000 -0.00000000 -0.49630146 -0.00000000
                           0.00002622  0.00000000 -0.00000929  0.00000000  0.00000000 -0.00000000 -0.00502179 -0.00000000

  11    1  |1 1>+         -0.00000000  0.07207886 -0.00000000 -0.00000000 -0.00000000 -0.53061219  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03595340  0.00000000  0.00000000 -0.59661422
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000039

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000045 -0.00000000 -0.00000000  0.00001818
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000042  0.00000000  0.00001229  0.00000000  0.00000000 -0.00000000 -0.00001139  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000000

  15    1  |1 1>+          0.00000000  0.00001391 -0.00000000  0.00000000 -0.00000000  0.00000516  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000045  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000104  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000031 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000031  0.00000000 -0.00000000  0.00000098

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000196  0.00000000

   5    1  |1 0>           0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00037550 -0.00000000 -0.00000129  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00020733  0.00000000  0.00000000  0.00000000  0.65441252 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.48926774  0.00000003  0.00000000  0.00000000 -0.00000005

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000008
                           0.00000000 -0.00000000  0.00000000  0.00000003  0.48926849 -0.00000000  0.00000000 -0.12321571

   9    1  |1 0>           0.00000000  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00662257 -0.00000000
                           0.00000349  0.00000000  0.00022804  0.00000000 -0.00000000  0.00000000  0.65450611  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000014
                           0.00000000 -0.00000000 -0.00000000 -0.10749496  0.00000001  0.00000000 -0.00000000  0.00000030

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000048
                          -0.00000000  0.00000000  0.00000000  0.00000001  0.10750047 -0.00000000 -0.00000000  0.72075824

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.02998356  0.00000000  0.00000000 -0.00000000 -0.00004849 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000749  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000924  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000922 -0.00000000 -0.00000000  0.00002422

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000127 -0.00000000 -0.00000102 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000144 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000100 -0.00000000  0.00000000  0.00000000 -0.00000080  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00021775  0.00000000  0.00000098  0.00000000  0.00000000 -0.00000000 -0.00000030  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000141  0.00000000 -0.00000000 -0.00000176

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000039 -0.00000000 -0.00000000  0.00000165

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004
                          -0.00000000  0.00000000  0.00000000  0.62510344 -0.00000004 -0.00000000 -0.00000000 -0.00000008

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.70310372 -0.00000001 -0.00000000  0.00000000  0.06595279 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000338 -0.00000000 -0.00007207 -0.00000000 -0.00000000 -0.00000000 -0.00201261 -0.00000000
                          -0.09054079 -0.00000001 -0.70121702  0.00000000  0.00000000  0.00000000  0.19890499  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000018
                          -0.00000000  0.00000000 -0.00000000 -0.00000004 -0.59749793 -0.00000000 -0.00000000  0.26776366

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.07245054 -0.00000000  0.00000000  0.00000000  0.53050304 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00002622 -0.00000000 -0.00000932 -0.00000000 -0.00000000  0.00000000  0.00502125  0.00000000
                           0.70128887 -0.00000000 -0.09071538 -0.00000000  0.00000000 -0.00000000 -0.49624818 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000012
                           0.00000000 -0.00000000  0.00000000  0.03592189 -0.00000000 -0.00000000  0.00000000 -0.00000025

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000045  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00001395 -0.00000000  0.00000000 -0.00000000 -0.00000509  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000011  0.00000000
                          -0.00000039 -0.00000000 -0.00001229 -0.00000000  0.00000000 -0.00000000 -0.00001135 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000045  0.00000000  0.00000000 -0.00000180

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000  0.00000206 -0.00779732  0.00000000  0.00000000  0.00000000 -0.00000081  0.00000019
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000014 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00154116  0.00386305
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000101  0.00000028  0.00000000  0.00000000  0.00000000 -0.00386400  0.00154127
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00416107  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000026 -0.00000000 -0.00000000  0.00000000 -0.00416106 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00416063  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.87302394  0.00000002 -0.00000003  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00001722  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00001574  0.00000000  0.00000000 -0.00000002  0.87301788  0.00000004  0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000004  0.87301733  0.00000002 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000011 -0.00001613 -0.00000000 -0.00000000 -0.00000001  0.35445838  0.79779792
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000081 -0.00008406 -0.00000000 -0.00000001 -0.00000001  0.79772862 -0.35445235
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00002910  0.27786577 -0.00000000 -0.00000000 -0.00000000  0.00002961 -0.00000697
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00094108 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00094046  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000071 -0.00000043 -0.00000000 -0.00000000 -0.00000000  0.00180055  0.00053142
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000176  0.00000000  0.00000000 -0.00000000  0.00094103  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000165  0.00000000 -0.00000000  0.00000000 -0.00162653 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000  0.05029076  0.00000000 -0.00000000
                           0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.06314033  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000125  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.03140528  0.00001336 -0.00000000 -0.00000000 -0.00000000  0.02069536  0.05582540
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.26773911  0.00000000 -0.00000000  0.00000000 -0.05030221 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00787471 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.46228065  0.00003463  0.00000000  0.00000000  0.00000000 -0.04770388  0.03587172
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000025 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.03898249 -0.00000000  0.00000000
                          -0.00000012 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000001 -0.33707185 -0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.33702960 -0.00000001  0.00000001 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000665 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00002901 -0.55456795 -0.00000000 -0.00000000  0.00000000 -0.11048942  0.37323441
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000180  0.00000000 -0.00000000  0.00000000  0.00000243  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00043859  0.00182369

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000098  0.00000000 -0.00000000  0.00000000 -0.00094067 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00094068 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00187681 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00005129  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.01175826  0.04889021

   7    1  |1 0>          -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.12323115 -0.00000000 -0.00000000  0.00000000 -0.00813951 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00813626  0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000099  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.05031729 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.72075656  0.00000000 -0.00000000 -0.00000000  0.06313019  0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000014 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000030  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.06313053 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.75534797  0.00003689 -0.00000000 -0.00000000 -0.00000000  0.06575545 -0.01581371

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00003392  0.55465208  0.00000000  0.00000000  0.00000001 -0.37842270  0.09100996

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00002426  0.00000000 -0.00000000  0.00000001 -0.33700077 -0.00000001 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000001  0.33700140  0.00000001 -0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000160  0.00000000  0.00000000  0.00000000 -0.00094108 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000071  0.00000043 -0.00000000  0.00000000  0.00000000 -0.00136203  0.00129199

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00094046 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00094099 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00162654 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.19414452 -0.00000000  0.00000000 -0.00000000  0.05029125  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.03141866  0.00001344  0.00000000  0.00000000  0.00000000 -0.00694821 -0.05913010

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000125 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.06313991  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000011  0.00000000  0.00000000  0.00000000 -0.00000000  0.05030207  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.46235551  0.00003473  0.00000000  0.00000000  0.00000000 -0.05879849 -0.01026219

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000016  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00787771 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.59661356 -0.00000000  0.00000000 -0.00000000  0.03898189  0.00000000  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001819  0.00000000  0.00000000 -0.00000001  0.33707101  0.00000001  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00002900 -0.55456763  0.00000000  0.00000000  0.00000000 -0.26810918 -0.28218332

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000665  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.33702877 -0.00000001  0.00000001 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000244  0.00000000 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000009
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00614862 -0.00080046
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00080098  0.00614519
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000006  0.00000000 -0.00000000  0.00620652 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000005  0.00000000 -0.00000000  0.00620653  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00620630  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000058  0.00000001  0.00000001  0.47546380 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000487 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00005620  0.00000000  0.00000000  0.47547146  0.00000005 -0.00000001 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000022 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00005643  0.00000000  0.00000005 -0.47547249  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.46879591  0.07955943
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.07954544  0.46888852
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000034  0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00034091 -0.00000000 -0.00000000  0.00015449 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00034047  0.00000000  0.00000000  0.00015459 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000076 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00015686  0.00026400
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00034052  0.00000000 -0.00000000  0.00015488  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00019277  0.00000000 -0.00000000 -0.00026727 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00001111  0.00000000  0.00000000 -0.01824335  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00001221  0.00000000  0.00000000  0.02289916 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000023 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.02146051  0.00225603
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000501  0.00000000  0.00000000 -0.01824147 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000123 -0.00000000 -0.00000000 -0.00285526  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00832020 -0.01996659
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00001512 -0.00000000 -0.00000000  0.01414370 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000026  0.70667398  0.00000000  0.00000007 -0.62146187  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.70667291  0.00000001  0.00000001  0.62148936 -0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00157318 -0.00000000  0.00000000  0.00000636 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.61638299  0.36747968
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.03494868 -0.00000001  0.00000000 -0.00021408 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00030560 -0.00000429

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00034079  0.00000000 -0.00000000 -0.00015437 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00034079  0.00000000 -0.00000000  0.00015437 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00030704  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000088 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00039619  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.01821166 -0.00025541

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000179 -0.00000000 -0.00000000 -0.00295220 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000181 -0.00000000  0.00000000 -0.00295104  0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000019 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.01822713  0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00002400  0.00000000  0.00000000  0.02289804  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00002400  0.00000000 -0.00000000  0.02289825 -0.00000000  0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00034359  0.02451160

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.01006463  0.71749399

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000029  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.70667546 -0.00000026  0.00000000  0.62150948  0.00000007 -0.00000001 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000026  0.70667537  0.00000000 -0.00000007  0.62150920 -0.00000001  0.00000000  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00007779  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.03494484  0.00000000  0.00000000  0.00000100 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00034091 -0.00000000  0.00000000 -0.00015449 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00014940 -0.00026829

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000076 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00034047 -0.00000000 -0.00000000 -0.00015459  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00034053 -0.00000000 -0.00000000  0.00015487 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00019277  0.00000000 -0.00000000  0.00026727 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001116 -0.00000000  0.00000000  0.01824349  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.02138836  0.00285822

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000023  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00001231  0.00000000  0.00000000  0.02289903 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000497 -0.00000000  0.00000000 -0.01824151  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00887782 -0.01972516

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000119 -0.00000000 -0.00000000 -0.00285637  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001515 -0.00000000  0.00000000  0.01414345  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000029 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70667390 -0.00000026  0.00000000 -0.62146239 -0.00000007  0.00000001  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.62644808  0.35004925

  15    1  |1 1>-         -0.00000000  0.00000000  0.00157318  0.00000000 -0.00000000 -0.00000636  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.70667313  0.00000001  0.00000001  0.62148951 -0.00000001  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.03494871 -0.00000000 -0.00000000  0.00021247 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00212628
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000006
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000136 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000137 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000046 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00010171 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00010094  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000058
                          -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000250
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000  0.96061990
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00001145 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00001146 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00001144 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000641 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000358 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000015 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000299
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000371  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000094  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000822
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000376 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000005  0.02484539  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000

  14    1  |1 1>+          0.02470916 -0.00000000  0.00000000  0.00000000
                          -0.00000006 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.16041941
                           0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000001  0.99938909 -0.00000192 -0.00000000
                          -0.00000000  0.00000000  0.00000003  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000001

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00001133 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00001133 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001327  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000105  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000105 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000002  0.00000000  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000426 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000423  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000765

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.16042519

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.02457852  0.00000005  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000001  0.00000000
                          -0.00000000  0.00000005  0.02457953 -0.00000000

  16    1  |1 0>           0.00000237  0.00000000  0.00000000  0.00000000
                           0.99938924 -0.00000001  0.00000001 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00001145  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00001146 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00001144  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000641  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000362 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000299

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000019 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000369  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000824

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000093  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000378 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.02484637  0.00000005 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.16041899

  15    1  |1 1>-         -0.00000006 -0.00000000 -0.00000000 -0.00000000
                          -0.02471041  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000003 -0.00000030  0.00000000
                          -0.00000001  0.00000192  0.99938908 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1  -8132.54470720     -0.00000759       -1.67      0.00000000        0.00      0.0000
   2   1  -8132.49465860      0.05004101    10982.73      0.05004860    10984.40      1.3619
   3   1  -8132.49465860      0.05004101    10982.73      0.05004860    10984.40      1.3619
   4   1  -8132.49465853      0.05004109    10982.75      0.05004867    10984.41      1.3619
   5   1  -8132.49401258      0.05068703    11124.52      0.05069462    11126.18      1.3795
   6   1  -8132.49401247      0.05068714    11124.54      0.05069473    11126.21      1.3795
   7   1  -8132.49401245      0.05068716    11124.55      0.05069475    11126.21      1.3795
   8   1  -8132.49401241      0.05068721    11124.56      0.05069479    11126.22      1.3795
   9   1  -8132.49401241      0.05068721    11124.56      0.05069479    11126.22      1.3795
  10   1  -8132.49285731      0.05184230    11378.07      0.05184989    11379.74      1.4109
  11   1  -8132.49285731      0.05184230    11378.07      0.05184989    11379.74      1.4109
  12   1  -8132.49285725      0.05184236    11378.08      0.05184995    11379.75      1.4109
  13   1  -8132.49285723      0.05184239    11378.09      0.05184997    11379.75      1.4109
  14   1  -8132.49285719      0.05184242    11378.10      0.05185001    11379.76      1.4109
  15   1  -8132.49285719      0.05184242    11378.10      0.05185001    11379.76      1.4109
  16   1  -8132.49285717      0.05184244    11378.10      0.05185003    11379.77      1.4109
  17   1  -8132.48340733      0.06129229    13452.10      0.06129988    13453.77      1.6681
  18   1  -8132.48340732      0.06129230    13452.10      0.06129989    13453.77      1.6681
  19   1  -8132.48340723      0.06129238    13452.12      0.06129997    13453.79      1.6681
  20   1  -8132.48340722      0.06129239    13452.13      0.06129998    13453.79      1.6681
  21   1  -8132.48340722      0.06129240    13452.13      0.06129998    13453.79      1.6681
  22   1  -8132.43635524      0.10834437    23778.84      0.10835196    23780.51      2.9484
  23   1  -8132.43635504      0.10834457    23778.89      0.10835216    23780.55      2.9484
  24   1  -8132.43635472      0.10834489    23778.96      0.10835248    23780.62      2.9484
  25   1  -8132.43635465      0.10834496    23778.97      0.10835255    23780.64      2.9484
  26   1  -8132.43635465      0.10834496    23778.97      0.10835255    23780.64      2.9484
  27   1  -8132.43521970      0.10947991    24028.06      0.10948750    24029.73      2.9793
  28   1  -8132.43521970      0.10947991    24028.06      0.10948750    24029.73      2.9793
  29   1  -8132.43521947      0.10948014    24028.11      0.10948773    24029.78      2.9793
  30   1  -8132.43521912      0.10948050    24028.19      0.10948808    24029.86      2.9793
  31   1  -8132.43521912      0.10948050    24028.19      0.10948808    24029.86      2.9793
  32   1  -8132.43521905      0.10948057    24028.21      0.10948815    24029.87      2.9793
  33   1  -8132.43521890      0.10948071    24028.24      0.10948830    24029.90      2.9793
  34   1  -8132.43383750      0.11086211    24331.42      0.11086970    24333.09      3.0169
  35   1  -8132.43383750      0.11086211    24331.42      0.11086970    24333.09      3.0169
  36   1  -8132.43383729      0.11086232    24331.47      0.11086991    24333.13      3.0169
  37   1  -8132.43383729      0.11086232    24331.47      0.11086991    24333.13      3.0169
  38   1  -8132.43383698      0.11086263    24331.54      0.11087022    24333.20      3.0169
  39   1  -8132.43383683      0.11086278    24331.57      0.11087037    24333.23      3.0169
  40   1  -8132.43383664      0.11086297    24331.61      0.11087056    24333.28      3.0169
  41   1  -8132.43383664      0.11086297    24331.61      0.11087056    24333.28      3.0169
  42   1  -8132.43383655      0.11086306    24331.63      0.11087065    24333.29      3.0169
  43   1  -8132.42902272      0.11567689    25388.14      0.11568448    25389.81      3.1479
  44   1  -8132.42846643      0.11623319    25510.24      0.11624077    25511.90      3.1631
  45   1  -8132.42846640      0.11623322    25510.24      0.11624080    25511.91      3.1631
  46   1  -8132.42846639      0.11623323    25510.24      0.11624081    25511.91      3.1631
  47   1  -8132.42846634      0.11623327    25510.25      0.11624086    25511.92      3.1631
  48   1  -8132.42846626      0.11623335    25510.27      0.11624094    25511.94      3.1631
  49   1  -8132.42749399      0.11720562    25723.66      0.11721321    25725.33      3.1895
  50   1  -8132.42749399      0.11720563    25723.66      0.11721321    25725.33      3.1895
  51   1  -8132.42749387      0.11720574    25723.69      0.11721333    25725.35      3.1895
  52   1  -8132.42461398      0.12008563    26355.75      0.12009322    26357.42      3.2679
  53   1  -8132.42461398      0.12008564    26355.75      0.12009322    26357.42      3.2679
  54   1  -8132.42461393      0.12008568    26355.76      0.12009327    26357.43      3.2679
  55   1  -8132.42461381      0.12008580    26355.79      0.12009339    26357.45      3.2679
  56   1  -8132.42461343      0.12008618    26355.87      0.12009377    26357.54      3.2679
  57   1  -8132.42455654      0.12014307    26368.36      0.12015066    26370.02      3.2695
  58   1  -8132.42455654      0.12014307    26368.36      0.12015066    26370.02      3.2695
  59   1  -8132.42455654      0.12014307    26368.36      0.12015066    26370.02      3.2695
  60   1  -8132.42199621      0.12270341    26930.28      0.12271099    26931.95      3.3391

 E0 =  -8132.54469961 is the energy of the lowest zeroth-order state
 E1 =  -8132.54470720 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99996734 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000034 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.08276425 -0.01137013  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01137146  0.08275510 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000599  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.08356780
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000608  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000 -0.08357007  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00007501 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00227176 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000204  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000139 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000139 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00227442
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00223315  0.00039566 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00039500  0.00223653 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00012407  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000008 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.54778656 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40681755
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.54774858  0.00000000 -0.00000000 -0.40683111  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000069  0.00000000 -0.00000000 -0.00036515 -0.00000000

 15  1     3    1  |1 1>+       0.00000024  0.00000000  0.00000000 -0.00000000  0.41172813 -0.70176087  0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.54771277 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000009
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.31615975 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000015
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000227 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002593
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000141 -0.00000000 -0.00000000 -0.00003306  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000000

 20  1     8    1  |1 1>+      -0.00000029  0.00000000  0.00000000 -0.00000000  0.00003033 -0.00000446  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000194 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000059  0.00000000  0.00000000  0.00000288 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000091 -0.00000000  0.00000000 -0.00000000  0.00001088  0.00002822 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000093  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00002194
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00043900 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00098056
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00044116  0.00000000 -0.00000000 -0.00098246  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000088 -0.00000000

 27  1    15    1  |1 1>+      -0.00466559  0.00000000  0.00000000  0.00000000 -0.00097839 -0.00057378  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000 -0.00000094 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.81364680  0.00571172  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.54770672 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000009

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.54770754  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.40691231

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00073026 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000685 -0.00000000  0.00000001  0.81362497 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000080  0.00000000 -0.00000000 -0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.63240901 -0.00000000  0.00000000  0.00000907  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002766  0.00000019  0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000093 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000093  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000395

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002734  0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000174  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000174 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00003369

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000107  0.00000000  0.00000000  0.00000000  0.00000023 -0.00003341  0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00466568  0.00000000  0.00000000  0.00000000  0.00000796 -0.00113433  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00043951 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00043951 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00098419

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000086 -0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.54778709  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000009

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000024 -0.00000000  0.00000000  0.00000000  0.40183644  0.70747034 -0.00000001 -0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000069  0.00000000 -0.00000000 -0.00036515 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.54774989 -0.00000000  0.00000000  0.40683043 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.54771863 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.40674839

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.31614908  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.70461828

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000227  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000029  0.00000000  0.00000000 -0.00000000 -0.00003026 -0.00000489  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000141  0.00000000 -0.00000000 -0.00003306  0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000194 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00002578

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000091 -0.00000000  0.00000000  0.00000000 -0.00001128  0.00002806 -0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000059  0.00000000  0.00000000  0.00000288  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000093 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00043899 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00466559 -0.00000000 -0.00000000  0.00000000  0.00098635 -0.00055999  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000088  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00044116  0.00000000 -0.00000000 -0.00098246  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000094  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000967  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000146 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000002  0.00000116 -0.00000000 -0.00000000 -0.00000000  0.00000218  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.08356778 -0.00000000 -0.00000115  0.00000000 -0.00000000  0.00000000 -0.00000208 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000333 -0.00000000 -0.00000000  0.00000009
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000290  0.00000000  0.00000000 -0.00000004
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00227442 -0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000000  0.00000171 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000  0.00000172 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000015 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000009  0.71881415 -0.00000113 -0.00000000  0.00000000  0.12872480  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57190173 -0.00000000  0.00000000  0.45411737
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000047  0.00000000 -0.00000000 -0.00000027

 15  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.57736864  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.40676190  0.00000109  0.69166137 -0.00000000 -0.00000000  0.00000000 -0.23450959  0.00000000
                                0.00000000  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.70461085 -0.00000007 -0.04692956  0.00000000 -0.00000000  0.00000000 -0.63076856  0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00015288 -0.00000000 -0.00000000  0.00000000 -0.00023496 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014024  0.00000000 -0.00000000 -0.00004560
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00020005 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00002578  0.00000000  0.00018620 -0.00000000  0.00000000 -0.00000000  0.00020915 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00024731  0.00000000  0.00000000  0.00033761
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00019902  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00002598  0.00000000  0.00000000  0.00000000 -0.00034341 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000016  0.00000000  0.00000000 -0.00000000 -0.00000227 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000  0.00000000  0.00000170
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000021  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.57731196 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.40691236  0.00000009  0.05418205 -0.00000000  0.00000000 -0.00000000  0.72824339 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000009  0.05507442 -0.00000009 -0.00000000 -0.00000000  0.72817585  0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000047 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.57732577 -0.00000000  0.00000000  0.00696127

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000045
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00934507  0.00000000  0.00000000  0.77457809

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00028273  0.00000000  0.00000000  0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000396  0.00000000  0.00041503 -0.00000000 -0.00000000  0.00000000 -0.00004804  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00041497  0.00000000  0.00000000 -0.00000000  0.00004854  0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00028215  0.00000000 -0.00000000 -0.00000340

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00003369  0.00000000  0.00006427 -0.00000000  0.00000000 -0.00000000  0.00013382 -0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00006441  0.00000000  0.00000000  0.00000000 -0.00013375 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00098420 -0.00000000 -0.00000023 -0.00000000 -0.00000000  0.00000000  0.00000132 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000023 -0.00000000  0.00000000 -0.00000000 -0.00000132  0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005

 45  1     1    1  |1 1>-       0.00000000 -0.00000001 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40681687  0.00000113  0.71865585 -0.00000000 -0.00000000 -0.00000000  0.12960559  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.57737000  0.00000000  0.00000000  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000048 -0.00000000 -0.00000000  0.00000026
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.58269700  0.00000000 -0.00000000  0.44017894

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000009 -0.69137249  0.00000109  0.00000000 -0.00000000  0.23536978  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000015 -0.04771652  0.00000007  0.00000000  0.00000000 -0.63070649 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002593  0.00000000  0.00015317  0.00000000 -0.00000000  0.00000000 -0.00023477  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00020006  0.00000000  0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014131  0.00000000 -0.00000000  0.00004218

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00018646  0.00000000  0.00000000 -0.00000000 -0.00020893 -0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00019901 -0.00000000 -0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00023909 -0.00000000 -0.00000000 -0.00034348

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002194  0.00000000  0.00002556 -0.00000000  0.00000000 -0.00000000  0.00034345 -0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00098056  0.00000000  0.00000015 -0.00000000 -0.00000000  0.00000000  0.00000227 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000170

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000001 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000022
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.95022492  0.30001208  0.00000000 -0.00000000 -0.00000000  0.00545757 -0.00000000  0.00078922
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.30001248  0.95022553 -0.00000000  0.00000000 -0.00000000  0.00078768  0.00000000 -0.00546826
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000001 -0.00000007  0.99645886 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.99645887  0.00000007  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.99645868  0.00000000  0.00000001  0.00000000  0.00550464  0.00000000
                                0.00000000 -0.00000000  0.00000375 -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00010566  0.00000000  0.00000000 -0.00000000 -0.10843522 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000119  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00010595 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00010595  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00010187  0.00002778  0.00000000 -0.00000000 -0.00000000 -0.10671002  0.00000000 -0.01965270
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00002816 -0.00010240  0.00000000 -0.00000000  0.00000000  0.01962508  0.00000000 -0.10685666
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000304
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.03412103 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.03412287 -0.00000000 -0.00000000 -0.00000000 -0.00032238 -0.00000000
                               -0.00000000  0.00000000 -0.00000013  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.05638588  0.03838761 -0.00000000  0.00000000 -0.00000000 -0.00032073  0.00000000 -0.00055569
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.03411783  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.05909352 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00277922 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00348715 -0.00000000 -0.00000000  0.00000000  0.60883013  0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000669 -0.00000000

 20  1     8    1  |1 1>+      -0.00311287 -0.00106793 -0.00000000  0.00000000  0.00000000  0.56956347 -0.00000000  0.06789205
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00277873 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00043627  0.00000000  0.00000000 -0.00000000 -0.07595853 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000083  0.00000000

 23  1    11    1  |1 1>+       0.00013368 -0.00329805  0.00000000 -0.00000000  0.00000000  0.22788972  0.00000000 -0.52696504
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00215205  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00513207 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00513154  0.00000000  0.00000000  0.00000000  0.01161514  0.00000000
                                0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000013 -0.00000000

 27  1    15    1  |1 1>+      -0.00333267 -0.00489276  0.00000000  0.00000000  0.00000000 -0.01163563  0.00000000  0.00673498
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.06144081 -0.02963247 -0.00000000  0.00000000  0.00000000 -0.00064119  0.00000000  0.00000014

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.03412186 -0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.03412184 -0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000026  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00000000  0.00000000  0.06823686  0.00000000  0.00000000  0.00000000  0.00064012  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000069  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00250259 -0.00120697 -0.00000000  0.00000000  0.00000000  0.48495426 -0.00000000 -0.00010412

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00045076 -0.00000000  0.00000000  0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00045057 -0.00000000 -0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000533 -0.00000000
                               -0.00000000  0.00000000  0.00277656  0.00000000  0.00000000 -0.00000000 -0.48482371 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00348548  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00348551  0.00000000  0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00162516  0.00336969 -0.00000000  0.00000000 -0.00000000  0.00014189 -0.00000000  0.65066245

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00257080 -0.00533036  0.00000000 -0.00000000  0.00000000  0.00000304 -0.00000000  0.01346389

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00513166 -0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00513165  0.00000000  0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.03412104 -0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00506403 -0.06802444  0.00000000 -0.00000000  0.00000000 -0.00032048 -0.00000000  0.00055583

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000013  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.03412282  0.00000000  0.00000000  0.00000000  0.00032239  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.03411664 -0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.05909425 -0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00277924  0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00277360  0.00177124  0.00000000 -0.00000000 -0.00000000 -0.56952230  0.00000000  0.06817139

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000669  0.00000000
                                0.00000000 -0.00000000 -0.00348713 -0.00000000 -0.00000000  0.00000000  0.60882589  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00277873 -0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00249782 -0.00215782  0.00000000 -0.00000000  0.00000000 -0.22815210  0.00000000 -0.52686041

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000084 -0.00000000
                               -0.00000000  0.00000000  0.00043644  0.00000000  0.00000000 -0.00000000 -0.07598838 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00215200  0.00000000 -0.00000000 -0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00513207  0.00000000  0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00590373 -0.00043811  0.00000000 -0.00000000 -0.00000000  0.01163868 -0.00000000  0.00672991

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000013  0.00000000
                               -0.00000000  0.00000000  0.00513153  0.00000000  0.00000000  0.00000000  0.01161515  0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000097 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000001 -0.00550628  0.00000000  0.00000104 -0.00000000 -0.00000056  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00550627 -0.00000001  0.00000104 -0.00000000  0.00000000 -0.00000000 -0.00000056  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000095
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001342
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001

  8  1     8    1  |0 0>       -0.10845033 -0.00000014  0.00001657 -0.00000000 -0.00000000 -0.00000000 -0.00005688  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000014  0.10845024 -0.00000000 -0.00001654 -0.00000000  0.00005699 -0.00000000 -0.00000000
                               -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001390 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000262  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00032060  0.00000000  0.00030510 -0.00000000  0.00017970 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00028118
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000014

 15  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00028252  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00032087 -0.00000000 -0.00035321  0.00000000  0.00000000 -0.00000000 -0.00001211  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00055558  0.00000000 -0.00008553  0.00000000  0.00000000  0.00000000  0.00029670 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000064 -0.48522058 -0.00000001 -0.46704264  0.00000000  0.33929229 -0.00000062  0.00000000
                                0.00000002  0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000084  0.00000005  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.29210071
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014025

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.40898310  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.48506908 -0.00000064  0.21194869 -0.00000000 -0.00000000  0.00000099  0.53685513 -0.00000000
                                0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000001 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.49785029
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00023904

 23  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.40728957 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000049  0.37552011 -0.00000000 -0.19778810  0.00000000  0.67889536 -0.00000125  0.00000000
                               -0.00000001 -0.00000006 -0.00000000 -0.00000000  0.00000000 -0.00000168  0.00000011  0.00000000

 25  1    13    1  |1 1>+       0.00000002 -0.01161050  0.00000000  0.00000104 -0.00000000 -0.00000108  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001023
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000566  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000011  0.00000000  0.00000054 -0.00000000 -0.00000000 -0.00000000 -0.00000032 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00028206 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00032276  0.00000000  0.00009954 -0.00000000 -0.00000000 -0.00000000 -0.00034156  0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00032277 -0.00000000 -0.00009968  0.00000000  0.00034152 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000014
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00028184

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.57766385 -0.00000000  0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000
                               -0.07852513 -0.00000010  0.83508711 -0.00000001 -0.00000000  0.00000038  0.20449729 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000051 -0.00000003 -0.00000000
                                0.00000010 -0.07849470  0.00000001  0.83500632 -0.00000000  0.20484624 -0.00000038  0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00027734
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.57762608

 38  1    10    1  |1 0>        0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000  0.00000000
                                0.60829736  0.00000080  0.02631216 -0.00000000 -0.00000000  0.00000056  0.30612887 -0.00000000

 39  1    11    1  |1 0>        0.00000002  0.00000010 -0.00000000 -0.00000000 -0.00000000  0.00000076 -0.00000005 -0.00000000
                               -0.00000080  0.60830129  0.00000000  0.02614823  0.00000000  0.30612915 -0.00000056  0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000326 -0.00000000 -0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01160357  0.00000002 -0.00000395  0.00000000 -0.00000000  0.00000000  0.00000554 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.01160359 -0.00000000 -0.00000393 -0.00000000  0.00000554 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00032060  0.00000000 -0.00030517  0.00000000  0.00000000 -0.00000000 -0.00017958  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00028252  0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000014
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00028119

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00032086 -0.00000000 -0.00035320  0.00000000 -0.00001225  0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00055559  0.00000000  0.00008564 -0.00000000 -0.00029667  0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000
                                0.48522464  0.00000064  0.46690460 -0.00000001 -0.00000000 -0.00000062 -0.33947151  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.40900382 -0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00014026
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.29212603

 53  1     9    1  |1 1>-      -0.00000002 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000133 -0.00000009 -0.00000000
                                0.00000064 -0.48506898  0.00000000  0.21173456 -0.00000000  0.53693999 -0.00000099  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.40726913  0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00023903
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.49782758

 56  1    12    1  |1 1>-       0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000011  0.00000001  0.00000000
                                0.37551472  0.00000049 -0.19752166  0.00000000  0.00000000  0.00000125  0.67897820 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01161053 -0.00000002  0.00000107  0.00000000  0.00000000 -0.00000000 -0.00000105 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000565 -0.00000000 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001023

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000010 -0.00000000 -0.00000054  0.00000000  0.00000032 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000068 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000000 -0.00000693  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000104 -0.00000000 -0.00000000  0.00000000 -0.00000100  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000022  0.00000000  0.00000000 -0.00000025
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000023  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000170 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000

  7  1     7    1  |0 0>       -0.00000006 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000  0.00002211 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000022  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00002177 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002179 -0.00000000  0.00000000  0.00001570
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000103  0.00000000 -0.00000000 -0.00000000  0.00010126 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000598 -0.00000000  0.00000000 -0.00000000 -0.00001865  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00001128  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000144  0.00000000 -0.00000000 -0.00000160
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00021776  0.00000000  0.00000098 -0.00000000  0.00000000  0.00000000  0.00000030 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000100  0.00000000 -0.00000000 -0.00000000 -0.00000080  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000141 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000039  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000004  0.62511085 -0.00000000  0.00000000  0.19411220
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000013

 19  1     7    1  |1 1>+       0.09057861  0.00000001  0.70135045 -0.00000000 -0.00000000  0.00000000  0.19844091  0.00000000
                               -0.00000339 -0.00000000 -0.00007208 -0.00000000 -0.00000000  0.00000000  0.00200791  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.70306590 -0.00000001 -0.00000000  0.00000000 -0.06642065 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.59750918 -0.00000004 -0.00000000 -0.00000000  0.00000011
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000005

 22  1    10    1  |1 1>+      -0.70127852  0.00000000  0.09040404 -0.00000000  0.00000000 -0.00000000 -0.49630146 -0.00000000
                                0.00002622  0.00000000 -0.00000929  0.00000000  0.00000000 -0.00000000 -0.00502179 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.07207886 -0.00000000 -0.00000000 -0.00000000 -0.53061219  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03595340  0.00000000  0.00000000 -0.59661422
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000039

 25  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000045 -0.00000000 -0.00000000  0.00001818
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000042  0.00000000  0.00001229  0.00000000  0.00000000 -0.00000000 -0.00001139  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00001391 -0.00000000  0.00000000 -0.00000000  0.00000516  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000045  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000104  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000031 -0.00000000  0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000031  0.00000000 -0.00000000  0.00000098

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000196  0.00000000

 33  1     5    1  |1 0>        0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00037550 -0.00000000 -0.00000129  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00020733  0.00000000  0.00000000  0.00000000  0.65441252 -0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.48926774  0.00000003  0.00000000  0.00000000 -0.00000005

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000008
                                0.00000000 -0.00000000  0.00000000  0.00000003  0.48926849 -0.00000000  0.00000000 -0.12321571

 37  1     9    1  |1 0>        0.00000000  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00662257 -0.00000000
                                0.00000349  0.00000000  0.00022804  0.00000000 -0.00000000  0.00000000  0.65450611  0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000014
                                0.00000000 -0.00000000 -0.00000000 -0.10749496  0.00000001  0.00000000 -0.00000000  0.00000030

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000048
                               -0.00000000  0.00000000  0.00000000  0.00000001  0.10750047 -0.00000000 -0.00000000  0.72075824

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.02998356  0.00000000  0.00000000 -0.00000000 -0.00004849 -0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000749  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000924  0.00000000  0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000922 -0.00000000 -0.00000000  0.00002422

 44  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000127 -0.00000000 -0.00000102 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000144 -0.00000000  0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000100 -0.00000000  0.00000000  0.00000000 -0.00000080  0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00021775  0.00000000  0.00000098  0.00000000  0.00000000 -0.00000000 -0.00000030  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000141  0.00000000 -0.00000000 -0.00000176

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000039 -0.00000000 -0.00000000  0.00000165

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004
                               -0.00000000  0.00000000  0.00000000  0.62510344 -0.00000004 -0.00000000 -0.00000000 -0.00000008

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.70310372 -0.00000001 -0.00000000  0.00000000  0.06595279 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000338 -0.00000000 -0.00007207 -0.00000000 -0.00000000 -0.00000000 -0.00201261 -0.00000000
                               -0.09054079 -0.00000001 -0.70121702  0.00000000  0.00000000  0.00000000  0.19890499  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000018
                               -0.00000000  0.00000000 -0.00000000 -0.00000004 -0.59749793 -0.00000000 -0.00000000  0.26776366

 54  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.07245054 -0.00000000  0.00000000  0.00000000  0.53050304 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00002622 -0.00000000 -0.00000932 -0.00000000 -0.00000000  0.00000000  0.00502125  0.00000000
                                0.70128887 -0.00000000 -0.09071538 -0.00000000  0.00000000 -0.00000000 -0.49624818 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000012
                                0.00000000 -0.00000000  0.00000000  0.03592189 -0.00000000 -0.00000000  0.00000000 -0.00000025

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000045  0.00000000  0.00000000  0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00001395 -0.00000000  0.00000000 -0.00000000 -0.00000509  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000011  0.00000000
                               -0.00000039 -0.00000000 -0.00001229 -0.00000000  0.00000000 -0.00000000 -0.00001135 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000045  0.00000000  0.00000000 -0.00000180


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000  0.00000206 -0.00779732  0.00000000  0.00000000  0.00000000 -0.00000081  0.00000019
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000014 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00154116  0.00386305
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000101  0.00000028  0.00000000  0.00000000  0.00000000 -0.00386400  0.00154127
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00416107  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000026 -0.00000000 -0.00000000  0.00000000 -0.00416106 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00416063  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.87302394  0.00000002 -0.00000003  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00001722  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00001574  0.00000000  0.00000000 -0.00000002  0.87301788  0.00000004  0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000004  0.87301733  0.00000002 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000011 -0.00001613 -0.00000000 -0.00000000 -0.00000001  0.35445838  0.79779792
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000081 -0.00008406 -0.00000000 -0.00000001 -0.00000001  0.79772862 -0.35445235
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00002910  0.27786577 -0.00000000 -0.00000000 -0.00000000  0.00002961 -0.00000697
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00094108 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00094046  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000071 -0.00000043 -0.00000000 -0.00000000 -0.00000000  0.00180055  0.00053142
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000176  0.00000000  0.00000000 -0.00000000  0.00094103  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000165  0.00000000 -0.00000000  0.00000000 -0.00162653 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000  0.05029076  0.00000000 -0.00000000
                                0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.06314033  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000125  0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.03140528  0.00001336 -0.00000000 -0.00000000 -0.00000000  0.02069536  0.05582540
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.26773911  0.00000000 -0.00000000  0.00000000 -0.05030221 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00787471 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000016 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.46228065  0.00003463  0.00000000  0.00000000  0.00000000 -0.04770388  0.03587172
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000025 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.03898249 -0.00000000  0.00000000
                               -0.00000012 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000001 -0.33707185 -0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.33702960 -0.00000001  0.00000001 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000665 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00002901 -0.55456795 -0.00000000 -0.00000000  0.00000000 -0.11048942  0.37323441
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000180  0.00000000 -0.00000000  0.00000000  0.00000243  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00043859  0.00182369

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000098  0.00000000 -0.00000000  0.00000000 -0.00094067 -0.00000000 -0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00094068 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00187681 -0.00000000  0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00005129  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.01175826  0.04889021

 35  1     7    1  |1 0>       -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.12323115 -0.00000000 -0.00000000  0.00000000 -0.00813951 -0.00000000 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00813626  0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000099  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.05031729 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.72075656  0.00000000 -0.00000000 -0.00000000  0.06313019  0.00000000  0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000014 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000030  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.06313053 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.75534797  0.00003689 -0.00000000 -0.00000000 -0.00000000  0.06575545 -0.01581371

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00003392  0.55465208  0.00000000  0.00000000  0.00000001 -0.37842270  0.09100996

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00002426  0.00000000 -0.00000000  0.00000001 -0.33700077 -0.00000001 -0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000001  0.33700140  0.00000001 -0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000160  0.00000000  0.00000000  0.00000000 -0.00094108 -0.00000000 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000071  0.00000043 -0.00000000  0.00000000  0.00000000 -0.00136203  0.00129199

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00094046 -0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00094099 -0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00162654 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.19414452 -0.00000000  0.00000000 -0.00000000  0.05029125  0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.03141866  0.00001344  0.00000000  0.00000000  0.00000000 -0.00694821 -0.05913010

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000125 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.06313991  0.00000000 -0.00000000  0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000011  0.00000000  0.00000000  0.00000000 -0.00000000  0.05030207  0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.46235551  0.00003473  0.00000000  0.00000000  0.00000000 -0.05879849 -0.01026219

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000016  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00787771 -0.00000000  0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.59661356 -0.00000000  0.00000000 -0.00000000  0.03898189  0.00000000  0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001819  0.00000000  0.00000000 -0.00000001  0.33707101  0.00000001  0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00002900 -0.55456763  0.00000000  0.00000000  0.00000000 -0.26810918 -0.28218332

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000665  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.33702877 -0.00000001  0.00000001 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000244  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000009
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00614862 -0.00080046
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00080098  0.00614519
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000006  0.00000000 -0.00000000  0.00620652 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000005  0.00000000 -0.00000000  0.00620653  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00620630  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000058  0.00000001  0.00000001  0.47546380 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000487 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00005620  0.00000000  0.00000000  0.47547146  0.00000005 -0.00000001 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000022 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00005643  0.00000000  0.00000005 -0.47547249  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.46879591  0.07955943
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.07954544  0.46888852
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000034  0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00034091 -0.00000000 -0.00000000  0.00015449 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00034047  0.00000000  0.00000000  0.00015459 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000076 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00015686  0.00026400
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00034052  0.00000000 -0.00000000  0.00015488  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00019277  0.00000000 -0.00000000 -0.00026727 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00001111  0.00000000  0.00000000 -0.01824335  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00001221  0.00000000  0.00000000  0.02289916 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000023 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.02146051  0.00225603
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000501  0.00000000  0.00000000 -0.01824147 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000123 -0.00000000 -0.00000000 -0.00285526  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00832020 -0.01996659
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00001512 -0.00000000 -0.00000000  0.01414370 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000026  0.70667398  0.00000000  0.00000007 -0.62146187  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.70667291  0.00000001  0.00000001  0.62148936 -0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00157318 -0.00000000  0.00000000  0.00000636 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.61638299  0.36747968
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.03494868 -0.00000001  0.00000000 -0.00021408 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00030560 -0.00000429

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00034079  0.00000000 -0.00000000 -0.00015437 -0.00000000  0.00000000  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00034079  0.00000000 -0.00000000  0.00015437 -0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00030704  0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000088 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00039619  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.01821166 -0.00025541

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000179 -0.00000000 -0.00000000 -0.00295220 -0.00000000  0.00000000  0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000181 -0.00000000  0.00000000 -0.00295104  0.00000000 -0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000019 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.01822713  0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00002400  0.00000000  0.00000000  0.02289804  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00002400  0.00000000 -0.00000000  0.02289825 -0.00000000  0.00000000  0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00034359  0.02451160

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.01006463  0.71749399

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000029  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.70667546 -0.00000026  0.00000000  0.62150948  0.00000007 -0.00000001 -0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000026  0.70667537  0.00000000 -0.00000007  0.62150920 -0.00000001  0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00007779  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.03494484  0.00000000  0.00000000  0.00000100 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00034091 -0.00000000  0.00000000 -0.00015449 -0.00000000  0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00014940 -0.00026829

 47  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000076 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00034047 -0.00000000 -0.00000000 -0.00015459  0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00034053 -0.00000000 -0.00000000  0.00015487 -0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00019277  0.00000000 -0.00000000  0.00026727 -0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001116 -0.00000000  0.00000000  0.01824349  0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.02138836  0.00285822

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000023  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00001231  0.00000000  0.00000000  0.02289903 -0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000497 -0.00000000  0.00000000 -0.01824151  0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00887782 -0.01972516

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000119 -0.00000000 -0.00000000 -0.00285637  0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001515 -0.00000000  0.00000000  0.01414345  0.00000000 -0.00000000 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000029 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70667390 -0.00000026  0.00000000 -0.62146239 -0.00000007  0.00000001  0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.62644808  0.35004925

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00157318  0.00000000 -0.00000000 -0.00000636  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.70667313  0.00000001  0.00000001  0.62148951 -0.00000001  0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.03494871 -0.00000000 -0.00000000  0.00021247 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00212628
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000006
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000136 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000137 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000046 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00010171 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00010094  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000058
                               -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000250
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000  0.96061990
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00001145 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00001146 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00001144 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000641 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000358 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000015 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000299
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000371  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000094  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000822
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000376 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000005  0.02484539  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000

 26  1    14    1  |1 1>+       0.02470916 -0.00000000  0.00000000  0.00000000
                               -0.00000006 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.16041941
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000001  0.99938909 -0.00000192 -0.00000000
                               -0.00000000  0.00000000  0.00000003  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000001

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00001133 -0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00001133 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001327  0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000105  0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000105 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000002  0.00000000  0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000426 -0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000423  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000765

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.16042519

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.02457852  0.00000005  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000001  0.00000000
                               -0.00000000  0.00000005  0.02457953 -0.00000000

 44  1    16    1  |1 0>        0.00000237  0.00000000  0.00000000  0.00000000
                                0.99938924 -0.00000001  0.00000001 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00001145  0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00001146 -0.00000000  0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00001144  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000641  0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000362 -0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000299

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000019 -0.00000000 -0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000369  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000824

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000093  0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000378 -0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.02484637  0.00000005 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.16041899

 59  1    15    1  |1 1>-      -0.00000006 -0.00000000 -0.00000000 -0.00000000
                               -0.02471041  0.00000000 -0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000003 -0.00000030  0.00000000
                               -0.00000001  0.00000192  0.99938908 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.68%    0.01%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.68%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.70%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.70%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.55%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.55%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.95%   49.25%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.20%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.56%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.20%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.99%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.15%   50.05%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.55%    0.00%
 48  1     4    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.54%
 49  1     5    1  |1 1>-         0.00%   10.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.65%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.70%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%   51.67%    0.00%    0.00%    0.00%    1.66%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   32.71%    0.00%    0.00%   20.62%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+        16.55%    0.00%   47.84%    0.00%    0.00%    0.00%    5.50%    0.00%
 17  1     5    1  |1 1>+        49.65%    0.00%    0.22%    0.00%    0.00%    0.00%   39.79%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>         16.56%    0.00%    0.29%    0.00%    0.00%    0.00%   53.03%    0.00%
 31  1     3    1  |1 0>          0.00%    0.30%    0.00%    0.00%    0.00%   53.02%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%   60.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-        16.55%    0.00%   51.65%    0.00%    0.00%    0.00%    1.68%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.95%    0.00%    0.00%   19.38%
 48  1     4    1  |1 1>-         0.00%   47.80%    0.00%    0.00%    0.00%    5.54%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.23%    0.00%    0.00%    0.00%   39.78%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         90.29%    9.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          9.00%   90.29%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.29%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   99.29%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%   99.29%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.18%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.14%    0.00%    0.04%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    1.14%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.32%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.35%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.07%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   32.44%    0.00%    0.46%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.58%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.19%    0.00%   27.77%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.38%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.47%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.52%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.51%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.34%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.46%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.35%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   32.44%    0.00%    0.46%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.07%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    5.21%    0.00%   27.76%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.58%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          1.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    1.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%   23.54%    0.00%   21.81%    0.00%   11.51%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.53%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.73%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+        23.53%    0.00%    4.49%    0.00%    0.00%    0.00%   28.82%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.79%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.59%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%   14.10%    0.00%    3.91%    0.00%   46.09%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.37%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.62%    0.00%   69.74%    0.00%    0.00%    0.00%    4.18%    0.00%
 36  1     8    1  |1 0>          0.00%    0.62%    0.00%   69.72%    0.00%    4.20%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.37%
 38  1    10    1  |1 0>         37.00%    0.00%    0.07%    0.00%    0.00%    0.00%    9.37%    0.00%
 39  1    11    1  |1 0>          0.00%   37.00%    0.00%    0.07%    0.00%    9.37%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-        23.54%    0.00%   21.80%    0.00%    0.00%    0.00%   11.52%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.73%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.53%
 53  1     9    1  |1 1>-         0.00%   23.53%    0.00%    4.48%    0.00%   28.83%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.59%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.78%
 56  1    12    1  |1 1>-        14.10%    0.00%    3.90%    0.00%    0.00%    0.00%   46.10%    0.00%
 57  1    13    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   39.08%    0.00%    0.00%    3.77%
 19  1     7    1  |1 1>+         0.82%    0.00%   49.19%    0.00%    0.00%    0.00%    3.94%    0.00%
 20  1     8    1  |1 1>+         0.00%   49.43%    0.00%    0.00%    0.00%    0.44%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%   35.70%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+        49.18%    0.00%    0.82%    0.00%    0.00%    0.00%   24.63%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.52%    0.00%    0.00%    0.00%   28.15%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.13%    0.00%    0.00%   35.59%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%   23.94%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.94%    0.00%    0.00%    1.52%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.84%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    1.16%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.16%    0.00%    0.00%   51.95%
 40  1    12    1  |1 0>          0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   39.08%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   49.44%    0.00%    0.00%    0.00%    0.43%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.82%    0.00%   49.17%    0.00%    0.00%    0.00%    3.96%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   35.70%    0.00%    0.00%    7.17%
 54  1    10    1  |1 1>-         0.00%    0.52%    0.00%    0.00%    0.00%   28.14%    0.00%    0.00%
 55  1    11    1  |1 1>-        49.18%    0.00%    0.82%    0.00%    0.00%    0.00%   24.63%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.13%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   76.22%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   76.22%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   76.22%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   12.56%   63.65%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   63.64%   12.56%
 12  1    12    1  |0 0>          0.00%    0.00%    7.72%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.04%    0.31%
 21  1     9    1  |1 1>+         7.17%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%   21.37%    0.00%    0.00%    0.00%    0.00%    0.23%    0.13%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   11.36%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%   11.36%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%   30.75%    0.00%    0.00%    0.00%    1.22%   13.93%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.24%
 35  1     7    1  |1 0>          1.52%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>         51.95%    0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.40%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   57.06%    0.00%    0.00%    0.00%    0.00%    0.43%    0.03%
 41  1    13    1  |1 0>          0.00%    0.00%   30.76%    0.00%    0.00%    0.00%   14.32%    0.83%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%   11.36%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   11.36%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         3.77%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.35%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.40%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%   21.38%    0.00%    0.00%    0.00%    0.00%    0.35%    0.01%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-        35.59%    0.00%    0.00%    0.00%    0.15%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   11.36%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%   30.75%    0.00%    0.00%    0.00%    7.19%    7.96%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%   11.36%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   22.61%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%   22.61%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   22.61%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   21.98%    0.63%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.63%   21.99%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.04%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%   49.94%    0.00%    0.00%   38.62%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%   49.94%    0.00%    0.00%   38.62%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.99%   13.50%
 28  1    16    1  |1 1>+         0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   51.48%
 42  1    14    1  |1 0>         49.94%    0.00%    0.00%   38.63%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%   49.94%    0.00%    0.00%   38.63%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.04%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-        49.94%    0.00%    0.00%   38.62%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.24%   12.25%
 59  1    15    1  |1 1>-         0.00%    0.00%   49.94%    0.00%    0.00%   38.62%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   92.28%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.06%    0.00%
 26  1    14    1  |1 1>+         0.06%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    2.57%
 28  1    16    1  |1 1>+         0.00%   99.88%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    2.57%
 42  1    14    1  |1 0>          0.00%    0.06%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.06%    0.00%
 44  1    16    1  |1 0>         99.88%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.06%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    2.57%
 59  1    15    1  |1 1>-         0.06%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%   99.88%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       77.70       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      839.07       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     46753.91  36537.66     73.82   8203.52   1931.11      3.64      0.08      3.84
 REAL TIME  *     47110.39 SEC
 DISK USED  *       916.84 MB (local),       11.20 GB (total)
 SF USED    *         4.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -8132.421996206936

              CI              CI           MULTI         RHF-SCF
  -8132.38704120  -8132.38464803  -8131.90664792  -8131.99670480
 **********************************************************************************************************************************
 Molpro calculation terminated
