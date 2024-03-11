
 Working directory              : /wrk/irikura/molpro.hGXDfJ2E9R/
 Global scratch directory       : /wrk/irikura/molpro.hGXDfJ2E9R/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.hGXDfJ2E9R/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Fr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Fr};
 
 basis=aug-cc-pwCVQZ-X2C
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=86,sym=1,spin=0}
 
 {multi
     closed,21,22
     occ,28,22
     wf,nelec=87,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,14,9
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Fr SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 04-Mar-24          TIME: 15:51:40  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry FR     S aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry FR     P aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry FR     D aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry FR     F aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry FR     G aug-cc-pwCVQZ-X      selected for orbital group  1


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

   1  FR     87.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   87
 NUMBER OF PRIMITIVE AOS:         577
 NUMBER OF SYMMETRY AOS:          470
 NUMBER OF CONTRACTIONS:          184   (   96Ag  +   88Au  )
 NUMBER OF INNER CORE ORBITALS:    39   (   20Ag  +   19Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     136.577 MB (compressed) written to integral file ( 12.0%)

     Node minimum: 4.194 MB, node maximum: 15.729 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    6098772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    6098772      RECORD LENGTH: 524288

 Memory used in sort:       6.66 MW

 SORT1 READ   142077448. AND WROTE     1122731. INTEGRALS IN      4 RECORDS. CPU TIME:     0.65 SEC, REAL TIME:     0.69 SEC
 SORT2 READ    13910421. AND WROTE    73209670. INTEGRALS IN    612 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.15 SEC

 Node minimum:     6093774.  Node maximum:     6110944. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 1 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7   8 9101112131415 7 8
                                        9101112131415 7 8 9  101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 4
                                        5 6 7 8 910 4 5 6 7   8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.898E-05 0.186E-03 0.386E-03 0.386E-03 0.386E-03 0.386E-03 0.386E-03 0.446E-03
         2 0.159E-03 0.159E-03 0.159E-03 0.163E-02 0.163E-02 0.163E-02 0.504E-02 0.504E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.28       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        28.27     27.93
 REAL TIME  *        29.90 SEC
 DISK USED  *        31.71 MB (local),      664.66 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   22  22

 Initial occupancy:  21  22

 NELEC=   86   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -24267.59213852  -24267.59213852     0.00D+00     0.14D+00     0     0       0.03      0.06    start
   2   -24267.59286110      -0.00072258     0.33D-03     0.56D-02     1     0       0.03      0.09    diag
   3   -24267.59290182      -0.00004072     0.18D-03     0.10D-02     2     0       0.03      0.12    diag
   4   -24267.59290659      -0.00000477     0.41D-04     0.63D-03     3     0       0.04      0.16    diag
   5   -24267.59290671      -0.00000012     0.62D-05     0.12D-03     4     0       0.03      0.19    diag
   6   -24267.59290671      -0.00000000     0.36D-06     0.89D-05     5     0       0.03      0.22    diag
   7   -24267.59290671      -0.00000000     0.46D-07     0.59D-06     6     0       0.04      0.26    diag
   8   -24267.59290671       0.00000000     0.31D-08     0.12D-07     0     0       0.03      0.29    fixocc

 Final occupancy:  21  22

 !RHF STATE 1.1 Energy               -24267.5929067110    
  RHF One-electron energy            -33046.6349750561    
  RHF Two-electron energy            8779.042068345159
  RHF Kinetic energy                  41416.5886893552    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.585938960080

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3741.83321     1  1  s    1.00000
    2.1     2.00000  -690.70224     1  2  s    1.00000
    3.1     2.00000  -173.42669     1  3  s    0.99997
    4.1     2.00000  -114.03859     1  1  d0   0.35582    1  1  d2+  0.93454
    5.1     2.00000  -114.03859     1  1  d1-  0.99998
    6.1     2.00000  -114.03859     1  1  d2-  0.99998
    7.1     2.00000  -114.03859     1  1  d1+  0.99998
    8.1     2.00000  -114.03859     1  1  d0   0.93456    1  1  d2+ -0.35581
    9.1     2.00000   -43.68523     1  4  s    1.00004
   10.1     2.00000   -22.45270     1  2  d0   0.25752    1  2  d2+  0.96627
   11.1     2.00000   -22.45270     1  2  d2-  1.00000
   12.1     2.00000   -22.45270     1  2  d1-  1.00000
   13.1     2.00000   -22.45270     1  2  d1+  1.00000
   14.1     2.00000   -22.45270     1  2  d0   0.96627    1  2  d2+ -0.25752
   15.1     2.00000    -9.39292     1  5  s    0.99948
   16.1     2.00000    -2.72397     1  3  d2+  0.96930
   17.1     2.00000    -2.72397     1  3  d2-  1.00017
   18.1     2.00000    -2.72397     1  3  d1-  1.00017
   19.1     2.00000    -2.72397     1  3  d1+  1.00017
   20.1     2.00000    -2.72397     1  3  d0   0.96930
   21.1     2.00000    -1.53463     1  6  s    0.96734
    1.2     2.00000  -587.17509     1  1  py   1.00000
    2.2     2.00000  -587.17509     1  1  pz   1.00000
    3.2     2.00000  -587.17509     1  1  px   0.99999
    4.2     2.00000  -143.73265     1  2  py   1.00000
    5.2     2.00000  -143.73265     1  2  pz   1.00000
    6.2     2.00000  -143.73265     1  2  px   1.00000
    7.2     2.00000   -33.77051     1  3  py   0.99984
    8.2     2.00000   -33.77051     1  3  px   0.99995
    9.2     2.00000   -33.77051     1  3  pz   0.99983
   10.2     2.00000   -10.30244     1  1  f1-  0.36942    1  1  f3-  0.92926
   11.2     2.00000   -10.30244     1  1  f3+  0.98087
   12.2     2.00000   -10.30244     1  1  f0   0.45578    1  1  f2+  0.89009
   13.2     2.00000   -10.30244     1  1  f2-  1.00000
   14.2     2.00000   -10.30244     1  1  f1-  0.92926    1  1  f3- -0.36942
   15.2     2.00000   -10.30244     1  1  f1+  0.98088
   16.2     2.00000   -10.30244     1  1  f0   0.89009    1  1  f2+ -0.45578
   17.2     2.00000    -6.35291     1  4  pz   1.00033
   18.2     2.00000    -6.35291     1  4  px   1.00033
   19.2     2.00000    -6.35291     1  4  py   1.00033
   20.2     2.00000    -0.80455     1  5  pz   0.93265
   21.2     2.00000    -0.80455     1  5  px   0.93265
   22.2     2.00000    -0.80455     1  5  py   0.93265


 HOMO     22.2    -0.804555 =     -21.8931eV
 LUMO     22.1    -0.130524 =      -3.5518eV
 LUMO-HOMO         0.674031 =      18.3413eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.28       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.69       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        28.56      0.29     27.93
 REAL TIME  *        30.22 SEC
 DISK USED  *        33.09 MB (local),      681.15 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  43 (   21   22)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:     134 (   68   66)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.281D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.958D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.976D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.794D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.278D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.213D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.432D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.337D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.253D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.211D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.204D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.106D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.990D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.907D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.203D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.314D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.242D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.183D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 26 SYMMETRY CONTAMINATION OF 0.597D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 27 SYMMETRY CONTAMINATION OF 0.187D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 3 4 2 1 5   3 6 4 2 1 5 3 6 4 2   1 1 4 6 5 3 2 1 5 3   4 6 2 1 5 3 4 6 214
                                        715 9 812111310 1 4   6 5 3 2 5 3 4 6 2 7   9 8111214151310 1 5   3 4 6 212 9 8 71113
                                       101415 3 5 4 6 2 1 1   3 5 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.116D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.303D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.410D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.165D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.165D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.207D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.230D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.288D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.342D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.434D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.286D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.167D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.340D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.197D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.191D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.473D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.156D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.129D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 1 3 9   710 8 5 4 6 3 1 2 3   1 2 3 1 2 3 1 2 1 2   3 4 6 5 8 7 910 1 2
                                        3 1 2 3 4 6 9 7 5 8  10 9 7 6 810 5 4 3 1   210 8 9 6 7 5 4 3 1   210 8 9 7 6 5 410 8
                                        5 4 9 7 6 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  3503  ( 147 closed/active, 2880 closed/virtual, 0 active/active, 476 active/virtual )
 Total number of variables:    3552
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0 -24267.66463334  -24267.66484900   -0.00021567    0.01883639 0.00000159 0.00000000  0.33E-01      4.60
   2    5    4    0 -24267.66484912  -24267.66484912   -0.00000000    0.00003737 0.00000000 0.00000000  0.35E-03      9.04

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.55E-09)
                       Final energy: -24267.66484912
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -24267.7239852192    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41417.05070434
 One electron energy                        -33063.19780428
 Two electron energy                          8795.47381906
 Virial ratio                                    1.58593559
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -24267.6562569284    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.62105907
 One electron energy                        -33059.34141170
 Two electron energy                          8791.68515477
 Virial ratio                                    1.58594003
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -24267.6562569284    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.62105907
 One electron energy                        -33059.34141176
 Two electron energy                          8791.68515483
 Virial ratio                                    1.58594003
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -24267.6562569284    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.62105907
 One electron energy                        -33059.34141169
 Two electron energy                          8791.68515477
 Virial ratio                                    1.58594003
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -24267.6562569284    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.62105907
 One electron energy                        -33059.34141175
 Two electron energy                          8791.68515483
 Virial ratio                                    1.58594003
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -24267.6562569283    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.62105907
 One electron energy                        -33059.34141158
 Two electron energy                          8791.68515465
 Virial ratio                                    1.58594003
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -24267.6486739934    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.57539418
 One electron energy                        -33053.94146004
 Two electron energy                          8786.29278604
 Virial ratio                                    1.58594049
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     1.000000071998
 !MCSCF expec                      <3.1|LXLX|3.1>     0.564457513165
 !MCSCF expec                      <4.1|LXLX|4.1>     3.999987675620
 !MCSCF expec                      <5.1|LXLX|5.1>     1.000003914153
 !MCSCF expec                      <6.1|LXLX|6.1>     3.435550988094
 !MCSCF expec                      <7.1|LXLX|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     3.999995333459
 !MCSCF expec                      <3.1|LYLY|3.1>     1.511783415498
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000002271008
 !MCSCF expec                      <5.1|LYLY|5.1>     1.000011926700
 !MCSCF expec                      <6.1|LYLY|6.1>     2.488206793803
 !MCSCF expec                      <7.1|LYLY|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.000004594543
 !MCSCF expec                      <3.1|LZLZ|3.1>     3.923759071337
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.000010053373
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.999984159147
 !MCSCF expec                      <6.1|LZLZ|6.1>     0.076242218103
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 4 2 1 5   3 6 4 2 1 5 3 6 4 2   1 5 3 4 1 1 6 2 5 3   4 6 2 1 5 3 4 6 2 9
                                        71415 812111310 1 4   6 5 3 2 5 3 4 6 2 9   7 8121114151013 1 5   3 4 6 2 9 7 8121113
                                       101514 3 5 4 6 2 1 1   3 5 6 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 1 3 2 1 3 9   7 810 5 6 4 3 1 2 3   1 2 3 1 2 1 2 3 1 2   3 4 9 710 8 6 5 1 2
                                        3 1 2 3 4 6 9 710 8   5 9 7 6 810 4 5 3 1   2 810 9 7 6 5 4 3 1   2 810 9 7 6 5 4 810
                                        5 4 9 7 6 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3741.68892     1  1  s    1.00000
    2.1     2.00000  -690.55780     1  2  s    1.00000
    3.1     2.00000  -173.28224     1  3  s    0.99998
    4.1     2.00000  -113.89413     1  1  d2+  1.00000
    5.1     2.00000  -113.89413     1  1  d2-  1.00000
    6.1     2.00000  -113.89413     1  1  d1-  1.00000
    7.1     2.00000  -113.89413     1  1  d1+  1.00000
    8.1     2.00000  -113.89413     1  1  d0   1.00000
    9.1     2.00000   -43.54080     1  4  s    1.00004
   10.1     2.00000   -22.30828     1  2  d2+  1.00000
   11.1     2.00000   -22.30828     1  2  d2-  1.00000
   12.1     2.00000   -22.30828     1  2  d1-  1.00000
   13.1     2.00000   -22.30828     1  2  d1+  1.00000
   14.1     2.00000   -22.30828     1  2  d0   1.00000
   15.1     2.00000    -9.24854     1  5  s    0.99930
   16.1     2.00000    -2.57966     1  3  d2+  1.00024
   17.1     2.00000    -2.57966     1  3  d2-  1.00024
   18.1     2.00000    -2.57966     1  3  d1-  1.00024
   19.1     2.00000    -2.57966     1  3  d1+  1.00024
   20.1     2.00000    -2.57966     1  3  d0   1.00024
   21.1     2.00000    -1.38999     1  6  s    0.98167
   22.1     0.14286     0.03456     1  4  d2+  1.04236
   23.1     0.14286     0.03456     1  4  d2-  1.04236
   24.1     0.14286     0.03456     1  4  d1+  1.04236
   25.1     0.14286     0.01491     1  7  s    0.78885    1  9  s   -0.37797    1 10  s    0.40174    1 14  s    1.22868
   26.1     0.14286    -0.02229     1  7  s    1.01485
   27.1     0.14286     0.03456     1  4  d1-  1.04236
   28.1     0.14286     0.03456     1  4  d0   1.04236
    1.2     2.00000  -587.03064     1  1  py   1.00000
    2.2     2.00000  -587.03064     1  1  pz   1.00000
    3.2     2.00000  -587.03064     1  1  px   1.00000
    4.2     2.00000  -143.58818     1  2  py   1.00000
    5.2     2.00000  -143.58818     1  2  px   1.00000
    6.2     2.00000  -143.58818     1  2  pz   1.00000
    7.2     2.00000   -33.62604     1  3  py   0.99999
    8.2     2.00000   -33.62604     1  3  px   0.99999
    9.2     2.00000   -33.62604     1  3  pz   0.99999
   10.2     2.00000   -10.15801     1  1  f3-  1.00000
   11.2     2.00000   -10.15801     1  1  f3+  1.00000
   12.2     2.00000   -10.15801     1  1  f2-  1.00000
   13.2     2.00000   -10.15801     1  1  f2+  1.00000
   14.2     2.00000   -10.15801     1  1  f1-  1.00000
   15.2     2.00000   -10.15801     1  1  f0   1.00000
   16.2     2.00000   -10.15801     1  1  f1+  1.00000
   17.2     2.00000    -6.20852     1  4  pz   1.00021
   18.2     2.00000    -6.20852     1  4  px   1.00021
   19.2     2.00000    -6.20852     1  4  py   1.00021
   20.2     2.00000    -0.66116     1  5  pz   0.96966
   21.2     2.00000    -0.66116     1  5  px   0.96966
   22.2     2.00000    -0.66116     1  5  py   0.96966
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 00a0000       -0.00000000      0.99999923      0.00021182     -0.00006541     -0.00121793      0.00009502      0.00000000
 00000a0       -0.00000000      0.00006749      0.00066582      0.99999803      0.00177689     -0.00058669     -0.00000000
 0a00000        0.00000000      0.00121724      0.00279067     -0.00177900      0.99999374     -0.00030821     -0.00000000
 0000a00        0.99998954      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00457344
 000a000        0.00457344     -0.00000000     -0.00000001      0.00000000      0.00000000      0.00000006      0.99998954
 000000a        0.00000000     -0.00006398     -0.13805747      0.00067177      0.00069181      0.99042375     -0.00000006
 a000000       -0.00000000     -0.00022626      0.99042004     -0.00057359     -0.00272214      0.13805923     -0.00000000
 
 Energy:   -24267.72398522 -24267.65625693 -24267.65625693 -24267.65625693 -24267.65625693 -24267.65625693 -24267.64867399
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      279.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.45       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        38.86     10.30      0.29     27.93
 REAL TIME  *        42.98 SEC
 DISK USED  *       281.01 MB (local),        3.57 GB (total)
 SF USED    *       598.39 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -24267.72399   0.0
    -24267.65626   6.0
    -24267.65626   6.0
    -24267.65626   6.0
    -24267.65626   6.0
    -24267.65626   6.0
    -24267.64867   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 87
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:    16737 conf    52437 CSFs
 N-1 el internal:     6021 conf    23871 CSFs
 N-2 el internal:     1490 conf     6970 CSFs

 Number of electrons in valence space:                     41
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:          23 (  14   9 )
 Number of closed-shell orbitals:  20 (   7  13 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     134 (  68  66 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.92 sec, npass=  1  Memory used:   7.58 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24267.72398522
     2    -24267.65625693
     3    -24267.65625693
     4    -24267.65625693
     5    -24267.65625693
     6    -24267.65625693
     7    -24267.64867399

 Number of blocks in overlap matrix:  2840   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    2840
 Number of N-1 electron functions:   23871

 Number of internal configurations:                28231
 Number of singly external configurations:       1601206
 Number of doubly external configurations:      12758380
 Total number of contracted configurations:     14387817
 Total number of uncontracted configurations:   32871884

 Diagonal Coupling coefficients finished.               Storage:  25749778 words, CPU-Time:     33.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3928526 words, CPU-time:      4.99 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24267.72398522    -0.00000000    -0.84206484  0.13D-01  0.13D+00    51.78
    1     2     2     1.00000000     0.00000000-24267.65625693    -0.00000000    -0.82976233  0.11D-01  0.13D+00    51.78
    1     3     3     1.00000000     0.00000000-24267.65625693     0.00000000    -0.82977046  0.11D-01  0.13D+00    51.78
    1     4     4     1.00000000     0.00000000-24267.65625693     0.00000000    -0.82977064  0.11D-01  0.13D+00    51.78
    1     5     5     1.00000000     0.00000000-24267.65625693     0.00000000    -0.82977132  0.11D-01  0.13D+00    51.78
    1     6     6     1.00000000     0.00000000-24267.65625693     0.00000000    -0.82976324  0.11D-01  0.13D+00    51.78
    1     7     7     1.00000000     0.00000000-24267.64867399     0.00000000    -0.82226326  0.10D-01  0.12D+00    51.78
    2     1     1     1.09103092    -0.66373035-24268.38771557    -0.66373035    -0.01285985  0.78D-03  0.18D-02  1276.36
    2     2     2     1.08783882    -0.65952841-24268.31578534    -0.65952841    -0.01161830  0.60D-03  0.16D-02  1276.36
    2     3     3     1.08784108    -0.65952390-24268.31578083    -0.65952390    -0.01162321  0.60D-03  0.16D-02  1276.36
    2     4     4     1.08784304    -0.65952359-24268.31578052    -0.65952359    -0.01162367  0.60D-03  0.16D-02  1276.36
    2     5     5     1.08784780    -0.65952014-24268.31577707    -0.65952014    -0.01162777  0.60D-03  0.16D-02  1276.36
    2     6     6     1.08784755    -0.65951972-24268.31577665    -0.65951972    -0.01162808  0.60D-03  0.16D-02  1276.36
    2     7     7     1.08468783    -0.65755831-24268.30623230    -0.65755831    -0.01081219  0.46D-03  0.14D-02  1276.36
    3     1     1     1.08642592    -0.67592646-24268.39991168    -0.01219610    -0.00017272  0.64D-05  0.26D-04  2505.70
    3     2     2     1.08438948    -0.67065328-24268.32691021    -0.01112487    -0.00014777  0.50D-05  0.22D-04  2505.70
    3     3     3     1.08438879    -0.67065305-24268.32690998    -0.01112915    -0.00014800  0.50D-05  0.22D-04  2505.70
    3     4     4     1.08438853    -0.67065305-24268.32690998    -0.01112945    -0.00014801  0.50D-05  0.22D-04  2505.70
    3     5     5     1.08438882    -0.67065291-24268.32690983    -0.01113276    -0.00014819  0.50D-05  0.22D-04  2505.70
    3     6     6     1.08438863    -0.67065286-24268.32690979    -0.01113313    -0.00014822  0.50D-05  0.22D-04  2505.70
    3     7     7     1.08258568    -0.66798708-24268.31666108    -0.01042877    -0.00013123  0.40D-05  0.19D-04  2505.70
    4     1     1     1.08694400    -0.67610025-24268.40008547    -0.00017380    -0.00000386  0.47D-06  0.51D-06  3724.14
    4     2     2     1.08496567    -0.67080294-24268.32705987    -0.00014966    -0.00000336  0.32D-06  0.50D-06  3724.14
    4     3     3     1.08496543    -0.67080293-24268.32705985    -0.00014987    -0.00000337  0.32D-06  0.50D-06  3724.14
    4     4     4     1.08496544    -0.67080293-24268.32705985    -0.00014988    -0.00000337  0.32D-06  0.50D-06  3724.14
    4     5     5     1.08496542    -0.67080292-24268.32705985    -0.00015001    -0.00000338  0.32D-06  0.51D-06  3724.14
    4     6     6     1.08496535    -0.67080292-24268.32705984    -0.00015006    -0.00000338  0.32D-06  0.51D-06  3724.14
    4     7     7     1.08324164    -0.66812225-24268.31679624    -0.00013517    -0.00000312  0.30D-06  0.43D-06  3724.14
    5     1     1     1.08697593    -0.67610418-24268.40008940    -0.00000393    -0.00000010  0.46D-08  0.18D-07  4942.19
    5     2     2     1.08499857    -0.67080637-24268.32706330    -0.00000343    -0.00000009  0.41D-08  0.18D-07  4942.19
    5     3     3     1.08499859    -0.67080637-24268.32706330    -0.00000344    -0.00000009  0.42D-08  0.18D-07  4942.19
    5     4     4     1.08499855    -0.67080637-24268.32706330    -0.00000344    -0.00000009  0.42D-08  0.18D-07  4942.19
    5     5     5     1.08499854    -0.67080637-24268.32706330    -0.00000345    -0.00000009  0.42D-08  0.18D-07  4942.19
    5     6     6     1.08499857    -0.67080637-24268.32706330    -0.00000345    -0.00000009  0.42D-08  0.18D-07  4942.19
    5     7     7     1.08328283    -0.66812548-24268.31679947    -0.00000323    -0.00000010  0.44D-08  0.17D-07  4942.19
    6     1     1     1.08697992    -0.67610428-24268.40008950    -0.00000011    -0.00000000  0.29D-09  0.41D-09  6160.58
    6     2     2     1.08500421    -0.67080647-24268.32706339    -0.00000010    -0.00000000  0.33D-09  0.43D-09  6160.58
    6     3     3     1.08500421    -0.67080647-24268.32706339    -0.00000010    -0.00000000  0.33D-09  0.43D-09  6160.58
    6     4     4     1.08500421    -0.67080647-24268.32706339    -0.00000010    -0.00000000  0.33D-09  0.43D-09  6160.58
    6     5     5     1.08500420    -0.67080647-24268.32706339    -0.00000010    -0.00000000  0.33D-09  0.43D-09  6160.58
    6     6     6     1.08500422    -0.67080646-24268.32706339    -0.00000010    -0.00000000  0.33D-09  0.42D-09  6160.58
    6     7     7     1.08328914    -0.66812558-24268.31679958    -0.00000010    -0.00000000  0.36D-09  0.46D-09  6160.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.1%
 S   0.3%  75.1%
 P   0.3%  11.3%   3.4%

 Initialization:   0.6%
 Other:            6.8%

 Total CPU:     6160.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220/000002222222222222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.9598902   0.0000000  -0.0000000
 222222200/00002222222222222          -0.0000000   0.9598902  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 222222200000/02222222222222          -0.0000000  -0.0000000   0.9598902  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222222000/0002222222222222           0.0511243  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9591875
 2222222/0000002222222222222          -0.0000000   0.0000000  -0.0000000   0.9588946   0.0000000   0.0437072  -0.0000000
 2222222000000/2222222222222          -0.0000000   0.0000000   0.0000000  -0.0437072   0.0000000   0.9588946  -0.0000000
 22222220000/002222222222222           0.9576562  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0525798

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957880   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.046744
 2          -0.000000    0.959890    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000   -0.000000    0.959890    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.955859   -0.000000   -0.000000    0.087878   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.959890    0.000000    0.000000
 6           0.000000    0.000000   -0.087878    0.000000    0.000000    0.955859   -0.000000
 7          -0.048192    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.959418

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959020   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000685
 2          -0.000000    0.959890   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.959890   -0.000000   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.959890    0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.959890    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.959890   -0.000000
 7          -0.000685   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.960627


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95787998 (fixed)   0.95901984 (relaxed)   0.95901960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028444   -0.00057690   -0.57156879
 Singles      0.00629739   -0.01906586   -0.02145244
 Pairs        0.08070727   -0.03577022   -0.08308306
 Total        1.08728910   -0.05541297   -0.67610428
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.72380102
 Nuclear energy                         0.00000000
 Kinetic energy                     41416.00180828
 One electron energy               -33060.94072313
 Two electron energy                 8792.54063363
 Virial quotient                       -0.58596675
 Correlation energy                    -0.67628848
 !MRCI STATE 1.1 Energy              -24268.4000895035    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24268.45912212 (Davidson, fixed reference)
 Cluster corrected energies        -24268.45912174 (Davidson, relaxed reference)
 Cluster corrected energies        -24268.45912212 (Davidson, rotated reference)

 Cluster corrected energies        -24268.46092592 (Pople, fixed reference)
 Cluster corrected energies        -24268.46092550 (Pople, relaxed reference)
 Cluster corrected energies        -24268.46092592 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95989022 (fixed)   0.95989022 (relaxed)   0.95989022 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028889   -0.00055844   -0.60165247
 Singles      0.00560600   -0.01801621   -0.02006596
 Pairs        0.07942276   -0.00000000   -0.04908804
 Total        1.08531765   -0.01857465   -0.67080647
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65625693
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.67316693
 One electron energy               -33057.22044593
 Two electron energy                 8788.89338254
 Virial quotient                       -0.58596964
 Correlation energy                    -0.67080647
 !MRCI STATE 2.1 Energy              -24268.3270633936    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24268.38429503 (Davidson, fixed reference)
 Cluster corrected energies        -24268.38429503 (Davidson, relaxed reference)
 Cluster corrected energies        -24268.38429503 (Davidson, rotated reference)

 Cluster corrected energies        -24268.38593166 (Pople, fixed reference)
 Cluster corrected energies        -24268.38593166 (Pople, relaxed reference)
 Cluster corrected energies        -24268.38593166 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95989022 (fixed)   0.95989022 (relaxed)   0.95989022 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028889   -0.00055844   -0.60165247
 Singles      0.00560600   -0.01801621   -0.02006596
 Pairs        0.07942276   -0.00000000   -0.04908804
 Total        1.08531765   -0.01857465   -0.67080647
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65625693
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.67316706
 One electron energy               -33057.22044552
 Two electron energy                 8788.89338213
 Virial quotient                       -0.58596964
 Correlation energy                    -0.67080647
 !MRCI STATE 3.1 Energy              -24268.3270633936    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24268.38429503 (Davidson, fixed reference)
 Cluster corrected energies        -24268.38429503 (Davidson, relaxed reference)
 Cluster corrected energies        -24268.38429503 (Davidson, rotated reference)

 Cluster corrected energies        -24268.38593166 (Pople, fixed reference)
 Cluster corrected energies        -24268.38593166 (Pople, relaxed reference)
 Cluster corrected energies        -24268.38593166 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95585916 (fixed)   0.95989022 (relaxed)   0.95989022 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028889   -0.00055844   -0.60165247
 Singles      0.00560601   -0.01801621   -0.02006596
 Pairs        0.07942275    0.00000000   -0.04908804
 Total        1.08531765   -0.01857465   -0.67080647
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65625693
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.67316856
 One electron energy               -33057.22044837
 Two electron energy                 8788.89338497
 Virial quotient                       -0.58596964
 Correlation energy                    -0.67080647
 !MRCI STATE 4.1 Energy              -24268.3270633935    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24268.38429503 (Davidson, fixed reference)
 Cluster corrected energies        -24268.38429503 (Davidson, relaxed reference)
 Cluster corrected energies        -24268.38429503 (Davidson, rotated reference)

 Cluster corrected energies        -24268.38593166 (Pople, fixed reference)
 Cluster corrected energies        -24268.38593166 (Pople, relaxed reference)
 Cluster corrected energies        -24268.38593166 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95989022 (fixed)   0.95989022 (relaxed)   0.95989022 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028889   -0.00055844   -0.60165247
 Singles      0.00560600   -0.01801621   -0.02006596
 Pairs        0.07942275   -0.00000000   -0.04908803
 Total        1.08531765   -0.01857464   -0.67080647
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65625693
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.67316812
 One electron energy               -33057.22044665
 Two electron energy                 8788.89338325
 Virial quotient                       -0.58596964
 Correlation energy                    -0.67080647
 !MRCI STATE 5.1 Energy              -24268.3270633935    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24268.38429502 (Davidson, fixed reference)
 Cluster corrected energies        -24268.38429502 (Davidson, relaxed reference)
 Cluster corrected energies        -24268.38429502 (Davidson, rotated reference)

 Cluster corrected energies        -24268.38593165 (Pople, fixed reference)
 Cluster corrected energies        -24268.38593165 (Pople, relaxed reference)
 Cluster corrected energies        -24268.38593165 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95585915 (fixed)   0.95989022 (relaxed)   0.95989022 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00028889   -0.00055844   -0.60165247
 Singles      0.00560601   -0.01801622   -0.02006596
 Pairs        0.07942276    0.00000001   -0.04908803
 Total        1.08531766   -0.01857464   -0.67080646
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65625693
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.67316559
 One electron energy               -33057.22044542
 Two electron energy                 8788.89338203
 Virial quotient                       -0.58596964
 Correlation energy                    -0.67080646
 !MRCI STATE 6.1 Energy              -24268.3270633932    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24268.38429503 (Davidson, fixed reference)
 Cluster corrected energies        -24268.38429503 (Davidson, relaxed reference)
 Cluster corrected energies        -24268.38429503 (Davidson, rotated reference)

 Cluster corrected energies        -24268.38593166 (Pople, fixed reference)
 Cluster corrected energies        -24268.38593166 (Pople, relaxed reference)
 Cluster corrected energies        -24268.38593166 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95941796 (fixed)   0.96062757 (relaxed)   0.96062733 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033563   -0.00065784   -0.00156041
 Singles      0.00555144   -0.01859000   -0.02057863
 Pairs        0.07776566   -0.64806889   -0.64598655
 Total        1.08365272   -0.66731672   -0.66812558
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.64885819
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.67359457
 One electron energy               -33051.71426789
 Two electron energy                 8783.39746831
 Virial quotient                       -0.58596939
 Correlation energy                    -0.66794139
 !MRCI STATE 7.1 Energy              -24268.3167995756    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24268.37267469 (Davidson, fixed reference)
 Cluster corrected energies        -24268.37267432 (Davidson, relaxed reference)
 Cluster corrected energies        -24268.37267469 (Davidson, rotated reference)

 Cluster corrected energies        -24268.37418037 (Pople, fixed reference)
 Cluster corrected energies        -24268.37417996 (Pople, relaxed reference)
 Cluster corrected energies        -24268.37418037 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      279.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      783.65       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6600.63   6561.76     10.30      0.29     27.93
 REAL TIME  *      6669.27 SEC
 DISK USED  *         1.04 GB (local),       12.74 GB (total)
 SF USED    *         6.40 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -24268.45912212  AU                              
 SETTING HLSDIAG(2)     =    -24268.38429503  AU                              
 SETTING HLSDIAG(3)     =    -24268.38429503  AU                              
 SETTING HLSDIAG(4)     =    -24268.38429503  AU                              
 SETTING HLSDIAG(5)     =    -24268.38429502  AU                              
 SETTING HLSDIAG(6)     =    -24268.38429503  AU                              
 SETTING HLSDIAG(7)     =    -24268.37267469  AU                              


         HLSDIAG
    -24268.45912
    -24268.38430
    -24268.38430
    -24268.38430
    -24268.38430
    -24268.38430
    -24268.37267
                                                  


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

 Time for Seward_LS:     629.98 sec

       79935473. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    20815 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    629.98 sec, REAL time:    637.13 sec


 SORTLS1 read    85202996. and wrote    85202996. SO integrals in   341 records. CPU time:      0.78 sec, REAL time:      1.32 sec
 SORTLS2 read    85202996. and wrote   434543664. SO integrals in    36 records. CPU time:      0.43 sec, REAL time:      0.65 sec

 FILE SIZES: FILE 1:  1657.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1657.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies: -24268.400090 -24268.327063 -24268.327063 -24268.327063 -24268.327063 -24268.327063 -24268.316800
 Replaced energies: -24268.459122 -24268.384295 -24268.384295 -24268.384295 -24268.384295 -24268.384295 -24268.372675



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-24268.45912212

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.00   16422.65       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     -18.97      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.5  0.5       0.00       0.00   16422.65       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      18.97      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   16422.65       0.00       0.00       0.00      -0.00      20.45      -0.00
                           -0.00       0.00       0.00       0.00     -37.91       0.00      -0.00       0.00       0.00      17.46

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   16422.65       0.00       0.00       0.00      -0.00      18.97
                            0.00      -0.00       0.00      37.91       0.00       1.73       0.00       0.00     -18.97      -0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16422.65       0.00       0.00     -31.97      -0.00
                           -0.00      -0.00      -0.00      -0.00      -1.73      -0.00      -0.00       0.00       0.00      33.69

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   18973.02       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

    8   1.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00      20.45      -0.00     -31.97       0.00       0.00   16422.65       0.00
                            0.00      -0.00       0.00      -0.00      18.97      -0.00       0.00       0.00       0.00      18.97

   10   3.1  0.5 -0.5       0.00      -0.00       0.00      -0.00      18.97      -0.00       0.00       0.00       0.00   16422.65
                            0.00      -0.00       0.00     -17.46       0.00     -33.69       0.00       0.00     -18.97       0.00

   11   4.1  0.5 -0.5       0.00     -20.45       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      17.46      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   12   5.1  0.5 -0.5      -0.00       0.00     -18.97      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -18.97      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   13   6.1  0.5 -0.5      -0.00      31.97       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      33.69       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   14   7.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00

    2   2.1  0.5  0.5     -20.45       0.00      31.97      -0.00
                           -0.00      18.97      -0.00       0.00

    3   3.1  0.5  0.5       0.00     -18.97       0.00      -0.00
                          -17.46       0.00     -33.69       0.00

    4   4.1  0.5  0.5      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

    5   5.1  0.5  0.5       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00

    6   6.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00

    7   7.1  0.5  0.5      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

   11   4.1  0.5 -0.5   16422.65       0.00       0.00       0.00
                           -0.00      37.91      -0.00       0.00

   12   5.1  0.5 -0.5       0.00   16422.65       0.00       0.00
                          -37.91      -0.00      -1.73      -0.00

   13   6.1  0.5 -0.5       0.00       0.00   16422.65       0.00
                            0.00       1.73       0.00       0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   18973.02
                           -0.00       0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1-24268.45912212     0.00000000        0.00      0.00000000        0.00      0.0000
     2-24268.45912212     0.00000000        0.00      0.00000000        0.00      0.0000
     3-24268.38455438     0.07456774    16365.73      0.07456774    16365.73      2.0291
     4-24268.38455438     0.07456774    16365.73      0.07456774    16365.73      2.0291
     5-24268.38455438     0.07456774    16365.73      0.07456774    16365.73      2.0291
     6-24268.38455438     0.07456774    16365.73      0.07456774    16365.73      2.0291
     7-24268.38412213     0.07499999    16460.59      0.07499999    16460.59      2.0409
     8-24268.38412213     0.07499999    16460.59      0.07499999    16460.59      2.0409
     9-24268.38412212     0.07500000    16460.60      0.07500000    16460.60      2.0409
    10-24268.38412212     0.07500000    16460.60      0.07500000    16460.60      2.0409
    11-24268.38412212     0.07500000    16460.60      0.07500000    16460.60      2.0409
    12-24268.38412212     0.07500000    16460.60      0.07500000    16460.60      2.0409
    13-24268.37267469     0.08644743    18973.02      0.08644743    18973.02      2.3524
    14-24268.37267469     0.08644743    18973.02      0.08644743    18973.02      2.3524


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5  -0.000000000   1.000000000   0.000000006  -0.000000001  -0.000000002   0.000000000   0.000000000   0.000000001
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5   0.000000001  -0.000000000  -0.039883559  -0.227467773   0.003424167   0.047312249  -0.099420038  -0.000000447
                         0.000000007   0.000000000  -0.081802486  -0.466532967   0.025013087   0.345601015   0.604383976  -0.000005687

    3    3.1  0.5  0.5   0.000000005   0.000000000  -0.087919629  -0.501419327  -0.020132177  -0.278159925  -0.568790892   0.000005307
                        -0.000000001   0.000000000   0.042865942   0.244477235   0.002755947   0.038079513  -0.093565092  -0.000000325

    4    4.1  0.5  0.5   0.000000000   0.000000000   0.010460863  -0.001834316   0.630716866  -0.045648674   0.000004881   0.537772290
                        -0.000000000   0.000000000  -0.000000086   0.000000090   0.000001257   0.000000099   0.000001189  -0.000000140

    5    5.1  0.5  0.5  -0.000000000   0.000000000  -0.000000080   0.000000137   0.000001251   0.000000100   0.000000090   0.000000069
                        -0.000000000  -0.000000001  -0.038810813   0.006805213  -0.629580447   0.045566430  -0.000000489  -0.057562648

    6    6.1  0.5  0.5   0.000000000  -0.000000000   0.622873926  -0.109215087  -0.010593597   0.000766605  -0.000000085  -0.006757691
                        -0.000000000   0.000000000   0.000000130   0.000001020  -0.000000119   0.000000029  -0.000000103  -0.000000046

    7    7.1  0.5  0.5   0.000000000   0.000000000  -0.000000046   0.000000008   0.000000008  -0.000000001  -0.000000000  -0.000000007
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    8    1.1  0.5 -0.5   0.176622195   0.000000000   0.000000000   0.000000003  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.984278721   0.000000000   0.000000001   0.000000006  -0.000000000  -0.000000001  -0.000000001   0.000000000

    9    2.1  0.5 -0.5   0.000000000  -0.000000007   0.519032367  -0.091007391  -0.348824468   0.025246373   0.000005539   0.612506599
                        -0.000000000  -0.000000000   0.000000155   0.000000811  -0.000000778  -0.000000029   0.000001364  -0.000000050

   10    3.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000076  -0.000000947  -0.000000473  -0.000000071   0.000001183  -0.000000096
                        -0.000000000  -0.000000005   0.557844476  -0.097812831   0.280754330  -0.020319938  -0.000005184  -0.576435170

   11    4.1  0.5 -0.5   0.000000000  -0.000000000   0.000803813   0.004584431   0.006191286   0.085546126   0.087289509   0.000000381
                         0.000000000  -0.000000000   0.001648819   0.009402802   0.045226866   0.624888490  -0.530640723   0.000005009

   12    5.1  0.5 -0.5  -0.000000001   0.000000000  -0.006116938  -0.034885195  -0.045145383  -0.623762574   0.056799306  -0.000000498
                         0.000000000  -0.000000000   0.002982284   0.017008894   0.006180130   0.085391986   0.009343304   0.000000010

   13    6.1  0.5 -0.5  -0.000000000   0.000000000   0.047862952   0.272976653  -0.000104004  -0.001436940  -0.001096840  -0.000000088
                        -0.000000000  -0.000000000   0.098168595   0.559871123  -0.000759520  -0.010495691   0.006668084  -0.000000101

   14    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000004  -0.000000020   0.000000000   0.000000001  -0.000000001  -0.000000000
                         0.000000000  -0.000000000  -0.000000007  -0.000000042   0.000000001   0.000000008   0.000000007  -0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5   0.000000001  -0.000000005   0.000000001  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.003377736  -0.000677855  -0.000259428  -0.003472059  -0.000000010   0.000000015
                         0.445435790   0.089419589   0.010114081   0.135305735  -0.000000043  -0.000000013

    3    3.1  0.5  0.5   0.416737594   0.083658473  -0.021985710  -0.294123764  -0.000000035  -0.000000011
                         0.003160099   0.000634389  -0.000564187  -0.007547297   0.000000008  -0.000000012

    4    4.1  0.5  0.5  -0.016921419   0.084292636   0.549293293  -0.041059700  -0.000000000   0.000000000
                        -0.000000061  -0.000000135  -0.000001990  -0.000000082   0.000000000  -0.000000000

    5    5.1  0.5  0.5   0.000000180   0.000000143   0.000002676   0.000000077  -0.000000001   0.000000000
                        -0.026651735   0.132763211   0.758377293  -0.056688697  -0.000000001   0.000000003

    6    6.1  0.5  0.5  -0.150817223   0.751282951  -0.112688935   0.008423483   0.000000000  -0.000000001
                        -0.000000185   0.000000030   0.000000265  -0.000000147  -0.000000000   0.000000000

    7    7.1  0.5  0.5  -0.000000008   0.000000038  -0.000000008   0.000000001  -0.180145439   0.907791730
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.376202900  -0.043967871

    8    1.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000005  -0.000000001   0.000000000   0.000000001   0.000000000  -0.000000000

    9    2.1  0.5 -0.5   0.089422159  -0.445448598  -0.135350272   0.010117408  -0.000000009   0.000000044
                         0.000000215  -0.000000011   0.000000494   0.000000071   0.000000018  -0.000000002

   10    3.1  0.5 -0.5   0.000000005   0.000000031   0.000000905  -0.000000095  -0.000000015   0.000000002
                         0.083660877  -0.416749572   0.294220585  -0.021992948  -0.000000007   0.000000036

   11    4.1  0.5 -0.5  -0.000639308  -0.000128250  -0.001053048  -0.014090681   0.000000000  -0.000000000
                         0.084290207   0.016920933   0.041046195   0.549112535   0.000000000   0.000000000

   12    5.1  0.5 -0.5   0.132759386   0.026650969   0.056670050   0.758127732   0.000000003   0.000000001
                         0.001006858   0.000201915   0.001453918   0.019454111  -0.000000001   0.000000001

   13    6.1  0.5 -0.5  -0.005696799  -0.001143432   0.000216200   0.002890598  -0.000000000   0.000000000
                         0.751261353   0.150812889  -0.008420708  -0.112651849  -0.000000001  -0.000000000

   14    7.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.202545454  -0.313660915
                         0.000000038   0.000000008  -0.000000001  -0.000000008   0.885999062   0.274950599


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.828%  26.939%   0.064%  12.168%  37.516%   0.000%  19.842%   0.800%
    3    3.1  0.5  0.5   0.000%   0.000%   0.957%  31.119%   0.041%   7.882%  33.228%   0.000%  17.368%   0.700%
    4    4.1  0.5  0.5   0.000%   0.000%   0.011%   0.000%  39.780%   0.208%   0.000%  28.920%   0.029%   0.711%
    5    5.1  0.5  0.5   0.000%   0.000%   0.151%   0.005%  39.637%   0.208%   0.000%   0.331%   0.071%   1.763%
    6    6.1  0.5  0.5   0.000%   0.000%  38.797%   1.193%   0.011%   0.000%   0.000%   0.005%   2.275%  56.443%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%  26.939%   0.828%  12.168%   0.064%   0.000%  37.516%   0.800%  19.842%
   10    3.1  0.5 -0.5   0.000%   0.000%  31.119%   0.957%   7.882%   0.041%   0.000%  33.228%   0.700%  17.368%
   11    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.011%   0.208%  39.780%  28.920%   0.000%   0.711%   0.029%
   12    5.1  0.5 -0.5   0.000%   0.000%   0.005%   0.151%   0.208%  39.637%   0.331%   0.000%   1.763%   0.071%
   13    6.1  0.5 -0.5   0.000%   0.000%   1.193%  38.797%   0.000%   0.011%   0.005%   0.000%  56.443%   2.275%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.010%   1.832%   0.000%   0.000%
    3    3.1  0.5  0.5   0.048%   8.657%   0.000%   0.000%
    4    4.1  0.5  0.5  30.172%   0.169%   0.000%   0.000%
    5    5.1  0.5  0.5  57.514%   0.321%   0.000%   0.000%
    6    6.1  0.5  0.5   1.270%   0.007%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%  17.398%  82.602%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   1.832%   0.010%   0.000%   0.000%
   10    3.1  0.5 -0.5   8.657%   0.048%   0.000%   0.000%
   11    4.1  0.5 -0.5   0.169%  30.172%   0.000%   0.000%
   12    5.1  0.5 -0.5   0.321%  57.514%   0.000%   0.000%
   13    6.1  0.5 -0.5   0.007%   1.270%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%  82.602%  17.398%


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
              1      24     1580.56       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      783.65       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15477.78   8877.14   6561.76     10.30      0.29     27.93
 REAL TIME  *     15651.72 SEC
 DISK USED  *         1.04 GB (local),       17.09 GB (total)
 SF USED    *         6.40 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy= -24268.372674690934

              CI           MULTI         RHF-SCF
 -24268.31679958 -24267.64867399 -24267.59290671
 **********************************************************************************************************************************
 Molpro calculation terminated
