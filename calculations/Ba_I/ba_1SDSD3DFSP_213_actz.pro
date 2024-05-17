
 Working directory              : /wrk/irikura/molpro.bWZdQAoJkA/
 Global scratch directory       : /wrk/irikura/molpro.bWZdQAoJkA/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.bWZdQAoJkA/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,2500,M;
 
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
     occ,22,18
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
  64 bit mpp version                                                                     DATE: 26-Apr-24          TIME: 13:13:23  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      2500 MW
 Total memory per node:  15000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2500.0 MW


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

     22.807 MB (compressed) written to integral file ( 13.9%)

     Node minimum: 2.621 MB, node maximum: 4.981 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1525446.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1525446      RECORD LENGTH: 524288

 Memory used in sort:       2.08 MW

 SORT1 READ    20698825. AND WROTE      318015. INTEGRALS IN      1 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     1919742. AND WROTE     9150775. INTEGRALS IN     78 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1523422.  Node maximum:     1528605. integrals

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
 CPU TIMES  *         4.69      4.51
 REAL TIME  *         5.76 SEC
 DISK USED  *        29.73 MB (local),      211.91 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99670480   -8131.99670480     0.00D+00     0.19D+00     0     0       0.02      0.03    start
   2    -8131.99670480      -0.00000000     0.85D-06     0.19D-04     1     0       0.01      0.04    diag
   3    -8131.99670480      -0.00000000     0.14D-06     0.84D-05     2     0       0.01      0.05    diag
   4    -8131.99670480      -0.00000000     0.62D-07     0.40D-05     3     0       0.01      0.06    diag
   5    -8131.99670480      -0.00000000     0.32D-07     0.50D-05     4     0       0.01      0.07    diag
   6    -8131.99670480       0.00000000     0.49D-08     0.13D-06     5     0       0.00      0.07    diag
   7    -8131.99670480      -0.00000000     0.21D-08     0.18D-06     0     0       0.01      0.08    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.996704798135
  RHF One-electron energy            -11100.0286158105    
  RHF Two-electron energy            2968.031911012384
  RHF Kinetic energy                 9672.733921040483
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
    4.1     2.00000   -29.94645     1  1  d1-  0.99986
    5.1     2.00000   -29.94645     1  1  d1+  0.99986
    6.1     2.00000   -29.94645     1  1  d2+  0.99961
    7.1     2.00000   -29.94645     1  1  d2-  0.99963
    8.1     2.00000   -29.94645     1  1  d0   1.00000
    9.1     2.00000   -10.25509     1  4  s    1.00008
   10.1     2.00000    -3.85433     1  2  d2-  0.99722
   11.1     2.00000    -3.85433     1  2  d2+  0.99653
   12.1     2.00000    -3.85433     1  2  d1-  0.99988
   13.1     2.00000    -3.85433     1  2  d1+  0.99996
   14.1     2.00000    -3.85433     1  2  d0   0.99937
   15.1     2.00000    -1.60335     1  5  s    0.99881
   16.1     2.00000    -0.16308     1  6  s    1.00172
    1.2     2.00000  -199.39477     1  1  pz   0.99987
    2.2     2.00000  -199.39477     1  1  px   0.99859
    3.2     2.00000  -199.39477     1  1  py   0.99872
    4.2     2.00000   -41.04464     1  2  pz   1.00000
    5.2     2.00000   -41.04464     1  2  px   0.99955
    6.2     2.00000   -41.04464     1  2  py   0.99955
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
 CPU TIMES  *         4.78      0.09      4.51
 REAL TIME  *         5.87 SEC
 DISK USED  *        32.55 MB (local),      228.81 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (  15  12 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:      69 (  29  40 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              49   (85 determinants, 169 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              36   (36 determinants, 78 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.220D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.210D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.352D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.302D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.741D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.113D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.204D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.994D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.364D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.291D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.293D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.485D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.994D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 3   5 6 4 2 1 1 1 5 3 6   4 2 5 3 6 4 2 1 6 4   5 3 2 1 6 4 5 3 2 1
                                        6 4 2 5 3 2 4 6 5 3   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.165D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.624D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.496D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.184D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.292D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.309D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.170D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.170D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.218D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.198D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.616D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.426D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.426D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 2 1 3   2 1 1 2 3 1 2 3 1 2   3 610 8 4 5 7 910 8   4 5 6 9 7 1 2 3 6 7
                                        9 5 410 8 3 2 1 7 9  10 8 5 4 6 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  1535  ( 177 closed/active, 915 closed/virtual, 0 active/active, 443 active/virtual )
 Total number of variables:    3131
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   24    5  -8131.85142229   -8131.94303892   -0.09161663    0.05468787 0.00011486 0.00000000  0.24E+01      1.88
   2    8   14    0  -8131.92273304   -8131.92813589   -0.00540285    0.04114296 0.00006002 0.00000000  0.40E+00      3.47
   3    9   14    0  -8131.92817376   -8131.92817601   -0.00000225    0.00072681 0.00000007 0.00000000  0.83E-02      5.07
   4    6   10    0  -8131.92817601   -8131.92817601   -0.00000000    0.00000099 0.00000000 0.00000000  0.12E-04      6.23

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.10E-09)
                       Final energy:  -8131.92817601
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.018865625318
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.30321335
 One electron energy                        -11099.02164243
 Two electron energy                          2967.00277680
 Virial ratio                                    1.84075310
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -8131.956650253384
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.49007250
 One electron energy                        -11101.42630123
 Two electron energy                          2969.46965098
 Virial ratio                                    1.84073042
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -8131.956650253370
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.49007250
 One electron energy                        -11101.42630123
 Two electron energy                          2969.46965098
 Virial ratio                                    1.84073042
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -8131.956650253355
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.49007250
 One electron energy                        -11101.42630123
 Two electron energy                          2969.46965098
 Virial ratio                                    1.84073042
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -8131.956650253354
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.49007250
 One electron energy                        -11101.42630123
 Two electron energy                          2969.46965097
 Virial ratio                                    1.84073042
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -8131.956650253334
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.49007250
 One electron energy                        -11101.42630122
 Two electron energy                          2969.46965097
 Virial ratio                                    1.84073042
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -8131.902273629362
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64389390
 One electron energy                        -11103.02864385
 Two electron energy                          2971.12637022
 Virial ratio                                    1.84071143
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -8131.902273629345
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64389390
 One electron energy                        -11103.02864385
 Two electron energy                          2971.12637022
 Virial ratio                                    1.84071143
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -8131.902273629316
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64389390
 One electron energy                        -11103.02864387
 Two electron energy                          2971.12637024
 Virial ratio                                    1.84071143
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -8131.902273629311
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64389390
 One electron energy                        -11103.02864386
 Two electron energy                          2971.12637023
 Virial ratio                                    1.84071143
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy            -8131.902273629309
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.64389390
 One electron energy                        -11103.02864386
 Two electron energy                          2971.12637023
 Virial ratio                                    1.84071143
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy            -8131.900341367170
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.09148964
 One electron energy                        -11094.84852133
 Two electron energy                          2962.94817996
 Virial ratio                                    1.84075925
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.963130866012
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54513585
 One electron energy                        -11102.00363480
 Two electron energy                          2970.04050393
 Virial ratio                                    1.84072630
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.963130865995
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54513585
 One electron energy                        -11102.00363480
 Two electron energy                          2970.04050393
 Virial ratio                                    1.84072630
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.963130865994
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54513585
 One electron energy                        -11102.00363480
 Two electron energy                          2970.04050393
 Virial ratio                                    1.84072630
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.963130865987
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54513585
 One electron energy                        -11102.00363479
 Two electron energy                          2970.04050393
 Virial ratio                                    1.84072630
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.963130865962
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.54513585
 One electron energy                        -11102.00363479
 Two electron energy                          2970.04050393
 Virial ratio                                    1.84072630
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.906634938779
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.86323066
 One electron energy                        -11105.45859094
 Two electron energy                          2973.55195600
 Virial ratio                                    1.84069282
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.906634938775
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.86323066
 One electron energy                        -11105.45859094
 Two electron energy                          2973.55195600
 Virial ratio                                    1.84069282
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.906634938772
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.86323066
 One electron energy                        -11105.45859094
 Two electron energy                          2973.55195600
 Virial ratio                                    1.84069282
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.906634938768
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.86323066
 One electron energy                        -11105.45859094
 Two electron energy                          2973.55195600
 Virial ratio                                    1.84069282
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.906634938757
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.86323066
 One electron energy                        -11105.45859094
 Two electron energy                          2973.55195600
 Virial ratio                                    1.84069282
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.906634938733
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.86323066
 One electron energy                        -11105.45859094
 Two electron energy                          2973.55195600
 Virial ratio                                    1.84069282
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.906634938731
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.86323066
 One electron energy                        -11105.45859094
 Two electron energy                          2973.55195600
 Virial ratio                                    1.84069282
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.905332991010
 Nuclear energy                                  0.00000000
 Kinetic energy                               9671.89252607
 One electron energy                        -11092.65867311
 Two electron energy                          2960.75334012
 Virial ratio                                    1.84077706
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.902556650230
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.56394665
 One electron energy                        -11102.15507748
 Two electron energy                          2970.25252083
 Virial ratio                                    1.84071841
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.902556650224
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.56394665
 One electron energy                        -11102.15507748
 Two electron energy                          2970.25252083
 Virial ratio                                    1.84071841
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy            -8131.902556650211
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.56394665
 One electron energy                        -11102.15507747
 Two electron energy                          2970.25252082
 Virial ratio                                    1.84071841
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.986530654126
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999995264529
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000032158087
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000002936584
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.013438986675
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.790331713497
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999998747480
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     3.209666272974
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.999086481798
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000916784251
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999999617254
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.964655995722
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000407777169
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.034944912802
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999991697054
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.000257544211
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     5.986619573331
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.847105835432
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.551778512724
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.013016335634
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.155342561953
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     8.445879636715
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.000047125247
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999953549266
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.999999325488
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.013533350576
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000001762824
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000006667011
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999985152691
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.986473066899
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.225512998882
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000001574241
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     2.774483151944
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.000916483721
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.999085791213
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999414657
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.034799051280
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999651122014
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.965521840295
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000028571754
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.999949505737
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     6.012905460675
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.068135343971
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.449600739461
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.986994240169
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     8.929902499155
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     2.552512210831
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999953557214
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.000046947898
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.999999494889
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999935995298
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000002972647
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999961174902
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000011910725
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000087946427
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     3.984155287622
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     3.999999678279
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.015850575082
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.999997034481
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.999997424537
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000968089
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000544952998
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999941100817
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999533246903
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999979731193
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999792950052
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000474965993
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     8.084758820597
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.998620747815
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.999989424196
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.914754938891
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.001608152454
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999317540
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.999999502837
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     0.000001179624
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
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
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     0.000000000000
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
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.70662     1  1  s    1.00000
    2.1     2.00000  -222.41615     1  2  s    1.00000
    3.1     2.00000   -48.58958     1  3  s    1.00004
    4.1     2.00000   -29.90286     1  1  d1-  1.00000
    5.1     2.00000   -29.90286     1  1  d2+  1.00000
    6.1     2.00000   -29.90286     1  1  d1+  1.00000
    7.1     2.00000   -29.90286     1  1  d2-  1.00000
    8.1     2.00000   -29.90286     1  1  d0   1.00000
    9.1     2.00000   -10.21050     1  4  s    0.99871
   10.1     2.00000    -3.81149     1  2  d2-  1.00060
   11.1     2.00000    -3.81149     1  2  d2+  1.00060
   12.1     2.00000    -3.81149     1  2  d1-  1.00073
   13.1     2.00000    -3.81149     1  2  d1+  1.00073
   14.1     2.00000    -3.81149     1  2  d0   1.00073
   15.1     2.00000    -1.55616     1  5  s    0.97381
   16.1     0.45540    -0.03419     1  6  s    1.13592
   17.1     0.25618     0.05463     1  3  d2+ -0.89147
   18.1     0.25618     0.05463     1  3  d2- -0.89147
   19.1     0.25618     0.05463     1  3  d1- -0.89147
   20.1     0.25618     0.05463     1  3  d1+ -0.89147
   21.1     0.25618     0.05463     1  3  d0  -0.89147
   22.1     0.06655     0.04167     1  5  s    0.29112    1  6  s   -1.35927    1  8  s    0.60244    1 11  s    1.17679
    1.2     2.00000  -199.35083     1  1  px   0.99942
    2.2     2.00000  -199.35083     1  1  py   0.99942
    3.2     2.00000  -199.35083     1  1  pz   1.00000
    4.2     2.00000   -41.00072     1  2  px   0.99998
    5.2     2.00000   -41.00072     1  2  pz   1.00000
    6.2     2.00000   -41.00072     1  2  py   0.99998
    7.2     2.00000    -7.65586     1  3  pz   0.99959
    8.2     2.00000    -7.65586     1  3  py   0.99959
    9.2     2.00000    -7.65586     1  3  px   0.99959
   10.2     2.00000    -0.86228     1  4  pz   0.97379
   11.2     2.00000    -0.86228     1  4  py   0.97379
   12.2     2.00000    -0.86228     1  4  px   0.97379
   13.2     0.06467     0.04976     1  5  px   1.04836
   14.2     0.06467     0.04976     1  5  py   1.04836
   15.2     0.06467     0.04976     1  5  pz   1.04836
   16.2     0.00104     0.11170     1  5  pz   1.19671    1  6  pz   0.55712    1  7  pz  -1.65500
   17.2     0.00104     0.11170     1  5  px   1.19671    1  6  px   0.55712    1  7  px  -1.65500
   18.2     0.00104     0.11170     1  5  py   1.19671    1  6  py   0.55712    1  7  py  -1.65500
 *** IN SYMMETRY  1 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.160D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.228D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.184D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.761D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.221D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.160D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.160D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.146D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.146D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.434D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.950D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.951D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.315D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.316D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.308D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.308D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.142D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.144D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.516D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.385D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.465D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.158D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.158D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 5 4 3 2 1 3   5 6 4 2 1 1 5 3 6 4   2 1 5 3 6 4 2 1 6 4   5 3 2 1 6 4 5 3 2 1
                                        6 4 2 5 3 2 4 6 5 3   1
 *** IN SYMMETRY  2 ORBITAL   1 SYMMETRY CONTAMINATION OF 0.342D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   2 SYMMETRY CONTAMINATION OF 0.342D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.598D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.598D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.101D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.101D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.333D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.333D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.300D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.301D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.531D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.531D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.332D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.332D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.180D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.180D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.306D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.306D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.103D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.313D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.732D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.796D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.876D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.876D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.128D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.129D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.409D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.409D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.352D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.288D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.338D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.338D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.134D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.134D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 3 2 1 3   2 1 1 2 3 3 1 2 1 2   3 6 810 4 5 7 910 8   4 5 6 9 7 3 1 2 6 7
                                        9 5 410 8 3 2 1 7 9   810 5 4 6 3 2 1
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                   1               2               3               4               5               6               7
 2000000 000000      0.95611466     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 b00a000 000000      0.00000000     -0.00046386     -0.64764323     -0.00050003      0.00034564      0.00023185      0.00000043
 a00b000 000000     -0.00000000      0.00046386      0.64764323      0.00050003     -0.00034564     -0.00023185     -0.00000043
 a000b00 000000     -0.00000000     -0.00052020      0.00034682     -0.00121396      0.64764218     -0.00037788      0.00000286
 b000a00 000000      0.00000000      0.00052020     -0.00034682      0.00121396     -0.64764218      0.00037788     -0.00000286
 a0b0000 000000     -0.00000000     -0.00122947     -0.00049910      0.64763905      0.00121225     -0.00167957      0.00007244
 b0a0000 000000      0.00000000      0.00122947      0.00049910     -0.64763905     -0.00121225      0.00167957     -0.00007244
 ba00000 000000     -0.00000000     -0.64763727      0.00046362     -0.00123466     -0.00052423     -0.00252033      0.04474108
 ab00000 000000      0.00000000      0.64763727     -0.00046362      0.00123466      0.00052423      0.00252033     -0.04474108
 a0000b0 000000      0.00000000     -0.00252366      0.00023257      0.00167424      0.00037887      0.64763649      0.00282108
 b0000a0 000000     -0.00000000      0.00252366     -0.00023257     -0.00167424     -0.00037887     -0.64763649     -0.00282108
 a00000b 000000     -0.03914884      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 b00000a 000000      0.03914884     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 00b00a0 000000      0.00000000      0.00024276      0.00009855     -0.12787673     -0.00023936      0.00033163      0.00075545
 00a00b0 000000     -0.00000000     -0.00024276     -0.00009855      0.12787673      0.00023936     -0.00033163     -0.00075545
 0b000a0 000000     -0.00000000     -0.12787637      0.00009154     -0.00024378     -0.00010351     -0.00049764     -0.46655622
 0a000b0 000000      0.00000000      0.12787637     -0.00009154      0.00024378      0.00010351      0.00049764      0.46655622
 0200000 000000     -0.04309780     -0.00049830      0.00004592      0.00033058      0.00007481      0.12787622     -0.02941801
 0020000 000000     -0.04309780     -0.00049830      0.00004592      0.00033058      0.00007481      0.12787622     -0.02941801
 0000020 000000     -0.04309780      0.00049830     -0.00004592     -0.00033058     -0.00007481     -0.12787622      0.02941801
 0002000 000000     -0.04309780      0.11099334     -0.00010224      0.00004583      0.00005224     -0.06350714      0.41875854
 000ab00 000000      0.00000000      0.00021024      0.00008535     -0.11074449     -0.00020729      0.00028720      0.00065424
 000ba00 000000     -0.00000000     -0.00021024     -0.00008535      0.11074449      0.00020729     -0.00028720     -0.00065424
 0a00b00 000000      0.00000000      0.00008895     -0.00005930      0.00020758     -0.11074503      0.00006462      0.00002585
 0b00a00 000000     -0.00000000     -0.00008895      0.00005930     -0.00020758      0.11074503     -0.00006462     -0.00002585
 00ba000 000000     -0.00000000     -0.00008895      0.00005930     -0.00020758      0.11074503     -0.00006462     -0.00002585
 00ab000 000000      0.00000000      0.00008895     -0.00005930      0.00020758     -0.11074503      0.00006462      0.00002585
 0b0a000 000000      0.00000000     -0.00007932     -0.11074521     -0.00008550      0.00005910      0.00003965     -0.00000384
 0a0b000 000000     -0.00000000      0.00007932      0.11074521      0.00008550     -0.00005910     -0.00003965      0.00000384
 00a0b00 000000      0.00000000     -0.00007932     -0.11074521     -0.00008550      0.00005910      0.00003965     -0.00000384
 00b0a00 000000     -0.00000000      0.00007932      0.11074521      0.00008550     -0.00005910     -0.00003965      0.00000384
 0000200 000000     -0.04309780     -0.11049504      0.00005632     -0.00037641     -0.00012705     -0.06436908     -0.38934053
 0000000 002000     -0.15115239      0.00100997     -0.00009313     -0.00067003     -0.00015162     -0.25918346     -0.02363170
 0000000 200000     -0.15115239     -0.22496471      0.00020722     -0.00009240     -0.00010588      0.12871823      0.33639170
 0000000 ab0000      0.00000000      0.00042562      0.00017298     -0.22446035     -0.00042012      0.00058211     -0.00052484
 0000000 ba0000     -0.00000000     -0.00042562     -0.00017298      0.22446035      0.00042012     -0.00058211      0.00052484
 0000000 b0a000     -0.00000000     -0.00018029      0.00011995     -0.00042071      0.22446143     -0.00013097      0.00002077
 0000000 a0b000      0.00000000      0.00018029     -0.00011995      0.00042071     -0.22446143      0.00013097     -0.00002077
 0000000 0ab000      0.00000000     -0.00016074     -0.22446179     -0.00017330      0.00011955      0.00008040      0.00000305
 0000000 0ba000     -0.00000000      0.00016074      0.22446179      0.00017330     -0.00011955     -0.00008040     -0.00000305
 0000000 020000     -0.15115239      0.22395474     -0.00011409      0.00076243      0.00025750      0.13046523     -0.31276001
 0000ba0 000000      0.00000000     -0.00005136      0.00003424     -0.00011985      0.06393867     -0.00003731     -0.00001492
 0000ab0 000000     -0.00000000      0.00005136     -0.00003424      0.00011985     -0.06393867      0.00003731      0.00001492
 000b0a0 000000     -0.00000000      0.00004579      0.06393877      0.00004937     -0.00003412     -0.00002289      0.00000222
 000a0b0 000000      0.00000000     -0.00004579     -0.06393877     -0.00004937      0.00003412      0.00002289     -0.00000222
 0000002 000000     -0.01780832     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 00a000b 000000     -0.00000000     -0.00005312     -0.00002157      0.02798389      0.00005238     -0.00007257      0.00015943
 00b000a 000000      0.00000000      0.00005312      0.00002157     -0.02798389     -0.00005238      0.00007257     -0.00015943
 0000b0a 000000      0.00000000      0.00002248     -0.00001499      0.00005245     -0.02798403      0.00001633     -0.00000630
 0000a0b 000000     -0.00000000     -0.00002248      0.00001499     -0.00005245      0.02798403     -0.00001633      0.00000630
 000b00a 000000      0.00000000     -0.00002004     -0.02798407     -0.00002161      0.00001493      0.00001002      0.00000094
 000a00b 000000     -0.00000000      0.00002004      0.02798407      0.00002161     -0.00001493     -0.00001002     -0.00000094
 0a0000b 000000      0.00000000      0.02798381     -0.00002003      0.00005335      0.00002265      0.00010890     -0.09846430
 0b0000a 000000     -0.00000000     -0.02798381      0.00002003     -0.00005335     -0.00002265     -0.00010890      0.09846430
 00000ab 000000      0.00000000     -0.00010904      0.00001005      0.00007234      0.00001637      0.02798378      0.00620852
 00000ba 000000     -0.00000000      0.00010904     -0.00001005     -0.00007234     -0.00001637     -0.02798378     -0.00620852
 0000000 00ab00     -0.02707802      0.00008556     -0.00000785     -0.00005676     -0.00001284     -0.02195640      0.00032838
 0000000 00ba00      0.02707802     -0.00008556      0.00000785      0.00005676      0.00001284      0.02195640     -0.00032838
 0000000 a000b0     -0.02707802     -0.01905760      0.00001755     -0.00000842     -0.00000897      0.01090420     -0.00467442
 0000000 b000a0      0.02707802      0.01905760     -0.00001755      0.00000842      0.00000897     -0.01090420      0.00467442
 0000000 0a000b     -0.02707802      0.01897204     -0.00000971      0.00006518      0.00002181      0.01105220      0.00434604
 0000000 0b000a      0.02707802     -0.01897204      0.00000971     -0.00006518     -0.00002181     -0.01105220     -0.00434604
 
 Energy:         -8132.01886563  -8131.95665025  -8131.95665025  -8131.95665025  -8131.95665025  -8131.95665025  -8131.90227363

 State:                   8               9              10              11              12
 2000000 000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.01818663
 b00a000 000000      0.00000520      0.00007688      0.04482307      0.00078387     -0.00000000
 a00b000 000000     -0.00000520     -0.00007688     -0.04482307     -0.00078387      0.00000000
 a000b00 000000     -0.00000332     -0.00007224     -0.00078374      0.04482308      0.00000000
 b000a00 000000      0.00000332      0.00007224      0.00078374     -0.04482308     -0.00000000
 a0b0000 000000     -0.04482993     -0.00000703      0.00000527     -0.00000324      0.00000000
 b0a0000 000000      0.04482993      0.00000703     -0.00000527      0.00000324     -0.00000000
 ba00000 000000      0.00007186      0.00282109     -0.00000530      0.00000160     -0.00000000
 ab00000 000000     -0.00007186     -0.00282109      0.00000530     -0.00000160      0.00000000
 a0000b0 000000      0.00001159     -0.04474101      0.00007795     -0.00007092      0.00000000
 b0000a0 000000     -0.00001159      0.04474101     -0.00007795      0.00007092     -0.00000000
 a00000b 000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.60823082
 b00000a 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.60823082
 00b00a0 000000     -0.46748274     -0.00007331      0.00005491     -0.00003381      0.00000000
 00a00b0 000000      0.46748274      0.00007331     -0.00005491      0.00003381     -0.00000000
 0b000a0 000000     -0.00074933     -0.02941813      0.00005526     -0.00001671      0.00000000
 0a000b0 000000      0.00074933      0.02941813     -0.00005526      0.00001671     -0.00000000
 0200000 000000     -0.00012085      0.46655552     -0.00081285      0.00073957      0.15441893
 0020000 000000     -0.00012085      0.46655552     -0.00081285      0.00073957      0.15441893
 0000020 000000      0.00012085     -0.46655552      0.00081285     -0.00073957      0.15441893
 0002000 000000      0.00070937     -0.20780091      0.00035857     -0.00035532      0.15441893
 000ab00 000000     -0.40485193     -0.00006349      0.00004755     -0.00002928      0.00000000
 000ba00 000000      0.40485193      0.00006349     -0.00004755      0.00002928     -0.00000000
 0a00b00 000000     -0.00002996     -0.00065237     -0.00707785      0.40479007      0.00000000
 0b00a00 000000      0.00002996      0.00065237      0.00707785     -0.40479007     -0.00000000
 00ba000 000000      0.00002996      0.00065237      0.00707785     -0.40479007     -0.00000000
 00ab000 000000     -0.00002996     -0.00065237     -0.00707785      0.40479007      0.00000000
 0b0a000 000000     -0.00004693     -0.00069427     -0.40478998     -0.00707898      0.00000000
 0a0b000 000000      0.00004693      0.00069427      0.40478998      0.00707898     -0.00000000
 00a0b00 000000     -0.00004693     -0.00069427     -0.40478998     -0.00707898      0.00000000
 00b0a00 000000      0.00004693      0.00069427      0.40478998      0.00707898     -0.00000000
 0000200 000000     -0.00058851     -0.25875461      0.00045428     -0.00038425      0.15441893
 0000000 002000     -0.00009708      0.37478735     -0.00065289      0.00059410     -0.16250145
 0000000 200000      0.00056912     -0.16692795      0.00028804     -0.00028543     -0.16250145
 0000000 ab0000      0.32522043      0.00005105     -0.00003820      0.00002356     -0.00000000
 0000000 ba0000     -0.32522043     -0.00005105      0.00003820     -0.00002356      0.00000000
 0000000 b0a000     -0.00002411     -0.00052405     -0.00568533      0.32517073      0.00000000
 0000000 a0b000      0.00002411      0.00052405      0.00568533     -0.32517073     -0.00000000
 0000000 0ab000      0.00003770      0.00055764      0.32517066      0.00568623     -0.00000000
 0000000 0ba000     -0.00003770     -0.00055764     -0.32517066     -0.00568623      0.00000000
 0000000 020000     -0.00047204     -0.20785941      0.00036485     -0.00030867     -0.16250145
 0000ba0 000000      0.00001730      0.00037665      0.00408640     -0.23370565     -0.00000000
 0000ab0 000000     -0.00001730     -0.00037665     -0.00408640      0.23370565      0.00000000
 000b0a0 000000      0.00002709      0.00040084      0.23370560      0.00408705     -0.00000000
 000a0b0 000000     -0.00002709     -0.00040084     -0.23370560     -0.00408705      0.00000000
 0000002 000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.15786404
 00a000b 000000     -0.09865984     -0.00001547      0.00001159     -0.00000713      0.00000000
 00b000a 000000      0.09865984      0.00001547     -0.00001159      0.00000713     -0.00000000
 0000b0a 000000      0.00000730      0.00015898      0.00172483     -0.09864476     -0.00000000
 0000a0b 000000     -0.00000730     -0.00015898     -0.00172483      0.09864476      0.00000000
 000b00a 000000      0.00001144      0.00016919      0.09864474      0.00172510     -0.00000000
 000a00b 000000     -0.00001144     -0.00016919     -0.09864474     -0.00172510      0.00000000
 0a0000b 000000     -0.00015814     -0.00620855      0.00001166     -0.00000353      0.00000000
 0b0000a 000000      0.00015814      0.00620855     -0.00001166      0.00000353     -0.00000000
 00000ab 000000      0.00002551     -0.09846415      0.00017155     -0.00015608      0.00000000
 00000ba 000000     -0.00002551      0.09846415     -0.00017155      0.00015608     -0.00000000
 0000000 00ab00      0.00000135     -0.00520796      0.00000908     -0.00000826      0.07615098
 0000000 00ba00     -0.00000135      0.00520796     -0.00000908      0.00000826     -0.07615098
 0000000 a000b0     -0.00000805      0.00231959     -0.00000400      0.00000397      0.07615098
 0000000 b000a0      0.00000805     -0.00231959      0.00000400     -0.00000397     -0.07615098
 0000000 0a000b      0.00000670      0.00288836     -0.00000508      0.00000429      0.07615098
 0000000 0b000a     -0.00000670     -0.00288836      0.00000508     -0.00000429     -0.07615098
 
 Energy:         -8131.90227363  -8131.90227363  -8131.90227363  -8131.90227363  -8131.90034137
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                   1               2               3               4               5               6               7
 00a00a0 000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00264862      0.00171038
 a00a000 000000      0.99999214     -0.00067567      0.00005277     -0.00064223      0.00024833      0.00000000      0.00000000
 a0a0000 000000     -0.00024831      0.00225002     -0.00025677     -0.00235124      0.99998724     -0.00000000     -0.00000000
 0a000a0 000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.99996715     -0.00740505
 aa00000 000000      0.00063504     -0.01006266     -0.00447221      0.99992895      0.00237276      0.00000000     -0.00000000
 a000a00 000000     -0.00004248      0.01096282      0.99992198      0.00458195      0.00024284     -0.00000000      0.00000000
 a0000a0 000000      0.00068316      0.99987912     -0.01100769      0.01001778     -0.00222888     -0.00000000      0.00000000
 a00000a 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 000aa00 000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00661784      0.89438689
 0a0a000 000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00155653      0.00482316
 00a0a00 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00062990      0.00247816
 0aa0000 000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00330892      0.44719344
 00aa000 000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00027108     -0.00058696
 0a00a00 000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00081078      0.00086557
 0000aa0 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00031160     -0.00016086
 000a0a0 000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00053499      0.00135388
 0000000 aa0000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 a0a000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 0aa000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000000 00aa00     -0.00000078     -0.00114297      0.00001258     -0.00001145      0.00000255     -0.00000000      0.00000000
 0000000 a000a0     -0.00000024      0.00058145     -0.00000186     -0.00098416     -0.00000365     -0.00000000      0.00000000
 0000000 0a000a      0.00000102      0.00056152     -0.00001072      0.00099562      0.00000110      0.00000000     -0.00000000
 
 Energy:         -8131.96313087  -8131.96313087  -8131.96313087  -8131.96313087  -8131.96313087  -8131.90663494  -8131.90663494

 State:                   8               9              10              11              12              13              14
 00a00a0 000000      0.00023991      0.00078610      0.99999431     -0.00077195      0.00042056      0.00000000      0.00000000
 a00a000 000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 a0a0000 000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0a000a0 000000     -0.00170323      0.00074305      0.00266102      0.00025817      0.00050797     -0.00000000     -0.00000000
 aa00000 000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a000a00 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0000a0 000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a00000a 000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.98227237     -0.00000000
 000aa00 000000     -0.00501037      0.00088897     -0.00151164      0.00023654      0.00025043      0.00000000     -0.00029597
 0a0a000 000000      0.85064736      0.00465297     -0.00042269     -0.27625776     -0.00576222      0.00000000     -0.36820803
 00a0a00 000000      0.48018612      0.00464837      0.00045527      0.75445920      0.01357382      0.00000000      0.36820804
 0aa0000 000000     -0.00250518      0.00044448     -0.00075582      0.00011827      0.00012521     -0.00000000      0.00059193
 00aa000 000000     -0.00483334      0.71419029     -0.00032711      0.00836433     -0.53836640     -0.00000000     -0.00251095
 0a00a00 000000      0.00389736     -0.69987032      0.00079321      0.01184511     -0.55679800      0.00000000     -0.00251095
 0000aa0 000000      0.00054038     -0.00826764     -0.00026910     -0.01166792      0.63229346      0.00000000     -0.00434910
 000a0a0 000000      0.21388589      0.00000266     -0.00050690     -0.59508472     -0.01116366      0.00000000      0.63775502
 0000000 aa0000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00045608
 0000000 a0a000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00387002
 0000000 0aa000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.56741039
 0000000 00aa00     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.10822968      0.00000001
 0000000 a000a0      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.10822968      0.00000000
 0000000 0a000a     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.10822968      0.00000001
 
 Energy:         -8131.90663494  -8131.90663494  -8131.90663494  -8131.90663494  -8131.90663494  -8131.90533299  -8131.90255665

 State:                  15              16
 00a00a0 000000      0.00000000     -0.00000000
 a00a000 000000      0.00000000     -0.00000000
 a0a0000 000000     -0.00000000     -0.00000000
 0a000a0 000000      0.00000000     -0.00000000
 aa00000 000000      0.00000000     -0.00000000
 a000a00 000000      0.00000000      0.00000000
 a0000a0 000000     -0.00000000     -0.00000000
 a00000a 000000     -0.00000000      0.00000000
 000aa00 000000      0.00026164     -0.36821650
 0a0a000 000000     -0.00251116      0.00029417
 00a0a00 000000      0.00251116     -0.00029417
 0aa0000 000000     -0.00052328      0.73643301
 00aa000 000000      0.36820806      0.00026365
 0a00a00 000000      0.36820806      0.00026365
 0000aa0 000000      0.63775507      0.00045666
 000a0a0 000000      0.00434946     -0.00050952
 0000000 aa0000      0.00040326     -0.56742345
 0000000 a0a000     -0.56741043     -0.00040636
 0000000 0aa000     -0.00387034      0.00045332
 0000000 00aa00      0.00000000     -0.00000000
 0000000 a000a0     -0.00000000      0.00000019
 0000000 0a000a     -0.00000000      0.00000019
 
 Energy:         -8131.90255665  -8131.90255665
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       85.60       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.33       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.57      4.78      0.09      4.51
 REAL TIME  *        12.86 SEC
 DISK USED  *        91.00 MB (local),      579.52 MB (total)
 SF USED    *       140.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.018866    0.0
    -8131.956650    6.0
    -8131.956650    6.0
    -8131.956650    6.0
    -8131.956650    6.0
    -8131.956650    6.0
    -8131.902274    6.0
    -8131.902274    6.0
    -8131.902274    6.0
    -8131.902274    6.0
    -8131.902274    6.0
    -8131.900341    0.0
    -8131.963131    6.0
    -8131.963131    6.0
    -8131.963131    6.0
    -8131.963131    6.0
    -8131.963131    6.0
    -8131.906635   12.0
    -8131.906635   12.0
    -8131.906635   12.0
    -8131.906635   12.0
    -8131.906635   12.0
    -8131.906635   12.0
    -8131.906635   12.0
    -8131.905333    0.0
    -8131.902557    2.0
    -8131.902557    2.0
    -8131.902557    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 56
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       49 conf       49 CSFs
 N elec internal:    78364 conf   221221 CSFs
 N-1 el internal:    20722 conf    70798 CSFs
 N-2 el internal:     2323 conf     8416 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:      69 (  29  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.12 sec, npass=  1  Memory used:   1.83 MW


 Number of p-space configurations:  49

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.01886563
     2     -8131.95665025
     3     -8131.95665025
     4     -8131.95665025
     5     -8131.95665025
     6     -8131.95665025
     7     -8131.90227363
     8     -8131.90227363
     9     -8131.90227363
    10     -8131.90227363
    11     -8131.90227363
    12     -8131.90034137

 Number of blocks in overlap matrix:  1099   Smallest eigenvalue:  0.30D+00
 Number of N-2 electron functions:    1207
 Number of N-1 electron functions:   70798

 Number of internal configurations:               110803
 Number of singly external configurations:       2442509
 Number of doubly external configurations:       1443871
 Total number of contracted configurations:      3997183
 Total number of uncontracted configurations:   12575524

 Diagonal Coupling coefficients finished.               Storage:76303170 words, CPU-Time:    223.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2078161 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.01886563     0.00000000    -0.58518489  0.37D-01  0.67D-01   273.18
    1     2     2     1.00000000     0.00000000 -8131.95665025     0.00000000    -0.59609902  0.47D-01  0.72D-01   273.18
    1     3     3     1.00000000     0.00000000 -8131.95665025    -0.00000000    -0.59630214  0.47D-01  0.72D-01   273.18
    1     4     4     1.00000000     0.00000000 -8131.95665025     0.00000000    -0.59625404  0.47D-01  0.72D-01   273.18
    1     5     5     1.00000000     0.00000000 -8131.95665025     0.00000000    -0.59635385  0.47D-01  0.72D-01   273.18
    1     6     6     1.00000000     0.00000000 -8131.95665025    -0.00000000    -0.59615990  0.47D-01  0.72D-01   273.18
    1     7     7     1.00000000     0.00000000 -8131.90227363     0.00000000    -0.59923672  0.42D-01  0.79D-01   273.18
    1     8     8     1.00000000     0.00000000 -8131.90227363    -0.00000000    -0.59964349  0.42D-01  0.79D-01   273.18
    1     9     9     1.00000000     0.00000000 -8131.90227363    -0.00000000    -0.59877665  0.41D-01  0.79D-01   273.18
    1    10    10     1.00000000     0.00000000 -8131.90227363     0.00000000    -0.59967790  0.42D-01  0.79D-01   273.18
    1    11    11     1.00000000     0.00000000 -8131.90227363    -0.00000000    -0.59968061  0.42D-01  0.79D-01   273.18
    1    12    12     1.00000000     0.00000000 -8131.90034137     0.00000000    -0.58161641  0.37D-01  0.68D-01   273.18
    2     1     1     1.06496693    -0.48242083 -8132.50128645    -0.48242083    -0.00700948  0.11D-02  0.59D-03  1276.61
    2     2     2     1.07291384    -0.48169805 -8132.43834831    -0.48169805    -0.00768061  0.15D-02  0.75D-03  1276.61
    2     3     3     1.07292165    -0.48169382 -8132.43834408    -0.48169382    -0.00768885  0.15D-02  0.76D-03  1276.61
    2     4     4     1.07297531    -0.48167194 -8132.43832220    -0.48167194    -0.00771690  0.15D-02  0.76D-03  1276.61
    2     5     5     1.07301177    -0.48165566 -8132.43830591    -0.48165566    -0.00773473  0.15D-02  0.76D-03  1276.61
    2     6     6     1.07303140    -0.48165012 -8132.43830037    -0.48165012    -0.00774166  0.15D-02  0.76D-03  1276.61
    2     7     7     1.07376385    -0.48066149 -8132.38293512    -0.48066149    -0.00760200  0.15D-02  0.94D-03  1276.61
    2     8     8     1.07395662    -0.48054447 -8132.38281810    -0.48054447    -0.00774709  0.16D-02  0.95D-03  1276.61
    2     9     9     1.07409336    -0.48045990 -8132.38273353    -0.48045990    -0.00785589  0.17D-02  0.95D-03  1276.61
    2    10    10     1.07409662    -0.48044674 -8132.38272037    -0.48044674    -0.00787610  0.17D-02  0.96D-03  1276.61
    2    11    11     1.07410085    -0.48044602 -8132.38271965    -0.48044602    -0.00787683  0.17D-02  0.96D-03  1276.61
    2    12    12     1.06558113    -0.47944934 -8132.37979071    -0.47944934    -0.00688057  0.12D-02  0.66D-03  1276.61
    3     1     1     1.06557576    -0.48910170 -8132.50796733    -0.00668088    -0.00015695  0.23D-04  0.18D-04  2279.73
    3     2     2     1.07052454    -0.48893740 -8132.44558766    -0.00723935    -0.00015726  0.24D-04  0.20D-04  2279.73
    3     3     3     1.07053209    -0.48893643 -8132.44558668    -0.00724261    -0.00015852  0.24D-04  0.20D-04  2279.73
    3     4     4     1.07053421    -0.48893609 -8132.44558634    -0.00726414    -0.00015887  0.24D-04  0.20D-04  2279.73
    3     5     5     1.07053408    -0.48893554 -8132.44558579    -0.00727987    -0.00015938  0.25D-04  0.20D-04  2279.73
    3     6     6     1.07053465    -0.48893549 -8132.44558575    -0.00728537    -0.00015943  0.25D-04  0.20D-04  2279.73
    3     7     7     1.07072958    -0.48779979 -8132.39007342    -0.00713830    -0.00016292  0.24D-04  0.26D-04  2279.73
    3     8     8     1.07073174    -0.48779517 -8132.39006880    -0.00725070    -0.00016780  0.24D-04  0.27D-04  2279.73
    3     9     9     1.07073358    -0.48779257 -8132.39006620    -0.00733267    -0.00017062  0.25D-04  0.28D-04  2279.73
    3    10    10     1.07073081    -0.48779202 -8132.39006565    -0.00734528    -0.00017141  0.25D-04  0.28D-04  2279.73
    3    11    11     1.07073129    -0.48779199 -8132.39006562    -0.00734597    -0.00017144  0.25D-04  0.28D-04  2279.73
    3    12    12     1.06566628    -0.48602608 -8132.38636744    -0.00657674    -0.00016024  0.22D-04  0.21D-04  2279.73
    4     1     1     1.06649822    -0.48926402 -8132.50812964    -0.00016231    -0.00000578  0.21D-05  0.53D-06  3238.14
    4     2     2     1.07122840    -0.48910140 -8132.44575166    -0.00016400    -0.00000469  0.17D-05  0.49D-06  3238.14
    4     3     3     1.07122807    -0.48910133 -8132.44575159    -0.00016490    -0.00000477  0.17D-05  0.50D-06  3238.14
    4     4     4     1.07122768    -0.48910133 -8132.44575158    -0.00016524    -0.00000478  0.17D-05  0.50D-06  3238.14
    4     5     5     1.07122715    -0.48910132 -8132.44575157    -0.00016578    -0.00000479  0.17D-05  0.50D-06  3238.14
    4     6     6     1.07122713    -0.48910132 -8132.44575157    -0.00016582    -0.00000479  0.17D-05  0.51D-06  3238.14
    4     7     7     1.07141402    -0.48797000 -8132.39024362    -0.00017020    -0.00000600  0.30D-05  0.70D-06  3238.14
    4     8     8     1.07141085    -0.48796987 -8132.39024350    -0.00017470    -0.00000615  0.30D-05  0.73D-06  3238.14
    4     9     9     1.07140817    -0.48796983 -8132.39024346    -0.00017726    -0.00000622  0.31D-05  0.75D-06  3238.14
    4    10    10     1.07140701    -0.48796982 -8132.39024345    -0.00017780    -0.00000624  0.31D-05  0.75D-06  3238.14
    4    11    11     1.07140712    -0.48796982 -8132.39024345    -0.00017783    -0.00000624  0.31D-05  0.75D-06  3238.14
    4    12    12     1.06651166    -0.48619390 -8132.38653527    -0.00016783    -0.00000570  0.24D-05  0.60D-06  3238.14
    5     1     1     1.06661216    -0.48927003 -8132.50813566    -0.00000602    -0.00000032  0.74D-07  0.39D-07  4157.57
    5     2     2     1.07127269    -0.48910641 -8132.44575667    -0.00000501    -0.00000022  0.50D-07  0.28D-07  4157.57
    5     3     3     1.07127295    -0.48910641 -8132.44575666    -0.00000507    -0.00000022  0.51D-07  0.29D-07  4157.57
    5     4     4     1.07127287    -0.48910641 -8132.44575666    -0.00000508    -0.00000022  0.51D-07  0.29D-07  4157.57
    5     5     5     1.07127281    -0.48910641 -8132.44575666    -0.00000509    -0.00000022  0.51D-07  0.29D-07  4157.57
    5     6     6     1.07127281    -0.48910641 -8132.44575666    -0.00000509    -0.00000022  0.51D-07  0.29D-07  4157.57
    5     7     7     1.07141431    -0.48797661 -8132.39025024    -0.00000662    -0.00000039  0.11D-06  0.62D-07  4157.57
    5     8     8     1.07141426    -0.48797661 -8132.39025024    -0.00000674    -0.00000039  0.11D-06  0.62D-07  4157.57
    5     9     9     1.07141429    -0.48797661 -8132.39025024    -0.00000678    -0.00000039  0.11D-06  0.62D-07  4157.57
    5    10    10     1.07141386    -0.48797661 -8132.39025024    -0.00000679    -0.00000039  0.11D-06  0.61D-07  4157.57
    5    11    11     1.07141344    -0.48797661 -8132.39025024    -0.00000679    -0.00000039  0.11D-06  0.60D-07  4157.57
    5    12    12     1.06655044    -0.48620022 -8132.38654159    -0.00000632    -0.00000032  0.85D-07  0.43D-07  4157.57
    6     1     1     1.06661499    -0.48927037 -8132.50813599    -0.00000034    -0.00000001  0.30D-08  0.13D-08  5079.20
    6     2     2     1.07126953    -0.48910665 -8132.44575690    -0.00000024    -0.00000001  0.31D-08  0.11D-08  5079.20
    6     3     3     1.07126951    -0.48910665 -8132.44575690    -0.00000024    -0.00000001  0.31D-08  0.11D-08  5079.20
    6     4     4     1.07126945    -0.48910665 -8132.44575690    -0.00000024    -0.00000001  0.32D-08  0.11D-08  5079.20
    6     5     5     1.07126950    -0.48910665 -8132.44575690    -0.00000024    -0.00000001  0.32D-08  0.11D-08  5079.20
    6     6     6     1.07126943    -0.48910665 -8132.44575690    -0.00000024    -0.00000001  0.32D-08  0.11D-08  5079.20
    6     7     7     1.07139073    -0.48797705 -8132.39025068    -0.00000044    -0.00000002  0.60D-08  0.32D-08  5079.20
    6     8     8     1.07139074    -0.48797705 -8132.39025068    -0.00000044    -0.00000002  0.60D-08  0.32D-08  5079.20
    6     9     9     1.07139048    -0.48797705 -8132.39025068    -0.00000044    -0.00000002  0.60D-08  0.31D-08  5079.20
    6    10    10     1.07139074    -0.48797705 -8132.39025068    -0.00000044    -0.00000002  0.60D-08  0.32D-08  5079.20
    6    11    11     1.07139024    -0.48797705 -8132.39025068    -0.00000044    -0.00000002  0.60D-08  0.31D-08  5079.20
    6    12    12     1.06653721    -0.48620058 -8132.38654195    -0.00000036    -0.00000002  0.46D-08  0.19D-08  5079.20


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.1%
 S   1.6%  45.3%
 P   0.6%  19.8%  13.7%

 Initialization:   4.4%
 Other:            1.6%

 Total CPU:     5079.2 seconds
 =====================================



 gnormi=  0.93754542  gnorms=  0.02042327  gnormp=  0.04203130  gnorm=  1.00000000
 ecorri= -0.45871320  ecorrs= -0.00999858  ecorrp= -0.02055860  ecorr= -0.48927037

 gnormi=  0.93347190  gnorms=  0.02240902  gnormp=  0.04411908  gnorm=  1.00000000
 ecorri= -0.45656731  ecorrs= -0.01096567  ecorrp= -0.02157367  ecorr= -0.48910665

 gnormi=  0.93347192  gnorms=  0.02240896  gnormp=  0.04411912  gnorm=  1.00000000
 ecorri= -0.45656732  ecorrs= -0.01096570  ecorrp= -0.02157363  ecorr= -0.48910665

 gnormi=  0.93347197  gnorms=  0.02240889  gnormp=  0.04411915  gnorm=  1.00000000
 ecorri= -0.45656734  ecorrs= -0.01096574  ecorrp= -0.02157357  ecorr= -0.48910665

 gnormi=  0.93347192  gnorms=  0.02240893  gnormp=  0.04411915  gnorm=  1.00000000
 ecorri= -0.45656732  ecorrs= -0.01096573  ecorrp= -0.02157359  ecorr= -0.48910665

 gnormi=  0.93347198  gnorms=  0.02240887  gnormp=  0.04411915  gnorm=  1.00000000
 ecorri= -0.45656735  ecorrs= -0.01096573  ecorrp= -0.02157356  ecorr= -0.48910665

 gnormi=  0.93336630  gnorms=  0.01992732  gnormp=  0.04670638  gnorm=  1.00000000
 ecorri= -0.45546133  ecorrs= -0.00972941  ecorrp= -0.02278631  ecorr= -0.48797705

 gnormi=  0.93336629  gnorms=  0.01992730  gnormp=  0.04670641  gnorm=  1.00000000
 ecorri= -0.45546133  ecorrs= -0.00972940  ecorrp= -0.02278632  ecorr= -0.48797705

 gnormi=  0.93336651  gnorms=  0.01992735  gnormp=  0.04670613  gnorm=  1.00000000
 ecorri= -0.45546144  ecorrs= -0.00972933  ecorrp= -0.02278629  ecorr= -0.48797705

 gnormi=  0.93336629  gnorms=  0.01992730  gnormp=  0.04670641  gnorm=  1.00000000
 ecorri= -0.45546133  ecorrs= -0.00972940  ecorrp= -0.02278632  ecorr= -0.48797705

 gnormi=  0.93336672  gnorms=  0.01992735  gnormp=  0.04670592  gnorm=  1.00000000
 ecorri= -0.45546154  ecorrs= -0.00972931  ecorrp= -0.02278620  ecorr= -0.48797705

 gnormi=  0.93761380  gnorms=  0.01975072  gnormp=  0.04263549  gnorm=  1.00000000
 ecorri= -0.45586837  ecorrs= -0.00960823  ecorrp= -0.02072398  ecorr= -0.48620058

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000000           0.9228310  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                                  0.0000000   0.0000000  -0.0000000   0.0662378
 222222/0\0000222000000           0.0000000   0.0000000   0.0000000  -0.0000000   0.8845125  -0.0000000  -0.1032204  -0.0000000
                                  0.0000000  -0.0000000   0.0000000   0.0000000
 222222/00\000222000000          -0.0000000   0.0000000  -0.0000000   0.8845125   0.0000000  -0.0000000   0.0000000  -0.1032204
                                 -0.0000000  -0.0000000   0.0000000   0.0000000
 222222/000\00222000000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8845125  -0.0000000  -0.0000000
                                 -0.0000000   0.1032204  -0.0000000  -0.0000000
 222222/0000\0222000000          -0.0000000   0.8840671   0.0280647  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                  0.0135406   0.0000000   0.1023279  -0.0000000
 222222/\00000222000000           0.0000000  -0.0280647   0.8840670   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                                 -0.1023280  -0.0000000   0.0135406  -0.0000000
 222222/00000\222000000          -0.0954448  -0.0000001  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                                  0.0000000  -0.0000000   0.0000000   0.8240790
 22222200/00\0222000000           0.0000000   0.0000000  -0.0000000   0.0000000   0.1959402   0.0000000   0.6325142   0.0000000
                                 -0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220/000\0222000000           0.0000000  -0.0062170   0.1958418  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                                  0.6270484  -0.0000000  -0.0829748  -0.0000000
 222222000/\00222000000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1696892  -0.0000000  -0.5477735  -0.0000000
                                  0.0000000  -0.0000000   0.0000000   0.0000000
 2222220/0\000222000000           0.0000000   0.0000000   0.0000000   0.1696894  -0.0000000   0.0000000  -0.0000000   0.5477734
                                  0.0000000   0.0000000  -0.0000000   0.0000000
 22222200/\000222000000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1696893  -0.0000000  -0.0000000
                                 -0.0000000   0.5477734  -0.0000000  -0.0000000
 22222200/0\00222000000          -0.0000000   0.0000000  -0.0000000  -0.1696893   0.0000000  -0.0000000   0.0000000  -0.5477733
                                 -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220/00\00222000000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1696894  -0.0000000  -0.0000000
                                 -0.0000000   0.5477733  -0.0000000  -0.0000000
 2222220000000222/0\000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2766281  -0.0000000  -0.0000000
                                 -0.0000000  -0.4476303  -0.0000000  -0.0000000
 22222200000002220/\000           0.0000000   0.0000000  -0.0000000  -0.2766280   0.0000000  -0.0000000   0.0000000   0.4476303
                                 -0.0000000  -0.0000000   0.0000000   0.0000000
 2222220000000222/\0000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.2766280  -0.0000000   0.4476302  -0.0000000
                                  0.0000000  -0.0000000   0.0000000   0.0000000
 2222220200000222000000          -0.0480243   0.1384810   0.0043961   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                 -0.0586720   0.0000000  -0.4433900   0.1490462
 2222220000020222000000          -0.0480244  -0.1384806  -0.0043961   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                  0.0586720   0.0000000   0.4433900   0.1490461
 2222220020000222000000          -0.0480243   0.1384810   0.0043961   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                 -0.0586720   0.0000000  -0.4433900   0.1490462
 2222220002000222000000          -0.0480243  -0.0730477   0.1177298   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                  0.4133226   0.0000000   0.1708835   0.1490463
 2222220000000222002000          -0.1325353  -0.2257522  -0.0071665  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                                 -0.0479457   0.0000000  -0.3623307  -0.1637602
 2222220000200222000000          -0.0480243  -0.0654335  -0.1221259   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                 -0.3546506   0.0000000   0.2725063   0.1490463
 2222220000000222200000          -0.1325353   0.1190824  -0.1919239  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                                  0.3377605  -0.0000000   0.1396431  -0.1637602
 2222220000/\0222000000           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0979698  -0.0000000  -0.0000000
                                 -0.0000000   0.3162572  -0.0000000  -0.0000000
 222222000/0\0222000000           0.0000000  -0.0000000  -0.0000000  -0.0979698   0.0000000  -0.0000000   0.0000000  -0.3162572
                                 -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222220000000222020000          -0.1325353   0.1066697   0.1990904  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                                 -0.2898147   0.0000000   0.2226876  -0.1637602
 2222220000002222000000          -0.0104085   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                                 -0.0000000   0.0000000  -0.0000001  -0.1636498
 22222200/000\222000000          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0232171   0.0000000  -0.1328260   0.0000000
                                  0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220000/0\222000000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0232171   0.0000000   0.0000000
                                 -0.0000000   0.1328260  -0.0000000  -0.0000000
 222222000/00\222000000          -0.0000000   0.0000000   0.0000000   0.0232171   0.0000000  -0.0000000   0.0000000  -0.1328259
                                 -0.0000000   0.0000000   0.0000000   0.0000000
 2222220/0000\222000000           0.0000000  -0.0007367   0.0232054  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                                 -0.1316782  -0.0000000   0.0174245  -0.0000000
 22222200000/\222000000          -0.0000000   0.0232054   0.0007367   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                                  0.0174244  -0.0000000   0.1316782  -0.0000000
 222222000000022200/\00          -0.0381804  -0.0296592  -0.0009415  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                                  0.0002730  -0.0000000   0.0020635   0.0952903
 2222220000000222/000\0          -0.0381803   0.0156450  -0.0252149   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                                 -0.0019235  -0.0000000  -0.0007953   0.0952902
 22222200000002220/000\          -0.0381803   0.0140142   0.0261564  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                                  0.0016504   0.0000000  -0.0012682   0.0952902

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.962856   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.049054
 2           0.000000   -0.037188    0.000000    0.000000   -0.000000    0.961618   -0.003837   -0.000000   -0.040305    0.000000
             0.000000   -0.000000
 3           0.000000    0.961618    0.000000   -0.000000   -0.000000    0.037188    0.040305    0.000000   -0.003837   -0.000000
             0.000000   -0.000000
 4           0.000000   -0.000000    0.962337   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.040488
             0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.962337   -0.000000   -0.000000    0.000000    0.040488   -0.000000    0.000000
             0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.962337    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.040488    0.000000
 7          -0.000000   -0.000000    0.000000   -0.041595   -0.000000   -0.000000   -0.000000    0.962777   -0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000   -0.000000   -0.041595    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.962777
             0.000000   -0.000000
 9          -0.000000   -0.041272   -0.000000    0.000000   -0.000000    0.005171    0.960527    0.000000    0.065784   -0.000000
             0.000000   -0.000000
 10         -0.000000   -0.000000    0.000000   -0.000000    0.041595   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.962777   -0.000000
 11         -0.000000    0.005171   -0.000000    0.000000    0.000000    0.041272   -0.065784    0.000000    0.960527    0.000000
             0.000000    0.000000
 12          0.051248   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.963069

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.964105    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.001090
 2           0.000000    0.963188   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000088   -0.000000
             0.000536   -0.000000
 3           0.000000   -0.000000    0.963188    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000536   -0.000000
             0.000088   -0.000000
 4           0.000000    0.000000    0.000000    0.963188   -0.000000    0.000000   -0.000000   -0.000544    0.000000    0.000000
             0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.963188    0.000000   -0.000544    0.000000    0.000000    0.000000
             0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.963188    0.000000    0.000000    0.000000    0.000544
             0.000000    0.000000
 7           0.000000   -0.000000    0.000000   -0.000000   -0.000544    0.000000    0.963675    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000544    0.000000    0.000000    0.000000    0.963675    0.000000    0.000000
            -0.000000   -0.000000
 9          -0.000000    0.000088   -0.000536    0.000000    0.000000    0.000000   -0.000000    0.000000    0.963675    0.000000
             0.000000   -0.000000
 10         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000544   -0.000000    0.000000    0.000000    0.963675
             0.000000    0.000000
 11         -0.000000    0.000536    0.000088    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.963675    0.000000
 12          0.001090   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.964431


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96285644 (fixed)   0.96418043 (relaxed)   0.96410460 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00865817   -0.01792367   -0.41035172
 Singles      0.02197238   -0.07522274   -0.07991793
 Pairs        0.04521937    0.02319304    0.00099928
 Total        1.07584992   -0.06995336   -0.48927037
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.01854502
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.78143145
 One electron energy               -11100.05747442
 Two electron energy                 2967.54933843
 Virial quotient                       -0.84076211
 Correlation energy                    -0.48959098
 !MRCI STATE 1.1 Energy             -8132.508135994946

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54527143 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54518858 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54527143 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54369608 (Pople, fixed reference)
 Cluster corrected energies         -8132.54361173 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54369608 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96161820 (fixed)   0.96332656 (relaxed)   0.96318818 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00618760   -0.01312444   -0.38720428
 Singles      0.02415464   -0.07476627   -0.08032868
 Pairs        0.04755588   -0.00000002   -0.02157369
 Total        1.07789812   -0.08789072   -0.48910665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95655158
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71105858
 One electron energy               -11101.91383967
 Two electron energy                 2969.46808277
 Virial quotient                       -0.84076178
 Correlation energy                    -0.48920532
 !MRCI STATE 2.1 Energy             -8132.445756901770

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48386508 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48371359 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48386508 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48231098 (Pople, fixed reference)
 Cluster corrected energies         -8132.48215624 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48231098 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96161821 (fixed)   0.96332657 (relaxed)   0.96318819 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00618760   -0.01312444   -0.38720437
 Singles      0.02415458   -0.07476619   -0.08032865
 Pairs        0.04755591    0.00000000   -0.02157363
 Total        1.07789809   -0.08789063   -0.48910665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95655158
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71104316
 One electron energy               -11101.91381747
 Two electron energy                 2969.46806057
 Virial quotient                       -0.84076178
 Correlation energy                    -0.48920532
 !MRCI STATE 3.1 Energy             -8132.445756901713

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48386506 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48371358 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48386506 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48231096 (Pople, fixed reference)
 Cluster corrected energies         -8132.48215623 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48231096 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96233704 (fixed)   0.96332659 (relaxed)   0.96318821 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00618761   -0.01312444   -0.38720448
 Singles      0.02415450   -0.07476610   -0.08032860
 Pairs        0.04755594    0.00000000   -0.02157357
 Total        1.07789804   -0.08789054   -0.48910665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95655158
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71103656
 One electron energy               -11101.91380765
 Two electron energy                 2969.46805075
 Virial quotient                       -0.84076178
 Correlation energy                    -0.48920532
 !MRCI STATE 4.1 Energy             -8132.445756901607

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48386504 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48371355 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48386504 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48231094 (Pople, fixed reference)
 Cluster corrected energies         -8132.48215621 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48231094 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96233702 (fixed)   0.96332657 (relaxed)   0.96318819 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00618761   -0.01312444   -0.38720444
 Singles      0.02415454   -0.07476612   -0.08032862
 Pairs        0.04755594   -0.00000000   -0.02157359
 Total        1.07789809   -0.08789056   -0.48910665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95655158
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71103720
 One electron energy               -11101.91381070
 Two electron energy                 2969.46805380
 Virial quotient                       -0.84076178
 Correlation energy                    -0.48920532
 !MRCI STATE 5.1 Energy             -8132.445756901607

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48386506 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48371358 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48386506 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48231096 (Pople, fixed reference)
 Cluster corrected energies         -8132.48215623 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48231096 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96233705 (fixed)   0.96332660 (relaxed)   0.96318822 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00618761   -0.01312444   -0.38720450
 Singles      0.02415448   -0.07476609   -0.08032859
 Pairs        0.04755594    0.00000000   -0.02157356
 Total        1.07789802   -0.08789053   -0.48910665
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95655158
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.71103612
 One electron energy               -11101.91380546
 Two electron energy                 2969.46804856
 Virial quotient                       -0.84076178
 Correlation energy                    -0.48920532
 !MRCI STATE 6.1 Energy             -8132.445756901560

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.48386503 (Davidson, fixed reference)
 Cluster corrected energies         -8132.48371354 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.48386503 (Davidson, rotated reference)

 Cluster corrected energies         -8132.48231093 (Pople, fixed reference)
 Cluster corrected energies         -8132.48215620 (Pople, relaxed reference)
 Cluster corrected energies         -8132.48231093 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96277697 (fixed)   0.96374831 (relaxed)   0.96367489 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00505777   -0.01111167   -0.38974466
 Singles      0.02145793   -0.07076434   -0.07544608
 Pairs        0.05029388   -0.00000000   -0.02278631
 Total        1.07680958   -0.08187601   -0.48797705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90237230
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68306569
 One electron energy               -11102.54329121
 Two electron energy                 2970.15304053
 Virial quotient                       -0.84075847
 Correlation energy                    -0.48787837
 !MRCI STATE 7.1 Energy             -8132.390250678807

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42772441 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42764437 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42772441 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42616349 (Pople, fixed reference)
 Cluster corrected energies         -8132.42608187 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42616349 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96277696 (fixed)   0.96374831 (relaxed)   0.96367489 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00505777   -0.01111167   -0.38974465
 Singles      0.02145791   -0.07076435   -0.07544608
 Pairs        0.05029391    0.00000000   -0.02278632
 Total        1.07680959   -0.08187602   -0.48797705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90237230
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68306124
 One electron energy               -11102.54327894
 Two electron energy                 2970.15302826
 Virial quotient                       -0.84075847
 Correlation energy                    -0.48787837
 !MRCI STATE 8.1 Energy             -8132.390250678722

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42772442 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42764438 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42772442 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42616350 (Pople, fixed reference)
 Cluster corrected energies         -8132.42608188 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42616350 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96052701 (fixed)   0.96374843 (relaxed)   0.96367502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00505775   -0.01111167   -0.38974460
 Singles      0.02145796   -0.07076451   -0.07544617
 Pairs        0.05029360    0.00000001   -0.02278628
 Total        1.07680931   -0.08187617   -0.48797705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90237230
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68307727
 One electron energy               -11102.54326216
 Two electron energy                 2970.15301148
 Virial quotient                       -0.84075847
 Correlation energy                    -0.48787837
 !MRCI STATE 9.1 Energy             -8132.390250678701

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42772428 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42764425 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42772428 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42616336 (Pople, fixed reference)
 Cluster corrected energies         -8132.42608175 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42616336 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.96277697 (fixed)   0.96374831 (relaxed)   0.96367489 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00505777   -0.01111167   -0.38974465
 Singles      0.02145791   -0.07076435   -0.07544608
 Pairs        0.05029391   -0.00000000   -0.02278632
 Total        1.07680958   -0.08187602   -0.48797705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90237230
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68306108
 One electron energy               -11102.54327861
 Two electron energy                 2970.15302793
 Virial quotient                       -0.84075847
 Correlation energy                    -0.48787837
 !MRCI STATE 10.1 Energy            -8132.390250678699

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42772441 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42764437 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42772441 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42616349 (Pople, fixed reference)
 Cluster corrected energies         -8132.42608187 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42616349 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96052713 (fixed)   0.96374854 (relaxed)   0.96367513 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00505774   -0.01111166   -0.38974464
 Singles      0.02145795   -0.07076456   -0.07544622
 Pairs        0.05029336    0.00000001   -0.02278619
 Total        1.07680905   -0.08187621   -0.48797705
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90237230
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.68309660
 One electron energy               -11102.54324834
 Two electron energy                 2970.15299766
 Virial quotient                       -0.84075847
 Correlation energy                    -0.48787837
 !MRCI STATE 11.1 Energy            -8132.390250678634

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42772416 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42764412 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42772416 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42616323 (Pople, fixed reference)
 Cluster corrected energies         -8132.42608162 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42616323 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96306891 (fixed)   0.96457467 (relaxed)   0.96443086 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00804935   -0.01651775   -0.01967712
 Singles      0.02123443   -0.07301563   -0.07752203
 Pairs        0.04583835   -0.39594324   -0.38900143
 Total        1.07512213   -0.48547661   -0.48620058
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90066197
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.57490864
 One electron energy               -11095.39494145
 Two electron energy                 2963.00839950
 Virial quotient                       -0.84076749
 Correlation energy                    -0.48587997
 !MRCI STATE 12.1 Energy            -8132.386541945199

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42304229 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42288654 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42304229 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42147264 (Pople, fixed reference)
 Cluster corrected energies         -8132.42131428 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42147264 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       85.60       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      395.67       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     14517.62  14508.04      4.78      0.09      4.51
 REAL TIME  *     14599.75 SEC
 DISK USED  *       481.34 MB (local),        2.85 GB (total)
 SF USED    *         4.06 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -8132.54527143  AU                              
 SETTING HLSDIAG(2)     =     -8132.48386508  AU                              
 SETTING HLSDIAG(3)     =     -8132.48386506  AU                              
 SETTING HLSDIAG(4)     =     -8132.48386504  AU                              
 SETTING HLSDIAG(5)     =     -8132.48386506  AU                              
 SETTING HLSDIAG(6)     =     -8132.48386503  AU                              
 SETTING HLSDIAG(7)     =     -8132.42772441  AU                              
 SETTING HLSDIAG(8)     =     -8132.42772442  AU                              
 SETTING HLSDIAG(9)     =     -8132.42772428  AU                              
 SETTING HLSDIAG(10)    =     -8132.42772441  AU                              
 SETTING HLSDIAG(11)    =     -8132.42772416  AU                              
 SETTING HLSDIAG(12)    =     -8132.42304229  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 56
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       36 conf       36 CSFs
 N elec internal:    76137 conf   361851 CSFs
 N-1 el internal:    16942 conf   111046 CSFs
 N-2 el internal:     1738 conf    12988 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:      69 (  29  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  36

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8131.96313087
     2     -8131.96313087
     3     -8131.96313087
     4     -8131.96313087
     5     -8131.96313087
     6     -8131.90663494
     7     -8131.90663494
     8     -8131.90663494
     9     -8131.90663494
    10     -8131.90663494
    11     -8131.90663494
    12     -8131.90663494
    13     -8131.90533299
    14     -8131.90255665
    15     -8131.90255665
    16     -8131.90255665

 Number of blocks in overlap matrix:  1423   Smallest eigenvalue:  0.58D+00
 Number of N-2 electron functions:    1531
 Number of N-1 electron functions:  111046

 Number of internal configurations:               180819
 Number of singly external configurations:       3831461
 Number of doubly external configurations:       1831774
 Total number of contracted configurations:      5844054
 Total number of uncontracted configurations:   19420602

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:    528.18 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2167726 words, CPU-time:      0.23 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96313087    -0.00000000    -0.60093299  0.50D-01  0.72D-01   638.59
    1     2     2     1.00000000     0.00000000 -8131.96313087     0.00000000    -0.60083099  0.50D-01  0.72D-01   638.59
    1     3     3     1.00000000     0.00000000 -8131.96313087    -0.00000000    -0.60093997  0.50D-01  0.72D-01   638.59
    1     4     4     1.00000000     0.00000000 -8131.96313087    -0.00000000    -0.60091558  0.50D-01  0.72D-01   638.59
    1     5     5     1.00000000     0.00000000 -8131.96313087     0.00000000    -0.60092356  0.50D-01  0.72D-01   638.59
    1     6     6     1.00000000     0.00000000 -8131.90663494    -0.00000000    -0.60765633  0.45D-01  0.81D-01   638.59
    1     7     7     1.00000000     0.00000000 -8131.90663494     0.00000000    -0.60781252  0.45D-01  0.82D-01   638.59
    1     8     8     1.00000000     0.00000000 -8131.90663494     0.00000000    -0.60779174  0.45D-01  0.82D-01   638.59
    1     9     9     1.00000000     0.00000000 -8131.90663494     0.00000000    -0.60785168  0.45D-01  0.82D-01   638.59
    1    10    10     1.00000000     0.00000000 -8131.90663494     0.00000000    -0.60769142  0.45D-01  0.81D-01   638.59
    1    11    11     1.00000000     0.00000000 -8131.90663494    -0.00000000    -0.60767264  0.45D-01  0.81D-01   638.59
    1    12    12     1.00000000     0.00000000 -8131.90663494     0.00000000    -0.60771757  0.45D-01  0.81D-01   638.59
    1    13    13     1.00000000     0.00000000 -8131.90533299     0.00000000    -0.57727701  0.37D-01  0.64D-01   638.59
    1    14    14     1.00000000     0.00000000 -8131.90255665     0.00000000    -0.59730237  0.41D-01  0.78D-01   638.59
    1    15    15     1.00000000     0.00000000 -8131.90255665     0.00000000    -0.59724940  0.41D-01  0.78D-01   638.59
    1    16    16     1.00000000     0.00000000 -8131.90255665     0.00000000    -0.59726920  0.41D-01  0.78D-01   638.59
    2     1     1     1.07426534    -0.48375868 -8132.44688955    -0.48375868    -0.00825903  0.17D-02  0.76D-03  2907.39
    2     2     2     1.07429124    -0.48374497 -8132.44687584    -0.48374497    -0.00827892  0.17D-02  0.76D-03  2907.39
    2     3     3     1.07429339    -0.48374039 -8132.44687126    -0.48374039    -0.00828374  0.18D-02  0.76D-03  2907.39
    2     4     4     1.07430209    -0.48373767 -8132.44686853    -0.48373767    -0.00828693  0.18D-02  0.76D-03  2907.39
    2     5     5     1.07430231    -0.48373364 -8132.44686451    -0.48373364    -0.00829145  0.18D-02  0.76D-03  2907.39
    2     6     6     1.07630908    -0.48247103 -8132.38910597    -0.48247103    -0.00787860  0.13D-02  0.94D-03  2907.39
    2     7     7     1.07631942    -0.48246638 -8132.38910132    -0.48246638    -0.00788426  0.14D-02  0.93D-03  2907.39
    2     8     8     1.07633684    -0.48245366 -8132.38908860    -0.48245366    -0.00789886  0.14D-02  0.93D-03  2907.39
    2     9     9     1.07633532    -0.48245233 -8132.38908727    -0.48245233    -0.00790386  0.13D-02  0.94D-03  2907.39
    2    10    10     1.07638246    -0.48243184 -8132.38906678    -0.48243184    -0.00792918  0.14D-02  0.95D-03  2907.39
    2    11    11     1.07639484    -0.48242646 -8132.38906140    -0.48242646    -0.00793738  0.14D-02  0.95D-03  2907.39
    2    12    12     1.07639346    -0.48242584 -8132.38906078    -0.48242584    -0.00793806  0.14D-02  0.95D-03  2907.39
    2    13    13     1.06464575    -0.47861660 -8132.38394959    -0.47861660    -0.00632619  0.91D-03  0.53D-03  2907.39
    2    14    14     1.07244364    -0.47957088 -8132.38212753    -0.47957088    -0.00774970  0.16D-02  0.93D-03  2907.39
    2    15    15     1.07245903    -0.47956719 -8132.38212384    -0.47956719    -0.00774838  0.16D-02  0.92D-03  2907.39
    2    16    16     1.07247586    -0.47955697 -8132.38211362    -0.47955697    -0.00776294  0.16D-02  0.93D-03  2907.39
    3     1     1     1.07096419    -0.49150789 -8132.45463876    -0.00774921    -0.00016444  0.28D-04  0.19D-04  5172.19
    3     2     2     1.07096600    -0.49150737 -8132.45463824    -0.00776240    -0.00016535  0.28D-04  0.20D-04  5172.19
    3     3     3     1.07096546    -0.49150726 -8132.45463813    -0.00776687    -0.00016562  0.28D-04  0.20D-04  5172.19
    3     4     4     1.07096633    -0.49150718 -8132.45463805    -0.00776952    -0.00016561  0.28D-04  0.20D-04  5172.19
    3     5     5     1.07096581    -0.49150703 -8132.45463790    -0.00777339    -0.00016575  0.28D-04  0.20D-04  5172.19
    3     6     6     1.07271883    -0.48983720 -8132.39647214    -0.00736617    -0.00014248  0.20D-04  0.21D-04  5172.19
    3     7     7     1.07271977    -0.48983692 -8132.39647185    -0.00737053    -0.00014309  0.20D-04  0.21D-04  5172.19
    3     8     8     1.07272063    -0.48983651 -8132.39647145    -0.00738285    -0.00014312  0.20D-04  0.21D-04  5172.19
    3     9     9     1.07272343    -0.48983596 -8132.39647090    -0.00738363    -0.00014425  0.20D-04  0.21D-04  5172.19
    3    10    10     1.07272172    -0.48983581 -8132.39647075    -0.00740397    -0.00014361  0.20D-04  0.21D-04  5172.19
    3    11    11     1.07272293    -0.48983572 -8132.39647066    -0.00740926    -0.00014415  0.20D-04  0.21D-04  5172.19
    3    12    12     1.07272454    -0.48983520 -8132.39647014    -0.00740936    -0.00014424  0.20D-04  0.21D-04  5172.19
    3    13    13     1.06570775    -0.48473956 -8132.39007255    -0.00612296    -0.00013443  0.17D-04  0.15D-04  5172.19
    3    14    14     1.06938395    -0.48683318 -8132.38938983    -0.00726230    -0.00016750  0.22D-04  0.27D-04  5172.19
    3    15    15     1.06938778    -0.48683280 -8132.38938945    -0.00726561    -0.00016737  0.22D-04  0.27D-04  5172.19
    3    16    16     1.06938710    -0.48683243 -8132.38938908    -0.00727546    -0.00016789  0.22D-04  0.28D-04  5172.19
    4     1     1     1.07161271    -0.49168015 -8132.45481101    -0.00017225    -0.00000461  0.17D-05  0.46D-06  7351.21
    4     2     2     1.07161241    -0.49168009 -8132.45481095    -0.00017271    -0.00000461  0.17D-05  0.46D-06  7351.21
    4     3     3     1.07161236    -0.49168008 -8132.45481095    -0.00017282    -0.00000461  0.17D-05  0.46D-06  7351.21
    4     4     4     1.07161250    -0.49167995 -8132.45481082    -0.00017277    -0.00000459  0.17D-05  0.45D-06  7351.21
    4     5     5     1.07161315    -0.49167986 -8132.45481073    -0.00017283    -0.00000455  0.16D-05  0.45D-06  7351.21
    4     6     6     1.07331460    -0.48998693 -8132.39662187    -0.00014973    -0.00000363  0.15D-05  0.46D-06  7351.21
    4     7     7     1.07331489    -0.48998682 -8132.39662176    -0.00014991    -0.00000366  0.15D-05  0.47D-06  7351.21
    4     8     8     1.07331484    -0.48998682 -8132.39662176    -0.00015031    -0.00000366  0.15D-05  0.47D-06  7351.21
    4     9     9     1.07331454    -0.48998657 -8132.39662150    -0.00015061    -0.00000361  0.15D-05  0.46D-06  7351.21
    4    10    10     1.07331467    -0.48998622 -8132.39662116    -0.00015041    -0.00000364  0.15D-05  0.46D-06  7351.21
    4    11    11     1.07331450    -0.48998622 -8132.39662116    -0.00015050    -0.00000365  0.15D-05  0.46D-06  7351.21
    4    12    12     1.07331445    -0.48998619 -8132.39662113    -0.00015099    -0.00000366  0.15D-05  0.47D-06  7351.21
    4    13    13     1.06652126    -0.48487997 -8132.39021296    -0.00014041    -0.00000387  0.11D-05  0.43D-06  7351.21
    4    14    14     1.07009426    -0.48701030 -8132.38956695    -0.00017712    -0.00000555  0.27D-05  0.71D-06  7351.21
    4    15    15     1.07009491    -0.48701019 -8132.38956684    -0.00017739    -0.00000556  0.27D-05  0.71D-06  7351.21
    4    16    16     1.07009431    -0.48701017 -8132.38956682    -0.00017775    -0.00000558  0.27D-05  0.71D-06  7351.21
    5     1     1     1.07166977    -0.49168509 -8132.45481595    -0.00000494    -0.00000020  0.40D-07  0.26D-07  9434.58
    5     2     2     1.07166962    -0.49168502 -8132.45481589    -0.00000494    -0.00000020  0.40D-07  0.26D-07  9434.58
    5     3     3     1.07166964    -0.49168502 -8132.45481589    -0.00000494    -0.00000020  0.40D-07  0.26D-07  9434.58
    5     4     4     1.07166908    -0.49168487 -8132.45481573    -0.00000492    -0.00000020  0.40D-07  0.26D-07  9434.58
    5     5     5     1.07166874    -0.49168475 -8132.45481561    -0.00000488    -0.00000020  0.40D-07  0.26D-07  9434.58
    5     6     6     1.07335308    -0.48999097 -8132.39662591    -0.00000404    -0.00000018  0.43D-07  0.28D-07  9434.58
    5     7     7     1.07335353    -0.48999087 -8132.39662581    -0.00000405    -0.00000018  0.42D-07  0.28D-07  9434.58
    5     8     8     1.07335350    -0.48999087 -8132.39662581    -0.00000405    -0.00000018  0.42D-07  0.28D-07  9434.58
    5     9     9     1.07335256    -0.48999058 -8132.39662552    -0.00000401    -0.00000018  0.42D-07  0.28D-07  9434.58
    5    10    10     1.07335291    -0.48999027 -8132.39662521    -0.00000405    -0.00000018  0.43D-07  0.28D-07  9434.58
    5    11    11     1.07335278    -0.48999027 -8132.39662521    -0.00000405    -0.00000018  0.43D-07  0.28D-07  9434.58
    5    12    12     1.07335308    -0.48999026 -8132.39662520    -0.00000406    -0.00000018  0.42D-07  0.28D-07  9434.58
    5    13    13     1.06658900    -0.48488409 -8132.39021708    -0.00000412    -0.00000018  0.32D-07  0.24D-07  9434.58
    5    14    14     1.07010946    -0.48701658 -8132.38957323    -0.00000628    -0.00000030  0.58D-07  0.51D-07  9434.58
    5    15    15     1.07010922    -0.48701649 -8132.38957314    -0.00000630    -0.00000030  0.58D-07  0.50D-07  9434.58
    5    16    16     1.07010934    -0.48701649 -8132.38957314    -0.00000631    -0.00000030  0.58D-07  0.51D-07  9434.58
    6     1     1     1.07166762    -0.49168530 -8132.45481617    -0.00000022    -0.00000001  0.29D-08  0.71D-09 11506.69
    6     2     2     1.07166752    -0.49168524 -8132.45481610    -0.00000022    -0.00000001  0.29D-08  0.71D-09 11506.69
    6     3     3     1.07166753    -0.49168524 -8132.45481610    -0.00000022    -0.00000001  0.29D-08  0.71D-09 11506.69
    6     4     4     1.07166688    -0.49168508 -8132.45481595    -0.00000021    -0.00000001  0.29D-08  0.71D-09 11506.69
    6     5     5     1.07166674    -0.49168496 -8132.45481582    -0.00000021    -0.00000001  0.29D-08  0.69D-09 11506.69
    6     6     6     1.07335118    -0.48999117 -8132.39662611    -0.00000020    -0.00000001  0.25D-08  0.93D-09 11506.69
    6     7     7     1.07335143    -0.48999107 -8132.39662601    -0.00000020    -0.00000001  0.26D-08  0.93D-09 11506.69
    6     8     8     1.07335143    -0.48999107 -8132.39662601    -0.00000020    -0.00000001  0.26D-08  0.93D-09 11506.69
    6     9     9     1.07335063    -0.48999077 -8132.39662571    -0.00000020    -0.00000001  0.25D-08  0.93D-09 11506.69
    6    10    10     1.07335097    -0.48999047 -8132.39662541    -0.00000020    -0.00000001  0.26D-08  0.93D-09 11506.69
    6    11    11     1.07335096    -0.48999047 -8132.39662541    -0.00000020    -0.00000001  0.26D-08  0.93D-09 11506.69
    6    12    12     1.07335110    -0.48999046 -8132.39662540    -0.00000020    -0.00000001  0.26D-08  0.93D-09 11506.69
    6    13    13     1.06658790    -0.48488428 -8132.39021727    -0.00000019    -0.00000001  0.30D-08  0.54D-09 11506.69
    6    14    14     1.07009510    -0.48701690 -8132.38957355    -0.00000033    -0.00000001  0.30D-08  0.16D-08 11506.69
    6    15    15     1.07009499    -0.48701681 -8132.38957346    -0.00000033    -0.00000001  0.30D-08  0.16D-08 11506.69
    6    16    16     1.07009500    -0.48701681 -8132.38957346    -0.00000033    -0.00000001  0.30D-08  0.16D-08 11506.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.3%
 S   1.4%  46.1%
 P   0.5%  18.7%  14.2%

 Initialization:   4.6%
 Other:            1.3%

 Total CPU:    11506.7 seconds
 =====================================



 gnormi=  0.93312514  gnorms=  0.02294167  gnormp=  0.04393318  gnorm=  1.00000000
 ecorri= -0.45880392  ecorrs= -0.01128540  ecorrp= -0.02159598  ecorr= -0.49168530

 gnormi=  0.93312523  gnorms=  0.02294156  gnormp=  0.04393322  gnorm=  1.00000000
 ecorri= -0.45880390  ecorrs= -0.01128536  ecorrp= -0.02159598  ecorr= -0.49168524

 gnormi=  0.93312522  gnorms=  0.02294156  gnormp=  0.04393322  gnorm=  1.00000000
 ecorri= -0.45880390  ecorrs= -0.01128536  ecorrp= -0.02159598  ecorr= -0.49168524

 gnormi=  0.93312578  gnorms=  0.02294091  gnormp=  0.04393331  gnorm=  1.00000000
 ecorri= -0.45880403  ecorrs= -0.01128500  ecorrp= -0.02159606  ecorr= -0.49168508

 gnormi=  0.93312591  gnorms=  0.02294075  gnormp=  0.04393334  gnorm=  1.00000000
 ecorri= -0.45880397  ecorrs= -0.01128485  ecorrp= -0.02159614  ecorr= -0.49168496

 gnormi=  0.93166153  gnorms=  0.02088727  gnormp=  0.04745120  gnorm=  1.00000000
 ecorri= -0.45650592  ecorrs= -0.01023853  ecorrp= -0.02324672  ecorr= -0.48999117

 gnormi=  0.93166131  gnorms=  0.02088752  gnormp=  0.04745117  gnorm=  1.00000000
 ecorri= -0.45650572  ecorrs= -0.01023871  ecorrp= -0.02324664  ecorr= -0.48999107

 gnormi=  0.93166131  gnorms=  0.02088752  gnormp=  0.04745117  gnorm=  1.00000000
 ecorri= -0.45650572  ecorrs= -0.01023871  ecorrp= -0.02324663  ecorr= -0.48999107

 gnormi=  0.93166201  gnorms=  0.02088667  gnormp=  0.04745132  gnorm=  1.00000000
 ecorri= -0.45650579  ecorrs= -0.01023821  ecorrp= -0.02324677  ecorr= -0.48999077

 gnormi=  0.93166171  gnorms=  0.02088710  gnormp=  0.04745120  gnorm=  1.00000000
 ecorri= -0.45650536  ecorrs= -0.01023847  ecorrp= -0.02324665  ecorr= -0.48999047

 gnormi=  0.93166172  gnorms=  0.02088710  gnormp=  0.04745118  gnorm=  1.00000000
 ecorri= -0.45650537  ecorrs= -0.01023846  ecorrp= -0.02324665  ecorr= -0.48999047

 gnormi=  0.93166160  gnorms=  0.02088722  gnormp=  0.04745118  gnorm=  1.00000000
 ecorri= -0.45650529  ecorrs= -0.01023855  ecorrp= -0.02324662  ecorr= -0.48999046

 gnormi=  0.93756923  gnorms=  0.02085593  gnormp=  0.04157483  gnorm=  1.00000000
 ecorri= -0.45461258  ecorrs= -0.01011728  ecorrp= -0.02015442  ecorr= -0.48488428

 gnormi=  0.93449638  gnorms=  0.01930998  gnormp=  0.04619363  gnorm=  1.00000000
 ecorri= -0.45511554  ecorrs= -0.00940925  ecorrp= -0.02249212  ecorr= -0.48701690

 gnormi=  0.93449648  gnorms=  0.01930990  gnormp=  0.04619363  gnorm=  1.00000000
 ecorri= -0.45511550  ecorrs= -0.00940919  ecorrp= -0.02249213  ecorr= -0.48701681

 gnormi=  0.93449647  gnorms=  0.01930988  gnormp=  0.04619364  gnorm=  1.00000000
 ecorri= -0.45511549  ecorrs= -0.00940919  ecorrp= -0.02249212  ecorr= -0.48701681

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222220/000/0222000000          -0.0000000  -0.0000000   0.0000000  -0.0000538  -0.0000000   0.0000000   0.0000000  -0.0000000
                                  0.9630437  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 22222200/00/0222000000          -0.0000562  -0.0000000   0.0000000  -0.0000000   0.0000000   0.9630434  -0.0000000  -0.0000000
                                 -0.0000000  -0.0000000  -0.0000000   0.0000018   0.0000000   0.0000000   0.0000000   0.0000000
 222222/0000/0222000000           0.0000000  -0.0000000  -0.0000000  -0.0002475   0.9626479   0.0000000  -0.0000000   0.0000000
                                  0.0000000   0.0000000   0.0000000  -0.0000000   0.0000006   0.0000000  -0.0000000   0.0000000
 222222//00000222000000          -0.0000000   0.0000000   0.0000000   0.9626478   0.0002475   0.0000000   0.0000000   0.0000000
                                  0.0000581   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 222222/00/000222000000           0.0000000   0.9626477  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000411  -0.0000000
                                  0.0000000  -0.0000000   0.0000405  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000001
 222222/000/00222000000           0.0000000   0.0000000   0.9626477  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000411
                                 -0.0000000   0.0000405   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000
 222222/0/0000222000000           0.9626477  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000608  -0.0000000   0.0000000
                                  0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 222222/00000/222000000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000006  -0.0000000  -0.0000000  -0.0000000
                                  0.0000000  -0.0000000   0.0000000  -0.0000000   0.9486440   0.0000000  -0.0000000  -0.0000000
 222222000//00222000000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000016   0.0000000   0.0000000
                                  0.0000000   0.0000000  -0.0000000   0.8614182   0.0000000  -0.3584190  -0.0000000   0.0000000
 2222220/0/000222000000          -0.0000000   0.0000463   0.0000000  -0.0000000   0.0000000   0.0000000   0.7422982   0.0000000
                                 -0.0000000   0.0000000  -0.4369967  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.3585146
 2222220/00/00222000000          -0.0000000  -0.0000000  -0.0000463  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.7422906
                                 -0.0000000   0.4370094   0.0000000  -0.0000000   0.0000000  -0.0000000   0.3585146   0.0000000
 2222220//0000222000000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000008   0.0000000   0.0000000
                                 -0.0000000   0.0000000  -0.0000000   0.4305950   0.0000000   0.7171127  -0.0000000   0.0000000
 2222220000//0222000000          -0.0000000  -0.0000000   0.0000267   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0771825
                                 -0.0000000  -0.6041079   0.0000000   0.0000000  -0.0000000  -0.0000000   0.6210537  -0.0000000
 222222000/0/0222000000           0.0000000   0.0000267  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0771929  -0.0000000
                                  0.0000000  -0.0000000  -0.6041066  -0.0000000   0.0000000   0.0000000  -0.0000000   0.6210537
 22222200/0/00222000000           0.0000000   0.0000003  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6086766  -0.0000000
                                 -0.0000000  -0.0000000   0.6095429  -0.0000000   0.0000000   0.0000000  -0.0000000   0.3584350
 22222200//000222000000          -0.0000000  -0.0000000   0.0000003   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.6086870
                                 -0.0000000   0.6095324   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.3584351   0.0000000
 2222220000000222//0000           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                                 -0.0000000  -0.0000000   0.0000000   0.0000664   0.0000000  -0.5357521  -0.0000000   0.0000000
 22222200000002220//000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000233  -0.0000000
                                 -0.0000000   0.0000000  -0.0000572   0.0000000  -0.0000000   0.0000000   0.0000000  -0.5357510
 2222220000000222/0/000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000233
                                 -0.0000000  -0.0000572   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.5357510  -0.0000000
 22222200000002220/000/           0.0000000  -0.0000000   0.0000000   0.0009506   0.0005493   0.0000000   0.0000000  -0.0000000
                                 -0.0000000  -0.0000000  -0.0000000   0.0000000   0.1006894  -0.0000000   0.0000000   0.0000000
 2222220000000222/000/0          -0.0000000  -0.0000000   0.0000000  -0.0009509   0.0005488   0.0000000   0.0000000   0.0000000
                                  0.0000000   0.0000000  -0.0000000   0.0000000   0.1006894   0.0000000   0.0000000   0.0000000
 222222000000022200//00           0.0000000  -0.0000000   0.0000000   0.0000003  -0.0010978   0.0000000   0.0000000  -0.0000000
                                 -0.0000000   0.0000000   0.0000000   0.0000000   0.1006891   0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.000000   -0.000000    0.962617   -0.000000   -0.000000    0.000000   -0.000000   -0.000056
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.962617   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000045   -0.000000   -0.000000
            -0.000028   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.962617    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000033    0.000000
            -0.000000    0.000042   -0.000000    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000247   -0.000000    0.962617    0.000000   -0.000054   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.962617    0.000000    0.000247   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000001   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000061    0.000000   -0.000002    0.000000   -0.000000    0.963043
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 7          -0.000041   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.939805   -0.000000   -0.000000
             0.210285   -0.000000   -0.000000    0.000043    0.000000    0.000000
 8          -0.000000    0.000000    0.000041    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.955285   -0.000000
             0.000000   -0.121992   -0.000000    0.000000   -0.000043    0.000000
 9           0.000000    0.000000   -0.000000    0.000058    0.000000    0.963044    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 10         -0.000000    0.000000    0.000040    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.121992   -0.000000
            -0.000000   -0.955286   -0.000000   -0.000000    0.000105    0.000000
 11          0.000040    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.210285   -0.000000   -0.000000
             0.939805    0.000000    0.000000    0.000105   -0.000000   -0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.963044   -0.000000   -0.000000    0.000002
             0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000122
 13         -0.000000    0.000001    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.964520    0.000000    0.000000   -0.000000
 14          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000123   -0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000    0.964148
 15         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000056    0.000000
             0.000000    0.000099   -0.000000   -0.000000    0.964149    0.000000
 16         -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000019   -0.000000    0.000000
            -0.000113   -0.000000   -0.000000    0.964149    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962617    0.000000    0.000000    0.000000    0.000000    0.000002    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.962617   -0.000000    0.000000    0.000000    0.000000   -0.000001   -0.000000   -0.000000    0.000000
             0.000001    0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.962617    0.000000    0.000000    0.000000    0.000000    0.000001   -0.000000    0.000001
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.962617    0.000000   -0.000000   -0.000000    0.000000    0.000002    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.962617    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 6           0.000002    0.000000    0.000000   -0.000000    0.000000    0.963043    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 7           0.000000   -0.000001    0.000000   -0.000000    0.000000    0.000000    0.963043   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 8           0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000000   -0.000000    0.963043   -0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 9           0.000000   -0.000000   -0.000000    0.000002    0.000000   -0.000000   -0.000000   -0.000000    0.963044    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 10         -0.000000    0.000000    0.000001    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.963044
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 11         -0.000000    0.000001    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.963044   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 12         -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.963044    0.000000    0.000000    0.000000    0.000000
 13         -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.964520    0.000000   -0.000000   -0.000000
 14         -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.964148    0.000000   -0.000000
 15         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.964149    0.000000
 16         -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.964149

 Energy contributions of internal configurations for state 14
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3750       0.00012834     1.10391981       2222220000000222110000          

 Energy contributions of internal configurations for state 15
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3749       0.00012837     1.10403643       2222220000000222101000          

 Energy contributions of internal configurations for state 16
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3745       0.00012836     1.10403442       2222220000000222011000          


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96261684 (fixed)   0.96267516 (relaxed)   0.96261684 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700814   -0.01462467   -0.38847292
 Singles      0.02475815   -0.07589966   -0.08161640
 Pairs        0.04741173    0.00000000   -0.02159598
 Total        1.07917802   -0.09052434   -0.49168530
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96313087
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73543191
 One electron energy               -11102.28500135
 Two electron energy                 2969.83018519
 Virial quotient                       -0.84076060
 Correlation energy                    -0.49168530
 !MRCI STATE 1.1 Energy             -8132.454816168483

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49374684 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49368254 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49374684 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49166624 (Pople, fixed reference)
 Cluster corrected energies         -8132.49160149 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49166624 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96261690 (fixed)   0.96267522 (relaxed)   0.96261690 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700811   -0.01462464   -0.38847294
 Singles      0.02475802   -0.07589961   -0.08161631
 Pairs        0.04741176    0.00000000   -0.02159598
 Total        1.07917789   -0.09052425   -0.49168524
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96313087
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73543165
 One electron energy               -11102.28499994
 Two electron energy                 2969.83018384
 Virial quotient                       -0.84076060
 Correlation energy                    -0.49168524
 !MRCI STATE 2.1 Energy             -8132.454816104653

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49374670 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49368241 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49374670 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49166611 (Pople, fixed reference)
 Cluster corrected energies         -8132.49160136 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49166611 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96261689 (fixed)   0.96267522 (relaxed)   0.96261689 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700811   -0.01462464   -0.38847294
 Singles      0.02475803   -0.07589961   -0.08161631
 Pairs        0.04741176    0.00000000   -0.02159598
 Total        1.07917790   -0.09052425   -0.49168524
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96313087
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73543106
 One electron energy               -11102.28499933
 Two electron energy                 2969.83018322
 Virial quotient                       -0.84076060
 Correlation energy                    -0.49168524
 !MRCI STATE 3.1 Energy             -8132.454816104634

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49374671 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49368242 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49374671 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49166611 (Pople, fixed reference)
 Cluster corrected energies         -8132.49160136 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49166611 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96261699 (fixed)   0.96267535 (relaxed)   0.96261702 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700845   -0.01462495   -0.38847363
 Singles      0.02475732   -0.07589899   -0.08161539
 Pairs        0.04741184   -0.00000000   -0.02159606
 Total        1.07917761   -0.09052394   -0.49168508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96313087
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73543587
 One electron energy               -11102.28501005
 Two electron energy                 2969.83019410
 Virial quotient                       -0.84076060
 Correlation energy                    -0.49168508
 !MRCI STATE 4.1 Energy             -8132.454815947660

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49374640 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49368210 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49374640 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49166580 (Pople, fixed reference)
 Cluster corrected energies         -8132.49160105 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49166580 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96261704 (fixed)   0.96267539 (relaxed)   0.96261707 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00700848   -0.01462497   -0.38847366
 Singles      0.02475714   -0.07589889   -0.08161516
 Pairs        0.04741187    0.00000000   -0.02159614
 Total        1.07917750   -0.09052385   -0.49168496
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96313087
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.73544455
 One electron energy               -11102.28502413
 Two electron energy                 2969.83020831
 Virial quotient                       -0.84076060
 Correlation energy                    -0.49168496
 !MRCI STATE 5.1 Energy             -8132.454815823521

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49374621 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49368192 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49374621 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49166562 (Pople, fixed reference)
 Cluster corrected energies         -8132.49160086 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49166562 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96304338 (fixed)   0.96304338 (relaxed)   0.96304338 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00453820   -0.01013156   -0.39019067
 Singles      0.02252112   -0.07150259   -0.07655378
 Pairs        0.05116294    0.00000000   -0.02324672
 Total        1.07822227   -0.08163414   -0.48999117
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90663494
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.74119462
 One electron energy               -11104.82126859
 Two electron energy                 2972.42464248
 Virial quotient                       -0.84075408
 Correlation energy                    -0.48999117
 !MRCI STATE 6.1 Energy             -8132.396626109057

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43495433 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43495433 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43495433 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43287787 (Pople, fixed reference)
 Cluster corrected energies         -8132.43287787 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43287787 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.93980455 (fixed)   0.96304334 (relaxed)   0.96304334 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00453806   -0.01013138   -0.39019037
 Singles      0.02252140   -0.07150270   -0.07655407
 Pairs        0.05116291   -0.00000000   -0.02324664
 Total        1.07822237   -0.08163408   -0.48999107
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90663494
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.74120305
 One electron energy               -11104.82133466
 Two electron energy                 2972.42470865
 Virial quotient                       -0.84075408
 Correlation energy                    -0.48999107
 !MRCI STATE 7.1 Energy             -8132.396626010419

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43495427 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43495427 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43495427 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43287781 (Pople, fixed reference)
 Cluster corrected energies         -8132.43287781 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43287781 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95528549 (fixed)   0.96304334 (relaxed)   0.96304334 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00453806   -0.01013138   -0.39019037
 Singles      0.02252139   -0.07150270   -0.07655407
 Pairs        0.05116291   -0.00000000   -0.02324663
 Total        1.07822237   -0.08163408   -0.48999107
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90663494
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.74120171
 One electron energy               -11104.82133199
 Two electron energy                 2972.42470598
 Virial quotient                       -0.84075408
 Correlation energy                    -0.48999107
 !MRCI STATE 8.1 Energy             -8132.396626010418

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43495427 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43495427 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43495427 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43287781 (Pople, fixed reference)
 Cluster corrected energies         -8132.43287781 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43287781 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96304371 (fixed)   0.96304371 (relaxed)   0.96304371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00453804   -0.01013147   -0.39019088
 Singles      0.02252046   -0.07150216   -0.07655312
 Pairs        0.05116303   -0.00000000   -0.02324677
 Total        1.07822154   -0.08163363   -0.48999077
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90663494
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.74116622
 One electron energy               -11104.82116095
 Two electron energy                 2972.42453523
 Virial quotient                       -0.84075408
 Correlation energy                    -0.48999077
 !MRCI STATE 9.1 Energy             -8132.396625713526

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43495355 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43495355 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43495355 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43287708 (Pople, fixed reference)
 Cluster corrected energies         -8132.43287708 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43287708 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95528594 (fixed)   0.96304378 (relaxed)   0.96304378 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00453757   -0.01013100   -0.39019011
 Singles      0.02252091   -0.07150252   -0.07655372
 Pairs        0.05116289   -0.00000000   -0.02324665
 Total        1.07822138   -0.08163352   -0.48999047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90663494
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.74120321
 One electron energy               -11104.82134888
 Two electron energy                 2972.42472347
 Virial quotient                       -0.84075408
 Correlation energy                    -0.48999047
 !MRCI STATE 10.1 Energy            -8132.396625413583

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43495315 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43495315 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43495315 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43287668 (Pople, fixed reference)
 Cluster corrected energies         -8132.43287668 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43287668 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.93980495 (fixed)   0.96304379 (relaxed)   0.96304379 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00453757   -0.01013099   -0.39019010
 Singles      0.02252092   -0.07150254   -0.07655373
 Pairs        0.05116287    0.00000000   -0.02324665
 Total        1.07822137   -0.08163353   -0.48999047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90663494
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.74120795
 One electron energy               -11104.82135835
 Two electron energy                 2972.42473294
 Virial quotient                       -0.84075408
 Correlation energy                    -0.48999047
 !MRCI STATE 11.1 Energy            -8132.396625413583

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43495314 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43495314 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43495314 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43287668 (Pople, fixed reference)
 Cluster corrected energies         -8132.43287668 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43287668 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96304375 (fixed)   0.96304375 (relaxed)   0.96304375 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00453751   -0.01013091   -0.39023744
 Singles      0.02252105   -0.07150263   -0.07655390
 Pairs        0.05116288    0.00005122   -0.02319912
 Total        1.07822144   -0.08158233   -0.48999046
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90663494
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.74121232
 One electron energy               -11104.82140111
 Two electron energy                 2972.42477572
 Virial quotient                       -0.84075408
 Correlation energy                    -0.48999046
 !MRCI STATE 12.1 Energy            -8132.396625395664

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43495315 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43495315 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43495315 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43287669 (Pople, fixed reference)
 Cluster corrected energies         -8132.43287669 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43287669 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.96451951 (fixed)   0.96454158 (relaxed)   0.96451951 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00781615   -0.01675151   -0.38570760
 Singles      0.02241855   -0.07406764   -0.07902225
 Pairs        0.04468981    0.00000000   -0.02015442
 Total        1.07492451   -0.09081915   -0.48488428
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90533299
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.53691183
 One electron energy               -11093.90739867
 Two electron energy                 2961.51718140
 Virial quotient                       -0.84077117
 Correlation energy                    -0.48488428
 !MRCI STATE 13.1 Energy            -8132.390217266394

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42654698 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42652313 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42654698 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42448726 (Pople, fixed reference)
 Cluster corrected energies         -8132.42446339 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42448726 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.96414848 (fixed)   0.96426068 (relaxed)   0.96414849 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00528633   -0.01143781   -0.01302563
 Singles      0.02077275   -0.07067480   -0.07510729
 Pairs        0.04969289   -0.40490429   -0.39888399
 Total        1.07575197   -0.48701690   -0.48701690
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90255665
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67020986
 One electron energy               -11101.96351324
 Two electron energy                 2969.57393968
 Virial quotient                       -0.84075952
 Correlation energy                    -0.48701690
 !MRCI STATE 14.1 Energy            -8132.389573553930

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42646604 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42634413 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42646604 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42439769 (Pople, fixed reference)
 Cluster corrected energies         -8132.42427560 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42439769 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.96414854 (fixed)   0.96426076 (relaxed)   0.96414854 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00528631   -0.01143778   -0.38941753
 Singles      0.02077266   -0.07067471   -0.07510716
 Pairs        0.04969288    0.00000000   -0.02249213
 Total        1.07575185   -0.08211249   -0.48701681
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90255665
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67020855
 One electron energy               -11101.96352418
 Two electron energy                 2969.57395072
 Virial quotient                       -0.84075952
 Correlation energy                    -0.48701681
 !MRCI STATE 15.1 Energy            -8132.389573463628

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42646589 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42634396 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42646589 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42439754 (Pople, fixed reference)
 Cluster corrected energies         -8132.42427542 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42439754 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.96414853 (fixed)   0.96426075 (relaxed)   0.96414854 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00528631   -0.01143778   -0.38941754
 Singles      0.02077264   -0.07067470   -0.07510715
 Pairs        0.04969290   -0.00000000   -0.02249212
 Total        1.07575185   -0.08211247   -0.48701681
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90255665
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67020660
 One electron energy               -11101.96352002
 Two electron energy                 2969.57394656
 Virial quotient                       -0.84075952
 Correlation energy                    -0.48701681
 !MRCI STATE 16.1 Energy            -8132.389573463578

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42646589 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42634396 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42646589 (Davidson, rotated reference)

 Cluster corrected energies         -8132.42439754 (Pople, fixed reference)
 Cluster corrected energies         -8132.42427542 (Pople, relaxed reference)
 Cluster corrected energies         -8132.42439754 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       85.60       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1372.23       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     73299.59  58781.97  14508.04      4.78      0.09      4.51
 REAL TIME  *     73634.57 SEC
 DISK USED  *         1.42 GB (local),        8.58 GB (total)
 SF USED    *         7.84 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -8132.49374684  AU                              
 SETTING HLSDIAG(14)    =     -8132.49374670  AU                              
 SETTING HLSDIAG(15)    =     -8132.49374671  AU                              
 SETTING HLSDIAG(16)    =     -8132.49374640  AU                              
 SETTING HLSDIAG(17)    =     -8132.49374621  AU                              
 SETTING HLSDIAG(18)    =     -8132.43495433  AU                              
 SETTING HLSDIAG(19)    =     -8132.43495427  AU                              
 SETTING HLSDIAG(20)    =     -8132.43495427  AU                              
 SETTING HLSDIAG(21)    =     -8132.43495355  AU                              
 SETTING HLSDIAG(22)    =     -8132.43495315  AU                              
 SETTING HLSDIAG(23)    =     -8132.43495314  AU                              
 SETTING HLSDIAG(24)    =     -8132.43495315  AU                              
 SETTING HLSDIAG(25)    =     -8132.42654698  AU                              
 SETTING HLSDIAG(26)    =     -8132.42646604  AU                              
 SETTING HLSDIAG(27)    =     -8132.42646589  AU                              
 SETTING HLSDIAG(28)    =     -8132.42646589  AU                              


         HLSDIAG
    -8132.545271
    -8132.483865
    -8132.483865
    -8132.483865
    -8132.483865
    -8132.483865
    -8132.427724
    -8132.427724
    -8132.427724
    -8132.427724
    -8132.427724
    -8132.423042
    -8132.493747
    -8132.493747
    -8132.493747
    -8132.493746
    -8132.493746
    -8132.434954
    -8132.434954
    -8132.434954
    -8132.434954
    -8132.434953
    -8132.434953
    -8132.434953
    -8132.426547
    -8132.426466
    -8132.426466
    -8132.426466
                                                  

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

 Time for Seward_LS:      75.57 sec

       11141882. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2726 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     75.57 sec, REAL time:     78.12 sec


 SORTLS1 read    11148006. and wrote    11148006. SO integrals in    54 records. CPU time:      0.12 sec, REAL time:      0.18 sec
 SORTLS2 read    11148006. and wrote    11148006. SO integrals in    18 records. CPU time:      0.05 sec, REAL time:      0.12 sec

 FILE SIZES: FILE 1:   268.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   268.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      256.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1372.23       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     73376.13     76.51  58781.97  14508.04      4.78      0.09      4.51
 REAL TIME  *     73713.84 SEC
 DISK USED  *         1.42 GB (local),        8.93 GB (total)
 SF USED    *         7.84 GB
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

 Lowest unperturbed energy E0= -8132.54527143

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   13477.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   13477.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   13477.14       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   13477.14       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   13477.15       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   25798.59       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25798.59       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25798.62       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25798.59
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00      -0.00       0.00      56.23       0.00       0.00      -0.00      -9.45      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00     -56.23       0.00      -0.00       0.00      -9.45

   14   2.1  1.0  1.0      -0.00      -0.00      -0.00       0.00     -56.23       0.00       9.44      -0.00      -0.00       0.00
                            0.00     -95.50     -59.27      -0.00       0.00      -0.00      -0.00       0.00       7.18       0.00

   15   3.1  1.0  1.0      -0.00      99.07     -53.09       0.00      -0.00      -0.00       0.00      -0.00      11.46       0.00
                            0.00       0.00      -0.00      -0.00      56.23      -0.00      -9.44      -0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      56.24      -0.00      -0.00      -0.00       9.45
                           -0.00      -0.00       0.00      56.19      -0.00       0.00      -0.00      -9.44      -0.00       0.00

   17   5.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00     -97.36      -0.00       0.00      -0.00     -16.31
                           -0.00       0.00       0.00      97.39      -0.00      -0.00       0.00     -16.32      -0.00       0.00

   18   6.1  1.0  1.0      -0.00      -0.00      -0.00      19.91       0.00       0.00      -0.00      69.23       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -19.91      -0.00      -0.00      -0.00      69.23

   19   7.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      24.97       0.00      86.89       0.00      -0.00       0.00
                            0.01      -2.02     -23.50       0.00       0.00      -0.00      -0.00       0.00     -79.45      -0.00

   20   8.1  1.0  1.0       0.01      -3.51      23.33      -0.00      -0.00      -0.00       0.00      -0.00      81.98      -0.00
                            0.00      -0.00      -0.00       0.00      24.97       0.00      86.89       0.00      -0.00       0.00

   21   9.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -0.00      19.90       0.00       0.00       0.00     -69.23
                            0.00       0.00       0.00      19.90       0.00      -0.00       0.00      69.23       0.00      -0.00

   22  10.1  1.0  1.0      -0.02     -21.41     -10.07       0.00       0.00       0.00       0.00       0.00     -22.37      -0.00
                           -0.00       0.00       0.00       0.00       3.16      -0.00      10.95       0.00      -0.00      -0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00      -3.16       0.00     -10.95      -0.00      -0.00       0.00
                            0.02      22.00      -8.69      -0.00      -0.00       0.00       0.00       0.00     -42.16      -0.00

   24  12.1  1.0  1.0      -0.00      -0.00      -0.00     -15.41       0.00      -0.00      -0.00     -53.66      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     -15.41      -0.00      -0.00      -0.00      53.66

   25  13.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00      -0.00     -48.93       0.00      -0.00       0.00     176.69       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     -48.93      -0.00       0.00      -0.00    -176.69

   27  15.1  1.0  1.0     -93.58     -26.64     -49.75      -0.00      -0.00       0.00      -0.00      -0.00     161.82      -0.00
                           -0.00       0.00      -0.00       0.00      48.93      -0.00    -176.70      -0.00      -0.00       0.00

   28  16.1  1.0  1.0       0.00      -0.00       0.00      -0.00     -48.93       0.00     176.70       0.00       0.00      -0.00
                           93.58      29.75     -47.96       0.00       0.00      -0.00       0.00       0.00     188.60       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.04    -158.89       0.00       0.00      -0.00      -0.00      -0.00      26.36       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -79.52       0.00       0.00      -0.00     -13.35

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      79.52       0.00       0.00       0.00     -13.35       0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     159.02      -0.00     -26.60      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.04       0.00      -0.01       0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.89      28.13      -0.00      -0.00      -0.00      -0.00      -0.00      97.04       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       4.52      -0.00       0.00       0.00     -15.68

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       4.52      -0.00       0.00       0.00      15.68       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -28.12      -0.00     -97.90      -0.00      -0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      35.31      -0.00       0.00      -0.00     122.89       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     -35.31      -0.00      -0.00      -0.00     122.89

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03     -37.92      -1.20       0.00      -0.00       0.00       0.00      -0.00      17.28       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -132.34      79.73       2.53      -0.00      -0.00      -0.00      -0.00      -0.00      37.88      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -69.19      -0.00      -0.00       0.00     249.88      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      69.19       0.00      -0.00       0.00     249.88

   45   1.1  1.0 -1.0       0.00      -0.00       0.00      56.23       0.00       0.00      -0.00      -9.45      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      56.23      -0.00       0.00      -0.00       9.45

   46   2.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     -56.23       0.00       9.44      -0.00      -0.00       0.00
                           -0.00      95.50      59.27       0.00      -0.00       0.00       0.00      -0.00      -7.18      -0.00

   47   3.1  1.0 -1.0      -0.00      99.07     -53.09       0.00      -0.00      -0.00       0.00      -0.00      11.46       0.00
                           -0.00      -0.00       0.00       0.00     -56.23       0.00       9.44       0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      56.24      -0.00      -0.00      -0.00       9.45
                            0.00       0.00      -0.00     -56.19       0.00      -0.00       0.00       9.44       0.00      -0.00

   49   5.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00     -97.36      -0.00       0.00      -0.00     -16.31
                            0.00      -0.00      -0.00     -97.39       0.00       0.00      -0.00      16.32       0.00      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.00      -0.00      19.91       0.00       0.00      -0.00      69.23       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      19.91       0.00       0.00       0.00     -69.23

   51   7.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      24.97       0.00      86.89       0.00      -0.00       0.00
                           -0.01       2.02      23.50      -0.00      -0.00       0.00       0.00      -0.00      79.45       0.00

   52   8.1  1.0 -1.0       0.01      -3.51      23.33      -0.00      -0.00      -0.00       0.00      -0.00      81.98      -0.00
                           -0.00       0.00       0.00      -0.00     -24.97      -0.00     -86.89      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00      -0.00      19.90       0.00       0.00       0.00     -69.23
                           -0.00      -0.00      -0.00     -19.90      -0.00       0.00      -0.00     -69.23      -0.00       0.00

   54  10.1  1.0 -1.0      -0.02     -21.41     -10.07       0.00       0.00       0.00       0.00       0.00     -22.37      -0.00
                            0.00      -0.00      -0.00      -0.00      -3.16       0.00     -10.95      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00      -3.16       0.00     -10.95      -0.00      -0.00       0.00
                           -0.02     -22.00       8.69       0.00       0.00      -0.00      -0.00      -0.00      42.16       0.00

   56  12.1  1.0 -1.0      -0.00      -0.00      -0.00     -15.41       0.00      -0.00      -0.00     -53.66      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      15.41       0.00       0.00       0.00     -53.66

   57  13.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00      -0.00     -48.93       0.00      -0.00       0.00     176.69       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      48.93       0.00      -0.00       0.00     176.69

   59  15.1  1.0 -1.0     -93.58     -26.64     -49.75      -0.00      -0.00       0.00      -0.00      -0.00     161.82      -0.00
                            0.00      -0.00       0.00      -0.00     -48.93       0.00     176.70       0.00       0.00      -0.00

   60  16.1  1.0 -1.0       0.00      -0.00       0.00      -0.00     -48.93       0.00     176.70       0.00       0.00      -0.00
                          -93.58     -29.75      47.96      -0.00      -0.00       0.00      -0.00      -0.00    -188.60      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.01
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.01      -0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00      -0.00      99.07       0.00      -0.00      -0.00      -0.00      -3.51
                            0.00       0.00       0.00      95.50      -0.00       0.00      -0.00      -0.00       2.02       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00      -0.00     -53.09       0.00       0.00      -0.00      -0.00      23.33
                            0.00       0.00      -0.00      59.27       0.00      -0.00      -0.00      -0.00      23.50       0.00

    4   4.1  0.0  0.0       0.00       0.00      56.23       0.00       0.00       0.00       0.00      19.91      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00     -56.19     -97.39       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00     -56.23      -0.00       0.00       0.00       0.00      24.97      -0.00
                            0.00       0.00       0.00      -0.00     -56.23       0.00       0.00      -0.00      -0.00     -24.97

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      56.24     -97.36       0.00       0.00      -0.00
                            0.00       0.00      56.23       0.00       0.00      -0.00       0.00      19.91       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00       9.44       0.00      -0.00      -0.00      -0.00      86.89       0.00
                            0.00       0.00      -0.00       0.00       9.44       0.00      -0.00       0.00       0.00     -86.89

    8   8.1  0.0  0.0       0.00       0.00      -9.45      -0.00      -0.00      -0.00       0.00      69.23       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       9.44      16.32       0.00      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00      -0.00      -0.00      11.46      -0.00      -0.00       0.00      -0.00      81.98
                            0.00       0.00      -0.00      -7.18      -0.00       0.00       0.00       0.00      79.45       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       9.45     -16.31       0.00       0.00      -0.00
                            0.00       0.00       9.45      -0.00      -0.00      -0.00      -0.00     -69.23       0.00      -0.00

   11  11.1  0.0  0.0   25798.64       0.00      -0.00      -0.00      14.95      -0.00      -0.00      -0.00      -0.00      -1.13
                            0.00       0.00      -0.00      17.41      -0.00       0.00      -0.00      -0.00     -20.23       0.00

   12  12.1  0.0  0.0       0.00   26826.20      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.01
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00

   13   1.1  1.0  1.0      -0.00      -0.00   11308.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     157.92       0.04       0.00       0.00      -0.00

   14   2.1  1.0  1.0      -0.00      -0.00       0.00   11308.37       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.41      -0.00      -0.00       0.00      78.97       0.00       0.00       0.00       0.00       0.52

   15   3.1  1.0  1.0      14.95       0.00       0.00       0.00   11308.37       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -78.97      -0.00      -0.00      -0.00       0.00       0.52       0.00

   16   4.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00   11308.44       0.00       0.00       0.00       0.00
                           -0.00       0.00    -157.92      -0.00       0.00       0.00       0.00       3.00       0.00      -0.00

   17   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00   11308.48       0.00       0.00       0.00
                            0.00      -0.00      -0.04      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   24211.80       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -3.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   24211.82       0.00
                           20.23       0.01      -0.00      -0.00      -0.52      -0.00      -0.00      -0.00       0.00     222.28

   20   8.1  1.0  1.0      -1.13       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24211.82
                           -0.00      -0.00       0.00      -0.52      -0.00       0.00      -0.00      -0.00    -222.28       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       3.00       0.00      -0.00      -0.00       0.00    -151.44      -0.00      -0.00

   22  10.1  1.0  1.0      79.05      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -3.81      -0.00       0.00       0.00      -0.00      38.05      -0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -70.51       0.01      -0.00       0.00       3.81      -0.00      -0.00      -0.00      -0.00      38.06

   24  12.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       4.11      -0.00       0.00      -0.00

   25  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   26  14.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -8.28      -0.00      -0.00       0.00

   27  15.1  1.0  1.0    -124.39    -101.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       7.21      -0.00       0.00      -0.00      -0.00      -0.03       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.02     101.00      -0.00       0.00      -7.21      -0.00       0.00       0.00       0.00      -0.03

   29   1.1  1.0  0.0       0.00       0.00      -0.00     -55.84       0.00       0.00      -0.00       0.00       2.70      -0.00
                           -3.49      -0.00      -0.00      -0.00     -55.84      -0.00      -0.00       0.00      -0.00      -2.70

   30   2.1  1.0  0.0       0.00       0.00      55.84       0.00      -0.00       0.00      -0.00       2.17      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     -55.81     -96.72      -0.00      -0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00      55.86     -96.69       0.00       0.00      -0.00
                           -0.00       0.00      55.84      -0.00       0.00      -0.00       0.00       2.17      -0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00      -0.00     -55.86      -0.00       0.00       0.00       0.00       2.51
                            0.00       0.00       0.00      55.81       0.00      -0.00       0.00       0.00       2.51      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      96.69      -0.00      -0.00      -0.00      -0.00      -0.29
                           -0.00       0.00       0.00      96.72      -0.00      -0.00      -0.00      -0.00       0.29      -0.00

   34   6.1  1.0  0.0       0.00       0.00      -0.00      -2.17      -0.00      -0.00       0.00       0.00      54.31       0.00
                          -12.84      -0.00      -0.00       0.00      -2.17      -0.00       0.00       0.00       0.00     -54.31

   35   7.1  1.0  0.0       0.00       0.00      -2.70       0.00      -0.00      -0.00       0.00     -54.31      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -2.51      -0.29      -0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -2.51       0.29      -0.00       0.00      -0.00
                           -0.00       0.00       2.70       0.00       0.00       0.00       0.00      54.31      -0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -2.16      -0.00      -0.00      -0.00      -0.00      75.75
                            0.00       0.00       0.00       2.16       0.00      -0.00       0.00       0.00      75.75       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00       1.03       2.33      -0.00       0.00       0.00
                            0.00      -0.00       0.36       0.00      -0.00       0.00       0.00     -92.27       0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.36      -0.00      -0.00      -0.00      -0.00     -92.27      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -1.03       2.33       0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00       1.65      -0.00      -0.00      -0.00      -0.00     -16.62       0.00
                          130.57       0.02       0.00      -0.00      -1.65       0.00       0.00      -0.00      -0.00     -16.61

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00      -0.00       5.10       0.00       0.00      -0.00      -0.00      -0.00       0.00
                          286.25    -142.84       0.00       0.00      -5.10       0.00       0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       5.10       2.97      -0.00      -0.00      -0.00
                            0.00       0.00       5.11      -0.00      -0.00      -0.00      -0.00       0.02       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       5.11       0.00       0.00       0.00       0.00       0.02      -0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -5.10       2.96      -0.00      -0.00       0.00

   45   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.41       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      14.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.23      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -1.13       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      79.05      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           70.51      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0    -124.39    -101.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -78.02    -101.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00      -0.02       0.00      -0.00      -0.00       0.00     -93.58       0.00       0.00       0.00
                           -0.00       0.00      -0.02      -0.00      -0.00       0.00       0.00     -93.58       0.00      -0.00

    2   2.1  0.0  0.0      -0.00     -21.41       0.00      -0.00      -0.00       0.00     -26.64      -0.00       0.00       0.00
                           -0.00      -0.00     -22.00      -0.00      -0.00       0.00      -0.00     -29.75      -5.04       0.00

    3   3.1  0.0  0.0      -0.00     -10.07       0.00      -0.00      -0.00      -0.00     -49.75       0.00       0.00       0.00
                           -0.00      -0.00       8.69      -0.00      -0.00       0.00       0.00      47.96     158.89       0.00

    4   4.1  0.0  0.0      -0.00       0.00       0.00     -15.41       0.00     -48.93      -0.00      -0.00       0.00       0.00
                          -19.90      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

    5   5.1  0.0  0.0      -0.00       0.00      -3.16       0.00       0.00       0.00      -0.00     -48.93       0.00       0.00
                           -0.00      -3.16       0.00      -0.00      -0.00      -0.00     -48.93      -0.00      -0.00       0.00

    6   6.1  0.0  0.0      19.90       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      15.41      -0.00      48.93       0.00       0.00       0.00      79.52

    7   7.1  0.0  0.0       0.00       0.00     -10.95      -0.00       0.00       0.00      -0.00     176.70       0.00       0.00
                           -0.00     -10.95      -0.00       0.00       0.00       0.00     176.70      -0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00      -0.00     -53.66      -0.00     176.69      -0.00       0.00       0.00       0.00
                          -69.23      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

    9   9.1  0.0  0.0       0.00     -22.37      -0.00      -0.00       0.00       0.00     161.82       0.00       0.00       0.00
                           -0.00       0.00      42.16       0.00      -0.00       0.00       0.00    -188.60     -26.36       0.00

   10  10.1  0.0  0.0     -69.23      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00     -53.66      -0.00     176.69      -0.00      -0.00      -0.00      13.35

   11  11.1  0.0  0.0       0.00      79.05       0.00       0.00      -0.00       0.00    -124.39       0.00       0.00       0.00
                            0.00       0.00      70.51       0.00      -0.00       0.00       0.00     -78.02       3.49      -0.00

   12  12.1  0.0  0.0       0.00      -0.01       0.00      -0.00       0.00      -0.00    -101.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00       0.00       0.00       0.00    -101.00       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      55.84
                           -3.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -55.84       0.00
                           -0.00       3.81      -0.00      -0.00       0.00      -0.00      -7.21      -0.00       0.00      -0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -3.81       0.00       0.00       0.00       0.00       7.21      55.84      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      55.81

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -4.11       0.00       8.28       0.00      -0.00       0.00      96.72

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.17
                          151.44       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.70      -0.00
                            0.00     -38.05       0.00      -0.00       0.00       0.00       0.03      -0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00     -38.06       0.00      -0.00      -0.00      -0.00       0.03       2.70       0.00

   21   9.1  1.0  1.0   24211.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       2.16

   22  10.1  1.0  1.0       0.00   24212.06       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00     -70.86      -0.00       0.00       0.00      -0.00      -0.00       0.36       0.00

   23  11.1  1.0  1.0       0.00       0.00   24212.07       0.00       0.00       0.00       0.00       0.00      -0.36       0.00
                            0.00      70.86      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   24212.06       0.00       0.00       0.00       0.00       0.00      -1.65
                            0.00       0.00       0.00       0.00       0.01       0.00      -0.00      -0.00       0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   26057.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.01      -0.00      57.78       0.00      -0.00      -0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   26074.77       0.00       0.00       0.00      -5.10
                            0.00      -0.00       0.00      -0.00     -57.78       0.00      -0.00      -0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   26074.80       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00    -217.67       5.11      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26074.80      -5.11      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00     217.67       0.00      -0.00       0.00

   29   1.1  1.0  0.0      -0.00      -0.00      -0.36       0.00      -0.00       0.00      -0.00      -5.11   11308.34       0.00
                           -0.00      -0.36       0.00      -0.00       0.00      -0.00      -5.11       0.00       0.00       0.00

   30   2.1  1.0  0.0      -0.00       0.00       0.00      -1.65      -0.00      -5.10      -0.00      -0.00       0.00   11308.37
                           -2.16      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       2.16      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       1.65      -0.00       5.10       0.00       0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00      -1.03       0.00       0.00       0.00      -0.00      -5.10      -0.00       0.00       0.00
                            0.00      -0.00       1.03      -0.00      -0.00      -0.00       0.00       5.10      -0.00      -0.00

   33   5.1  1.0  0.0       0.00      -2.33       0.00       0.00       0.00       0.00      -2.97      -0.00       0.00       0.00
                           -0.00      -0.00      -2.33      -0.00      -0.00      -0.00       0.00      -2.96      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00      92.27       0.00      -0.00       0.00       0.00      -0.02       0.00       0.00
                           -0.00      92.27      -0.00       0.00      -0.00       0.00      -0.02       0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00      -0.00       0.00      16.62      -0.00       0.00       0.00       0.00       0.00       0.00
                          -75.75      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0     -75.75      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      16.61       0.00       0.00       0.00      -0.00      -0.00      -0.00

   37   9.1  1.0  0.0      -0.00      75.65      -0.00      -0.00       0.00      -0.00      -0.01       0.00       0.00       0.00
                            0.00       0.00     -75.65       0.00       0.00       0.00      -0.00       0.01      -0.00      -0.00

   38  10.1  1.0  0.0     -75.65      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     130.08       0.00       0.03      -0.00       0.00      -0.00      -0.00

   39  11.1  1.0  0.0       0.00      -0.00       0.00    -130.08      -0.00      -0.03      -0.00      -0.00       0.00       0.00
                           75.65       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00     130.08       0.00      -0.00       0.00       0.00      -0.03       0.00       0.00
                           -0.00    -130.08      -0.00      -0.00      -0.00       0.00       0.03       0.00      -0.00      -0.00

   41  13.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      40.85      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      40.85      -0.00      -0.00

   42  14.1  1.0  0.0       0.00      -0.00       0.03      -0.00      -0.00       0.00       0.00     153.92       0.00       0.00
                           -0.00      -0.03       0.00      -0.00      -0.00       0.00    -153.92      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.01      -0.00       0.00      -0.00     -40.85      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.03      -0.00     153.92       0.00       0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00       0.00       0.03       0.00    -153.92       0.00      -0.00       0.00       0.00
                           -0.01      -0.00       0.00      -0.00     -40.85       0.00      -0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -55.84
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      55.84       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      55.84      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      55.81

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      96.72

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.17
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.70       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.70       0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.16

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.36       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.36      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.65
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       5.10
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       5.11      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.11       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.03

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.89      -0.00      -0.00      -0.00      -0.00      -0.00      37.92

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -28.13       0.00      -0.00      -0.00      -0.00       0.00       1.20

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -79.52       0.00      -0.00       0.00       0.00      -4.52       0.00     -35.31      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -159.02      -0.04       0.00      -0.00       0.00      28.12       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -4.52      -0.00       0.00      -0.00      35.31      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      26.60       0.01       0.00       0.00      -0.00      97.90       0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.35       0.00      -0.00       0.00      -0.00     -15.68       0.00    -122.89       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -97.04      -0.00      -0.00       0.00      -0.00       0.00     -17.28

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      15.68      -0.00      -0.00      -0.00    -122.89      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      12.84      -0.00       0.00      -0.00      -0.00       0.00    -130.57

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.02

   13   1.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -2.70       0.00       0.00       0.00       0.36      -0.00
                          -55.84      -0.00      -0.00       0.00      -0.00      -2.70      -0.00      -0.36       0.00      -0.00

   14   2.1  1.0  1.0       0.00      -0.00       0.00      -2.17       0.00       0.00       0.00      -0.00      -0.00       1.65
                            0.00     -55.81     -96.72      -0.00      -0.00      -0.00      -2.16      -0.00      -0.00       0.00

   15   3.1  1.0  1.0      -0.00     -55.86      96.69      -0.00      -0.00       0.00      -2.16       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       2.17      -0.00      -0.00      -0.00       0.00       0.00       1.65

   16   4.1  1.0  1.0      55.86      -0.00      -0.00      -0.00      -0.00      -2.51      -0.00       1.03      -0.00      -0.00
                            0.00       0.00       0.00       0.00       2.51      -0.00       0.00      -0.00       1.03      -0.00

   17   5.1  1.0  1.0     -96.69       0.00      -0.00       0.00       0.00       0.29      -0.00       2.33      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.29      -0.00      -0.00      -0.00      -2.33      -0.00

   18   6.1  1.0  1.0       0.00       0.00      -0.00       0.00     -54.31      -0.00      -0.00      -0.00     -92.27      -0.00
                           -2.17      -0.00       0.00      -0.00       0.00     -54.31      -0.00      92.27      -0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00      -0.00      54.31      -0.00       0.00      -0.00       0.00      -0.00     -16.62
                            0.00      -2.51      -0.29      -0.00       0.00       0.00     -75.75      -0.00      -0.00       0.00

   20   8.1  1.0  1.0      -0.00       2.51      -0.29       0.00      -0.00      -0.00      75.75       0.00       0.00       0.00
                            0.00       0.00       0.00      54.31      -0.00      -0.00      -0.00       0.00      -0.00      16.61

   21   9.1  1.0  1.0       2.16       0.00       0.00       0.00       0.00     -75.75      -0.00     -75.65       0.00       0.00
                            0.00      -0.00       0.00       0.00      75.75       0.00      -0.00       0.00     -75.65       0.00

   22  10.1  1.0  1.0      -0.00      -1.03      -2.33       0.00      -0.00      -0.00      75.65      -0.00      -0.00       0.00
                           -0.00       0.00       0.00     -92.27       0.00      -0.00      -0.00       0.00      -0.00     130.08

   23  11.1  1.0  1.0       0.00       0.00       0.00      92.27       0.00      -0.00      -0.00       0.00       0.00     130.08
                           -0.00      -1.03       2.33       0.00       0.00       0.00      75.65       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00      16.62      -0.00      -0.00      -0.00    -130.08       0.00
                           -1.65       0.00       0.00      -0.00      -0.00     -16.61      -0.00    -130.08      -0.00       0.00

   25  13.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   26  14.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.03       0.00
                           -5.10       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.03       0.00      -0.00

   27  15.1  1.0  1.0       0.00      -5.10      -2.97       0.00       0.00       0.00      -0.01       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.02       0.00      -0.00       0.00       0.00      -0.00      -0.03

   28  16.1  1.0  1.0      -0.00      -0.00      -0.00      -0.02       0.00       0.00       0.00       0.00      -0.00      -0.03
                           -0.00      -5.10       2.96      -0.00      -0.00       0.00      -0.01      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   11308.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   11308.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   11308.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   24211.80       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   24211.82       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   24211.82       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   24211.98       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24212.06       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24212.07       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24212.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00      -0.00       0.00       2.70      -0.00      -0.00      -0.00      -0.36       0.00
                          -55.84      -0.00      -0.00       0.00      -0.00      -2.70      -0.00      -0.36       0.00      -0.00

   46   2.1  1.0 -1.0      -0.00       0.00      -0.00       2.17      -0.00      -0.00      -0.00       0.00       0.00      -1.65
                            0.00     -55.81     -96.72      -0.00      -0.00      -0.00      -2.16      -0.00      -0.00       0.00

   47   3.1  1.0 -1.0      -0.00      55.86     -96.69       0.00       0.00      -0.00       2.16      -0.00       0.00       0.00
                            0.00      -0.00       0.00       2.17      -0.00      -0.00      -0.00       0.00       0.00       1.65

   48   4.1  1.0 -1.0     -55.86      -0.00       0.00       0.00       0.00       2.51       0.00      -1.03       0.00       0.00
                            0.00      -0.00       0.00       0.00       2.51      -0.00       0.00      -0.00       1.03      -0.00

   49   5.1  1.0 -1.0      96.69      -0.00      -0.00      -0.00      -0.00      -0.29       0.00      -2.33       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.29      -0.00      -0.00      -0.00      -2.33      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      54.31       0.00       0.00       0.00      92.27       0.00
                           -2.17      -0.00       0.00       0.00       0.00     -54.31      -0.00      92.27      -0.00       0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00     -54.31      -0.00      -0.00       0.00      -0.00       0.00      16.62
                            0.00      -2.51      -0.29      -0.00      -0.00       0.00     -75.75      -0.00      -0.00       0.00

   52   8.1  1.0 -1.0       0.00      -2.51       0.29      -0.00       0.00      -0.00     -75.75      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      54.31      -0.00       0.00      -0.00       0.00      -0.00      16.61

   53   9.1  1.0 -1.0      -2.16      -0.00      -0.00      -0.00      -0.00      75.75      -0.00      75.65      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      75.75       0.00       0.00       0.00     -75.65       0.00

   54  10.1  1.0 -1.0       0.00       1.03       2.33      -0.00       0.00       0.00     -75.65      -0.00       0.00      -0.00
                           -0.00       0.00       0.00     -92.27       0.00      -0.00      -0.00      -0.00      -0.00     130.08

   55  11.1  1.0 -1.0      -0.00      -0.00      -0.00     -92.27      -0.00       0.00       0.00      -0.00       0.00    -130.08
                           -0.00      -1.03       2.33       0.00       0.00       0.00      75.65       0.00      -0.00       0.00

   56  12.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00     -16.62       0.00       0.00       0.00     130.08       0.00
                           -1.65       0.00       0.00      -0.00      -0.00     -16.61      -0.00    -130.08      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.03      -0.00
                           -5.10       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.03       0.00      -0.00

   59  15.1  1.0 -1.0      -0.00       5.10       2.97      -0.00      -0.00      -0.00       0.01      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.02       0.00      -0.00       0.00       0.00      -0.00      -0.03

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.02      -0.00      -0.00      -0.00      -0.00       0.00       0.03
                           -0.00      -5.10       2.96      -0.00      -0.00       0.00      -0.01      -0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00     132.34      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      99.07       0.00      -0.00      -0.00
                            0.00     -79.73      -0.00       0.00      -0.00     -95.50       0.00      -0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -53.09       0.00       0.00      -0.00
                           -0.00      -2.53      -0.00      -0.00       0.00     -59.27      -0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      56.23       0.00       0.00       0.00       0.00      19.91
                            0.00       0.00      69.19      -0.00       0.00      -0.00      -0.00      56.19      97.39      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -56.23      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      56.23      -0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      56.24     -97.36       0.00
                           -0.00       0.00       0.00     -69.19     -56.23      -0.00      -0.00       0.00      -0.00     -19.91

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       9.44       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -9.44      -0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -9.45      -0.00      -0.00      -0.00       0.00      69.23
                           -0.00       0.00    -249.88       0.00      -0.00       0.00      -0.00      -9.44     -16.32      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      11.46      -0.00      -0.00       0.00
                           -0.00     -37.88       0.00      -0.00       0.00       7.18       0.00      -0.00      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       9.45     -16.31       0.00
                           -0.00       0.00       0.00    -249.88      -9.45       0.00       0.00       0.00       0.00      69.23

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      14.95      -0.00      -0.00      -0.00
                            0.00    -286.25      -0.00      -0.00       0.00     -17.41       0.00      -0.00       0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00     142.84      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00      -0.00       0.00       5.11       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -5.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       5.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0      -0.00       0.00       5.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       5.10       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0      -0.00      -0.00       2.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -2.96       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00      -0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0      -0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00      -0.00      -0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00      -0.00     -40.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      40.85       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00      -0.00    -153.92       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -153.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0      40.85       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     153.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0      -0.00     153.92      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.85       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      55.84      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -55.84      -0.00      -0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -55.84       0.00       0.00      -0.00       0.00      -2.17
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -55.81     -96.72      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -55.86      96.69      -0.00
                            0.00       0.00       0.00       0.00      55.84      -0.00      -0.00      -0.00       0.00       2.17

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      55.86      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      55.81       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00     -96.69       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      96.72      -0.00      -0.00       0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       2.17       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -2.17      -0.00       0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       2.70      -0.00       0.00       0.00      -0.00      54.31
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.51      -0.29      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       2.51      -0.29       0.00
                            0.00       0.00       0.00       0.00       2.70       0.00       0.00       0.00       0.00      54.31

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       2.16       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       2.16       0.00      -0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -1.03      -2.33       0.00
                            0.00       0.00       0.00       0.00       0.36       0.00      -0.00       0.00       0.00     -92.27

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.36       0.00       0.00       0.00       0.00      92.27
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -1.03       2.33       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -1.65       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -1.65       0.00       0.00      -0.00

   41  13.1  1.0  0.0   26057.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   42  14.1  1.0  0.0       0.00   26074.77       0.00       0.00       0.00      -5.10      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -5.10       0.00       0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00   26074.80       0.00      -0.00      -0.00       0.00      -5.10      -2.97       0.00
                           -0.00      -0.00       0.00       0.00       5.11      -0.00      -0.00      -0.00      -0.00       0.02

   44  16.1  1.0  0.0       0.00       0.00       0.00   26074.80      -5.11      -0.00      -0.00      -0.00      -0.00      -0.02
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -5.10       2.96      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00      -0.00      -5.11   11308.34       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -5.11       0.00      -0.00      -0.00      -0.00    -157.92      -0.04      -0.00

   46   2.1  1.0 -1.0      -0.00      -5.10      -0.00      -0.00       0.00   11308.37       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00     -78.97      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00   11308.37       0.00       0.00       0.00
                           -0.00       5.10       0.00       0.00       0.00      78.97       0.00       0.00       0.00      -0.00

   48   4.1  1.0 -1.0       0.00      -0.00      -5.10      -0.00       0.00       0.00       0.00   11308.44       0.00       0.00
                           -0.00      -0.00       0.00       5.10     157.92       0.00      -0.00      -0.00      -0.00      -3.00

   49   5.1  1.0 -1.0       0.00       0.00      -2.97      -0.00       0.00       0.00       0.00       0.00   11308.48       0.00
                           -0.00      -0.00       0.00      -2.96       0.04       0.00      -0.00       0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00       0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00   24211.80
                           -0.00       0.00      -0.02       0.00       0.00       0.00       0.00       3.00       0.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.52       0.00      -0.00       0.00       0.00

   53   9.1  1.0 -1.0       0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.01      -3.00      -0.00       0.00       0.00      -0.00     151.44

   54  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.03      -0.00       0.00       0.00       3.81       0.00      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0      -0.00      -0.03      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -3.81       0.00       0.00       0.00

   56  12.1  1.0 -1.0      -0.00       0.00       0.00      -0.03       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.03       0.00       0.00      -0.00       0.00       0.00      -4.11       0.00

   57  13.1  1.0 -1.0       0.00       0.00      40.85      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      40.85      -0.00       0.00       0.00       0.00       0.00      -0.00

   58  14.1  1.0 -1.0      -0.00       0.00       0.00     153.92       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -153.92      -0.00       0.00      -0.00       0.00      -0.00       8.28       0.00

   59  15.1  1.0 -1.0     -40.85      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     153.92       0.00       0.00      -0.00      -7.21       0.00      -0.00       0.00       0.00

   60  16.1  1.0 -1.0       0.00    -153.92       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.85       0.00      -0.00       0.00       0.00      -0.00       7.21       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0      -0.00       0.01      -0.00      -0.02       0.00      -0.00      -0.00       0.00     -93.58       0.00
                            0.01       0.00       0.00      -0.00       0.02       0.00       0.00      -0.00      -0.00      93.58

    2   2.1  0.0  0.0      -0.00      -3.51      -0.00     -21.41       0.00      -0.00      -0.00       0.00     -26.64      -0.00
                           -2.02      -0.00       0.00       0.00      22.00       0.00       0.00      -0.00       0.00      29.75

    3   3.1  0.0  0.0      -0.00      23.33      -0.00     -10.07       0.00      -0.00      -0.00      -0.00     -49.75       0.00
                          -23.50      -0.00       0.00       0.00      -8.69       0.00       0.00      -0.00      -0.00     -47.96

    4   4.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00     -15.41       0.00     -48.93      -0.00      -0.00
                            0.00       0.00      19.90       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    5   5.1  0.0  0.0      24.97      -0.00      -0.00       0.00      -3.16       0.00       0.00       0.00      -0.00     -48.93
                            0.00      24.97       0.00       3.16      -0.00       0.00       0.00       0.00      48.93       0.00

    6   6.1  0.0  0.0       0.00      -0.00      19.90       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00     -15.41       0.00     -48.93      -0.00      -0.00

    7   7.1  0.0  0.0      86.89       0.00       0.00       0.00     -10.95      -0.00       0.00       0.00      -0.00     176.70
                           -0.00      86.89       0.00      10.95       0.00      -0.00      -0.00      -0.00    -176.70       0.00

    8   8.1  0.0  0.0       0.00      -0.00       0.00       0.00      -0.00     -53.66      -0.00     176.69      -0.00       0.00
                            0.00       0.00      69.23       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

    9   9.1  0.0  0.0      -0.00      81.98       0.00     -22.37      -0.00      -0.00       0.00       0.00     161.82       0.00
                          -79.45      -0.00       0.00      -0.00     -42.16      -0.00       0.00      -0.00      -0.00     188.60

   10  10.1  0.0  0.0       0.00      -0.00     -69.23      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      53.66       0.00    -176.69       0.00       0.00

   11  11.1  0.0  0.0      -0.00      -1.13       0.00      79.05       0.00       0.00      -0.00       0.00    -124.39       0.00
                           20.23      -0.00      -0.00      -0.00     -70.51      -0.00       0.00      -0.00      -0.00      78.02

   12  12.1  0.0  0.0      -0.00       0.01       0.00      -0.01       0.00      -0.00       0.00      -0.00    -101.00       0.00
                            0.01      -0.00       0.00      -0.00       0.01      -0.00      -0.00      -0.00      -0.00     101.00

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

   29   1.1  1.0  0.0      -2.70       0.00       0.00       0.00       0.36      -0.00       0.00      -0.00       0.00       5.11
                           -0.00      -2.70      -0.00      -0.36       0.00      -0.00       0.00      -0.00      -5.11       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       1.65       0.00       5.10       0.00       0.00
                           -0.00      -0.00      -2.16      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   31   3.1  1.0  0.0      -0.00       0.00      -2.16       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       1.65      -0.00       5.10       0.00       0.00

   32   4.1  1.0  0.0      -0.00      -2.51      -0.00       1.03      -0.00      -0.00      -0.00       0.00       5.10       0.00
                            2.51      -0.00       0.00      -0.00       1.03      -0.00      -0.00      -0.00       0.00       5.10

   33   5.1  1.0  0.0       0.00       0.29      -0.00       2.33      -0.00      -0.00      -0.00      -0.00       2.97       0.00
                            0.29      -0.00      -0.00      -0.00      -2.33      -0.00      -0.00      -0.00       0.00      -2.96

   34   6.1  1.0  0.0     -54.31      -0.00      -0.00      -0.00     -92.27      -0.00       0.00      -0.00      -0.00       0.02
                            0.00     -54.31      -0.00      92.27      -0.00       0.00      -0.00       0.00      -0.02       0.00

   35   7.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00     -16.62       0.00      -0.00      -0.00      -0.00
                            0.00       0.00     -75.75      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   36   8.1  1.0  0.0      -0.00      -0.00      75.75       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      16.61       0.00       0.00       0.00      -0.00

   37   9.1  1.0  0.0       0.00     -75.75      -0.00     -75.65       0.00       0.00      -0.00       0.00       0.01      -0.00
                           75.75       0.00      -0.00       0.00     -75.65       0.00       0.00       0.00      -0.00       0.01

   38  10.1  1.0  0.0      -0.00      -0.00      75.65      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00     130.08       0.00       0.03      -0.00       0.00

   39  11.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00     130.08       0.00       0.03       0.00       0.00
                            0.00       0.00      75.65       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   40  12.1  1.0  0.0      16.62      -0.00      -0.00      -0.00    -130.08       0.00       0.00      -0.00      -0.00       0.03
                           -0.00     -16.61      -0.00    -130.08      -0.00       0.00      -0.00       0.00       0.03       0.00

   41  13.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     -40.85       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      40.85

   42  14.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.03       0.00       0.00       0.00      -0.00    -153.92
                           -0.00      -0.00      -0.00      -0.03       0.00      -0.00      -0.00      -0.00    -153.92      -0.00

   43  15.1  1.0  0.0       0.00       0.00      -0.01       0.00      -0.00       0.00      40.85       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.03      -0.00     153.92      -0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.03      -0.00     153.92      -0.00      -0.00
                           -0.00       0.00      -0.01      -0.00       0.00      -0.00     -40.85       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       3.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.52       0.00      -3.81       0.00       0.00      -0.00       0.00       7.21       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.52      -0.00      -0.00      -0.00       3.81      -0.00      -0.00      -0.00      -0.00      -7.21

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       4.11      -0.00      -8.28      -0.00       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -151.44      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   51   7.1  1.0 -1.0   24211.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -222.28      -0.00      38.05      -0.00       0.00      -0.00      -0.00      -0.03       0.00

   52   8.1  1.0 -1.0       0.00   24211.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          222.28      -0.00      -0.00      -0.00      38.06      -0.00       0.00       0.00       0.00      -0.03

   53   9.1  1.0 -1.0       0.00       0.00   24211.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   24212.06       0.00       0.00       0.00       0.00       0.00       0.00
                          -38.05       0.00       0.00      -0.00      70.86       0.00      -0.00      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   24212.07       0.00       0.00       0.00       0.00       0.00
                            0.00     -38.06      -0.00     -70.86       0.00       0.00      -0.00       0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   24212.06       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.00       0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   26057.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.01       0.00     -57.78      -0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26074.77       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      57.78      -0.00       0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26074.80       0.00
                            0.03      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00     217.67

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26074.80
                           -0.00       0.03      -0.00      -0.00       0.00      -0.00      -0.00      -0.00    -217.67      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by  -8132.54527143 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   13477.137       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   13477.140       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   13477.145       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   13477.139       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   13477.147       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   25798.588       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   25798.587
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.000       0.000      79.516       0.000       0.000      -0.000     -13.358
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000     -79.520       0.000      13.350      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.002     140.106     -75.088       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      79.541      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000    -137.691      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000      28.154       0.000       0.000      -0.000      97.906
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      35.317       0.000     122.884       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.008      -4.964      32.991      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      28.150       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.024     -30.276     -14.239       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -4.472       0.000     -15.490      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000      -0.000     -21.795       0.000      -0.000      -0.000     -75.884
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000      -0.000     -69.196       0.000      -0.000       0.000     249.882
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+           -132.336     -37.680     -70.360      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000       0.000      -0.000     -69.191       0.000     249.888       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       5.044    -158.885       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000     -79.518       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      79.518       0.000       0.000       0.000     -13.353

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     159.024      -0.000     -26.604      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.041       0.000      -0.007       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.893      28.127      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       4.523      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       4.522      -0.000       0.000       0.000      15.679

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -28.123      -0.000     -97.900      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      35.312      -0.000       0.000      -0.000     122.894

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000     -35.312      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.027     -37.919      -1.204       0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -132.337      79.730       2.531      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -69.195      -0.000      -0.000       0.000     249.880

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      69.195       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000     -79.516       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002    -135.062     -83.823      -0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      79.520      -0.000     -13.350      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      79.471      -0.000       0.000      -0.000     -13.353

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     137.733      -0.000      -0.000       0.000     -23.078

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -28.154      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.008      -2.862     -33.240       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      35.317       0.000     122.884       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      28.150       0.000      -0.000       0.000      97.906

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       4.473      -0.000      15.491       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.024      31.119     -12.290      -0.000      -0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     -21.795      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.001

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000     -69.196      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      69.191      -0.000    -249.888      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              132.336      42.066     -67.828       0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.002       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     140.106       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000     -75.088       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      79.516       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000     -79.520      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      79.541
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      13.350       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000     -13.358      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           25798.618       0.000       0.000       0.000      -0.000      -0.000      16.209      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   25798.588       0.000       0.000       0.000       0.000       0.000      13.365
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   25798.645       0.000      -0.000      -0.000      21.137      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26826.196      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000      -0.000      -0.000   11308.341       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000   11308.370       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             16.209       0.000      21.137       0.000       0.000       0.000   11308.369       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      13.365      -0.000      -0.000       0.000       0.000       0.000   11308.437
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000     -23.071      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            115.941      -0.000      -1.601       0.008       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000     -97.906       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+            -31.632      -0.000     111.793      -0.020       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000      -0.001      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            228.846      -0.000    -175.911    -142.833       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               26.361       0.000      -3.488      -0.000       0.000      -0.000     -78.971      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000     -13.353       0.000       0.000       0.000       0.000       0.000     -78.927

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000      78.971      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      78.927       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000     136.786      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               97.036       0.000     -12.841      -0.000      -0.000       0.000      -3.067      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000     -15.682       0.000       0.000       0.000       0.000       0.000      -3.556

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       3.816       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       3.061       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.507       0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000     122.894      -0.000      -0.000      -0.000       0.000      -0.000      -1.455

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               17.278       0.000     130.572       0.022       0.000      -0.000      -2.335       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               37.878      -0.000     286.248    -142.841       0.000       0.000      -7.219       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       7.222      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000     249.880       0.000       0.000      -0.000       0.000      -0.000      -7.213

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -13.358       0.000       0.000       0.000       0.000       0.000     157.923

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               10.153       0.000     -24.626      -0.000      -0.000       0.000      78.969       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -78.969      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000    -157.923      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.041      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      97.906       0.000      -0.000      -0.000      -0.000      -0.000      -3.004

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -112.366      -0.000      28.612       0.008      -0.000      -0.000      -0.516      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.516      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       3.004       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -3.812      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -59.623      -0.000     -99.718       0.020      -0.000       0.000       3.812      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      75.884      -0.000      -0.000      -0.000       0.000      -0.000      -0.001

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -249.882      -0.000      -0.000      -0.000       0.000      -0.000       0.002

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       7.213      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              266.724       0.000     110.335     142.833      -0.000       0.000      -7.213      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000      -0.000       0.008      -0.000      -0.024       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000      -0.000      -4.964      -0.000     -30.276       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000      -0.000      -0.000      32.991      -0.000     -14.239       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      28.154      -0.000      -0.000      -0.000       0.000       0.000     -21.795
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      35.317      -0.000      -0.000       0.000      -4.472       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            -137.691       0.000       0.000      -0.000      28.150       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000      -0.000     122.884       0.000       0.000       0.000     -15.490      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000      97.906       0.000      -0.000       0.000       0.000      -0.000     -75.884
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000       0.000      -0.000     115.941       0.000     -31.632      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>             -23.071       0.000       0.000      -0.000     -97.906      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000      -0.000      -0.000      -1.601       0.000     111.793       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000      -0.000       0.008       0.000      -0.020       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          11308.479       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   24211.805       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   24211.817       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   24211.817       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   24211.977       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   24212.065       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   24212.066       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   24212.063
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -3.816      -0.000      -0.507       0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                             -136.786      -0.000      -0.000      -0.000      -3.061      -0.000      -0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       3.067      -0.000      -0.000      -0.000       0.000       0.000       2.335

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       3.556      -0.000       0.000      -0.000       1.455      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.408      -0.000      -0.000      -0.000      -3.292      -0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     -76.809      -0.000     130.490      -0.000       0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.408      -0.000       0.000       0.000    -107.133      -0.000      -0.000       0.000

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      76.809      -0.000       0.000      -0.000       0.000      -0.000      23.495

    9    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000     107.133       0.000       0.000       0.000    -106.987       0.000

   10    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000    -130.490       0.000      -0.000      -0.000       0.000      -0.000     183.964

   11    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                3.292       0.000       0.000       0.000     106.987       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000     -23.495      -0.000    -183.964      -0.000       0.000

   13    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.003      -0.000      -0.000      -0.000       0.007       0.000

   14    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.003      -0.000      -0.042       0.000      -0.000

   15    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.033       0.000      -0.000       0.000       0.000      -0.000      -0.038

   16    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                4.190      -0.000      -0.000       0.000      -0.017      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.041       0.000       0.000      -0.000      -3.004       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.516      -0.000       3.812      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.516       0.000       0.000       0.000      -3.812       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.004       0.000      -0.000       0.000      -0.000       0.000       0.001

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001       0.000       0.000      -0.000      -0.000       0.000      -4.108

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000       0.000     151.437       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     222.277       0.000     -38.053       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -222.277       0.000       0.000       0.000     -38.056       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -151.437      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      38.053      -0.000      -0.000       0.000     -70.864      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      38.056       0.000      70.864      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.108      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.008

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.280      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.026       0.000      -0.000       0.000      -0.001       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.026       0.000       0.001      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>              -0.000       0.000    -132.336       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |0 0>              -0.000       0.000     -37.680      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -5.044       0.000       0.000       0.000

    3    1  |0 0>              -0.000      -0.000     -70.360       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     158.885       0.000       0.000      -0.000

    4    1  |0 0>               0.000     -69.196      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     -79.518       0.000

    5    1  |0 0>               0.000       0.000      -0.000     -69.191       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    -159.024

    6    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      79.518      -0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000     249.888       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      26.604

    8    1  |0 0>              -0.000     249.882      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      13.353       0.000

    9    1  |0 0>               0.000       0.000     228.846       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -26.361       0.000      -0.000       0.000

   10    1  |0 0>              -0.001      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      13.353      -0.000       0.000

   11    1  |0 0>              -0.000       0.000    -175.911       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.488      -0.000       0.000      -0.000

   12    1  |0 0>               0.000      -0.000    -142.833       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     -78.971      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -78.927

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      78.971      -0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      78.927       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     136.786      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -3.067      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -3.556

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       3.816       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       3.061       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.507       0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -1.455

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -2.335       0.000

   13    1  |1 1>+          26057.004       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000   26074.768       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -7.219       0.000

   15    1  |1 1>+              0.000       0.000   26074.802       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       7.222      -0.000      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000   26074.802      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -7.213

    1    1  |1 0>               0.000       0.000      -0.000      -0.000   11308.341       0.000       0.000       0.000
                                0.000      -0.000      -7.222       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000   11308.370       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000   11308.369       0.000
                               -0.000       7.219       0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000   11308.437
                               -0.000      -0.000       0.000       7.213      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -4.190      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.033       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.003       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.003       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.017      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.042      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.007      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.038       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      57.775      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -217.679      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     217.679       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              -57.775       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      78.971      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -78.971       0.000       0.000      -0.000
                                0.000      -0.000      -7.213      -0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000     -78.997
                                0.000       0.000       0.000       7.213      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      78.997       0.000
                                0.000      -0.002      -0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000    -136.745       0.000
                                0.000       8.280       0.000      -0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       3.067       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       3.816      -0.000       0.000       0.000
                                0.000       0.000       0.026      -0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       3.556
                               -0.000      -0.000      -0.000       0.026      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       3.062       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -1.453
                                0.000       0.000      -0.000      -0.001       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.507       0.000       0.000       0.000
                                0.000      -0.000       0.001       0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -2.334       0.000       0.000
                                0.008       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      57.779       0.000      -0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -7.219      -0.000      -0.000
                              -57.779       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -7.211
                               -0.000       0.000      -0.000    -217.672      -0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000      -7.222      -0.000      -0.000      -0.000
                                0.000       0.000     217.672       0.000      -0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.027

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.893      -0.000      -0.000      -0.000      -0.000      -0.000      37.919

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -28.127       0.000      -0.000      -0.000      -0.000       0.000       1.204

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -4.522       0.000     -35.312      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.041       0.000      -0.000       0.000      28.123       0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -4.523      -0.000       0.000      -0.000      35.312      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007       0.000       0.000      -0.000      97.900       0.000       0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -15.679       0.000    -122.894       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -97.036      -0.000      -0.000       0.000      -0.000       0.000     -17.278

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      15.682      -0.000      -0.000      -0.000    -122.894      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      12.841      -0.000       0.000      -0.000      -0.000       0.000    -130.572

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.022

    1    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -3.816      -0.000      -0.507       0.000      -0.000

    2    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                             -136.786      -0.000      -0.000      -0.000      -3.061      -0.000      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       3.067      -0.000      -0.000      -0.000       0.000       0.000       2.335

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       3.556      -0.000       0.000      -0.000       1.455      -0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.408      -0.000      -0.000      -0.000      -3.292      -0.000

    6    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     -76.809      -0.000     130.490      -0.000       0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.408      -0.000       0.000       0.000    -107.133      -0.000      -0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      76.809      -0.000       0.000      -0.000       0.000      -0.000      23.495

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000     107.133       0.000       0.000       0.000    -106.987       0.000

   10    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000    -130.490       0.000      -0.000      -0.000       0.000      -0.000     183.964

   11    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                3.292       0.000       0.000       0.000     106.987       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000     -23.495      -0.000    -183.964      -0.000       0.000

   13    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.003      -0.000      -0.000      -0.000       0.007       0.000

   14    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.003      -0.000      -0.042       0.000      -0.000

   15    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.033       0.000      -0.000       0.000       0.000      -0.000      -0.038

   16    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                4.190      -0.000      -0.000       0.000      -0.017      -0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           11308.479       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   24211.805       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   24211.817       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   24211.817       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   24211.977       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   24212.065       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   24212.066       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   24212.063
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      -3.816       0.000       0.000       0.000       0.507      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000      -3.067       0.000       0.000       0.000      -0.000      -0.000       2.334
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-            136.745      -0.000      -0.000       0.000      -3.062       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>-             -0.000      -0.000      -0.000      -3.556      -0.000       1.453      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.406      -0.000       3.293      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>-             -0.000       0.000     -76.807      -0.000      -0.000      -0.000    -130.491      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-             -0.000      76.807       0.000       0.000      -0.000       0.000      -0.000     -23.498
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-             -0.406       0.000      -0.000       0.000     107.131       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000    -107.131       0.000    -106.989       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-             -3.293       0.000      -0.000      -0.000     106.989       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000     130.491       0.000      -0.000      -0.000       0.000       0.000     183.964
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000      23.498      -0.000      -0.000      -0.000    -183.964       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   13    1  |1 1>-              0.000      -0.000      -0.000       0.003       0.000      -0.007      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.003      -0.000      -0.000       0.000      -0.042       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   15    1  |1 1>-             -4.194       0.000       0.000       0.000      -0.017       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   16    1  |1 1>-             -0.000      -0.033       0.000       0.000       0.000       0.000      -0.000      -0.038
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     132.337      -0.000       0.000       0.000      -0.002      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -79.730      -0.000       0.000       0.000     135.062      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.531      -0.000      -0.000      -0.000      83.823       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      69.195      -0.000      -0.000       0.000       0.000     -79.471

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000     -79.520       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -69.195      79.516       0.000       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      13.350       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -249.880       0.000       0.000      -0.000       0.000      13.353

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -37.878       0.000      -0.000      -0.000     -10.153      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    -249.880      13.358      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -286.248      -0.000      -0.000      -0.000      24.626      -0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     142.841      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -7.222       0.000       0.000       0.000       0.000     157.923

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      78.969       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       7.219       0.000       0.000      -0.000     -78.969      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       7.213    -157.923      -0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -4.190      -0.041      -0.000       0.000      -0.000

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.033       0.000      -0.000      -0.000      -0.000      -3.004

    7    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.003       0.000      -0.000       0.000      -0.000      -0.000      -0.516      -0.000

    8    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.003       0.000      -0.000       0.000      -0.516      -0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.017       3.004       0.000      -0.000      -0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.042      -0.000       0.000      -0.000      -3.812      -0.000       0.000

   11    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.007      -0.000       0.000      -0.000      -0.000       0.000       3.812      -0.000

   12    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.038       0.000      -0.000       0.000      -0.000      -0.001

   13    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      57.775       0.000      -0.000      -0.000      -0.000

   14    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -217.679      -0.000      -0.000       0.000      -0.000       0.002

   15    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     217.679       0.000       0.000       0.000       7.213      -0.000       0.000

   16    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              -57.775       0.000      -0.000       0.000      -0.000       0.000      -7.213      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -78.971       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      78.971       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      78.997
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     -78.997       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     136.745      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -3.067      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -3.816       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -3.556
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -3.062      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       1.453
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.507      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       2.334      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>           26057.004       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000   26074.768       0.000       0.000      -0.000       7.219       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000   26074.802       0.000       0.000       0.000      -0.000       7.211
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000   26074.802       7.222       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000      -0.000       0.000       7.222   11308.341       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       7.219       0.000       0.000       0.000   11308.370       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000      -0.000       0.000       0.000       0.000   11308.369       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.000       0.000       7.211       0.000       0.000       0.000       0.000   11308.437
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.000      -0.000       4.194       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.000      -0.000       0.033       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000      -0.003      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.003       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000       0.000       0.017      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.007      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.042       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000      -0.000      -0.000       0.038       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000      -0.000     -57.775       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000      -0.000    -217.679       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             57.775       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             -0.000     217.679      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.008      -0.000      -0.000       0.000      -0.024      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       2.862       0.000      -0.000      -0.000     -31.119      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      33.240       0.000      -0.000      -0.000      12.290      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -137.733       0.000      -0.000      -0.000     -28.150      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -35.317      -0.000      -4.473       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      28.154       0.000      -0.000       0.000       0.000      -0.000      21.795

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    -122.884      -0.000     -15.491      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               23.078       0.000      -0.000      -0.000     -97.906      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     112.366       0.000      -0.000       0.000      59.623       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -97.906       0.000      -0.000       0.000       0.000       0.000     -75.884

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -28.612       0.000       0.000       0.000      99.718       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.008       0.000      -0.000       0.000      -0.020       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.041       0.000       0.000      -0.000      -3.004       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.516      -0.000       3.812      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.516       0.000       0.000       0.000      -3.812       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.004       0.000      -0.000       0.000      -0.000       0.000       0.001

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.001       0.000       0.000      -0.000      -0.000       0.000      -4.108

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000       0.000     151.437       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     222.277       0.000     -38.053       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -222.277       0.000       0.000       0.000     -38.056       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -151.437      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      38.053      -0.000      -0.000       0.000     -70.864      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      38.056       0.000      70.864      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.108      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.008

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -8.280      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.026       0.000      -0.000       0.000      -0.001       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.026       0.000       0.001      -0.000       0.000

    1    1  |1 0>              -0.000       0.000       3.816      -0.000      -0.000      -0.000      -0.507       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>              -0.000       3.067      -0.000      -0.000      -0.000       0.000       0.000      -2.334
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>            -136.745       0.000       0.000      -0.000       3.062      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       3.556       0.000      -1.453       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000      -0.000      -0.000      -0.406       0.000      -3.293       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000      76.807       0.000       0.000       0.000     130.491       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000     -76.807       0.000      -0.000       0.000      -0.000       0.000      23.498
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.406      -0.000       0.000       0.000    -107.131      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>              -0.000      -0.000      -0.000     107.131       0.000     106.989      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               3.293      -0.000       0.000       0.000    -106.989       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000    -130.491      -0.000       0.000       0.000      -0.000       0.000    -183.964
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 0>              -0.000      -0.000     -23.498       0.000       0.000       0.000     183.964       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   13    1  |1 0>              -0.000       0.000       0.000      -0.003      -0.000       0.007       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 0>              -0.000      -0.000      -0.003       0.000       0.000      -0.000       0.042      -0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>               4.194      -0.000      -0.000      -0.000       0.017      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.033      -0.000      -0.000      -0.000      -0.000       0.000       0.038
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          11308.479       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   24211.805       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   24211.817       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   24211.817       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   24211.977       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   24212.065       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   24212.066       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   24212.063
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
                               -0.000       0.000       0.000    -132.336

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -42.066

    3    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      67.828

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000     -69.191      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      69.196       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000     249.888      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                                0.001      -0.000       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    -266.724

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     249.882      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    -110.335

   12    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -142.833

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -7.213      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       7.213

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.002      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       8.280       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.026      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.026

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.001

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.001       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.008       0.000      -0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      57.779       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                              -57.779       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -217.672

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000     217.672       0.000

    1    1  |1 0>              -0.000       0.000      -0.000      -7.222
                               -0.000      -0.000       0.000       0.000

    2    1  |1 0>              -0.000      -7.219      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000      -0.000      -7.211      -0.000
                               -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000      -4.194      -0.000
                               -0.000      -0.000       0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.033
                                0.000       0.000      -0.000       0.000

    7    1  |1 0>              -0.000       0.003       0.000       0.000
                               -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.003      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000      -0.000      -0.017       0.000
                                0.000       0.000      -0.000      -0.000

   10    1  |1 0>              -0.007       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.042      -0.000      -0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 0>              -0.000       0.000       0.000      -0.038
                                0.000      -0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000      57.775      -0.000
                                0.000      -0.000       0.000       0.000

   14    1  |1 0>              -0.000       0.000       0.000     217.679
                               -0.000       0.000       0.000      -0.000

   15    1  |1 0>             -57.775      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000    -217.679       0.000       0.000
                                0.000      -0.000       0.000       0.000

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

   13    1  |1 1>-          26057.004       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   26074.768       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   26074.802       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26074.802
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.54528077    -0.00000934       -2.05      0.00000000        0.00      0.0000
    2 -8132.49482598     0.05044545    11071.50      0.05045479    11073.55      1.3729
    3 -8132.49482598     0.05044545    11071.50      0.05045479    11073.55      1.3729
    4 -8132.49482588     0.05044555    11071.52      0.05045488    11073.57      1.3729
    5 -8132.49418336     0.05108807    11212.54      0.05109741    11214.59      1.3904
    6 -8132.49418324     0.05108819    11212.56      0.05109753    11214.61      1.3904
    7 -8132.49418307     0.05108836    11212.60      0.05109770    11214.65      1.3904
    8 -8132.49418299     0.05108844    11212.62      0.05109778    11214.67      1.3904
    9 -8132.49418298     0.05108844    11212.62      0.05109778    11214.67      1.3904
   10 -8132.49302713     0.05224430    11466.30      0.05225363    11468.35      1.4219
   11 -8132.49302709     0.05224434    11466.31      0.05225368    11468.36      1.4219
   12 -8132.49302709     0.05224434    11466.31      0.05225368    11468.36      1.4219
   13 -8132.49302704     0.05224439    11466.32      0.05225373    11468.37      1.4219
   14 -8132.49302694     0.05224449    11466.34      0.05225382    11468.39      1.4219
   15 -8132.49302694     0.05224449    11466.34      0.05225383    11468.39      1.4219
   16 -8132.49302688     0.05224455    11466.35      0.05225388    11468.40      1.4219
   17 -8132.48379360     0.06147783    13492.82      0.06148716    13494.87      1.6732
   18 -8132.48379356     0.06147787    13492.83      0.06148720    13494.88      1.6732
   19 -8132.48379351     0.06147792    13492.84      0.06148726    13494.89      1.6732
   20 -8132.48379349     0.06147794    13492.85      0.06148727    13494.90      1.6732
   21 -8132.48379348     0.06147795    13492.85      0.06148728    13494.90      1.6732
   22 -8132.43643144     0.10883999    23887.62      0.10884933    23889.67      2.9619
   23 -8132.43643116     0.10884027    23887.68      0.10884961    23889.73      2.9619
   24 -8132.43643088     0.10884055    23887.74      0.10884989    23889.79      2.9620
   25 -8132.43643070     0.10884073    23887.78      0.10885006    23889.83      2.9620
   26 -8132.43643070     0.10884073    23887.78      0.10885006    23889.83      2.9620
   27 -8132.43529911     0.10997232    24136.13      0.10998166    24138.18      2.9928
   28 -8132.43529911     0.10997232    24136.13      0.10998166    24138.18      2.9928
   29 -8132.43529888     0.10997255    24136.19      0.10998189    24138.23      2.9928
   30 -8132.43529844     0.10997299    24136.28      0.10998233    24138.33      2.9928
   31 -8132.43529844     0.10997299    24136.28      0.10998233    24138.33      2.9928
   32 -8132.43529838     0.10997305    24136.30      0.10998239    24138.34      2.9928
   33 -8132.43529817     0.10997326    24136.34      0.10998260    24138.39      2.9928
   34 -8132.43391935     0.11135208    24438.96      0.11136142    24441.01      3.0303
   35 -8132.43391935     0.11135208    24438.96      0.11136142    24441.01      3.0303
   36 -8132.43391912     0.11135230    24439.01      0.11136164    24441.06      3.0303
   37 -8132.43391912     0.11135231    24439.01      0.11136164    24441.06      3.0303
   38 -8132.43391875     0.11135268    24439.09      0.11136202    24441.14      3.0303
   39 -8132.43391857     0.11135286    24439.13      0.11136219    24441.18      3.0303
   40 -8132.43391835     0.11135307    24439.18      0.11136241    24441.22      3.0303
   41 -8132.43391835     0.11135308    24439.18      0.11136242    24441.23      3.0303
   42 -8132.43391825     0.11135318    24439.20      0.11136252    24441.25      3.0303
   43 -8132.42866614     0.11660529    25591.90      0.11661463    25593.95      3.1732
   44 -8132.42847930     0.11679213    25632.91      0.11680147    25634.96      3.1783
   45 -8132.42847908     0.11679235    25632.96      0.11680169    25635.01      3.1783
   46 -8132.42847905     0.11679238    25632.96      0.11680172    25635.01      3.1783
   47 -8132.42847901     0.11679242    25632.97      0.11680176    25635.02      3.1783
   48 -8132.42847900     0.11679243    25632.97      0.11680176    25635.02      3.1783
   49 -8132.42759057     0.11768086    25827.96      0.11769020    25830.01      3.2025
   50 -8132.42759057     0.11768086    25827.96      0.11769020    25830.01      3.2025
   51 -8132.42759046     0.11768097    25827.99      0.11769030    25830.04      3.2025
   52 -8132.42641417     0.11885726    26086.15      0.11886659    26088.20      3.2345
   53 -8132.42641417     0.11885726    26086.15      0.11886659    26088.20      3.2345
   54 -8132.42641417     0.11885726    26086.15      0.11886660    26088.20      3.2345
   55 -8132.42461700     0.12065443    26480.59      0.12066376    26482.63      3.2834
   56 -8132.42461700     0.12065443    26480.59      0.12066376    26482.64      3.2834
   57 -8132.42461694     0.12065449    26480.60      0.12066382    26482.65      3.2834
   58 -8132.42461661     0.12065482    26480.67      0.12066416    26482.72      3.2834
   59 -8132.42461597     0.12065546    26480.81      0.12066479    26482.86      3.2835
   60 -8132.42281636     0.12245507    26875.78      0.12246440    26877.83      3.3324

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99996004 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000030  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00324191  0.08564665 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.08565903  0.00324168  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000753  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.08574888
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000012  0.00000000 -0.00000000 -0.08575223 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000766 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00226368  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000178 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00226726
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00224218  0.00028346 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000178  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00028277  0.00224716 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00008244  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.54782511 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.40678794
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.54778646  0.00000000 -0.00000000 -0.40680996 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000114  0.00000000  0.00000000 -0.00000020 -0.00000000

   3    1  |1 1>+          0.00000022 -0.00000000 -0.00000000  0.00000000  0.41100459 -0.70201051  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000003 -0.54759886  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000014
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000002 -0.31624716  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000024
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000267 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002187
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000188  0.00000000 -0.00000000 -0.00002775 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000031  0.00000000 -0.00000000  0.00000000  0.00002483 -0.00000439  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000236  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000098  0.00000000 -0.00000000  0.00000000 -0.00000816 -0.00002322  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000048 -0.00000000  0.00000000  0.00000159 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000147  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00001939
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000344  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00044442 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00101259
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00516125  0.00000000  0.00000000 -0.00000000  0.00101094  0.00059155 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00044652  0.00000000 -0.00000000 -0.00101459 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000002 -0.00000000 -0.00000000 -0.00000000  0.81349956  0.00495933  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000003 -0.54773151  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000014

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.54773242  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.40692536

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000040 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00016322 -0.00000000  0.00000000  0.81341959  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000131 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.63234319  0.00000000  0.00000000  0.00021010  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00002385  0.00000014  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000107 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000107  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000321

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00002363  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000247  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002891

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000247  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000114  0.00000000  0.00000000 -0.00000000  0.00000016 -0.00002653  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000342 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00516131 -0.00000000  0.00000000  0.00000000  0.00000714 -0.00117127  0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00044517  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00101621

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00044516  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000003  0.54782572 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000014

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000020  0.00000000 -0.00000000 -0.00000000  0.40241588  0.70696789 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000114  0.00000000  0.00000000 -0.00000020 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.54778796 -0.00000000  0.00000000  0.40680899  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.54776087 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.40646301

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.31596595  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.70453040

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000267  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000031  0.00000000 -0.00000000 -0.00000000 -0.00002478 -0.00000470 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000188  0.00000000 -0.00000000 -0.00002775 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000236 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002176

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000047  0.00000000 -0.00000000 -0.00000159 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000098  0.00000000  0.00000000 -0.00000000 -0.00000844  0.00002313 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000147 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000344  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00044442  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00044652 -0.00000000  0.00000000  0.00101459  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00516125 -0.00000000 -0.00000000  0.00000000  0.00101807 -0.00057918  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00001165 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000003 -0.00000000  0.00000928 -0.00000000  0.00000000  0.00001031 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000670 -0.00000000  0.00000000  0.00000017
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.08574857 -0.00000000 -0.00000000 -0.00000926 -0.00000000 -0.00000000 -0.00001007 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000366  0.00000000 -0.00000000 -0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000024 -0.00000000 -0.00000000  0.00000215 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000015  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00226728 -0.00000000  0.00000000  0.00000024 -0.00000000  0.00000000  0.00000216 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000014  0.00000000  0.73019188 -0.00000026 -0.00000000 -0.00200915  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57527521  0.00000000 -0.00000000  0.44974095
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000  0.00000000  0.00000034

   3    1  |1 1>+         -0.00000000  0.57736792 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.40682460 -0.00000000  0.00000023  0.63907766  0.00000000 -0.00000001 -0.35352666  0.00000000
                          -0.00000000  0.00000000  0.00000002  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.70432207 -0.00000000 -0.00000006 -0.15815220  0.00000000 -0.00000002 -0.61255786 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00010663 -0.00000000  0.00000000 -0.00025533  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00013830  0.00000000  0.00000000 -0.00004371
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00019740  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00002176 -0.00000000  0.00000000  0.00021736 -0.00000000  0.00000000  0.00017084  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00019678  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00024147  0.00000000 -0.00000000  0.00033472
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00008581  0.00000000  0.00000000 -0.00032855  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000003  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000052  0.00000000  0.00000000 -0.00000222  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000026 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000157
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.57731359  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.40692554  0.00000000  0.00000006  0.18271066 -0.00000000  0.00000003  0.70695934  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000014  0.00000000  0.18450215 -0.00000006 -0.00000000  0.70649331 -0.00000003 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.57743903 -0.00000000 -0.00000000  0.00241242

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000059
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00335583  0.00000000 -0.00000000  0.77468089

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00027952 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000321 -0.00000000  0.00000000  0.00039418  0.00000000 -0.00000000 -0.00011899  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00039388  0.00000000  0.00000000  0.00011999 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00027907  0.00000000  0.00000000 -0.00000126

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00008554 -0.00000000 -0.00000000  0.00011829 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002892  0.00000000  0.00000000  0.00008524 -0.00000000  0.00000000  0.00011850  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000126 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00101621 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000126 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000002 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.40678711 -0.00000000  0.00000026  0.73019464  0.00000000 -0.00000000 -0.00015802  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.57736909 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000034
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57931952  0.00000000 -0.00000000  0.44451833

   4    1  |1 1>-          0.00000000  0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000014 -0.00000000 -0.63809714  0.00000023  0.00000000  0.35546057 -0.00000001 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000024 -0.00000000 -0.16003309  0.00000006  0.00000000 -0.61197280  0.00000002  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002186 -0.00000000  0.00000000  0.00010728  0.00000000 -0.00000000 -0.00025506 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00019740 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00013869  0.00000000  0.00000000  0.00004245

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00021779  0.00000000  0.00000000 -0.00017030  0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00023842  0.00000000 -0.00000000  0.00033689

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00019678  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001939  0.00000000  0.00000000  0.00008497 -0.00000000  0.00000000  0.00032877  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00101259  0.00000000  0.00000000  0.00000052  0.00000000  0.00000000  0.00000222 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000157

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000026  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000023
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.99609087 -0.01918926 -0.00000000  0.00000000  0.00000000  0.00016223  0.00000000 -0.00539318
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.01918930  0.99608984  0.00000000  0.00000000  0.00000000 -0.00537975  0.00000000 -0.00016270
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000001  0.99627221  0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.99627193 -0.00000001 -0.00000000  0.00000000  0.00537075  0.00000000
                           0.00000000  0.00000000 -0.00000032  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.99627224 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00010176 -0.00000000 -0.00000000 -0.00000000 -0.10732948 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00010215  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00001472  0.00010066  0.00000000  0.00000000  0.00000000  0.10647217 -0.00000000 -0.01428651
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00010215 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00010155 -0.00001461  0.00000000 -0.00000000 -0.00000000 -0.01426051  0.00000000 -0.10666764
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000199
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.03501084  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.03501288  0.00000000  0.00000000 -0.00000000 -0.00031858 -0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.06104117 -0.03424379 -0.00000000  0.00000000  0.00000000  0.00031497  0.00000000 -0.00054809
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.03502309 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.06062815  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00271423 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00340476  0.00000000  0.00000000  0.00000000  0.60882970  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000034  0.00000000

   8    1  |1 1>+          0.00041737 -0.00318904 -0.00000000 -0.00000000 -0.00000000 -0.56982690  0.00000000  0.06823891
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00271375 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00294458  0.00131577 -0.00000000  0.00000000  0.00000000  0.22810900 -0.00000000  0.52670268
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00043088 -0.00000000 -0.00000000 -0.00000000 -0.07675912 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00210144  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00532499  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00300324  0.00535737  0.00000000  0.00000000  0.00000000 -0.01133998  0.00000000 -0.00654202
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00532439 -0.00000000 -0.00000000  0.00000000  0.01130136  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00087304 -0.06998603 -0.00000000 -0.00000000 -0.00000000  0.00063160 -0.00000000 -0.00000100

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.03501213  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.03501213  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.07002015 -0.00000000 -0.00000000  0.00000000  0.00063034  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00001785 -0.00000000 -0.00000000 -0.00000000  0.00000016 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00003382 -0.00271321 -0.00000000 -0.00000000 -0.00000000 -0.48499050  0.00000000  0.00076580

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00043598 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00043590 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000027  0.00000000
                           0.00000000 -0.00000000  0.00271144 -0.00000000 -0.00000000 -0.00000000 -0.48483404 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00340442 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00340440  0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00365673  0.00004561 -0.00000000  0.00000000  0.00000000  0.00102798 -0.00000000  0.65074726

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00613783 -0.00007655  0.00000000 -0.00000000 -0.00000000  0.00002067 -0.00000000  0.01311636

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00532452  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00532453  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.03501071  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.06016843 -0.03575568  0.00000000 -0.00000000 -0.00000000  0.00031670 -0.00000000  0.00054709

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.03501275 -0.00000000 -0.00000000  0.00000000  0.00031859  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.03499192  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.06064651  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00271423  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00033776  0.00319845  0.00000000  0.00000000  0.00000000  0.57003559 -0.00000000  0.06644465

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000034 -0.00000000
                          -0.00000000  0.00000000 -0.00340477  0.00000000  0.00000000  0.00000000  0.60882869  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00271377 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000
                          -0.00000000  0.00000000 -0.00043093  0.00000000  0.00000000  0.00000000  0.07676921  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00297648  0.00124197  0.00000000 -0.00000000 -0.00000000  0.22645134  0.00000000 -0.52741857

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00210145  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00532500 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                          -0.00000000  0.00000000 -0.00532438  0.00000000  0.00000000 -0.00000000 -0.01130135 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00313592  0.00528079  0.00000000  0.00000000  0.00000000 -0.01131924  0.00000000  0.00657795

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000154 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00537250  0.00000000  0.00000134 -0.00000000 -0.00000000 -0.00000023 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000162
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00537249 -0.00000000  0.00000135  0.00000000 -0.00000000 -0.00000023  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00001558
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.10734979 -0.00000004 -0.00001869 -0.00000000  0.00000000  0.00006139  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001684 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000004 -0.10734985 -0.00000000  0.00001872  0.00000000  0.00000000 -0.00006157 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000198 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00031641  0.00000000  0.00030328  0.00000000  0.00000000  0.00017245  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00028009
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00027919  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00031686  0.00000000 -0.00034810  0.00000000  0.00000000 -0.00000738 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00054777  0.00000000 -0.00008039 -0.00000000 -0.00000000  0.00029426  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.48530847  0.00000017 -0.46198888 -0.00000001  0.00000000  0.34613056  0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000004  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.29385601
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000273

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.40843143  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000017 -0.48511876 -0.00000000  0.21939677 -0.00000000 -0.00000002  0.53383010  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.40780721  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.48840349
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000453

  12    1  |1 1>+         -0.37556443 -0.00000013 -0.18779287 -0.00000000  0.00000000  0.68173201  0.00000002  0.00000000
                          -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000021 -0.00000000  0.00000192 -0.00000000  0.00000000 -0.00000125 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.01129697  0.00000000  0.00000118 -0.00000000 -0.00000000 -0.00000117 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000601 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001020
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00027859 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00031911 -0.00000000  0.00009346  0.00000000  0.00000000 -0.00033826 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00031911  0.00000000 -0.00009334 -0.00000000  0.00000000  0.00033830  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00027841

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000483

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.57771462 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000003 -0.07771138 -0.00000001  0.83790667 -0.00000000 -0.00000001  0.19327585  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000007  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.07770021  0.00000003  0.83797834  0.00000001  0.00000000  0.19297408  0.00000001  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000536
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.57762560

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.60847514  0.00000021 -0.02952041 -0.00000000 -0.00000000 -0.30546054 -0.00000001 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000021  0.60847235 -0.00000000  0.02942338 -0.00000000 -0.00000001  0.30547430  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000263  0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01129016  0.00000000  0.00000446  0.00000000  0.00000000 -0.00000483 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.01129017 -0.00000000 -0.00000444  0.00000000  0.00000000  0.00000485  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00031641  0.00000000 -0.00030322  0.00000000  0.00000000 -0.00017256 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00027919  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00027458

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00031658  0.00000000 -0.00034814 -0.00000000  0.00000000 -0.00000710 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00054794  0.00000000  0.00008010  0.00000000 -0.00000000 -0.00029430 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000017  0.48530766 -0.00000001  0.46211704  0.00000000  0.00000001 -0.34596277 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.40843807 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000271
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.29156350

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.48511772  0.00000017  0.21959219  0.00000000  0.00000000  0.53375062  0.00000002  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000470
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.50640876

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.40780017  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000013  0.37556631  0.00000000 -0.18804081 -0.00000000 -0.00000002  0.68166329  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000021  0.00000000 -0.00000191  0.00000000  0.00000000  0.00000125  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.01129696 -0.00000000  0.00000124 -0.00000000  0.00000000 -0.00000117  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001024

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000602 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000066  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000129  0.00000000 -0.00000000 -0.00000000  0.00000030  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000863 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000028  0.00000000 -0.00000000 -0.00000000  0.00000037
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000002  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000193 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000030  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000030 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00002672  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00002513  0.00000000 -0.00000000 -0.00000000 -0.00001687
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000084 -0.00000000  0.00000000  0.00000000  0.00013263  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00002488 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000535  0.00000000  0.00000000 -0.00000000 -0.00001731 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00000743  0.00000000 -0.00000000 -0.00000000  0.00000015  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000138  0.00000000 -0.00000000 -0.00000000  0.00000206
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00021106 -0.00000000 -0.00000150  0.00000000 -0.00000000  0.00000000  0.00000070  0.00000000
                           0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000157  0.00000000  0.00000000 -0.00000000 -0.00000131 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000140 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000044 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.62313500  0.00000002  0.00000000 -0.00000000 -0.20032268
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.08588159 -0.00000001 -0.70130000  0.00000000  0.00000000 -0.00000000  0.19837126  0.00000000
                           0.00000225  0.00000000 -0.00030073  0.00000000  0.00000000  0.00000000  0.00001506  0.00000000

   8    1  |1 1>+         -0.00000000  0.70370221 -0.00000001 -0.00000000  0.00000000 -0.06684888 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000002  0.60026787  0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.06048471  0.00000000 -0.00000000 -0.00000000  0.53285869  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.70772841 -0.00000000 -0.08990157 -0.00000000  0.00000000  0.00000000 -0.49652574 -0.00000000
                          -0.00001855  0.00000000 -0.00003855  0.00000000  0.00000000 -0.00000000 -0.00003770  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.03001533 -0.00000000 -0.00000000 -0.00000000  0.59693996
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

  13    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000171 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000081 -0.00000000 -0.00000000  0.00000000 -0.00001981
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00001272  0.00000000  0.00000000 -0.00000000 -0.00000788  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000096 -0.00000000 -0.00001322  0.00000000  0.00000000 -0.00000000 -0.00001206 -0.00000000
                           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000168 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000028  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000027  0.00000000  0.00000000 -0.00000000 -0.00000165

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000367 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000276 -0.00000000

   5    1  |1 0>          -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00037025  0.00000000  0.00000144 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00004911 -0.00000000 -0.00000000 -0.00000000  0.65437869  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000002 -0.49062294 -0.00000000  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.49057853  0.00000002 -0.00000000 -0.00000000  0.11737327

   9    1  |1 0>           0.00000019 -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000000 -0.00004969  0.00000000
                           0.00741809  0.00000000  0.00033392  0.00000000 -0.00000000 -0.00000000  0.65453674  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.09967424 -0.00000000 -0.00000000 -0.00000000  0.72195341

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.09940245 -0.00000000 -0.00000000  0.00000002

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.04759284  0.00000000  0.00000000  0.00000000 -0.00385681  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000456 -0.00000000  0.00000400 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000522 -0.00000000  0.00000000  0.00000000  0.00000011  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00001075 -0.00000000 -0.00000000 -0.00000000  0.00002615

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001069 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000139 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000157 -0.00000000  0.00000000  0.00000000 -0.00000130 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00021818 -0.00000000 -0.00000150  0.00000000  0.00000000  0.00000000 -0.00000070  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000140 -0.00000000 -0.00000000 -0.00000000  0.00000233

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000044 -0.00000000  0.00000000  0.00000000 -0.00000204

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000002  0.62305664  0.00000000  0.00000000 -0.00000001

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.70371178 -0.00000001 -0.00000000  0.00000000  0.06688164 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000245  0.00000000 -0.00030082  0.00000000  0.00000000  0.00000000 -0.00001501  0.00000000
                           0.09338747  0.00000001  0.70150307 -0.00000000 -0.00000000  0.00000000  0.19764627  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.60016631 -0.00000002  0.00000000  0.00000000 -0.26180204

  10    1  |1 1>-          0.00001822 -0.00000000  0.00003833  0.00000000  0.00000000 -0.00000000 -0.00003770  0.00000000
                           0.69495926 -0.00000000 -0.08938213  0.00000000  0.00000000 -0.00000000  0.49661719  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.06057605 -0.00000000  0.00000000 -0.00000000  0.52810351  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.02978569  0.00000000  0.00000000 -0.00000002

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000172 -0.00000000  0.00000000 -0.00000000  0.00000721

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000074 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000064 -0.00000000 -0.00001322  0.00000000  0.00000000 -0.00000000  0.00001204 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00001268 -0.00000000 -0.00000000  0.00000000 -0.00000819 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000  0.00000221 -0.00878146 -0.00000221  0.00000016  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000128  0.00000046 -0.00422387  0.00011914  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000009  0.00000002  0.00011904  0.00422294  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00422633  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00422591 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000017 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000038  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00422634
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001  0.87708242 -0.00000004 -0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00003550 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000004  0.87707906  0.00000029
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000096 -0.00002482  0.16690359  0.86100542  0.00000000 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00001715 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000029  0.87707879
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000183 -0.00021046  0.86091056 -0.16690903 -0.00000001  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00001984  0.19652139  0.00004909 -0.00000365 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094169 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00094087 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000107 -0.00000067  0.00168073  0.00083861 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000233  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00094198
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000205  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00162624
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.04986297  0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.06259395 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000253 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.01472938  0.00001106  0.01044365  0.05814300  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.26156899 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.04987611
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.46118085 -0.00003830  0.05285071 -0.02668008 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00788775  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.03865536 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000721 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001361
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.33188617 -0.00000011
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00002713  0.56601232  0.17160130 -0.34279668 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.33185420  0.00000002  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00001343  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000001  0.00000000  0.00011235  0.00187251  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000165  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00094120

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094119 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000008 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00187635  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000048  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00334669  0.00000016  0.00298543  0.04976073  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.11719512  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00798599

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00798469  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000202 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.04988847  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.06260935  0.00000002

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.72199137 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.06260930

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.75442711  0.00002384  0.06698346 -0.00401845 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00003281  0.56617966 -0.38252816  0.02294932  0.00000000 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.33182653 -0.00000011

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00002620 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000011 -0.33182721

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000207 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00094170

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000109  0.00000067 -0.00156841  0.00103355  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00094086  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094114 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00162672 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.20056246  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.04986294

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.01405350  0.00001069  0.00341778 -0.05897431 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000253  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.06259387 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.04987630  0.00000002

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00788863 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.46661151  0.00003817 -0.05566186 -0.02017108  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.59695069  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.03865553

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001364  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001980 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000011  0.33188620

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00001343  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.33185354 -0.00000002 -0.00000001

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00002702 -0.56601486 -0.21135361 -0.31981579 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000009  0.00000000 -0.00000000 -0.00000007 -0.00000000  0.00000001 -0.00648761
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000009  0.00000000 -0.00000000  0.00000006 -0.00000000  0.00000000  0.00648762  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000054 -0.00000000  0.00000000  0.00000019 -0.00000001 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00004973 -0.00000000  0.00000000  0.00000507 -0.00000000 -0.00000061  0.46819140
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00004920  0.00000000 -0.00000000  0.00000488 -0.00000000 -0.00000000  0.46819190  0.00000061
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00032598 -0.00000000 -0.00000000 -0.00011428  0.00000000  0.00000000 -0.00014332
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00032549  0.00000000  0.00000000  0.00011415 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000054  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00032550  0.00000000  0.00000000  0.00011411 -0.00000000 -0.00000000  0.00014380  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00018445  0.00000000  0.00000000  0.00006469 -0.00000000 -0.00000000 -0.00024779 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00001208 -0.00000000 -0.00000000 -0.00000386  0.00000000 -0.00000002  0.01776069
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00001322  0.00000000 -0.00000000 -0.00000217 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000467  0.00000000  0.00000000  0.00000184 -0.00000000 -0.00000000 -0.01775802 -0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000205  0.00000000  0.00000000  0.00000305  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00001793  0.00000000  0.00000000  0.00000113 -0.00000000  0.00000002 -0.01377162
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.33600189 -0.00000064 -0.00000000  0.94186131 -0.00000197 -0.00000003  0.00000004 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000127 -0.66599543  0.00000001  0.00000050  0.23759388 -0.00000002 -0.00000081  0.62425444
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000001  0.66599050  0.00000001  0.00000002  0.23760331 -0.00000001 -0.00000001
                          -0.00000000 -0.00000000  0.00110013  0.00000000  0.00000000  0.00003394  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00032581  0.00000000  0.00000000  0.00011423 -0.00000000 -0.00000000 -0.00014323 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00032582  0.00000000  0.00000000  0.00011423 -0.00000000  0.00000000 -0.00014322

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000010 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000063  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00037844 -0.00000000 -0.00000000 -0.00013270 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000126 -0.00000000  0.00000000 -0.00000176  0.00000000  0.00000000 -0.00284414 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000132 -0.00000000  0.00000000  0.00000178 -0.00000000 -0.00000000  0.00284373

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00002569  0.00000000  0.00000000  0.00000276 -0.00000000 -0.00000003  0.02229778

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00002568  0.00000000 -0.00000000  0.00000276 -0.00000000 -0.00000000  0.02229781  0.00000003

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00055506 -0.00000000 -0.00000000 -0.00013455 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.33602135  0.00000003  0.00000007  0.94185420  0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000127  0.66599719 -0.00000001 -0.00000050 -0.23758488  0.00000002 -0.00000081  0.62428781

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000
                           0.66599731 -0.00000127 -0.00000000 -0.23758474  0.00000050  0.00000001  0.62428737  0.00000081

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00032597 -0.00000000 -0.00000000 -0.00011428  0.00000000  0.00000000 -0.00014333 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000054 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00032549  0.00000000  0.00000000  0.00011415  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00032560 -0.00000000 -0.00000000 -0.00011415  0.00000000  0.00000000 -0.00014368

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00018428  0.00000000  0.00000000  0.00006463 -0.00000000  0.00000000 -0.00024786

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001209 -0.00000000 -0.00000000 -0.00000387  0.00000000  0.00000000  0.01776070  0.00000002

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00001328  0.00000000  0.00000000  0.00000219 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000463 -0.00000000 -0.00000000 -0.00000183  0.00000000 -0.00000002  0.01775803

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000200  0.00000000  0.00000000  0.00000306 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001796 -0.00000000 -0.00000000 -0.00000114  0.00000000  0.00000000  0.01377171  0.00000002

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00000064  0.33600219 -0.00000001  0.00000197  0.94186121 -0.00000007  0.00000000 -0.00000001

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                           0.66599546 -0.00000127 -0.00000000 -0.23759361  0.00000050  0.00000001 -0.62425450 -0.00000081

  15    1  |1 1>-          0.00000000  0.00000000 -0.00110012 -0.00000000 -0.00000000 -0.00003394  0.00000000 -0.00000000
                           0.00000000  0.00000001  0.66599041  0.00000001  0.00000002  0.23760319  0.00000001  0.00000001

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000013  0.00167599
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00023879  0.00647092  0.00000010
                           0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00647616  0.00023864  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00648731  0.00000000  0.00000000  0.00000000
                           0.00000054 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.46818979 -0.00000000 -0.00000000  0.00000000
                          -0.00003895  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000001  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.46451992  0.05906392 -0.00000032
                           0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000001  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.05904849  0.46465161 -0.00000249
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000005  0.00000247  0.98049953
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00014341 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00014311  0.00024639  0.00000005
                           0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.02228983 -0.00000000 -0.00000000  0.00000000
                          -0.00000185  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.02088949  0.00235836  0.00000238
                           0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00825323  0.01938318 -0.00000606
                           0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00280851  0.00000000  0.00000000 -0.00000000
                           0.00000023  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000001  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.62239131 -0.36358401 -0.11345518
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.62427206 -0.00000000 -0.00000000  0.00000000
                          -0.00005194  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00028290 -0.00000145 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000002  0.00000000 -0.00000000 -0.00000000
                           0.00028402  0.00000000  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000007 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.01772803 -0.00009092 -0.00000003

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000148  0.00000000 -0.00000000  0.00000000
                           0.01774389  0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00012236  0.02388310  0.00000538

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000005  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00369367  0.72073646 -0.11346236

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00014058 -0.00024785 -0.00000005

   3    1  |1 1>-         -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00014341  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.02086412  0.00257281  0.00000236

   8    1  |1 1>-          0.00000185 -0.00000000  0.00000000 -0.00000000
                          -0.02228979 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-          0.00000023 -0.00000000  0.00000000 -0.00000000
                          -0.00280885 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00845168 -0.01929757  0.00000600

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00005194  0.00000000 -0.00000000  0.00000000
                           0.62427255  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.62608489  0.35718792  0.11345516


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1  -8132.54528077     -0.00000934       -2.05      0.00000000        0.00      0.0000
   2   1  -8132.49482598      0.05044545    11071.50      0.05045479    11073.55      1.3729
   3   1  -8132.49482598      0.05044545    11071.50      0.05045479    11073.55      1.3729
   4   1  -8132.49482588      0.05044555    11071.52      0.05045488    11073.57      1.3729
   5   1  -8132.49418336      0.05108807    11212.54      0.05109741    11214.59      1.3904
   6   1  -8132.49418324      0.05108819    11212.56      0.05109753    11214.61      1.3904
   7   1  -8132.49418307      0.05108836    11212.60      0.05109770    11214.65      1.3904
   8   1  -8132.49418299      0.05108844    11212.62      0.05109778    11214.67      1.3904
   9   1  -8132.49418298      0.05108844    11212.62      0.05109778    11214.67      1.3904
  10   1  -8132.49302713      0.05224430    11466.30      0.05225363    11468.35      1.4219
  11   1  -8132.49302709      0.05224434    11466.31      0.05225368    11468.36      1.4219
  12   1  -8132.49302709      0.05224434    11466.31      0.05225368    11468.36      1.4219
  13   1  -8132.49302704      0.05224439    11466.32      0.05225373    11468.37      1.4219
  14   1  -8132.49302694      0.05224449    11466.34      0.05225382    11468.39      1.4219
  15   1  -8132.49302694      0.05224449    11466.34      0.05225383    11468.39      1.4219
  16   1  -8132.49302688      0.05224455    11466.35      0.05225388    11468.40      1.4219
  17   1  -8132.48379360      0.06147783    13492.82      0.06148716    13494.87      1.6732
  18   1  -8132.48379356      0.06147787    13492.83      0.06148720    13494.88      1.6732
  19   1  -8132.48379351      0.06147792    13492.84      0.06148726    13494.89      1.6732
  20   1  -8132.48379349      0.06147794    13492.85      0.06148727    13494.90      1.6732
  21   1  -8132.48379348      0.06147795    13492.85      0.06148728    13494.90      1.6732
  22   1  -8132.43643144      0.10883999    23887.62      0.10884933    23889.67      2.9619
  23   1  -8132.43643116      0.10884027    23887.68      0.10884961    23889.73      2.9619
  24   1  -8132.43643088      0.10884055    23887.74      0.10884989    23889.79      2.9620
  25   1  -8132.43643070      0.10884073    23887.78      0.10885006    23889.83      2.9620
  26   1  -8132.43643070      0.10884073    23887.78      0.10885006    23889.83      2.9620
  27   1  -8132.43529911      0.10997232    24136.13      0.10998166    24138.18      2.9928
  28   1  -8132.43529911      0.10997232    24136.13      0.10998166    24138.18      2.9928
  29   1  -8132.43529888      0.10997255    24136.19      0.10998189    24138.23      2.9928
  30   1  -8132.43529844      0.10997299    24136.28      0.10998233    24138.33      2.9928
  31   1  -8132.43529844      0.10997299    24136.28      0.10998233    24138.33      2.9928
  32   1  -8132.43529838      0.10997305    24136.30      0.10998239    24138.34      2.9928
  33   1  -8132.43529817      0.10997326    24136.34      0.10998260    24138.39      2.9928
  34   1  -8132.43391935      0.11135208    24438.96      0.11136142    24441.01      3.0303
  35   1  -8132.43391935      0.11135208    24438.96      0.11136142    24441.01      3.0303
  36   1  -8132.43391912      0.11135230    24439.01      0.11136164    24441.06      3.0303
  37   1  -8132.43391912      0.11135231    24439.01      0.11136164    24441.06      3.0303
  38   1  -8132.43391875      0.11135268    24439.09      0.11136202    24441.14      3.0303
  39   1  -8132.43391857      0.11135286    24439.13      0.11136219    24441.18      3.0303
  40   1  -8132.43391835      0.11135307    24439.18      0.11136241    24441.22      3.0303
  41   1  -8132.43391835      0.11135308    24439.18      0.11136242    24441.23      3.0303
  42   1  -8132.43391825      0.11135318    24439.20      0.11136252    24441.25      3.0303
  43   1  -8132.42866614      0.11660529    25591.90      0.11661463    25593.95      3.1732
  44   1  -8132.42847930      0.11679213    25632.91      0.11680147    25634.96      3.1783
  45   1  -8132.42847908      0.11679235    25632.96      0.11680169    25635.01      3.1783
  46   1  -8132.42847905      0.11679238    25632.96      0.11680172    25635.01      3.1783
  47   1  -8132.42847901      0.11679242    25632.97      0.11680176    25635.02      3.1783
  48   1  -8132.42847900      0.11679243    25632.97      0.11680176    25635.02      3.1783
  49   1  -8132.42759057      0.11768086    25827.96      0.11769020    25830.01      3.2025
  50   1  -8132.42759057      0.11768086    25827.96      0.11769020    25830.01      3.2025
  51   1  -8132.42759046      0.11768097    25827.99      0.11769030    25830.04      3.2025
  52   1  -8132.42641417      0.11885726    26086.15      0.11886659    26088.20      3.2345
  53   1  -8132.42641417      0.11885726    26086.15      0.11886659    26088.20      3.2345
  54   1  -8132.42641417      0.11885726    26086.15      0.11886660    26088.20      3.2345
  55   1  -8132.42461700      0.12065443    26480.59      0.12066376    26482.63      3.2834
  56   1  -8132.42461700      0.12065443    26480.59      0.12066376    26482.64      3.2834
  57   1  -8132.42461694      0.12065449    26480.60      0.12066382    26482.65      3.2834
  58   1  -8132.42461661      0.12065482    26480.67      0.12066416    26482.72      3.2834
  59   1  -8132.42461597      0.12065546    26480.81      0.12066479    26482.86      3.2835
  60   1  -8132.42281636      0.12245507    26875.78      0.12246440    26877.83      3.3324

 E0 =  -8132.54527143 is the energy of the lowest zeroth-order state
 E1 =  -8132.54528077 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99996004 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000030  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00324191  0.08564665 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.08565903  0.00324168  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000753  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.08574888
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000012  0.00000000 -0.00000000 -0.08575223 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000766 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00226368  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000178 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00226726
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00224218  0.00028346 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000178  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00028277  0.00224716 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00008244  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.54782511 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.40678794
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.54778646  0.00000000 -0.00000000 -0.40680996 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000114  0.00000000  0.00000000 -0.00000020 -0.00000000

 15  1     3    1  |1 1>+       0.00000022 -0.00000000 -0.00000000  0.00000000  0.41100459 -0.70201051  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000003 -0.54759886  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000014
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000002 -0.31624716  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000024
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000267 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00002187
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000188  0.00000000 -0.00000000 -0.00002775 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000031  0.00000000 -0.00000000  0.00000000  0.00002483 -0.00000439  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000236  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000098  0.00000000 -0.00000000  0.00000000 -0.00000816 -0.00002322  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000048 -0.00000000  0.00000000  0.00000159 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000147  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00001939
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000344  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00044442 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00101259
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00516125  0.00000000  0.00000000 -0.00000000  0.00101094  0.00059155 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00044652  0.00000000 -0.00000000 -0.00101459 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000002 -0.00000000 -0.00000000 -0.00000000  0.81349956  0.00495933  0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000003 -0.54773151  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000014

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.54773242  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.40692536

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000040 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00016322 -0.00000000  0.00000000  0.81341959  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000131 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.63234319  0.00000000  0.00000000  0.00021010  0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00002385  0.00000014  0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000107 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000107  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000321

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00002363  0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000247  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002891

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000247  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000114  0.00000000  0.00000000 -0.00000000  0.00000016 -0.00002653  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000342 -0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00516131 -0.00000000  0.00000000  0.00000000  0.00000714 -0.00117127  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00044517  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00101621

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00044516  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000003  0.54782572 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000014

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000020  0.00000000 -0.00000000 -0.00000000  0.40241588  0.70696789 -0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000114  0.00000000  0.00000000 -0.00000020 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.54778796 -0.00000000  0.00000000  0.40680899  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.54776087 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.40646301

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.31596595  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.70453040

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000267  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000031  0.00000000 -0.00000000 -0.00000000 -0.00002478 -0.00000470 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000188  0.00000000 -0.00000000 -0.00002775 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000236 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00002176

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000047  0.00000000 -0.00000000 -0.00000159 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000098  0.00000000  0.00000000 -0.00000000 -0.00000844  0.00002313 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000147 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000344  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00044442  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00044652 -0.00000000  0.00000000  0.00101459  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00516125 -0.00000000 -0.00000000  0.00000000  0.00101807 -0.00057918  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00001165 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000003 -0.00000000  0.00000928 -0.00000000  0.00000000  0.00001031 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000670 -0.00000000  0.00000000  0.00000017
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.08574857 -0.00000000 -0.00000000 -0.00000926 -0.00000000 -0.00000000 -0.00001007 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000366  0.00000000 -0.00000000 -0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000  0.00000024 -0.00000000 -0.00000000  0.00000215 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000015  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00226728 -0.00000000  0.00000000  0.00000024 -0.00000000  0.00000000  0.00000216 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000014  0.00000000  0.73019188 -0.00000026 -0.00000000 -0.00200915  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57527521  0.00000000 -0.00000000  0.44974095
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000  0.00000000  0.00000034

 15  1     3    1  |1 1>+      -0.00000000  0.57736792 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.40682460 -0.00000000  0.00000023  0.63907766  0.00000000 -0.00000001 -0.35352666  0.00000000
                               -0.00000000  0.00000000  0.00000002  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.70432207 -0.00000000 -0.00000006 -0.15815220  0.00000000 -0.00000002 -0.61255786 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00010663 -0.00000000  0.00000000 -0.00025533  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00013830  0.00000000  0.00000000 -0.00004371
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00019740  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00002176 -0.00000000  0.00000000  0.00021736 -0.00000000  0.00000000  0.00017084  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00019678  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00024147  0.00000000 -0.00000000  0.00033472
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00008581  0.00000000  0.00000000 -0.00032855  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000003  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000052  0.00000000  0.00000000 -0.00000222  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000026 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000  0.00000157
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.57731359  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.40692554  0.00000000  0.00000006  0.18271066 -0.00000000  0.00000003  0.70695934  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000014  0.00000000  0.18450215 -0.00000006 -0.00000000  0.70649331 -0.00000003 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.57743903 -0.00000000 -0.00000000  0.00241242

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000059
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00335583  0.00000000 -0.00000000  0.77468089

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00027952 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000321 -0.00000000  0.00000000  0.00039418  0.00000000 -0.00000000 -0.00011899  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00039388  0.00000000  0.00000000  0.00011999 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00027907  0.00000000  0.00000000 -0.00000126

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00008554 -0.00000000 -0.00000000  0.00011829 -0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002892  0.00000000  0.00000000  0.00008524 -0.00000000  0.00000000  0.00011850  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000126 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00101621 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000126 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000002 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.40678711 -0.00000000  0.00000026  0.73019464  0.00000000 -0.00000000 -0.00015802  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.57736909 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000010 -0.00000000  0.00000000 -0.00000034
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57931952  0.00000000 -0.00000000  0.44451833

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000014 -0.00000000 -0.63809714  0.00000023  0.00000000  0.35546057 -0.00000001 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000024 -0.00000000 -0.16003309  0.00000006  0.00000000 -0.61197280  0.00000002  0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002186 -0.00000000  0.00000000  0.00010728  0.00000000 -0.00000000 -0.00025506 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00019740 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00013869  0.00000000  0.00000000  0.00004245

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00021779  0.00000000  0.00000000 -0.00017030  0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00023842  0.00000000 -0.00000000  0.00033689

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00019678  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001939  0.00000000  0.00000000  0.00008497 -0.00000000  0.00000000  0.00032877  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00101259  0.00000000  0.00000000  0.00000052  0.00000000  0.00000000  0.00000222 -0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000157

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000026  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000023
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.99609087 -0.01918926 -0.00000000  0.00000000  0.00000000  0.00016223  0.00000000 -0.00539318
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.01918930  0.99608984  0.00000000  0.00000000  0.00000000 -0.00537975  0.00000000 -0.00016270
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000001  0.99627221  0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.99627193 -0.00000001 -0.00000000  0.00000000  0.00537075  0.00000000
                                0.00000000  0.00000000 -0.00000032  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001  0.99627224 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00010176 -0.00000000 -0.00000000 -0.00000000 -0.10732948 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00010215  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00001472  0.00010066  0.00000000  0.00000000  0.00000000  0.10647217 -0.00000000 -0.01428651
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00010215 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00010155 -0.00001461  0.00000000 -0.00000000 -0.00000000 -0.01426051  0.00000000 -0.10666764
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000199
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.03501084  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.03501288  0.00000000  0.00000000 -0.00000000 -0.00031858 -0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.06104117 -0.03424379 -0.00000000  0.00000000  0.00000000  0.00031497  0.00000000 -0.00054809
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.03502309 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.06062815  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00271423 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00340476  0.00000000  0.00000000  0.00000000  0.60882970  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000034  0.00000000

 20  1     8    1  |1 1>+       0.00041737 -0.00318904 -0.00000000 -0.00000000 -0.00000000 -0.56982690  0.00000000  0.06823891
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00271375 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00294458  0.00131577 -0.00000000  0.00000000  0.00000000  0.22810900 -0.00000000  0.52670268
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00043088 -0.00000000 -0.00000000 -0.00000000 -0.07675912 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00210144  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00532499  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00300324  0.00535737  0.00000000  0.00000000  0.00000000 -0.01133998  0.00000000 -0.00654202
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00532439 -0.00000000 -0.00000000  0.00000000  0.01130136  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00087304 -0.06998603 -0.00000000 -0.00000000 -0.00000000  0.00063160 -0.00000000 -0.00000100

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.03501213  0.00000000 -0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.03501213  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.07002015 -0.00000000 -0.00000000  0.00000000  0.00063034  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00001785 -0.00000000 -0.00000000 -0.00000000  0.00000016 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00003382 -0.00271321 -0.00000000 -0.00000000 -0.00000000 -0.48499050  0.00000000  0.00076580

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00043598 -0.00000000  0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00043590 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000027  0.00000000
                                0.00000000 -0.00000000  0.00271144 -0.00000000 -0.00000000 -0.00000000 -0.48483404 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00340442 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00340440  0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00365673  0.00004561 -0.00000000  0.00000000  0.00000000  0.00102798 -0.00000000  0.65074726

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00613783 -0.00007655  0.00000000 -0.00000000 -0.00000000  0.00002067 -0.00000000  0.01311636

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00532452  0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00532453  0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.03501071  0.00000000 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.06016843 -0.03575568  0.00000000 -0.00000000 -0.00000000  0.00031670 -0.00000000  0.00054709

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.03501275 -0.00000000 -0.00000000  0.00000000  0.00031859  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.03499192  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.06064651  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00271423  0.00000000 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00033776  0.00319845  0.00000000  0.00000000  0.00000000  0.57003559 -0.00000000  0.06644465

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000034 -0.00000000
                               -0.00000000  0.00000000 -0.00340477  0.00000000  0.00000000  0.00000000  0.60882869  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00271377 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000
                               -0.00000000  0.00000000 -0.00043093  0.00000000  0.00000000  0.00000000  0.07676921  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00297648  0.00124197  0.00000000 -0.00000000 -0.00000000  0.22645134  0.00000000 -0.52741857

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00210145  0.00000000 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00532500 -0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                               -0.00000000  0.00000000 -0.00532438  0.00000000  0.00000000 -0.00000000 -0.01130135 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00313592  0.00528079  0.00000000  0.00000000  0.00000000 -0.01131924  0.00000000  0.00657795


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000154 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00537250  0.00000000  0.00000134 -0.00000000 -0.00000000 -0.00000023 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000162
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00537249 -0.00000000  0.00000135  0.00000000 -0.00000000 -0.00000023  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00001558
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.10734979 -0.00000004 -0.00001869 -0.00000000  0.00000000  0.00006139  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001684 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000004 -0.10734985 -0.00000000  0.00001872  0.00000000  0.00000000 -0.00006157 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000198 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00031641  0.00000000  0.00030328  0.00000000  0.00000000  0.00017245  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00028009
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00027919  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00031686  0.00000000 -0.00034810  0.00000000  0.00000000 -0.00000738 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00054777  0.00000000 -0.00008039 -0.00000000 -0.00000000  0.00029426  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.48530847  0.00000017 -0.46198888 -0.00000001  0.00000000  0.34613056  0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000004  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.29385601
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000273

 20  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.40843143  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000017 -0.48511876 -0.00000000  0.21939677 -0.00000000 -0.00000002  0.53383010  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.40780721  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.48840349
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000453

 24  1    12    1  |1 1>+      -0.37556443 -0.00000013 -0.18779287 -0.00000000  0.00000000  0.68173201  0.00000002  0.00000000
                               -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000021 -0.00000000  0.00000192 -0.00000000  0.00000000 -0.00000125 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.01129697  0.00000000  0.00000118 -0.00000000 -0.00000000 -0.00000117 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000601 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001020
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00027859 -0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00031911 -0.00000000  0.00009346  0.00000000  0.00000000 -0.00033826 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00031911  0.00000000 -0.00009334 -0.00000000  0.00000000  0.00033830  0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00027841

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000483

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.57771462 -0.00000000  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000003 -0.07771138 -0.00000001  0.83790667 -0.00000000 -0.00000001  0.19327585  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000007  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.07770021  0.00000003  0.83797834  0.00000001  0.00000000  0.19297408  0.00000001  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000536
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.57762560

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.60847514  0.00000021 -0.02952041 -0.00000000 -0.00000000 -0.30546054 -0.00000001 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000021  0.60847235 -0.00000000  0.02942338 -0.00000000 -0.00000001  0.30547430  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000263  0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000006

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01129016  0.00000000  0.00000446  0.00000000  0.00000000 -0.00000483 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.01129017 -0.00000000 -0.00000444  0.00000000  0.00000000  0.00000485  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00031641  0.00000000 -0.00030322  0.00000000  0.00000000 -0.00017256 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00027919  0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00027458

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00031658  0.00000000 -0.00034814 -0.00000000  0.00000000 -0.00000710 -0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00054794  0.00000000  0.00008010  0.00000000 -0.00000000 -0.00029430 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000017  0.48530766 -0.00000001  0.46211704  0.00000000  0.00000001 -0.34596277 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.40843807 -0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000271
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.29156350

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.48511772  0.00000017  0.21959219  0.00000000  0.00000000  0.53375062  0.00000002  0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000470
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.50640876

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.40780017  0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000013  0.37556631  0.00000000 -0.18804081 -0.00000000 -0.00000002  0.68166329  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000021  0.00000000 -0.00000191  0.00000000  0.00000000  0.00000125  0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.01129696 -0.00000000  0.00000124 -0.00000000  0.00000000 -0.00000117  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001024

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000602 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000066  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000129  0.00000000 -0.00000000 -0.00000000  0.00000030  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000863 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000028  0.00000000 -0.00000000 -0.00000000  0.00000037
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000002  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000193 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000030  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000030 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00002672  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00002513  0.00000000 -0.00000000 -0.00000000 -0.00001687
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000084 -0.00000000  0.00000000  0.00000000  0.00013263  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00002488 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000535  0.00000000  0.00000000 -0.00000000 -0.00001731 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000743  0.00000000 -0.00000000 -0.00000000  0.00000015  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000138  0.00000000 -0.00000000 -0.00000000  0.00000206
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00021106 -0.00000000 -0.00000150  0.00000000 -0.00000000  0.00000000  0.00000070  0.00000000
                                0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000157  0.00000000  0.00000000 -0.00000000 -0.00000131 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000140 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000044 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.62313500  0.00000002  0.00000000 -0.00000000 -0.20032268
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.08588159 -0.00000001 -0.70130000  0.00000000  0.00000000 -0.00000000  0.19837126  0.00000000
                                0.00000225  0.00000000 -0.00030073  0.00000000  0.00000000  0.00000000  0.00001506  0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.70370221 -0.00000001 -0.00000000  0.00000000 -0.06684888 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000002  0.60026787  0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.06048471  0.00000000 -0.00000000 -0.00000000  0.53285869  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.70772841 -0.00000000 -0.08990157 -0.00000000  0.00000000  0.00000000 -0.49652574 -0.00000000
                               -0.00001855  0.00000000 -0.00003855  0.00000000  0.00000000 -0.00000000 -0.00003770  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.03001533 -0.00000000 -0.00000000 -0.00000000  0.59693996
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000171 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000081 -0.00000000 -0.00000000  0.00000000 -0.00001981
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00001272  0.00000000  0.00000000 -0.00000000 -0.00000788  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000096 -0.00000000 -0.00001322  0.00000000  0.00000000 -0.00000000 -0.00001206 -0.00000000
                                0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000168 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000028  0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000027  0.00000000  0.00000000 -0.00000000 -0.00000165

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000367 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000276 -0.00000000

 33  1     5    1  |1 0>       -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00037025  0.00000000  0.00000144 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00004911 -0.00000000 -0.00000000 -0.00000000  0.65437869  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000002 -0.49062294 -0.00000000  0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.49057853  0.00000002 -0.00000000 -0.00000000  0.11737327

 37  1     9    1  |1 0>        0.00000019 -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000000 -0.00004969  0.00000000
                                0.00741809  0.00000000  0.00033392  0.00000000 -0.00000000 -0.00000000  0.65453674  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.09967424 -0.00000000 -0.00000000 -0.00000000  0.72195341

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.09940245 -0.00000000 -0.00000000  0.00000002

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.04759284  0.00000000  0.00000000  0.00000000 -0.00385681  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000456 -0.00000000  0.00000400 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000522 -0.00000000  0.00000000  0.00000000  0.00000011  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00001075 -0.00000000 -0.00000000 -0.00000000  0.00002615

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001069 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000139 -0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000157 -0.00000000  0.00000000  0.00000000 -0.00000130 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00021818 -0.00000000 -0.00000150  0.00000000  0.00000000  0.00000000 -0.00000070  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000140 -0.00000000 -0.00000000 -0.00000000  0.00000233

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000044 -0.00000000  0.00000000  0.00000000 -0.00000204

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000002  0.62305664  0.00000000  0.00000000 -0.00000001

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.70371178 -0.00000001 -0.00000000  0.00000000  0.06688164 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000245  0.00000000 -0.00030082  0.00000000  0.00000000  0.00000000 -0.00001501  0.00000000
                                0.09338747  0.00000001  0.70150307 -0.00000000 -0.00000000  0.00000000  0.19764627  0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.60016631 -0.00000002  0.00000000  0.00000000 -0.26180204

 54  1    10    1  |1 1>-       0.00001822 -0.00000000  0.00003833  0.00000000  0.00000000 -0.00000000 -0.00003770  0.00000000
                                0.69495926 -0.00000000 -0.08938213  0.00000000  0.00000000 -0.00000000  0.49661719  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.06057605 -0.00000000  0.00000000 -0.00000000  0.52810351  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.02978569  0.00000000  0.00000000 -0.00000002

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000172 -0.00000000  0.00000000 -0.00000000  0.00000721

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000074 -0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000064 -0.00000000 -0.00001322  0.00000000  0.00000000 -0.00000000  0.00001204 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00001268 -0.00000000 -0.00000000  0.00000000 -0.00000819 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000  0.00000221 -0.00878146 -0.00000221  0.00000016  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000128  0.00000046 -0.00422387  0.00011914  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000009  0.00000002  0.00011904  0.00422294  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00422633  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00422591 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000017 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000038  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00422634
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001  0.87708242 -0.00000004 -0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00003550 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000004  0.87707906  0.00000029
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000096 -0.00002482  0.16690359  0.86100542  0.00000000 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00001715 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000029  0.87707879
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000183 -0.00021046  0.86091056 -0.16690903 -0.00000001  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00001984  0.19652139  0.00004909 -0.00000365 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094169 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00094087 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000107 -0.00000067  0.00168073  0.00083861 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000233  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00094198
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000205  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00162624
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.04986297  0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.06259395 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000253 -0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.01472938  0.00001106  0.01044365  0.05814300  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.26156899 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.04987611
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.46118085 -0.00003830  0.05285071 -0.02668008 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00788775  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.03865536 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000721 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001361
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.33188617 -0.00000011
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00002713  0.56601232  0.17160130 -0.34279668 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.33185420  0.00000002  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00001343  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000001  0.00000000  0.00011235  0.00187251  0.00000000 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000165  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00094120

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094119 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000008 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00187635  0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000048  0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00334669  0.00000016  0.00298543  0.04976073  0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.11719512  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00798599

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00798469  0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000202 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.04988847  0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.06260935  0.00000002

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.72199137 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.06260930

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.75442711  0.00002384  0.06698346 -0.00401845 -0.00000000  0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00003281  0.56617966 -0.38252816  0.02294932  0.00000000 -0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.33182653 -0.00000011

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00002620 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000011 -0.33182721

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000207 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00094170

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000109  0.00000067 -0.00156841  0.00103355  0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00094086  0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094114 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00162672 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.20056246  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.04986294

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.01405350  0.00001069  0.00341778 -0.05897431 -0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000253  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.06259387 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.04987630  0.00000002

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000032  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00788863 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.46661151  0.00003817 -0.05566186 -0.02017108  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.59695069  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.03865553

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001364  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001980 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000011  0.33188620

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00001343  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.33185354 -0.00000002 -0.00000001

 60  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00002702 -0.56601486 -0.21135361 -0.31981579 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000009  0.00000000 -0.00000000 -0.00000007 -0.00000000  0.00000001 -0.00648761
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000009  0.00000000 -0.00000000  0.00000006 -0.00000000  0.00000000  0.00648762  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000054 -0.00000000  0.00000000  0.00000019 -0.00000001 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00004973 -0.00000000  0.00000000  0.00000507 -0.00000000 -0.00000061  0.46819140
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00004920  0.00000000 -0.00000000  0.00000488 -0.00000000 -0.00000000  0.46819190  0.00000061
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00032598 -0.00000000 -0.00000000 -0.00011428  0.00000000  0.00000000 -0.00014332
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00032549  0.00000000  0.00000000  0.00011415 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000054  0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00032550  0.00000000  0.00000000  0.00011411 -0.00000000 -0.00000000  0.00014380  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00018445  0.00000000  0.00000000  0.00006469 -0.00000000 -0.00000000 -0.00024779 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00001208 -0.00000000 -0.00000000 -0.00000386  0.00000000 -0.00000002  0.01776069
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00001322  0.00000000 -0.00000000 -0.00000217 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000467  0.00000000  0.00000000  0.00000184 -0.00000000 -0.00000000 -0.01775802 -0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000205  0.00000000  0.00000000  0.00000305  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00001793  0.00000000  0.00000000  0.00000113 -0.00000000  0.00000002 -0.01377162
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.33600189 -0.00000064 -0.00000000  0.94186131 -0.00000197 -0.00000003  0.00000004 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000127 -0.66599543  0.00000001  0.00000050  0.23759388 -0.00000002 -0.00000081  0.62425444
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000001  0.66599050  0.00000001  0.00000002  0.23760331 -0.00000001 -0.00000001
                               -0.00000000 -0.00000000  0.00110013  0.00000000  0.00000000  0.00003394  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00032581  0.00000000  0.00000000  0.00011423 -0.00000000 -0.00000000 -0.00014323 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00032582  0.00000000  0.00000000  0.00011423 -0.00000000  0.00000000 -0.00014322

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000010 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000063  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00037844 -0.00000000 -0.00000000 -0.00013270 -0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000126 -0.00000000  0.00000000 -0.00000176  0.00000000  0.00000000 -0.00284414 -0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000132 -0.00000000  0.00000000  0.00000178 -0.00000000 -0.00000000  0.00284373

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00002569  0.00000000  0.00000000  0.00000276 -0.00000000 -0.00000003  0.02229778

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00002568  0.00000000 -0.00000000  0.00000276 -0.00000000 -0.00000000  0.02229781  0.00000003

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00055506 -0.00000000 -0.00000000 -0.00013455 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.33602135  0.00000003  0.00000007  0.94185420  0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000127  0.66599719 -0.00000001 -0.00000050 -0.23758488  0.00000002 -0.00000081  0.62428781

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000
                                0.66599731 -0.00000127 -0.00000000 -0.23758474  0.00000050  0.00000001  0.62428737  0.00000081

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00032597 -0.00000000 -0.00000000 -0.00011428  0.00000000  0.00000000 -0.00014333 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000054 -0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00032549  0.00000000  0.00000000  0.00011415  0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00032560 -0.00000000 -0.00000000 -0.00011415  0.00000000  0.00000000 -0.00014368

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00018428  0.00000000  0.00000000  0.00006463 -0.00000000  0.00000000 -0.00024786

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001209 -0.00000000 -0.00000000 -0.00000387  0.00000000  0.00000000  0.01776070  0.00000002

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00001328  0.00000000  0.00000000  0.00000219 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000463 -0.00000000 -0.00000000 -0.00000183  0.00000000 -0.00000002  0.01775803

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000200  0.00000000  0.00000000  0.00000306 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001796 -0.00000000 -0.00000000 -0.00000114  0.00000000  0.00000000  0.01377171  0.00000002

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00000064  0.33600219 -0.00000001  0.00000197  0.94186121 -0.00000007  0.00000000 -0.00000001

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                                0.66599546 -0.00000127 -0.00000000 -0.23759361  0.00000050  0.00000001 -0.62425450 -0.00000081

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00110012 -0.00000000 -0.00000000 -0.00003394  0.00000000 -0.00000000
                                0.00000000  0.00000001  0.66599041  0.00000001  0.00000002  0.23760319  0.00000001  0.00000001

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000013  0.00167599
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00023879  0.00647092  0.00000010
                                0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00647616  0.00023864  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00648731  0.00000000  0.00000000  0.00000000
                                0.00000054 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.46818979 -0.00000000 -0.00000000  0.00000000
                               -0.00003895  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000001  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.46451992  0.05906392 -0.00000032
                                0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000001  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.05904849  0.46465161 -0.00000249
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000005  0.00000247  0.98049953
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00014341 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00014311  0.00024639  0.00000005
                                0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.02228983 -0.00000000 -0.00000000  0.00000000
                               -0.00000185  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.02088949  0.00235836  0.00000238
                                0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00825323  0.01938318 -0.00000606
                                0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00280851  0.00000000  0.00000000 -0.00000000
                                0.00000023  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000001  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.62239131 -0.36358401 -0.11345518
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.62427206 -0.00000000 -0.00000000  0.00000000
                               -0.00005194  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00028290 -0.00000145 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000002  0.00000000 -0.00000000 -0.00000000
                                0.00028402  0.00000000  0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000007 -0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.01772803 -0.00009092 -0.00000003

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000148  0.00000000 -0.00000000  0.00000000
                                0.01774389  0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00012236  0.02388310  0.00000538

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000005  0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00369367  0.72073646 -0.11346236

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00014058 -0.00024785 -0.00000005

 47  1     3    1  |1 1>-      -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00014341  0.00000000  0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.02086412  0.00257281  0.00000236

 52  1     8    1  |1 1>-       0.00000185 -0.00000000  0.00000000 -0.00000000
                               -0.02228979 -0.00000000 -0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000023 -0.00000000  0.00000000 -0.00000000
                               -0.00280885 -0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00845168 -0.01929757  0.00000600

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00005194  0.00000000 -0.00000000  0.00000000
                                0.62427255  0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.62608489  0.35718792  0.11345516



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.73%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.73%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.74%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.74%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.55%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.55%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.89%   49.28%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.18%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.56%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.17%    0.00%
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
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.19%   49.98%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.55%    0.00%
 48  1     4    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.52%
 49  1     5    1  |1 1>-         0.00%    9.98%    0.00%    0.00%    0.00%    0.00%    0.00%   49.64%
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
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.74%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   53.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.09%    0.00%    0.00%   20.23%
 15  1     3    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+        16.55%    0.00%    0.00%   40.84%    0.00%    0.00%   12.50%    0.00%
 17  1     5    1  |1 1>+        49.61%    0.00%    0.00%    2.50%    0.00%    0.00%   37.52%    0.00%
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
 29  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>         16.56%    0.00%    0.00%    3.34%    0.00%    0.00%   49.98%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    3.40%    0.00%    0.00%   49.91%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.01%
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
 45  1     1    1  |1 1>-        16.55%    0.00%    0.00%   53.32%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.56%    0.00%    0.00%   19.76%
 48  1     4    1  |1 1>-         0.00%    0.00%   40.72%    0.00%    0.00%   12.64%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    2.56%    0.00%    0.00%   37.45%    0.00%    0.00%
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
  2  1     2    1  |0 0>         99.22%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.04%   99.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   99.26%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   99.26%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.26%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.15%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.13%    0.00%    0.02%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    1.14%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.37%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.07%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   32.47%    0.00%    0.47%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.20%    0.00%   27.74%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.59%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 29  1     1    1  |1 0>          0.00%    0.49%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.49%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.52%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.51%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.35%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.36%    0.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   32.49%    0.00%    0.44%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.07%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.59%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    5.13%    0.00%   27.82%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          1.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    1.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+        23.55%    0.00%   21.34%    0.00%    0.00%   11.98%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.64%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.68%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%   23.53%    0.00%    4.81%    0.00%    0.00%   28.50%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.63%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.85%
 24  1    12    1  |1 1>+        14.10%    0.00%    3.53%    0.00%    0.00%   46.48%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.38%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.60%    0.00%   70.21%    0.00%    0.00%    3.74%    0.00%
 36  1     8    1  |1 0>          0.60%    0.00%   70.22%    0.00%    0.00%    3.72%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.37%
 38  1    10    1  |1 0>         37.02%    0.00%    0.09%    0.00%    0.00%    9.33%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%   37.02%    0.00%    0.09%    0.00%    0.00%    9.33%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%   23.55%    0.00%   21.36%    0.00%    0.00%   11.97%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.68%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.50%
 53  1     9    1  |1 1>-        23.53%    0.00%    4.82%    0.00%    0.00%   28.49%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.64%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.63%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%   14.11%    0.00%    3.54%    0.00%    0.00%   46.47%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%   38.83%    0.00%    0.00%    0.00%    4.01%
 19  1     7    1  |1 1>+         0.74%    0.00%   49.18%    0.00%    0.00%    0.00%    3.94%    0.00%
 20  1     8    1  |1 1>+         0.00%   49.52%    0.00%    0.00%    0.00%    0.45%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   36.03%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.37%    0.00%    0.00%    0.00%   28.39%    0.00%    0.00%
 23  1    11    1  |1 1>+        50.09%    0.00%    0.81%    0.00%    0.00%    0.00%   24.65%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%   35.63%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.82%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   24.07%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   24.07%    0.00%    0.00%    0.00%    1.38%
 37  1     9    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%   42.84%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.99%    0.00%    0.00%    0.00%   52.12%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.99%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   38.82%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   49.52%    0.00%    0.00%    0.00%    0.45%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.87%    0.00%   49.21%    0.00%    0.00%    0.00%    3.91%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%   36.02%    0.00%    0.00%    0.00%    6.85%
 54  1    10    1  |1 1>-        48.30%    0.00%    0.80%    0.00%    0.00%    0.00%   24.66%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.37%    0.00%    0.00%    0.00%   27.89%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
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
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   76.93%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   76.93%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    2.79%   74.13%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   76.93%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%   74.12%    2.79%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    3.86%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.02%    0.00%    0.01%    0.34%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         6.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%
 22  1    10    1  |1 1>+         0.00%   21.27%    0.00%    0.28%    0.07%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%   32.04%    2.94%   11.75%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   11.01%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          1.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%
 39  1    11    1  |1 0>         52.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.39%
 40  1    12    1  |1 0>          0.00%   56.92%    0.00%    0.45%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%   32.06%   14.63%    0.05%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.01%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.01%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         4.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%
 51  1     7    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.35%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%   21.77%    0.00%    0.31%    0.04%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-        35.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   11.01%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   11.01%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%   32.04%    4.47%   10.23%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   21.92%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   21.92%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 25  1    13    1  |1 1>+        11.29%    0.00%    0.00%   88.71%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%   44.35%    0.00%    0.00%    5.65%    0.00%    0.00%   38.97%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%   44.35%    0.00%    0.00%    5.65%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%   11.29%    0.00%    0.00%   88.71%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%   44.36%    0.00%    0.00%    5.64%    0.00%    0.00%   38.97%
 44  1    16    1  |1 0>         44.36%    0.00%    0.00%    5.64%    0.00%    0.00%   38.97%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 57  1    13    1  |1 1>-         0.00%   11.29%    0.00%    0.00%   88.71%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-        44.35%    0.00%    0.00%    5.65%    0.00%    0.00%   38.97%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%   44.35%    0.00%    0.00%    5.65%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         21.92%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   21.58%    0.35%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.35%   21.59%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   96.14%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.05%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.04%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.01%    0.04%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%   38.74%   13.22%    1.29%
 28  1    16    1  |1 1>+        38.97%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.03%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.03%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.06%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%   51.95%    1.29%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.04%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.05%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.01%    0.04%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-        38.97%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%   39.20%   12.76%    1.29%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      256.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1372.23       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    231440.74 158064.61     76.51  58781.97  14508.04      4.78      0.09      4.51
 REAL TIME  *    232391.89 SEC
 DISK USED  *         1.42 GB (local),        8.93 GB (total)
 SF USED    *         7.84 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -8132.422816362056

              CI              CI           MULTI         RHF-SCF
  -8132.38957346  -8132.38654195  -8131.90663494  -8131.99670480
 **********************************************************************************************************************************
 Molpro calculation terminated
