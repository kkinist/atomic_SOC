
 Working directory              : /wrk/irikura/molpro.oWhj4wTGTb/
 Global scratch directory       : /wrk/irikura/molpro.oWhj4wTGTb/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.oWhj4wTGTb/

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
 
 basis=aug-cc-pwCVTZ-X2C
 
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Fr SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 04-Mar-24          TIME: 11:30:12  
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

 Library entry FR     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry FR     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry FR     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry FR     F aug-cc-pwCVTZ-X      selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         433
 NUMBER OF SYMMETRY AOS:          362
 NUMBER OF CONTRACTIONS:          125   (   57Ag  +   68Au  )
 NUMBER OF INNER CORE ORBITALS:    39   (   20Ag  +   19Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     38.011 MB (compressed) written to integral file ( 12.7%)

     Node minimum: 1.311 MB, node maximum: 5.243 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1309761.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1309761      RECORD LENGTH: 524288

 Memory used in sort:       1.87 MW

 SORT1 READ    36081304. AND WROTE      269717. INTEGRALS IN      1 RECORDS. CPU TIME:     0.22 SEC, REAL TIME:     0.24 SEC
 SORT2 READ     3250433. AND WROTE    15753876. INTEGRALS IN    144 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC

 Node minimum:     1309097.  Node maximum:     1316724. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.238E-03 0.687E-03 0.687E-03 0.687E-03 0.687E-03 0.687E-03 0.114E-02 0.145E-01
         2 0.305E-02 0.305E-02 0.305E-02 0.859E-02 0.859E-02 0.859E-02 0.788E-01 0.788E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.12       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.55      9.38
 REAL TIME  *        10.58 SEC
 DISK USED  *        30.52 MB (local),      430.32 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   22  22

 Initial occupancy:  21  22

 NELEC=   86   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -24267.59128914  -24267.59128914     0.00D+00     0.21D+00     0     0       0.01      0.01    start
   2   -24267.59201193      -0.00072279     0.43D-03     0.20D-02     1     0       0.01      0.02    diag
   3   -24267.59205056      -0.00003862     0.19D-03     0.85D-03     2     0       0.01      0.03    diag
   4   -24267.59205418      -0.00000362     0.35D-04     0.27D-03     3     0       0.00      0.03    diag
   5   -24267.59205420      -0.00000003     0.39D-05     0.20D-04     4     0       0.01      0.04    diag
   6   -24267.59205420      -0.00000000     0.24D-06     0.13D-05     5     0       0.01      0.05    diag
   7   -24267.59205420       0.00000000     0.25D-07     0.11D-06     0     0       0.01      0.06    diag

 Final occupancy:  21  22

 !RHF STATE 1.1 Energy               -24267.5920542022    
  RHF One-electron energy            -33046.6123900424    
  RHF Two-electron energy            8779.020335840149
  RHF Kinetic energy                  41416.4075801798    
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.585941501740

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3741.83382     1  1  s    1.00000
    2.1     2.00000  -690.70274     1  2  s    1.00000
    3.1     2.00000  -173.42710     1  3  s    1.00000
    4.1     2.00000  -114.03900     1  1  d1+  0.99937
    5.1     2.00000  -114.03900     1  1  d1-  0.99871
    6.1     2.00000  -114.03900     1  1  d2- -0.38835    1  1  d2+  0.92147
    7.1     2.00000  -114.03900     1  1  d2-  0.92073    1  1  d2+  0.38794
    8.1     2.00000  -114.03900     1  1  d0   0.99994
    9.1     2.00000   -43.68550     1  4  s    0.99999
   10.1     2.00000   -22.45295     1  2  d0   1.00000
   11.1     2.00000   -22.45295     1  2  d1+  0.28916    1  2  d1-  0.95727
   12.1     2.00000   -22.45295     1  2  d1+  0.95722    1  2  d1- -0.28919
   13.1     2.00000   -22.45295     1  2  d2-  0.85983    1  2  d2+ -0.51057
   14.1     2.00000   -22.45295     1  2  d2-  0.51054    1  2  d2+  0.85979
   15.1     2.00000    -9.39300     1  5  s    1.00019
   16.1     2.00000    -2.72399     1  3  d2-  0.96425    1  3  d2+ -0.26579
   17.1     2.00000    -2.72399     1  3  d2-  0.26524    1  3  d2+  0.96244
   18.1     2.00000    -2.72399     1  3  d1+  0.36726    1  3  d1-  0.92847
   19.1     2.00000    -2.72399     1  3  d1+  0.93033    1  3  d1- -0.36692
   20.1     2.00000    -2.72399     1  3  d0   1.00024
   21.1     2.00000    -1.53462     1  6  s    0.98964
    1.2     2.00000  -587.17557     1  1  py   0.99301
    2.2     2.00000  -587.17557     1  1  px   0.99863
    3.2     2.00000  -587.17557     1  1  pz   0.99418
    4.2     2.00000  -143.73304     1  2  py   0.99919
    5.2     2.00000  -143.73304     1  2  px   0.99914
    6.2     2.00000  -143.73304     1  2  pz   0.99993
    7.2     2.00000   -33.77076     1  3  pz   0.99993
    8.2     2.00000   -33.77076     1  3  py   0.99998
    9.2     2.00000   -33.77076     1  3  px   0.99992
   10.2     2.00000   -10.30268     1  1  f1+  0.99902
   11.2     2.00000   -10.30268     1  1  f1-  0.99892
   12.2     2.00000   -10.30268     1  1  f0   0.99995
   13.2     2.00000   -10.30268     1  1  f3+  0.99898
   14.2     2.00000   -10.30268     1  1  f3-  0.99838
   15.2     2.00000   -10.30268     1  1  f2+  0.99981
   16.2     2.00000   -10.30268     1  1  f2-  0.99961
   17.2     2.00000    -6.35296     1  4  py   1.00033
   18.2     2.00000    -6.35296     1  4  px   1.00033
   19.2     2.00000    -6.35296     1  4  pz   1.00033
   20.2     2.00000    -0.80454     1  5  py   1.02013
   21.2     2.00000    -0.80454     1  5  px   1.02013
   22.2     2.00000    -0.80454     1  5  pz   1.02013


 HOMO     22.2    -0.804541 =     -21.8927eV
 LUMO     22.1    -0.130531 =      -3.5519eV
 LUMO-HOMO         0.674010 =      18.3408eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.12       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         9.69      0.14      9.38
 REAL TIME  *        11.86 SEC
 DISK USED  *        31.20 MB (local),      438.48 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  43 (   21   22)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:      75 (   29   46)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.565D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.792D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.325D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.175D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.440D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.236D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.241D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.374D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.221D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.257D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.321D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.296D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.270D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.109D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 26 SYMMETRY CONTAMINATION OF 0.386D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 27 SYMMETRY CONTAMINATION OF 0.389D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 5 3 2 1 2   6 4 3 5 1 3 5 6 4 2   1 1 4 6 2 3 5 1 4 6   3 5 2 1 2 4 6 3 5 1
                                        2 4 6 3 5 1 2 4 6 5   3 1 2 4 6 5 3
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.622D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.107D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.432D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.484D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.160D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.720D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.163D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.556D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.520D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.634D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.929D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.321D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.409D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.831D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.831D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.565D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.212D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.562D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 4   5 6 7 910 8 2 1 3 2   1 3 2 1 3 2 1 3 3 2   1 9 7 6 810 5 4 3 2
                                        110 8 9 7 5 4 6 3 2   1 9 7 4 5 810 610 8   4 5 7 9 6 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  1971  ( 147 closed/active, 1621 closed/virtual, 0 active/active, 203 active/virtual )
 Total number of variables:    2020
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0 -24267.66376392  -24267.66397799   -0.00021406    0.01862023 0.00000154 0.00000000  0.33E-01      1.87
   2    5    5    0 -24267.66397811  -24267.66397811   -0.00000000    0.00003662 0.00000000 0.00000000  0.33E-03      3.64

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-08)
                       Final energy: -24267.66397811
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -24267.7231362049    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.88111223
 One electron energy                        -33063.18610819
 Two electron energy                          8795.46297198
 Virial ratio                                    1.58593797
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -24267.6553871889    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.45011247
 One electron energy                        -33059.30134795
 Two electron energy                          8791.64596076
 Virial ratio                                    1.58594243
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -24267.6553871889    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.45011247
 One electron energy                        -33059.30134794
 Two electron energy                          8791.64596075
 Virial ratio                                    1.58594243
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -24267.6553871889    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.45011247
 One electron energy                        -33059.30134792
 Two electron energy                          8791.64596073
 Virial ratio                                    1.58594243
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -24267.6553871889    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.45011247
 One electron energy                        -33059.30134791
 Two electron energy                          8791.64596072
 Virial ratio                                    1.58594243
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -24267.6553871889    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.45011247
 One electron energy                        -33059.30134791
 Two electron energy                          8791.64596072
 Virial ratio                                    1.58594243
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -24267.6477746099    
 Nuclear energy                                  0.00000000
 Kinetic energy                              41416.40875800
 One electron energy                        -33053.97926664
 Two electron energy                          8786.33149203
 Virial ratio                                    1.58594283
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     3.999958871220
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000056819796
 !MCSCF expec                      <4.1|LXLX|4.1>     3.087232751220
 !MCSCF expec                      <5.1|LXLX|5.1>     0.913073892461
 !MCSCF expec                      <6.1|LXLX|6.1>     0.999677247189
 !MCSCF expec                      <7.1|LXLX|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     1.000049190283
 !MCSCF expec                      <3.1|LYLY|3.1>     3.999956296626
 !MCSCF expec                      <4.1|LYLY|4.1>     2.910129697881
 !MCSCF expec                      <5.1|LYLY|5.1>     1.089533068055
 !MCSCF expec                      <6.1|LYLY|6.1>     1.000332137650
 !MCSCF expec                      <7.1|LYLY|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.999991938498
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.999986883579
 !MCSCF expec                      <4.1|LZLZ|4.1>     0.002637550899
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.997393039485
 !MCSCF expec                      <6.1|LZLZ|6.1>     3.999990615161
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 2   6 4 5 3 1 5 6 2 4 3   1 5 6 4 1 1 2 3 6 4   5 3 2 1 6 2 4 5 3 1
                                        2 6 4 5 3 1 2 6 4 3   5 1 2 6 4 3 5
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 5   4 6 7 9 810 2 1 3 2   1 3 2 1 3 3 2 1 3 2   110 5 9 7 6 4 8 3 2
                                        110 8 5 9 7 4 6 3 2   1 9 7 5 4 8 610 810   5 4 7 9 6 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3741.68943     1  1  s    1.00000
    2.1     2.00000  -690.55823     1  2  s    1.00000
    3.1     2.00000  -173.28261     1  3  s    1.00000
    4.1     2.00000  -113.89450     1  1  d1-  1.00000
    5.1     2.00000  -113.89450     1  1  d1+  1.00000
    6.1     2.00000  -113.89450     1  1  d2+  1.00000
    7.1     2.00000  -113.89450     1  1  d2-  1.00000
    8.1     2.00000  -113.89450     1  1  d0   1.00000
    9.1     2.00000   -43.54109     1  4  s    0.99999
   10.1     2.00000   -22.30855     1  2  d0   1.00000
   11.1     2.00000   -22.30855     1  2  d1-  1.00000
   12.1     2.00000   -22.30855     1  2  d1+  1.00000
   13.1     2.00000   -22.30855     1  2  d2+  1.00000
   14.1     2.00000   -22.30855     1  2  d2-  1.00000
   15.1     2.00000    -9.24872     1  5  s    1.00028
   16.1     2.00000    -2.57980     1  3  d2+  1.00024
   17.1     2.00000    -2.57980     1  3  d1-  1.00024
   18.1     2.00000    -2.57980     1  3  d0   1.00024
   19.1     2.00000    -2.57980     1  3  d1+  1.00024
   20.1     2.00000    -2.57980     1  3  d2-  1.00024
   21.1     2.00000    -1.39012     1  6  s    0.99275
   22.1     0.14286     0.03442     1  4  d2+  1.00258
   23.1     0.14286     0.03442     1  4  d1-  1.00258
   24.1     0.14286     0.03442     1  4  d1+  1.00258
   25.1     0.14286    -0.02236     1  7  s    1.01081
   26.1     0.14286     0.01531     1  7  s   -0.99175    1  9  s   -0.34061    1 12  s    1.73427
   27.1     0.14286     0.03442     1  4  d0   1.00258
   28.1     0.14286     0.03442     1  4  d2-  1.00258
    1.2     2.00000  -587.03105     1  1  py   1.00000
    2.2     2.00000  -587.03105     1  1  px   1.00000
    3.2     2.00000  -587.03105     1  1  pz   1.00000
    4.2     2.00000  -143.58853     1  2  py   1.00000
    5.2     2.00000  -143.58853     1  2  px   1.00000
    6.2     2.00000  -143.58853     1  2  pz   1.00000
    7.2     2.00000   -33.62631     1  3  pz   1.00000
    8.2     2.00000   -33.62631     1  3  py   1.00000
    9.2     2.00000   -33.62631     1  3  px   1.00000
   10.2     2.00000   -10.15827     1  1  f1-  1.00000
   11.2     2.00000   -10.15827     1  1  f1+  1.00000
   12.2     2.00000   -10.15827     1  1  f0   1.00000
   13.2     2.00000   -10.15827     1  1  f3+  1.00000
   14.2     2.00000   -10.15827     1  1  f3-  1.00000
   15.2     2.00000   -10.15827     1  1  f2-  1.00000
   16.2     2.00000   -10.15827     1  1  f2+  1.00000
   17.2     2.00000    -6.20868     1  4  py   1.00023
   18.2     2.00000    -6.20868     1  4  px   1.00023
   19.2     2.00000    -6.20868     1  4  pz   1.00023
   20.2     2.00000    -0.66128     1  5  py   1.00917
   21.2     2.00000    -0.66128     1  5  px   1.00917
   22.2     2.00000    -0.66128     1  5  pz   1.00917
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 0a00000        0.00000000      0.99999069     -0.00318839      0.00288160     -0.00029711     -0.00025087      0.00000000
 000a000        0.99998958     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00456591
 0000a00       -0.00456591     -0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000      0.99998958
 00a0000        0.00000000      0.00317791      0.99998836      0.00363034     -0.00008829      0.00004216      0.00000000
 00000a0       -0.00000000     -0.00289940     -0.00362226      0.99966220     -0.02552767      0.00151566     -0.00000001
 000000a        0.00000000      0.00026857     -0.00003771      0.00008063      0.06238993      0.99805181      0.00000000
 a000000       -0.00000000      0.00020709     -0.00000278      0.02557336      0.99772528     -0.06237164     -0.00000000
 
 Energy:   -24267.72313620 -24267.65538719 -24267.65538719 -24267.65538719 -24267.65538719 -24267.65538719 -24267.64777461
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.94       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.48      3.79      0.14      9.38
 REAL TIME  *        16.89 SEC
 DISK USED  *       145.83 MB (local),        1.77 GB (total)
 SF USED    *       276.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -24267.72314   0.0
    -24267.65539   6.0
    -24267.65539   6.0
    -24267.65539   6.0
    -24267.65539   6.0
    -24267.65539   6.0
    -24267.64777   0.0
                                                  


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
 Number of external orbitals:      75 (  29  46 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.30 sec, npass=  1  Memory used:   3.49 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24267.72313620
     2    -24267.65538719
     3    -24267.65538719
     4    -24267.65538719
     5    -24267.65538719
     6    -24267.65538719
     7    -24267.64777461

 Number of blocks in overlap matrix:  2840   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    2840
 Number of N-1 electron functions:   23871

 Number of internal configurations:                28231
 Number of singly external configurations:        879446
 Number of doubly external configurations:       4016340
 Total number of contracted configurations:      4924017
 Total number of uncontracted configurations:   10722845

 Diagonal Coupling coefficients finished.               Storage:  25749778 words, CPU-Time:     32.66 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2556730 words, CPU-time:      0.51 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24267.72313620    -0.00000000    -0.36728675  0.13D-01  0.87D-01    45.82
    1     2     2     1.00000000     0.00000000-24267.65538719    -0.00000000    -0.35653464  0.11D-01  0.82D-01    45.82
    1     3     3     1.00000000     0.00000000-24267.65538719    -0.00000000    -0.35653683  0.11D-01  0.82D-01    45.82
    1     4     4     1.00000000     0.00000000-24267.65538719    -0.00000000    -0.35653883  0.11D-01  0.82D-01    45.82
    1     5     5     1.00000000     0.00000000-24267.65538719    -0.00000000    -0.35652278  0.11D-01  0.82D-01    45.82
    1     6     6     1.00000000     0.00000000-24267.65538719    -0.00000000    -0.35652911  0.11D-01  0.82D-01    45.82
    1     7     7     1.00000000     0.00000000-24267.64777461    -0.00000000    -0.35060724  0.98D-02  0.78D-01    45.82
    2     1     1     1.07255785    -0.31292627-24268.03606247    -0.31292627    -0.00539678  0.82D-03  0.95D-03   809.40
    2     2     2     1.06865718    -0.30712737-24267.96251456    -0.30712737    -0.00492563  0.68D-03  0.84D-03   809.40
    2     3     3     1.06865887    -0.30712663-24267.96251382    -0.30712663    -0.00492684  0.68D-03  0.84D-03   809.40
    2     4     4     1.06866441    -0.30712632-24267.96251351    -0.30712632    -0.00492734  0.68D-03  0.84D-03   809.40
    2     5     5     1.06866356    -0.30712322-24267.96251041    -0.30712322    -0.00493003  0.68D-03  0.84D-03   809.40
    2     6     6     1.06866434    -0.30712312-24267.96251031    -0.30712312    -0.00493013  0.68D-03  0.84D-03   809.40
    2     7     7     1.06532669    -0.30441656-24267.95219117    -0.30441656    -0.00468290  0.56D-03  0.75D-03   809.40
    3     1     1     1.07436674    -0.31842465-24268.04156086    -0.00549838    -0.00010845  0.13D-04  0.23D-04  1571.88
    3     2     2     1.07109908    -0.31217933-24267.96756652    -0.00505196    -0.00010073  0.14D-04  0.21D-04  1571.88
    3     3     3     1.07109847    -0.31217932-24267.96756651    -0.00505269    -0.00010073  0.14D-04  0.21D-04  1571.88
    3     4     4     1.07109785    -0.31217921-24267.96756640    -0.00505289    -0.00010076  0.14D-04  0.21D-04  1571.88
    3     5     5     1.07109714    -0.31217912-24267.96756631    -0.00505590    -0.00010089  0.14D-04  0.21D-04  1571.88
    3     6     6     1.07109709    -0.31217911-24267.96756630    -0.00505599    -0.00010089  0.14D-04  0.21D-04  1571.88
    3     7     7     1.06836591    -0.30924119-24267.95701579    -0.00482463    -0.00009491  0.11D-04  0.19D-04  1571.88
    4     1     1     1.07509578    -0.31854153-24268.04167774    -0.00011688    -0.00000458  0.18D-05  0.69D-06  2325.11
    4     2     2     1.07173782    -0.31228840-24267.96767559    -0.00010907    -0.00000483  0.24D-05  0.72D-06  2325.11
    4     3     3     1.07173760    -0.31228839-24267.96767558    -0.00010907    -0.00000483  0.24D-05  0.72D-06  2325.11
    4     4     4     1.07173749    -0.31228837-24267.96767556    -0.00010916    -0.00000484  0.24D-05  0.72D-06  2325.11
    4     5     5     1.07173750    -0.31228837-24267.96767556    -0.00010925    -0.00000484  0.24D-05  0.72D-06  2325.11
    4     6     6     1.07173732    -0.31228837-24267.96767556    -0.00010926    -0.00000485  0.24D-05  0.72D-06  2325.11
    4     7     7     1.06885533    -0.30934278-24267.95711739    -0.00010160    -0.00000403  0.12D-05  0.70D-06  2325.11
    5     1     1     1.07524894    -0.31854680-24268.04168301    -0.00000527    -0.00000017  0.32D-07  0.33D-07  3080.96
    5     2     2     1.07189953    -0.31229417-24267.96768136    -0.00000577    -0.00000026  0.90D-07  0.47D-07  3080.96
    5     3     3     1.07189952    -0.31229417-24267.96768136    -0.00000578    -0.00000026  0.91D-07  0.47D-07  3080.96
    5     4     4     1.07189952    -0.31229417-24267.96768136    -0.00000579    -0.00000026  0.91D-07  0.47D-07  3080.96
    5     5     5     1.07189952    -0.31229417-24267.96768136    -0.00000579    -0.00000026  0.91D-07  0.47D-07  3080.96
    5     6     6     1.07189951    -0.31229417-24267.96768135    -0.00000580    -0.00000026  0.91D-07  0.47D-07  3080.96
    5     7     7     1.06895644    -0.30934740-24267.95712201    -0.00000462    -0.00000015  0.23D-07  0.30D-07  3080.96
    6     1     1     1.07526828    -0.31854700-24268.04168321    -0.00000020    -0.00000000  0.98D-09  0.86D-09  3836.84
    6     2     2     1.07192688    -0.31229448-24267.96768167    -0.00000031    -0.00000001  0.32D-08  0.23D-08  3836.84
    6     3     3     1.07192687    -0.31229448-24267.96768167    -0.00000032    -0.00000001  0.32D-08  0.23D-08  3836.84
    6     4     4     1.07192687    -0.31229448-24267.96768167    -0.00000032    -0.00000001  0.32D-08  0.23D-08  3836.84
    6     5     5     1.07192688    -0.31229448-24267.96768167    -0.00000032    -0.00000001  0.32D-08  0.23D-08  3836.84
    6     6     6     1.07192687    -0.31229448-24267.96768167    -0.00000032    -0.00000001  0.32D-08  0.23D-08  3836.84
    6     7     7     1.06896812    -0.30934758-24267.95712219    -0.00000018    -0.00000000  0.98D-09  0.69D-09  3836.84


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.4%
 S   0.5%  69.1%
 P   0.4%  18.6%   3.7%

 Initialization:   0.9%
 Other:            3.5%

 Total CPU:     3836.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222200/00002222222222222           0.0000000   0.0000000   0.0000000   0.9656553   0.0000000   0.0000000   0.0000000
 22222220/000002222222222222          -0.0000000   0.0000000   0.9656553   0.0000000   0.0000000  -0.0000000  -0.0000000
 2222222000000/2222222222222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9656553   0.0000000
 222222200000/02222222222222           0.0000000   0.9656553   0.0000000   0.0000000  -0.0000713  -0.0000000  -0.0000000
 2222222/0000002222222222222           0.0000000   0.0000713   0.0000000   0.0000000   0.9656553  -0.0000000  -0.0000000
 22222220000/002222222222222          -0.0564329   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.9651550
 2222222000/0002222222222222           0.9625018   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0590514

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.962749   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.052038
 2           0.000000    0.000000    0.000000    0.965655    0.000071    0.000000   -0.000000
 3          -0.000000    0.965655    0.000000    0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.965655    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000071    0.965655   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.965655   -0.000000
 7           0.054644   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.965415

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.964154    0.000000   -0.000000    0.000000    0.000000    0.000000    0.001228
 2           0.000000    0.965655   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.965655    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.965655    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.965655   -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.965655    0.000000
 7           0.001228   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.966959


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96274947 (fixed)   0.96415479 (relaxed)   0.96415400 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043839   -0.00071563   -0.29662349
 Singles      0.00936282   -0.01960192   -0.02099554
 Pairs        0.06593845    0.02000492   -0.00092797
 Total        1.07573966   -0.00031262   -0.31854700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.72290621
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.35664326
 One electron energy               -33059.98566148
 Two electron energy                 8791.94397827
 Virial quotient                       -0.58596723
 Correlation energy                    -0.31877700
 !MRCI STATE 1.1 Energy              -24268.0416832096    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24268.06582727 (Davidson, fixed reference)
 Cluster corrected energies        -24268.06582672 (Davidson, relaxed reference)
 Cluster corrected energies        -24268.06582727 (Davidson, rotated reference)

 Cluster corrected energies        -24268.06629023 (Pople, fixed reference)
 Cluster corrected energies        -24268.06628962 (Pople, relaxed reference)
 Cluster corrected energies        -24268.06629023 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96565532 (fixed)   0.96565533 (relaxed)   0.96565533 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043888   -0.00069100   -0.27443794
 Singles      0.00807792   -0.01812503   -0.01925458
 Pairs        0.06388052    0.00000000   -0.01860196
 Total        1.07239732   -0.01881603   -0.31229448
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65538719
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.03951654
 One electron energy               -33056.35608616
 Two electron energy                 8788.38840449
 Virial quotient                       -0.58596993
 Correlation energy                    -0.31229448
 !MRCI STATE 2.1 Energy              -24267.9676816724    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24267.99029096 (Davidson, fixed reference)
 Cluster corrected energies        -24267.99029096 (Davidson, relaxed reference)
 Cluster corrected energies        -24267.99029096 (Davidson, rotated reference)

 Cluster corrected energies        -24267.99065100 (Pople, fixed reference)
 Cluster corrected energies        -24267.99065100 (Pople, relaxed reference)
 Cluster corrected energies        -24267.99065100 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96565533 (fixed)   0.96565533 (relaxed)   0.96565533 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043887   -0.00069100   -0.27443795
 Singles      0.00807792   -0.01812502   -0.01925458
 Pairs        0.06388052   -0.00000000   -0.01860195
 Total        1.07239731   -0.01881602   -0.31229448
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65538719
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.03951263
 One electron energy               -33056.35607722
 Two electron energy                 8788.38839555
 Virial quotient                       -0.58596993
 Correlation energy                    -0.31229448
 !MRCI STATE 3.1 Energy              -24267.9676816723    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24267.99029095 (Davidson, fixed reference)
 Cluster corrected energies        -24267.99029095 (Davidson, relaxed reference)
 Cluster corrected energies        -24267.99029095 (Davidson, rotated reference)

 Cluster corrected energies        -24267.99065100 (Pople, fixed reference)
 Cluster corrected energies        -24267.99065100 (Pople, relaxed reference)
 Cluster corrected energies        -24267.99065100 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96565533 (fixed)   0.96565533 (relaxed)   0.96565533 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043887   -0.00069100   -0.27443795
 Singles      0.00807791   -0.01812502   -0.01925458
 Pairs        0.06388052   -0.00000000   -0.01860195
 Total        1.07239731   -0.01881602   -0.31229448
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65538719
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.03951298
 One electron energy               -33056.35607770
 Two electron energy                 8788.38839603
 Virial quotient                       -0.58596993
 Correlation energy                    -0.31229448
 !MRCI STATE 4.1 Energy              -24267.9676816723    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24267.99029095 (Davidson, fixed reference)
 Cluster corrected energies        -24267.99029095 (Davidson, relaxed reference)
 Cluster corrected energies        -24267.99029095 (Davidson, rotated reference)

 Cluster corrected energies        -24267.99065100 (Pople, fixed reference)
 Cluster corrected energies        -24267.99065100 (Pople, relaxed reference)
 Cluster corrected energies        -24267.99065100 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96565532 (fixed)   0.96565533 (relaxed)   0.96565533 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043887   -0.00069100   -0.27443793
 Singles      0.00807793   -0.01812504   -0.01925459
 Pairs        0.06388051   -0.00000000   -0.01860196
 Total        1.07239732   -0.01881604   -0.31229448
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65538719
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.03951433
 One electron energy               -33056.35608237
 Two electron energy                 8788.38840069
 Virial quotient                       -0.58596993
 Correlation energy                    -0.31229448
 !MRCI STATE 5.1 Energy              -24267.9676816722    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24267.99029096 (Davidson, fixed reference)
 Cluster corrected energies        -24267.99029096 (Davidson, relaxed reference)
 Cluster corrected energies        -24267.99029096 (Davidson, rotated reference)

 Cluster corrected energies        -24267.99065100 (Pople, fixed reference)
 Cluster corrected energies        -24267.99065100 (Pople, relaxed reference)
 Cluster corrected energies        -24267.99065100 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96565533 (fixed)   0.96565533 (relaxed)   0.96565533 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043888   -0.00069100   -0.27443794
 Singles      0.00807793   -0.01812503   -0.01925458
 Pairs        0.06388051    0.00000000   -0.01860196
 Total        1.07239731   -0.01881603   -0.31229448
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.65538719
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.03951409
 One electron energy               -33056.35608011
 Two electron energy                 8788.38839844
 Virial quotient                       -0.58596993
 Correlation energy                    -0.31229448
 !MRCI STATE 6.1 Energy              -24267.9676816721    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24267.99029095 (Davidson, fixed reference)
 Cluster corrected energies        -24267.99029095 (Davidson, relaxed reference)
 Cluster corrected energies        -24267.99029095 (Davidson, rotated reference)

 Cluster corrected energies        -24267.99065100 (Pople, fixed reference)
 Cluster corrected energies        -24267.99065100 (Pople, relaxed reference)
 Cluster corrected energies        -24267.99065100 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96541461 (fixed)   0.96695984 (relaxed)   0.96695906 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050457   -0.00080925   -0.00133965
 Singles      0.00755777   -0.01844051   -0.01942836
 Pairs        0.06144515   -0.28963039   -0.28857957
 Total        1.06950749   -0.30888015   -0.30934758
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24267.64800460
 Nuclear energy                         0.00000000
 Kinetic energy                     41415.04436527
 One electron energy               -33050.89763848
 Two electron energy                 8782.94051629
 Virial quotient                       -0.58596960
 Correlation energy                    -0.30911759
 !MRCI STATE 7.1 Energy              -24267.9571221906    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24267.97860818 (Davidson, fixed reference)
 Cluster corrected energies        -24267.97860764 (Davidson, relaxed reference)
 Cluster corrected energies        -24267.97860818 (Davidson, rotated reference)

 Cluster corrected energies        -24267.97889029 (Pople, fixed reference)
 Cluster corrected energies        -24267.97888972 (Pople, relaxed reference)
 Cluster corrected energies        -24267.97889029 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      272.35       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4209.23   4195.75      3.79      0.14      9.38
 REAL TIME  *      4247.20 SEC
 DISK USED  *       417.25 MB (local),        4.95 GB (total)
 SF USED    *         2.41 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -24268.06582727  AU                              
 SETTING HLSDIAG(2)     =    -24267.99029096  AU                              
 SETTING HLSDIAG(3)     =    -24267.99029095  AU                              
 SETTING HLSDIAG(4)     =    -24267.99029095  AU                              
 SETTING HLSDIAG(5)     =    -24267.99029096  AU                              
 SETTING HLSDIAG(6)     =    -24267.99029095  AU                              
 SETTING HLSDIAG(7)     =    -24267.97860818  AU                              


         HLSDIAG
    -24268.06583
    -24267.99029
    -24267.99029
    -24267.99029
    -24267.99029
    -24267.99029
    -24267.97861
                                                  


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

 Time for Seward_LS:     244.23 sec

       18871196. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     4613 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    244.23 sec, REAL time:    244.92 sec


 SORTLS1 read    18877854. and wrote    18877854. SO integrals in    96 records. CPU time:      0.19 sec, REAL time:      0.29 sec
 SORTLS2 read    18877854. and wrote    93046131. SO integrals in    36 records. CPU time:      0.09 sec, REAL time:      0.14 sec

 FILE SIZES: FILE 1:   454.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   454.2 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies: -24268.041683 -24267.967682 -24267.967682 -24267.967682 -24267.967682 -24267.967682 -24267.957122
 Replaced energies: -24268.065827 -24267.990291 -24267.990291 -24267.990291 -24267.990291 -24267.990291 -24267.978608



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-24268.06582727

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.00   16578.31       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      14.68

    3   3.1  0.5  0.5       0.00       0.00   16578.31       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       8.48       0.00      -0.00       0.00       0.00     -14.68       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   16578.31       0.00       0.00       0.00      -0.00      14.68      -0.00
                            0.00      -0.00      -8.48      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   16578.31       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     -16.95      -0.00      -0.00      -0.00       8.47

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16578.31       0.00      -0.00      -0.00       8.48
                            0.00       0.00       0.00       0.00      16.95      -0.00      -0.00       0.00      -0.00      -0.00

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   19142.38      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    8   1.1  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00      14.68       0.00      -0.00       0.00       0.00   16578.31       0.00
                           -0.00       0.00      14.68       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   10   3.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       8.48       0.00       0.00       0.00   16578.31
                            0.00     -14.68      -0.00      -0.00      -8.47       0.00      -0.00       0.00      -0.00      -0.00

   11   4.1  0.5 -0.5       0.00     -14.68       0.00      -0.00       8.48      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       8.48       0.00      -0.00       0.00       8.48

   12   5.1  0.5 -0.5       0.00      -0.00      -0.00      -8.48      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       8.47       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   13   6.1  0.5 -0.5       0.00       0.00      -8.48       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -8.48      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   14   7.1  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00

    2   2.1  0.5  0.5     -14.68      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00

    3   3.1  0.5  0.5       0.00      -0.00      -8.48      -0.00
                           -0.00      -8.47       0.00      -0.00

    4   4.1  0.5  0.5      -0.00      -8.48       0.00       0.00
                            0.00      -0.00       8.48       0.00

    5   5.1  0.5  0.5       8.48      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00

    6   6.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                           -8.48      -0.00      -0.00      -0.00

    7   7.1  0.5  0.5      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -8.48      -0.00       0.00      -0.00

   11   4.1  0.5 -0.5   16578.31       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

   12   5.1  0.5 -0.5       0.00   16578.31       0.00       0.00
                           -0.00      -0.00      16.95       0.00

   13   6.1  0.5 -0.5       0.00       0.00   16578.31       0.00
                           -0.00     -16.95       0.00       0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   19142.38
                            0.00      -0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1-24268.06582727     0.00000000        0.00      0.00000000        0.00      0.0000
     2-24268.06582727     0.00000000        0.00      0.00000000        0.00      0.0000
     3-24267.99040680     0.07542047    16552.88      0.07542047    16552.88      2.0523
     4-24267.99040680     0.07542047    16552.88      0.07542047    16552.88      2.0523
     5-24267.99040680     0.07542047    16552.88      0.07542047    16552.88      2.0523
     6-24267.99040680     0.07542047    16552.88      0.07542047    16552.88      2.0523
     7-24267.99021373     0.07561355    16595.25      0.07561355    16595.25      2.0575
     8-24267.99021373     0.07561355    16595.25      0.07561355    16595.25      2.0575
     9-24267.99021372     0.07561355    16595.26      0.07561355    16595.26      2.0575
    10-24267.99021372     0.07561355    16595.26      0.07561355    16595.26      2.0575
    11-24267.99021372     0.07561355    16595.26      0.07561355    16595.26      2.0575
    12-24267.99021372     0.07561355    16595.26      0.07561355    16595.26      2.0575
    13-24267.97860818     0.08721909    19142.38      0.08721909    19142.38      2.3734
    14-24267.97860818     0.08721909    19142.38      0.08721909    19142.38      2.3734


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   1.000000000   0.000000000   0.000000065   0.000000006   0.000000000  -0.000000000   0.000000000   0.000000001
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.000000000  -0.000000000   0.630047775   0.054139682   0.010968944  -0.000050264  -0.000014733  -0.000101916
                        -0.000000000   0.000000000  -0.000000005  -0.000000004   0.000004729   0.000001963  -0.000000003  -0.000000018

    3    3.1  0.5  0.5  -0.000000000   0.000000060   0.046417505  -0.540181786  -0.001319319  -0.281976842  -0.088056994   0.012703384
                         0.000000000   0.000000000  -0.000003464   0.000041627   0.000689048   0.162886650  -0.174842700   0.025223340

    4    4.1  0.5  0.5  -0.000000000  -0.000000000   0.000003773  -0.000042656   0.000648649   0.153423917  -0.175006551   0.025247007
                        -0.000000000   0.000000059   0.047353023  -0.551067918   0.001242539   0.265594985   0.088139536  -0.012715309

    5    5.1  0.5  0.5   0.000000000  -0.000000000  -0.010929018  -0.000939204   0.632351205  -0.002887441   0.110022975   0.762652703
                        -0.000000000   0.000000000  -0.000000187  -0.000000236   0.000284569   0.000121818   0.000000811   0.000005335

    6    6.1  0.5  0.5  -0.000000000   0.000000000  -0.000000187  -0.000000236   0.000284568   0.000121818  -0.000000593  -0.000003921
                        -0.000000002   0.000000000   0.010880581   0.000935042  -0.632351162   0.002887441   0.081767506   0.566792116

    7    7.1  0.5  0.5  -0.000000000  -0.000000000   0.000000179   0.000000015  -0.000000003   0.000000000   0.000000001   0.000000006
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    8    1.1  0.5 -0.5   0.000000000  -0.002055236  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000
                        -0.000000000   0.999997888  -0.000000006   0.000000065   0.000000000   0.000000000  -0.000000000   0.000000000

    9    2.1  0.5 -0.5  -0.000000000   0.000000000  -0.000004178   0.000048662   0.000023422   0.005486500  -0.000091016   0.000013156
                         0.000000000  -0.000000000  -0.054139682   0.630047773   0.000044517   0.009498213   0.000045857  -0.000006630

   10    3.1  0.5 -0.5   0.000000000   0.000000000   0.000000097   0.000000121  -0.000146365  -0.000062603   0.000000216   0.000001403
                        -0.000000060  -0.000000000   0.540181787   0.046417505   0.325642411  -0.001487102  -0.028241687  -0.195765178

   11    4.1  0.5 -0.5  -0.000000059  -0.000000000   0.551067920   0.047353023  -0.306723938   0.001400408   0.028268190   0.195948646
                         0.000000000  -0.000000000   0.000000089   0.000000115  -0.000138210  -0.000059218   0.000000219   0.000001424

   12    5.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000309  -0.000001033   0.001337666   0.316302992   0.681143972  -0.098264218
                         0.000000000   0.000000000   0.000939203  -0.010929016   0.002561797   0.547558714  -0.343048152   0.049489376

   13    6.1  0.5 -0.5  -0.000000000  -0.000000002  -0.000935041   0.010880580  -0.002561797  -0.547558676  -0.254948234   0.036779791
                        -0.000000000  -0.000000000   0.000000309  -0.000001029   0.001337666   0.316302971  -0.506216064   0.073028571

   14    7.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000005  -0.000000001
                         0.000000000  -0.000000000  -0.000000015   0.000000179  -0.000000000  -0.000000002  -0.000000003   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5  -0.000000034   0.000000034  -0.000000002   0.000000023  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5   0.484209091  -0.483922024   0.036760236  -0.360552467   0.000000002  -0.000000000
                         0.000000032  -0.000000024  -0.000000006   0.000000086  -0.000000000  -0.000000000

    3    3.1  0.5  0.5   0.477272822   0.477555963   0.193668475   0.019745513   0.000000002   0.000000154
                         0.028226829   0.028243718   0.254690192   0.025966825   0.000000000   0.000000063

    4    4.1  0.5  0.5  -0.004764192  -0.004766865   0.586100543   0.059755865  -0.000000000  -0.000000063
                         0.080550593   0.080598358  -0.445674883  -0.045438905   0.000000002   0.000000152

    5    5.1  0.5  0.5   0.026246615  -0.026231003  -0.007086955   0.069511282  -0.000000000   0.000000000
                        -0.000000020  -0.000000084  -0.000000040   0.000000097   0.000000000   0.000000000

    6    6.1  0.5  0.5   0.000000124  -0.000000167  -0.000000097   0.000000216  -0.000000000  -0.000000000
                        -0.172548468   0.172446196   0.046762600  -0.458658566  -0.000000010   0.000000000

    7    7.1  0.5  0.5  -0.000000096   0.000000096  -0.000000007   0.000000064   0.999910490  -0.012698226
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.003033401  -0.002926542

    8    1.1  0.5 -0.5   0.000000002   0.000000002  -0.000000018  -0.000000002  -0.000000000   0.000000000
                        -0.000000034  -0.000000034   0.000000014   0.000000001   0.000000000  -0.000000000

    9    2.1  0.5 -0.5  -0.028570391  -0.028587332   0.287002110   0.029261385  -0.000000000  -0.000000001
                         0.483077898   0.483364464  -0.218238117  -0.022250535   0.000000000   0.000000002

   10    3.1  0.5 -0.5   0.000000122  -0.000000265  -0.000000140   0.000000363  -0.000000001  -0.000000000
                        -0.478390430   0.478106785   0.032621485  -0.319960273  -0.000000166   0.000000002

   11    4.1  0.5 -0.5  -0.080739205   0.080691366  -0.075069684   0.736301531  -0.000000165   0.000000002
                         0.000000085  -0.000000236  -0.000000134   0.000000264   0.000000000   0.000000000

   12    5.1  0.5 -0.5  -0.001548577  -0.001549602  -0.055331366  -0.005641239   0.000000000   0.000000000
                         0.026185254   0.026200831   0.042074441   0.004289683  -0.000000000  -0.000000000

   13    6.1  0.5 -0.5  -0.172145403  -0.172247496  -0.277620812  -0.028304929  -0.000000000  -0.000000010
                        -0.010180940  -0.010187021  -0.365095002  -0.037223267  -0.000000000  -0.000000004

   14    7.1  0.5 -0.5   0.000000006   0.000000006  -0.000000051  -0.000000005  -0.002088862  -0.380655275
                        -0.000000095  -0.000000095   0.000000039   0.000000004   0.012862591   0.924625195


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  39.696%   0.293%   0.012%   0.000%   0.000%   0.000%  23.446%  23.418%
    3    3.1  0.5  0.5   0.000%   0.000%   0.215%  29.180%   0.000%  10.604%   3.832%   0.080%  22.859%  22.886%
    4    4.1  0.5  0.5   0.000%   0.000%   0.224%  30.368%   0.000%   9.408%   3.840%   0.080%   0.651%   0.652%
    5    5.1  0.5  0.5   0.000%   0.000%   0.012%   0.000%  39.987%   0.001%   1.211%  58.164%   0.069%   0.069%
    6    6.1  0.5  0.5   0.000%   0.000%   0.012%   0.000%  39.987%   0.001%   0.669%  32.125%   2.977%   2.974%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   0.293%  39.696%   0.000%   0.012%   0.000%   0.000%  23.418%  23.446%
   10    3.1  0.5 -0.5   0.000%   0.000%  29.180%   0.215%  10.604%   0.000%   0.080%   3.832%  22.886%  22.859%
   11    4.1  0.5 -0.5   0.000%   0.000%  30.368%   0.224%   9.408%   0.000%   0.080%   3.840%   0.652%   0.651%
   12    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.012%   0.001%  39.987%  58.164%   1.211%   0.069%   0.069%
   13    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.012%   0.001%  39.987%  32.125%   0.669%   2.974%   2.977%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.135%  13.000%   0.000%   0.000%
    3    3.1  0.5  0.5  10.237%   0.106%   0.000%   0.000%
    4    4.1  0.5  0.5  54.214%   0.564%   0.000%   0.000%
    5    5.1  0.5  0.5   0.005%   0.483%   0.000%   0.000%
    6    6.1  0.5  0.5   0.219%  21.037%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%  99.983%   0.017%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5  13.000%   0.135%   0.000%   0.000%
   10    3.1  0.5 -0.5   0.106%  10.237%   0.000%   0.000%
   11    4.1  0.5 -0.5   0.564%  54.214%   0.000%   0.000%
   12    5.1  0.5 -0.5   0.483%   0.005%   0.000%   0.000%
   13    6.1  0.5 -0.5  21.037%   0.219%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.017%  99.983%


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
              1      24      433.19       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      272.35       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10865.21   6655.97   4195.75      3.79      0.14      9.38
 REAL TIME  *     10955.37 SEC
 DISK USED  *       417.34 MB (local),        5.97 GB (total)
 SF USED    *         2.41 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy= -24267.978608176818

              CI           MULTI         RHF-SCF
 -24267.95712219 -24267.64777461 -24267.59205420
 **********************************************************************************************************************************
 Molpro calculation terminated
