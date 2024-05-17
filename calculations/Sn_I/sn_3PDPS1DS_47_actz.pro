
 Working directory              : /wrk/irikura/molpro.FTVf2sjyqd/
 Global scratch directory       : /wrk/irikura/molpro.FTVf2sjyqd/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FTVf2sjyqd/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Sn SO-CI
                                                                                 ! trying to get minimal problem demonstration
 memory,1300,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCVTZ-DK3
 
 set,dkho=101
 
                                                                                 ! spherical dication (1S) orbitals
 {rhf;wf,nelec=48,sym=1,spin=0}
 
 NTRIP=12
 NSING=6
 
                                                                                 ! (4/7) active space (s + 2*p)
 {multi
     occ,15,15
     wf,nelec=50,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
     wf,nelec=50,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! free KL shells
 core,8,6
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
                                                                                 !lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 10-May-24          TIME: 15:39:57  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1300 MW
 Total memory per node:  15600 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1300.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK3
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SN     S augccpwCVTZ-DK3      selected for orbital group  1
 Library entry SN     P augccpwCVTZ-DK3      selected for orbital group  1
 Library entry SN     D augccpwCVTZ-DK3      selected for orbital group  1
 Library entry SN     F augccpwCVTZ-DK3      selected for orbital group  1
 Library entry SN     G augccpwCVTZ-DK3      selected for orbital group  1


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

   1  SN     50.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   50
 NUMBER OF PRIMITIVE AOS:         240
 NUMBER OF SYMMETRY AOS:          207
 NUMBER OF CONTRACTIONS:          109   (   54Ag  +   55Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     21.496 MB (compressed) written to integral file ( 15.0%)

     Node minimum: 0.786 MB, node maximum: 3.932 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     760824.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     760824      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    18047686. AND WROTE      147789. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1830907. AND WROTE     9150625. INTEGRALS IN     60 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      760322.  Node maximum:      766291. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 7 8 91011  12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.298E-04 0.111E-02 0.159E-01 0.167E-01 0.167E-01 0.167E-01 0.167E-01 0.167E-01
         2 0.242E-02 0.242E-02 0.242E-02 0.707E-02 0.707E-02 0.707E-02 0.951E-01 0.951E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.00      1.73
 REAL TIME  *         2.73 SEC
 DISK USED  *        29.63 MB (local),      414.05 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  14  10

 NELEC=   48   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -6084.60504268   -6084.60504268     0.00D+00     0.14D+01     0     0       0.01      0.02    start
   2    -6119.20716492     -34.60212224     0.54D+00     0.14D+01     1     0       0.00      0.02    diag
   3    -6169.62512300     -50.41795808     0.47D+00     0.21D+00     2     0       0.01      0.03    diag
   4    -6172.72282125      -3.09769825     0.11D+00     0.18D+00     3     0       0.00      0.03    diag
   5    -6172.96793599      -0.24511474     0.32D-01     0.27D-01     4     0       0.01      0.04    diag
   6    -6172.96981377      -0.00187777     0.24D-02     0.53D-02     5     0       0.00      0.04    diag
   7    -6172.96982923      -0.00001547     0.16D-03     0.23D-03     6     0       0.01      0.05    diag
   8    -6172.96982972      -0.00000049     0.41D-04     0.31D-04     7     0       0.00      0.05    fixocc
   9    -6172.96982975      -0.00000004     0.46D-05     0.18D-04     8     0       0.01      0.06    diag
  10    -6172.96982975      -0.00000000     0.27D-06     0.63D-06     9     0       0.00      0.06    diag/orth
  11    -6172.96982975       0.00000000     0.11D-07     0.41D-07     0     0       0.01      0.07    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -6172.969829754516
  RHF One-electron energy           -8458.981645824128
  RHF Two-electron energy            2286.011816069611
  RHF Kinetic energy                 7123.758090708948
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.866532769804

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1079.04077     1  1  s    0.98900
    2.1     2.00000  -166.86501     1  2  s    1.07346
    3.1     2.00000   -34.18930     1  3  s    0.84465
    4.1     2.00000   -19.53200     1  1  d0   0.99996
    5.1     2.00000   -19.53200     1  1  d1+ -0.28221    1  1  d1-  0.95931
    6.1     2.00000   -19.53200     1  1  d1+  0.95931    1  1  d1-  0.28221
    7.1     2.00000   -19.53200     1  1  d2+  0.97202
    8.1     2.00000   -19.53200     1  1  d2-  0.97202
    9.1     2.00000    -6.52363     1  4  s    1.09168
   10.1     2.00000    -1.94645     1  2  d1+ -0.30500    1  2  d1-  0.95706
   11.1     2.00000    -1.94645     1  2  d1+  0.95706    1  2  d1-  0.30500
   12.1     2.00000    -1.94645     1  2  d0   1.00448
   13.1     2.00000    -1.94645     1  2  d2+  0.97642
   14.1     2.00000    -1.94645     1  2  d2-  0.97642
   15.1     2.00000    -1.05761     1  5  s    1.09341
    1.2     2.00000  -149.69231     1  1  pz   0.99999
    2.2     2.00000  -149.69231     1  1  px   0.87130    1  1  py  -0.49073
    3.2     2.00000  -149.69231     1  1  px   0.49073    1  1  py   0.87130
    4.2     2.00000   -28.42265     1  2  pz   1.00016
    5.2     2.00000   -28.42265     1  2  px  -0.25272    1  2  py   0.96770
    6.2     2.00000   -28.42265     1  2  px   0.96770    1  2  py   0.25272
    7.2     2.00000    -4.68852     1  3  pz   0.99711
    8.2     2.00000    -4.68852     1  3  py   0.98071
    9.2     2.00000    -4.68852     1  3  px   0.98071


 HOMO     15.1    -1.057606 =     -28.7789eV
 LUMO     10.2    -0.495066 =     -13.4714eV
 LUMO-HOMO         0.562541 =      15.3075eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.49       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.11      0.12      1.73
 REAL TIME  *         3.25 SEC
 DISK USED  *        30.26 MB (local),      421.70 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.243D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.228D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.196D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.195D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.242D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.242D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.638D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.195D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.195D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 5 3 1 6   4 2 5 3 1 1 2 6 4 5   3 1 2 6 4 5 3 1 2 6   4 5 3 2 6 4 5 3 1 7
                                       11 9 81214151310 2 6   4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.822D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.361D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.360D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.176D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.207D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.207D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.175D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.155D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.155D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.169D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.169D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.199D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.181D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.163D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.163D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 1   2 3 3 2 1 3 2 1 6 5   410 8 7 9 6 5 4 810   7 9 3 2 1 6 5 410 8
                                        7 9 3 2 1 6 5 410 8   9 7 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
                                          0.05556   0.05556   0.05556   0.05556
 Weight factors for state symmetry  2:    0.05556   0.05556   0.05556   0.05556   0.05556   0.05556
 
 Number of orbital rotations:  1253  ( 68 closed/active, 906 closed/virtual, 0 active/active, 279 active/virtual )
 Total number of variables:    4439
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -6173.60864986   -6173.62586165   -0.01721180    0.18055373 0.00005583 0.00000000  0.39E+00      0.76
   2    7   12    0  -6173.62631524   -6173.62635260   -0.00003736    0.00670942 0.00000191 0.00000000  0.24E-01      1.73
   3    8   16    0  -6173.62635266   -6173.62635266   -0.00000000    0.00001606 0.00000000 0.00000000  0.57E-04      2.79
   4   14   28    0  -6173.62635266   -6173.62635266   -0.00000000    0.00000001 0.00000001 0.00000000  0.46E-07      3.92

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.83E-08)
                       Final energy:  -6173.62635266
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -6173.729746161807
 Nuclear energy                                  0.00000000
 Kinetic energy                               7125.00286279
 One electron energy                         -8492.06856607
 Two electron energy                          2318.33881990
 Virial ratio                                    1.86648804
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -6173.729746160876
 Nuclear energy                                  0.00000000
 Kinetic energy                               7125.00286284
 One electron energy                         -8492.06856628
 Two electron energy                          2318.33882011
 Virial ratio                                    1.86648804
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -6173.729746159851
 Nuclear energy                                  0.00000000
 Kinetic energy                               7125.00286289
 One electron energy                         -8492.06856649
 Two electron energy                          2318.33882033
 Virial ratio                                    1.86648804
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -6173.552443274612
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.87163258
 One electron energy                         -8480.97356482
 Two electron energy                          2307.42112154
 Virial ratio                                    1.86660074
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -6173.552443274549
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.87163257
 One electron energy                         -8480.97356482
 Two electron energy                          2307.42112154
 Virial ratio                                    1.86660074
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -6173.552443274095
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.87163256
 One electron energy                         -8480.97356478
 Two electron energy                          2307.42112151
 Virial ratio                                    1.86660074
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -6173.552443273617
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.87163254
 One electron energy                         -8480.97356476
 Two electron energy                          2307.42112149
 Virial ratio                                    1.86660074
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -6173.552443273536
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.87163254
 One electron energy                         -8480.97356475
 Two electron energy                          2307.42112148
 Virial ratio                                    1.86660074
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -6173.545741062993
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.09736325
 One electron energy                         -8482.25651114
 Two electron energy                          2308.71077008
 Virial ratio                                    1.86657234
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -6173.545741062523
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.09736324
 One electron energy                         -8482.25651110
 Two electron energy                          2308.71077003
 Virial ratio                                    1.86657234
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -6173.545741061955
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.09736322
 One electron energy                         -8482.25651107
 Two electron energy                          2308.71077001
 Virial ratio                                    1.86657234
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -6173.544905634522
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.87035709
 One electron energy                         -8480.96826483
 Two electron energy                          2307.42335920
 Virial ratio                                    1.86659984
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -6173.695020019936
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.88739467
 One electron energy                         -8491.34249324
 Two electron energy                          2317.64747322
 Virial ratio                                    1.86649721
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -6173.695020019763
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.88739468
 One electron energy                         -8491.34249327
 Two electron energy                          2317.64747325
 Virial ratio                                    1.86649721
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -6173.695020018628
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.88739473
 One electron energy                         -8491.34249346
 Two electron energy                          2317.64747344
 Virial ratio                                    1.86649721
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -6173.695020017410
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.88739478
 One electron energy                         -8491.34249365
 Two electron energy                          2317.64747363
 Virial ratio                                    1.86649721
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -6173.695020017218
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.88739479
 One electron energy                         -8491.34249368
 Two electron energy                          2317.64747366
 Virial ratio                                    1.86649721
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -6173.665664048503
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.71442236
 One electron energy                         -8490.37011647
 Two electron energy                          2316.70445242
 Virial ratio                                    1.86651412
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000001
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999999
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     2.029744184069
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000293
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999999999598
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.970258645326
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000000000000
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.041248979017
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999998
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000079
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.958751714930
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999991
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000010
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.716987157906
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999999923
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000063
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.283011390795
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.247693123015
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000016
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999985
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999951
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.752306542418
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000009
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999999991
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.253268658025
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.999999999785
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000000338
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     3.746729963879
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000000000
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.711057897968
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999984
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000017
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999970
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.288941742652
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 2 6 1 5   3 4 2 6 1 1 3 5 4 2   6 1 4 5 3 2 6 1 3 5   4 2 6 3 5 4 2 6 110
                                       131415 9 812 711 2 3   5 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   2 1 2 3 1 1 2 3 9 7   4 810 6 5 3 1 2 9 7   410 8 6 5 9 7 410 8
                                        6 5 1 2 3 9 7 810 4   6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1078.47625     1  1  s    0.98900
    2.1     2.00000  -166.30407     1  2  s    1.07350
    3.1     2.00000   -33.62995     1  3  s    0.84457
    4.1     2.00000   -18.97293     1  1  d2-  0.99998
    5.1     2.00000   -18.97293     1  1  d2+  0.99998
    6.1     2.00000   -18.97293     1  1  d1+  0.99998
    7.1     2.00000   -18.97293     1  1  d0   0.99998
    8.1     2.00000   -18.97293     1  1  d1-  0.99998
    9.1     2.00000    -5.96627     1  4  s    1.09178
   10.1     2.00000    -1.39155     1  2  d2+  1.00076
   11.1     2.00000    -1.39155     1  2  d2-  1.00076
   12.1     2.00000    -1.39155     1  2  d1+  1.00076
   13.1     2.00000    -1.39155     1  2  d0   1.00076
   14.1     2.00000    -1.39155     1  2  d1-  1.00076
   15.1     1.95546    -0.56692     1  5  s    1.07329
    1.2     2.00000  -149.13162     1  1  px   0.99999
    2.2     2.00000  -149.13162     1  1  py   0.99999
    3.2     2.00000  -149.13162     1  1  pz   0.99999
    4.2     2.00000   -27.86444     1  2  px   1.00021
    5.2     2.00000   -27.86444     1  2  py   1.00021
    6.2     2.00000   -27.86444     1  2  pz   1.00021
    7.2     2.00000    -4.13330     1  3  px   0.99923
    8.2     2.00000    -4.13330     1  3  py   0.99923
    9.2     2.00000    -4.13330     1  3  pz   0.99923
   10.2     0.51181    -0.10477     1  4  pz   1.06861
   11.2     0.51181    -0.10477     1  4  py   1.06861
   12.2     0.51181    -0.10477     1  4  px   1.06861
   13.2     0.16970     0.04580     1  4  py  -0.46626    1  9  py   1.19229
   14.2     0.16970     0.04580     1  4  pz  -0.46626    1  9  pz   1.19229
   15.2     0.16970     0.04580     1  4  px  -0.46626    1  9  px   1.19229
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a0a000      -0.00000297      0.00000080      0.99172651     -0.00000000     -0.00000001     -0.00000000      0.00000000
 2 aa0000      -0.00000026      0.99172651     -0.00000080     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 0aa000       0.99172651      0.00000026      0.00000297     -0.00000000      0.00000000      0.00000000     -0.00000000
 2 a000a0       0.00000000     -0.00000000      0.00000000      0.78023953     -0.00002675     -0.00000374      0.00000033
 2 0a0a00       0.00000000     -0.00000000     -0.00000000     -0.21443942      0.00000707      0.00000848     -0.00000009
 2 0a00a0       0.00000000     -0.00954567      0.00000001      0.00000147      0.00000080      0.69817177      0.00000006
 2 00a0a0       0.00000003     -0.00000001     -0.00954568      0.00002401      0.69817176     -0.00000080     -0.00000006
 2 0a000a       0.00954568      0.00000000      0.00000003     -0.00000030      0.00000006     -0.00000006      0.69817176
 2 00aa00      -0.00954568     -0.00000000     -0.00000003     -0.00000030      0.00000006     -0.00000006      0.69817174
 2 a0000a      -0.00000003      0.00000001      0.00954568      0.00002401      0.69817174     -0.00000080     -0.00000006
 2 a00a00      -0.00000000      0.00954568     -0.00000001      0.00000147      0.00000080      0.69817173      0.00000006
 2 00a00a      -0.00000000      0.00000000      0.00000000     -0.56579996      0.00001969     -0.00000474     -0.00000024
 2 000aa0      -0.00000000      0.01875416     -0.00000002      0.00000000      0.00000000     -0.00000000      0.00000000
 2 0000aa       0.00000006     -0.00000002     -0.01875416      0.00000000      0.00000000     -0.00000000      0.00000000
 2 000a0a      -0.01875416     -0.00000000     -0.00000006     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 2aa000      -0.11557435     -0.00000003     -0.00000035      0.00000000     -0.00000000      0.00000000      0.00000000
 0 aa2000       0.00000003     -0.11557435      0.00000009      0.00000000      0.00000000      0.00000000      0.00000000
 0 a2a000       0.00000035     -0.00000009     -0.11557434      0.00000000      0.00000000      0.00000000     -0.00000000
 0 a200a0      -0.00000000      0.00000000      0.00000000     -0.08426856      0.00000289      0.00000040     -0.00000004
 0 2a0a00      -0.00000000      0.00000000      0.00000000      0.02241570     -0.00000074     -0.00000091      0.00000001
 0 a020a0       0.00000000      0.00000000     -0.00000000     -0.08390590      0.00000288      0.00000041     -0.00000004
 0 0a2a00      -0.00000000      0.00000000      0.00000000      0.02380502     -0.00000079     -0.00000091      0.00000001
 0 2a000a       0.00092402      0.00000000      0.00000000      0.00000003     -0.00000001      0.00000001     -0.07560301
 0 0a20a0       0.00000000     -0.00092402      0.00000000     -0.00000016     -0.00000009     -0.07560301     -0.00000001
 0 20aa00      -0.00092402     -0.00000000     -0.00000000      0.00000003     -0.00000001      0.00000001     -0.07560301
 0 02a0a0       0.00000000     -0.00000000     -0.00092402     -0.00000260     -0.07560301      0.00000009      0.00000001
 0 a02a00      -0.00000000      0.00092402     -0.00000000     -0.00000016     -0.00000009     -0.07560301     -0.00000001
 0 a2000a      -0.00000000      0.00000000      0.00092402     -0.00000260     -0.07560301      0.00000009      0.00000001
 0 2a00a0      -0.00000001      0.02419568     -0.00000002     -0.00000016     -0.00000009     -0.07488239     -0.00000001
 0 20a0a0      -0.00000007      0.00000002      0.02419568     -0.00000258     -0.07488239      0.00000009      0.00000001
 0 0a200a      -0.02419568     -0.00000001     -0.00000007      0.00000003     -0.00000001      0.00000001     -0.07488239
 0 a0200a       0.00000007     -0.00000002     -0.02419568     -0.00000258     -0.07488239      0.00000009      0.00000001
 0 02aa00       0.02419568      0.00000001      0.00000007      0.00000003     -0.00000001      0.00000001     -0.07488238
 0 a20a00       0.00000001     -0.02419568      0.00000002     -0.00000016     -0.00000009     -0.07488238     -0.00000001
 0 20a00a       0.00000000     -0.00000000     -0.00000000      0.06046352     -0.00000210      0.00000052      0.00000003
 0 02a00a       0.00000000     -0.00000000     -0.00000000      0.06149019     -0.00000214      0.00000050      0.00000003
 
 Energy:    -6173.72974616  -6173.72974616  -6173.72974616  -6173.55244327  -6173.55244327  -6173.55244327  -6173.55244327

 State:              8               9              10              11              12
 2 a0a000       0.00000000     -0.01845320     -0.00000001     -0.00000001     -0.00000000
 2 aa0000       0.00000000      0.00000001     -0.01845320      0.00000000      0.00000000
 2 0aa000      -0.00000000      0.00000001     -0.00000000     -0.01845320      0.00000000
 2 a000a0      -0.20285816     -0.00000000     -0.00000000     -0.00000000      0.56987122
 2 0a0a00       0.77713622     -0.00000000      0.00000000     -0.00000000      0.56987139
 2 0a00a0      -0.00000722      0.00000029     -0.69256309      0.00000000      0.00000000
 2 00a0a0       0.00000028     -0.69256310     -0.00000029     -0.00000028     -0.00000000
 2 0a000a      -0.00000000     -0.00000028      0.00000000      0.69256310     -0.00000000
 2 00aa00      -0.00000000      0.00000028     -0.00000000     -0.69256312     -0.00000000
 2 a0000a       0.00000028      0.69256313      0.00000029      0.00000028      0.00000000
 2 a00a00      -0.00000722     -0.00000029      0.69256313     -0.00000000     -0.00000000
 2 00a00a      -0.57427821     -0.00000000      0.00000000      0.00000000      0.56987131
 2 000aa0      -0.00000000     -0.00000005      0.12758280     -0.00000000     -0.00000000
 2 0000aa       0.00000000     -0.12758280     -0.00000005     -0.00000005     -0.00000000
 2 000a0a      -0.00000000      0.00000005     -0.00000000     -0.12758280     -0.00000000
 0 2aa000      -0.00000000     -0.00000000      0.00000000      0.00738324     -0.00000000
 0 aa2000      -0.00000000     -0.00000000      0.00738324     -0.00000000     -0.00000000
 0 a2a000       0.00000000      0.00738324      0.00000000      0.00000000      0.00000000
 0 a200a0       0.02116480      0.00000000      0.00000000      0.00000000     -0.06223001
 0 2a0a00      -0.08394447      0.00000000     -0.00000000      0.00000000     -0.06223003
 0 a020a0       0.02255967      0.00000000      0.00000000      0.00000000     -0.06223001
 0 0a2a00      -0.08356110      0.00000000     -0.00000000      0.00000000     -0.06223003
 0 2a000a       0.00000000      0.00000003     -0.00000000     -0.07559650      0.00000000
 0 0a20a0       0.00000078     -0.00000003      0.07559650     -0.00000000     -0.00000000
 0 20aa00       0.00000000     -0.00000003      0.00000000      0.07559650      0.00000000
 0 02a0a0      -0.00000003      0.07559650      0.00000003      0.00000003      0.00000000
 0 a02a00       0.00000078      0.00000003     -0.07559650      0.00000000      0.00000000
 0 a2000a      -0.00000003     -0.07559650     -0.00000003     -0.00000003     -0.00000000
 0 2a00a0       0.00000077     -0.00000003      0.07259152     -0.00000000     -0.00000000
 0 20a0a0      -0.00000003      0.07259152      0.00000003      0.00000003      0.00000000
 0 0a200a       0.00000000      0.00000003     -0.00000000     -0.07259152      0.00000000
 0 a0200a      -0.00000003     -0.07259152     -0.00000003     -0.00000003     -0.00000000
 0 02aa00       0.00000000     -0.00000003      0.00000000      0.07259152      0.00000000
 0 a20a00       0.00000077      0.00000003     -0.07259152      0.00000000      0.00000000
 0 20a00a       0.06239632      0.00000000     -0.00000000     -0.00000000     -0.06223002
 0 02a00a       0.06138481      0.00000000     -0.00000000     -0.00000000     -0.06223001
 
 Energy:    -6173.55244327  -6173.54574106  -6173.54574106  -6173.54574106  -6173.54490563
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000       0.78141939     -0.00000113      0.00000553      0.00000164     -0.20076686      0.55691521
 2 200000      -0.21684048      0.00000006     -0.00000513     -0.00000548      0.77711241      0.55691529
 2 ab0000      -0.00000404      0.00000006      0.69870785      0.00000038      0.00000349      0.00000000
 2 ba0000       0.00000404     -0.00000006     -0.69870785     -0.00000038     -0.00000349     -0.00000000
 2 0ab000       0.00000108      0.69870785     -0.00000006      0.00000160      0.00000024     -0.00000000
 2 0ba000      -0.00000108     -0.69870785      0.00000006     -0.00000160     -0.00000024      0.00000000
 2 b0a000       0.00000022      0.00000160      0.00000038     -0.69870785     -0.00000487      0.00000000
 2 a0b000      -0.00000022     -0.00000160     -0.00000038      0.69870785      0.00000487     -0.00000000
 2 002000      -0.56457884      0.00000107     -0.00000039      0.00000384     -0.57634563      0.55691525
 0 202000       0.09082830     -0.00000013      0.00000064      0.00000019     -0.02333613     -0.12458811
 0 220000      -0.06562385      0.00000012     -0.00000005      0.00000045     -0.06699154     -0.12458810
 0 022000      -0.02520447      0.00000001     -0.00000060     -0.00000064      0.09032769     -0.12458810
 0 2ba000       0.00000013      0.08121433     -0.00000001      0.00000019      0.00000003     -0.00000000
 0 2ab000      -0.00000013     -0.08121433      0.00000001     -0.00000019     -0.00000003      0.00000000
 0 ab2000       0.00000047     -0.00000001     -0.08121433     -0.00000004     -0.00000041     -0.00000000
 0 ba2000      -0.00000047      0.00000001      0.08121433      0.00000004      0.00000041      0.00000000
 0 b2a000      -0.00000003     -0.00000019     -0.00000004      0.08121432      0.00000057     -0.00000000
 0 a2b000       0.00000003      0.00000019      0.00000004     -0.08121432     -0.00000057      0.00000000
 2 a000b0      -0.01218006      0.00000000     -0.00000029     -0.00000031      0.04365087      0.05735161
 2 b000a0       0.01218006     -0.00000000      0.00000029      0.00000031     -0.04365087     -0.05735161
 2 00a00b      -0.03171273      0.00000006     -0.00000002      0.00000022     -0.03237368      0.05735161
 2 00b00a       0.03171273     -0.00000006      0.00000002     -0.00000022      0.03237368     -0.05735161
 2 0a0b00       0.04389279     -0.00000006      0.00000031      0.00000009     -0.01127719      0.05735160
 2 0b0a00      -0.04389279      0.00000006     -0.00000031     -0.00000009      0.01127719     -0.05735160
 
 Energy:    -6173.69502002  -6173.69502002  -6173.69502002  -6173.69502002  -6173.69502002  -6173.66566405
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.81      3.69      0.12      1.73
 REAL TIME  *         7.71 SEC
 DISK USED  *        62.13 MB (local),      804.08 MB (total)
 SF USED    *        77.59 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -6173.729746   2.0
    -6173.729746   2.0
    -6173.729746   2.0
    -6173.552443   6.0
    -6173.552443   6.0
    -6173.552443   6.0
    -6173.552443   6.0
    -6173.552443   6.0
    -6173.545741   2.0
    -6173.545741   2.0
    -6173.545741   2.0
    -6173.544906   0.0
    -6173.695020   6.0
    -6173.695020   6.0
    -6173.695020   6.0
    -6173.695020   6.0
    -6173.695020   6.0
    -6173.665664   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 50
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    18284 conf    76944 CSFs
 N-1 el internal:    12821 conf    88545 CSFs
 N-2 el internal:     4717 conf    46537 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.08 sec, npass=  1  Memory used:   1.05 MW


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -6173.72974616
     2     -6173.72974616
     3     -6173.72974616
     4     -6173.55244327
     5     -6173.55244327
     6     -6173.55244327
     7     -6173.55244327
     8     -6173.55244327
     9     -6173.54574106
    10     -6173.54574106
    11     -6173.54574106
    12     -6173.54490563

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2320D-06

 Number of blocks in overlap matrix:  1073   Smallest eigenvalue:  0.23D-06
 Number of N-2 electron functions:    2547
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3497694
 Number of doubly external configurations:       3977340
 Total number of contracted configurations:      7513440
 Total number of uncontracted configurations:   75813963

 Diagonal Coupling coefficients finished.               Storage:  25507163 words, CPU-Time:     80.36 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1337578 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.72974616     0.00000000    -0.78827292  0.50D-01  0.98D-01    93.96
    1     2     2     1.00000000     0.00000000 -6173.72974616    -0.00000000    -0.78833621  0.50D-01  0.98D-01    93.96
    1     3     3     1.00000000     0.00000000 -6173.72974616    -0.00000000    -0.78841423  0.50D-01  0.98D-01    93.96
    1     4     4     1.00000000     0.00000000 -6173.55244327     0.00000000    -0.75500053  0.39D-01  0.89D-01    93.96
    1     5     5     1.00000000     0.00000000 -6173.55244327     0.00000000    -0.75473906  0.39D-01  0.89D-01    93.96
    1     6     6     1.00000000     0.00000000 -6173.55244327     0.00000000    -0.75480602  0.39D-01  0.89D-01    93.96
    1     7     7     1.00000000     0.00000000 -6173.55244327     0.00000000    -0.75471834  0.39D-01  0.89D-01    93.96
    1     8     8     1.00000000     0.00000000 -6173.55244327     0.00000000    -0.75507647  0.39D-01  0.89D-01    93.96
    1     9     9     1.00000000     0.00000000 -6173.54574106     0.00000000    -0.76104995  0.44D-01  0.90D-01    93.96
    1    10    10     1.00000000     0.00000000 -6173.54574106     0.00000000    -0.76117660  0.44D-01  0.90D-01    93.96
    1    11    11     1.00000000     0.00000000 -6173.54574106    -0.00000000    -0.76103086  0.44D-01  0.90D-01    93.96
    1    12    12     1.00000000     0.00000000 -6173.54490563     0.00000000    -0.75609141  0.41D-01  0.90D-01    93.96
    2     1     1     1.09152636    -0.62056573 -6174.35031189    -0.62056573    -0.01674705  0.34D-02  0.12D-02   466.39
    2     2     2     1.09164398    -0.62049401 -6174.35024017    -0.62049401    -0.01682593  0.35D-02  0.12D-02   466.39
    2     3     3     1.09168282    -0.62037876 -6174.35012492    -0.62037876    -0.01695151  0.36D-02  0.13D-02   466.39
    2     4     4     1.08299587    -0.60950608 -6174.16194935    -0.60950608    -0.01358694  0.23D-02  0.93D-03   466.39
    2     5     5     1.08285218    -0.60949675 -6174.16194002    -0.60949675    -0.01360130  0.23D-02  0.94D-03   466.39
    2     6     6     1.08287103    -0.60948472 -6174.16192800    -0.60948472    -0.01361462  0.23D-02  0.94D-03   466.39
    2     7     7     1.08300977    -0.60948312 -6174.16192639    -0.60948312    -0.01361233  0.24D-02  0.93D-03   466.39
    2     8     8     1.08291540    -0.60946752 -6174.16191080    -0.60946752    -0.01363276  0.24D-02  0.94D-03   466.39
    2     9     9     1.08528502    -0.61039115 -6174.15613221    -0.61039115    -0.01469017  0.31D-02  0.99D-03   466.39
    2    10    10     1.08530090    -0.61037959 -6174.15612065    -0.61037959    -0.01470408  0.31D-02  0.99D-03   466.39
    2    11    11     1.08536115    -0.61037033 -6174.15611139    -0.61037033    -0.01471486  0.31D-02  0.99D-03   466.39
    2    12    12     1.08389876    -0.60958721 -6174.15449285    -0.60958721    -0.01399296  0.27D-02  0.94D-03   466.39
    3     1     1     1.08129010    -0.63652602 -6174.36627218    -0.01596029    -0.00042482  0.62D-04  0.49D-04   838.37
    3     2     2     1.08129230    -0.63652235 -6174.36626851    -0.01602834    -0.00042843  0.62D-04  0.50D-04   838.37
    3     3     3     1.08125187    -0.63652217 -6174.36626833    -0.01614341    -0.00042878  0.63D-04  0.49D-04   838.37
    3     4     4     1.07724664    -0.62254774 -6174.17499102    -0.01304166    -0.00029614  0.33D-04  0.32D-04   838.37
    3     5     5     1.07724609    -0.62254735 -6174.17499063    -0.01305060    -0.00029660  0.33D-04  0.32D-04   838.37
    3     6     6     1.07724728    -0.62254641 -6174.17498969    -0.01306169    -0.00029749  0.33D-04  0.32D-04   838.37
    3     7     7     1.07727544    -0.62254508 -6174.17498836    -0.01306196    -0.00029887  0.33D-04  0.33D-04   838.37
    3     8     8     1.07727280    -0.62254427 -6174.17498754    -0.01307674    -0.00029961  0.33D-04  0.33D-04   838.37
    3     9     9     1.07778102    -0.62443710 -6174.17017816    -0.01404595    -0.00034661  0.48D-04  0.37D-04   838.37
    3    10    10     1.07778003    -0.62443666 -6174.17017772    -0.01405707    -0.00034716  0.49D-04  0.37D-04   838.37
    3    11    11     1.07778887    -0.62443540 -6174.17017646    -0.01406507    -0.00034833  0.49D-04  0.37D-04   838.37
    3    12    12     1.07753595    -0.62303617 -6174.16794181    -0.01344896    -0.00031189  0.35D-04  0.35D-04   838.37
    4     1     1     1.08123261    -0.63696917 -6174.36671533    -0.00044315    -0.00001918  0.31D-05  0.23D-05  1212.44
    4     2     2     1.08123168    -0.63696913 -6174.36671529    -0.00044678    -0.00001921  0.31D-05  0.24D-05  1212.44
    4     3     3     1.08123192    -0.63696900 -6174.36671516    -0.00044683    -0.00001933  0.31D-05  0.24D-05  1212.44
    4     4     4     1.07784976    -0.62285473 -6174.17529800    -0.00030699    -0.00001276  0.27D-05  0.13D-05  1212.44
    4     5     5     1.07784930    -0.62285473 -6174.17529800    -0.00030738    -0.00001277  0.27D-05  0.13D-05  1212.44
    4     6     6     1.07784796    -0.62285468 -6174.17529795    -0.00030827    -0.00001281  0.27D-05  0.13D-05  1212.44
    4     7     7     1.07784618    -0.62285464 -6174.17529791    -0.00030955    -0.00001298  0.27D-05  0.13D-05  1212.44
    4     8     8     1.07784550    -0.62285459 -6174.17529786    -0.00031032    -0.00001302  0.27D-05  0.14D-05  1212.44
    4     9     9     1.07821529    -0.62479469 -6174.17053575    -0.00035759    -0.00001593  0.35D-05  0.16D-05  1212.44
    4    10    10     1.07821479    -0.62479467 -6174.17053573    -0.00035801    -0.00001595  0.35D-05  0.17D-05  1212.44
    4    11    11     1.07821369    -0.62479459 -6174.17053566    -0.00035919    -0.00001600  0.35D-05  0.17D-05  1212.44
    4    12    12     1.07815762    -0.62335985 -6174.16826549    -0.00032368    -0.00001369  0.26D-05  0.16D-05  1212.44
    5     1     1     1.08128754    -0.63699025 -6174.36673641    -0.00002108    -0.00000080  0.73D-07  0.12D-06  1585.53
    5     2     2     1.08128863    -0.63699024 -6174.36673640    -0.00002112    -0.00000080  0.72D-07  0.12D-06  1585.53
    5     3     3     1.08128742    -0.63699024 -6174.36673640    -0.00002124    -0.00000081  0.74D-07  0.12D-06  1585.53
    5     4     4     1.07798337    -0.62286922 -6174.17531249    -0.00001449    -0.00000056  0.68D-07  0.93D-07  1585.53
    5     5     5     1.07798327    -0.62286922 -6174.17531249    -0.00001449    -0.00000056  0.67D-07  0.94D-07  1585.53
    5     6     6     1.07798387    -0.62286907 -6174.17531235    -0.00001440    -0.00000056  0.69D-07  0.92D-07  1585.53
    5     7     7     1.07798370    -0.62286907 -6174.17531235    -0.00001444    -0.00000056  0.69D-07  0.93D-07  1585.53
    5     8     8     1.07798388    -0.62286907 -6174.17531235    -0.00001448    -0.00000056  0.69D-07  0.93D-07  1585.53
    5     9     9     1.07831466    -0.62481206 -6174.17055312    -0.00001737    -0.00000079  0.12D-06  0.12D-06  1585.53
    5    10    10     1.07831462    -0.62481206 -6174.17055312    -0.00001739    -0.00000079  0.12D-06  0.12D-06  1585.53
    5    11    11     1.07831416    -0.62481206 -6174.17055312    -0.00001746    -0.00000079  0.12D-06  0.12D-06  1585.53
    5    12    12     1.07832723    -0.62337527 -6174.16828091    -0.00001542    -0.00000062  0.66D-07  0.12D-06  1585.53
    6     1     1     1.08127655    -0.63699112 -6174.36673729    -0.00000088    -0.00000004  0.47D-08  0.67D-08  1957.30
    6     2     2     1.08127654    -0.63699112 -6174.36673729    -0.00000088    -0.00000004  0.46D-08  0.67D-08  1957.30
    6     3     3     1.08127645    -0.63699112 -6174.36673728    -0.00000088    -0.00000004  0.46D-08  0.67D-08  1957.30
    6     4     4     1.07799121    -0.62286985 -6174.17531313    -0.00000063    -0.00000004  0.42D-08  0.86D-08  1957.30
    6     5     5     1.07799116    -0.62286985 -6174.17531313    -0.00000064    -0.00000004  0.43D-08  0.87D-08  1957.30
    6     6     6     1.07799143    -0.62286971 -6174.17531298    -0.00000063    -0.00000004  0.44D-08  0.85D-08  1957.30
    6     7     7     1.07799142    -0.62286971 -6174.17531298    -0.00000063    -0.00000004  0.44D-08  0.85D-08  1957.30
    6     8     8     1.07799142    -0.62286971 -6174.17531298    -0.00000063    -0.00000004  0.45D-08  0.86D-08  1957.30
    6     9     9     1.07831353    -0.62481291 -6174.17055397    -0.00000085    -0.00000006  0.60D-08  0.13D-07  1957.30
    6    10    10     1.07831348    -0.62481291 -6174.17055397    -0.00000085    -0.00000006  0.60D-08  0.13D-07  1957.30
    6    11    11     1.07831350    -0.62481291 -6174.17055397    -0.00000085    -0.00000006  0.60D-08  0.13D-07  1957.30
    6    12    12     1.07834072    -0.62337599 -6174.16828162    -0.00000071    -0.00000004  0.52D-08  0.95D-08  1957.30
    7     1     1     1.08128358    -0.63699117 -6174.36673733    -0.00000005    -0.00000000  0.19D-09  0.43D-09  2329.89
    7     2     2     1.08128363    -0.63699117 -6174.36673733    -0.00000005    -0.00000000  0.19D-09  0.43D-09  2329.89
    7     3     3     1.08128360    -0.63699117 -6174.36673733    -0.00000005    -0.00000000  0.19D-09  0.43D-09  2329.89
    7     4     4     1.07799682    -0.62286990 -6174.17531317    -0.00000004    -0.00000000  0.30D-09  0.87D-09  2329.89
    7     5     5     1.07799683    -0.62286990 -6174.17531317    -0.00000004    -0.00000000  0.30D-09  0.88D-09  2329.89
    7     6     6     1.07799670    -0.62286975 -6174.17531302    -0.00000004    -0.00000000  0.29D-09  0.87D-09  2329.89
    7     7     7     1.07799671    -0.62286975 -6174.17531302    -0.00000004    -0.00000000  0.29D-09  0.86D-09  2329.89
    7     8     8     1.07799670    -0.62286975 -6174.17531302    -0.00000004    -0.00000000  0.29D-09  0.87D-09  2329.89
    7     9     9     1.07831925    -0.62481298 -6174.17055404    -0.00000007    -0.00000001  0.47D-09  0.13D-08  2329.89
    7    10    10     1.07831928    -0.62481298 -6174.17055404    -0.00000007    -0.00000001  0.47D-09  0.13D-08  2329.89
    7    11    11     1.07831924    -0.62481298 -6174.17055404    -0.00000007    -0.00000001  0.47D-09  0.13D-08  2329.89
    7    12    12     1.07834783    -0.62337604 -6174.16828167    -0.00000005    -0.00000000  0.30D-09  0.78D-09  2329.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   0.9%  12.0%
 P   0.4%  47.4%  26.8%

 Initialization:   3.5%
 Other:            7.3%

 Total CPU:     2329.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000          -0.0107490   0.0099330   0.9548498   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                           -0.0224180  -0.0004140  -0.0002353  -0.0000000
 2222222222//0000           0.0597493   0.9530461  -0.0092416  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0004156   0.0224187   0.0001497   0.0000000
 22222222220//000           0.9530303  -0.0596383   0.0113489   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0002325   0.0001540  -0.0224213  -0.0000000
 2222222222/000/0          -0.0000000   0.0000000  -0.0000000   0.7706834  -0.1076564   0.0000117   0.0000823  -0.0000159
                           -0.0000000  -0.0000000  -0.0000000   0.5499697
 22222222220/0/00           0.0000000  -0.0000000   0.0000000  -0.2921085   0.7212595   0.0000198   0.0001004  -0.0001019
                           -0.0000000   0.0000000  -0.0000000   0.5499698
 2222222222/00/00          -0.0010976  -0.0175071   0.0001698  -0.0000901  -0.0001306  -0.0122974   0.6737820  -0.0048651
                           -0.0123722   0.6674341   0.0044558   0.0000000
 22222222220/00/0           0.0010976   0.0175071  -0.0001698  -0.0000901  -0.0001306  -0.0122974   0.6737820  -0.0048651
                            0.0123722  -0.6674341  -0.0044558  -0.0000000
 222222222200//00           0.0175068  -0.0010955   0.0002085   0.0000284   0.0001064  -0.0127804   0.0046318   0.6737747
                           -0.0069228  -0.0045846   0.6675120   0.0000000
 22222222220/000/          -0.0175068   0.0010955  -0.0002085   0.0000284   0.0001064  -0.0127804   0.0046318   0.6737746
                            0.0069228   0.0045846  -0.6675120  -0.0000000
 222222222200/0/0          -0.0001975   0.0001825   0.0175403  -0.0000147  -0.0000244   0.6736783   0.0123872   0.0126934
                            0.6674131   0.0123250   0.0070064   0.0000000
 2222222222/0000/           0.0001975  -0.0001825  -0.0175403  -0.0000147  -0.0000244   0.6736783   0.0123872   0.0126934
                           -0.6674131  -0.0123250  -0.0070064  -0.0000000
 222222222200/00/           0.0000000  -0.0000000   0.0000000  -0.4785748  -0.6136032  -0.0000315  -0.0001827   0.0001178
                           -0.0000000  -0.0000000  -0.0000000   0.5499697
 2222222222000/0/          -0.0132273   0.0008277  -0.0001575  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0013489  -0.0008933   0.1300680   0.0000000
 2222222222000//0           0.0008293   0.0132276  -0.0001283   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0024108   0.1300528   0.0008682   0.0000000
 22222222220000//           0.0001492  -0.0001379  -0.0132526   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                            0.1300487   0.0024016   0.0013652   0.0000000
 2222220222/2/000           0.0011173  -0.0010325  -0.0992536  -0.0000000   0.0000000   0.0000001   0.0000000   0.0000000
                           -0.0026362  -0.0000487  -0.0000277  -0.0000000
 2222220222//2000          -0.0062108  -0.0990662   0.0009606   0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0000000
                           -0.0000489   0.0026363   0.0000176   0.0000000
 22222202222//000          -0.0990645   0.0061992  -0.0011797   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0000273   0.0000181  -0.0026366  -0.0000000
 2222220222/200/0          -0.0000000   0.0000000  -0.0000000  -0.0735796   0.0094723  -0.0000011  -0.0000080   0.0000016
                            0.0000000   0.0000000   0.0000000  -0.0533499
 2222220222/020/0          -0.0000000   0.0000000  -0.0000000  -0.0733587   0.0110535  -0.0000011  -0.0000077   0.0000014
                           -0.0000000  -0.0000000   0.0000000  -0.0533499
 22222202222/0/00          -0.0000000  -0.0000000  -0.0000000   0.0271068  -0.0690573  -0.0000019  -0.0000097   0.0000098
                            0.0000000  -0.0000000   0.0000000  -0.0533499
 22222202220/2/00           0.0000000  -0.0000000   0.0000000   0.0285866  -0.0684579  -0.0000019  -0.0000094   0.0000096
                            0.0000000   0.0000000   0.0000000  -0.0533499
 22222202220/20/0          -0.0002211  -0.0035270   0.0000342   0.0000086   0.0000125   0.0011796  -0.0646307   0.0004667
                           -0.0011957   0.0645020   0.0004306   0.0000000
 2222220222/02/00           0.0002211   0.0035271  -0.0000342   0.0000086   0.0000125   0.0011796  -0.0646307   0.0004667
                            0.0011957  -0.0645020  -0.0004306   0.0000000
 222222022220//00          -0.0035270   0.0002207  -0.0000420  -0.0000027  -0.0000102   0.0012259  -0.0004443  -0.0646300
                            0.0006690   0.0004431  -0.0645096  -0.0000000
 22222202222/000/           0.0035270  -0.0002207   0.0000420  -0.0000027  -0.0000102   0.0012259  -0.0004443  -0.0646300
                           -0.0006690  -0.0004431   0.0645096   0.0000000
 222222022202/0/0           0.0000398  -0.0000368  -0.0035337   0.0000014   0.0000023  -0.0646207  -0.0011882  -0.0012176
                           -0.0645000  -0.0011911  -0.0006771  -0.0000000
 2222220222/2000/          -0.0000398   0.0000368   0.0035337   0.0000014   0.0000023  -0.0646207  -0.0011882  -0.0012176
                            0.0644999   0.0011911   0.0006771   0.0000000
 22222202222/00/0           0.0010992   0.0175336  -0.0001700   0.0000085   0.0000124   0.0011650  -0.0638325   0.0004609
                           -0.0011587   0.0625064   0.0004173  -0.0000000
 2222220222/20/00          -0.0010992  -0.0175336   0.0001700   0.0000085   0.0000124   0.0011650  -0.0638325   0.0004609
                            0.0011587  -0.0625063  -0.0004173  -0.0000000
 222222022202//00           0.0175333  -0.0010972   0.0002088  -0.0000027  -0.0000101   0.0012108  -0.0004388  -0.0638318
                            0.0006483   0.0004294  -0.0625137  -0.0000000
 22222202220/200/          -0.0175333   0.0010972  -0.0002088  -0.0000027  -0.0000101   0.0012108  -0.0004388  -0.0638318
                           -0.0006483  -0.0004294   0.0625136   0.0000000
 222222022220/0/0          -0.0001978   0.0001827   0.0175668   0.0000014   0.0000023  -0.0638227  -0.0011735  -0.0012025
                           -0.0625045  -0.0011543  -0.0006562  -0.0000000
 2222220222/0200/           0.0001978  -0.0001827  -0.0175668   0.0000014   0.0000023  -0.0638227  -0.0011735  -0.0012025
                            0.0625044   0.0011543   0.0006562   0.0000000
 222222022220/00/           0.0000000  -0.0000000   0.0000000   0.0449930   0.0589857   0.0000030   0.0000174  -0.0000113
                            0.0000000   0.0000000   0.0000000  -0.0533499
 222222022202/00/           0.0000000  -0.0000000   0.0000000   0.0462519   0.0580038   0.0000030   0.0000174  -0.0000112
                            0.0000000   0.0000000   0.0000000  -0.0533499

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958544    0.060095   -0.010811   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000438   -0.002432
             0.038790    0.000000
 2          -0.059983    0.958560    0.009990    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000404   -0.038791
            -0.002427    0.000000
 3           0.011415   -0.009295    0.960374   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.038864    0.000376
             0.000462   -0.000000
 4           0.000000   -0.000000    0.000000    0.956049   -0.000021   -0.000129    0.000041   -0.111003    0.000000    0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.111003   -0.000035   -0.000187    0.000152    0.956049    0.000000   -0.000000
             0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000023    0.962138   -0.017563   -0.018253    0.000032    0.000000   -0.000000
             0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000149    0.017691    0.962286    0.006615    0.000170    0.000000    0.000000
            -0.000000    0.000000
 8          -0.000000    0.000000   -0.000000   -0.000058    0.018129   -0.006948    0.962276   -0.000147    0.000000   -0.000000
             0.000000    0.000000
 9           0.000417   -0.000745   -0.040213   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.961271   -0.017820
            -0.009971   -0.000000
 10          0.000276    0.040214   -0.000743   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.017752    0.961301
            -0.006603   -0.000000
 11         -0.040219    0.000268   -0.000422    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.010091    0.006418
             0.961414   -0.000000
 12         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.962318

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961273   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000013    0.000046
            -0.000654    0.000000
 2          -0.000000    0.961273    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000019    0.000654
             0.000045   -0.000000
 3           0.000000    0.000000    0.961273    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000655   -0.000018
            -0.000015    0.000000
 4           0.000000   -0.000000    0.000000    0.962472    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.962472   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.962472    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.962472    0.000000    0.000000   -0.000000
             0.000000    0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.962472    0.000000   -0.000000
             0.000000   -0.000000
 9           0.000013   -0.000019   -0.000655   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.962329    0.000000
            -0.000000    0.000000
 10          0.000046    0.000654   -0.000018    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.962329
            -0.000000    0.000000
 11         -0.000654    0.000045   -0.000015    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.962329    0.000000
 12          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.962318


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95854385 (fixed)   0.96136885 (relaxed)   0.96127258 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084605   -0.00148649   -0.53708249
 Singles      0.01785226   -0.05630028   -0.06252988
 Pairs        0.06350009   -0.00000000   -0.03737880
 Total        1.08219841   -0.05778677   -0.63699117
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72943509
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.91459423
 One electron energy                -8490.53571361
 Two electron energy                 2316.16897628
 Virial quotient                       -0.86658818
 Correlation energy                    -0.63730224
 !MRCI STATE 1.1 Energy             -6174.366737333235

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41912256 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41898444 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41912256 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41716746 (Pople, fixed reference)
 Cluster corrected energies         -6174.41702536 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41716746 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95855973 (fixed)   0.96136883 (relaxed)   0.96127256 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084606   -0.00148649   -0.53708246
 Singles      0.01785229   -0.05630029   -0.06252988
 Pairs        0.06350011   -0.00000000   -0.03737882
 Total        1.08219845   -0.05778678   -0.63699117
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72943509
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.91458330
 One electron energy                -8490.53569884
 Two electron energy                 2316.16896151
 Virial quotient                       -0.86658818
 Correlation energy                    -0.63730224
 !MRCI STATE 2.1 Energy             -6174.366737332922

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41912259 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41898447 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41912259 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41716749 (Pople, fixed reference)
 Cluster corrected energies         -6174.41702539 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41716749 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96037383 (fixed)   0.96136884 (relaxed)   0.96127257 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084606   -0.00148649   -0.53708250
 Singles      0.01785227   -0.05630027   -0.06252987
 Pairs        0.06350010    0.00000000   -0.03737881
 Total        1.08219842   -0.05778676   -0.63699117
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72943509
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.91459081
 One electron energy                -8490.53570940
 Two electron energy                 2316.16897207
 Virial quotient                       -0.86658818
 Correlation energy                    -0.63730224
 !MRCI STATE 3.1 Energy             -6174.366737332505

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41912257 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41898445 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41912257 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41716747 (Pople, fixed reference)
 Cluster corrected energies         -6174.41702537 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41716747 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95604921 (fixed)   0.96262770 (relaxed)   0.96247170 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139769   -0.00241254   -0.52397504
 Singles      0.01862858   -0.05810758   -0.06457433
 Pairs        0.05947725    0.00000000   -0.03432053
 Total        1.07950353   -0.06052011   -0.62286990
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55244327
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41578758
 One electron energy                -8480.98559425
 Two electron energy                 2306.81028107
 Virial quotient                       -0.86662198
 Correlation energy                    -0.62286990
 !MRCI STATE 4.1 Energy             -6174.175313172017

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22483353 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22461561 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22483353 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22287786 (Pople, fixed reference)
 Cluster corrected energies         -6174.22265468 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22287786 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95604919 (fixed)   0.96262770 (relaxed)   0.96247169 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139769   -0.00241254   -0.52397499
 Singles      0.01862861   -0.05810762   -0.06457435
 Pairs        0.05947724    0.00000000   -0.03432055
 Total        1.07950354   -0.06052016   -0.62286990
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55244327
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41579100
 One electron energy                -8480.98559903
 Two electron energy                 2306.81028585
 Virial quotient                       -0.86662198
 Correlation energy                    -0.62286990
 !MRCI STATE 5.1 Energy             -6174.175313171210

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22483353 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22461561 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22483353 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22287787 (Pople, fixed reference)
 Cluster corrected energies         -6174.22265469 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22287787 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96213837 (fixed)   0.96262775 (relaxed)   0.96247175 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139769   -0.00241252   -0.52397517
 Singles      0.01862844   -0.05810734   -0.06457414
 Pairs        0.05947728   -0.00000000   -0.03432043
 Total        1.07950341   -0.06051986   -0.62286975
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55244327
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41578057
 One electron energy                -8480.98557616
 Two electron energy                 2306.81026313
 Virial quotient                       -0.86662198
 Correlation energy                    -0.62286975
 !MRCI STATE 6.1 Energy             -6174.175313024080

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22483329 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22461537 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22483329 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22287763 (Pople, fixed reference)
 Cluster corrected energies         -6174.22265445 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22287763 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96228638 (fixed)   0.96262775 (relaxed)   0.96247175 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139769   -0.00241252   -0.52397516
 Singles      0.01862846   -0.05810735   -0.06457415
 Pairs        0.05947727   -0.00000000   -0.03432044
 Total        1.07950342   -0.06051987   -0.62286975
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55244327
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41577905
 One electron energy                -8480.98557503
 Two electron energy                 2306.81026201
 Virial quotient                       -0.86662198
 Correlation energy                    -0.62286975
 !MRCI STATE 7.1 Energy             -6174.175313023786

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22483330 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22461538 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22483330 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22287763 (Pople, fixed reference)
 Cluster corrected energies         -6174.22265446 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22287763 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96227591 (fixed)   0.96262775 (relaxed)   0.96247175 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139769   -0.00241252   -0.52397516
 Singles      0.01862845   -0.05810736   -0.06457415
 Pairs        0.05947727    0.00000000   -0.03432044
 Total        1.07950341   -0.06051988   -0.62286975
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55244327
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41578218
 One electron energy                -8480.98557806
 Two electron energy                 2306.81026504
 Virial quotient                       -0.86662198
 Correlation energy                    -0.62286975
 !MRCI STATE 8.1 Energy             -6174.175313023406

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22483329 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22461537 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22483329 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22287763 (Pople, fixed reference)
 Cluster corrected energies         -6174.22265445 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22287763 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96127114 (fixed)   0.96250408 (relaxed)   0.96232871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139577   -0.00233373   -0.52557021
 Singles      0.01868652   -0.05816157   -0.06467301
 Pairs        0.05974205    0.00000000   -0.03456975
 Total        1.07982434   -0.06049530   -0.62481298
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54605213
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.48370571
 One electron energy                -8481.54428067
 Two electron energy                 2307.37372663
 Virial quotient                       -0.86661305
 Correlation energy                    -0.62450191
 !MRCI STATE 9.1 Energy             -6174.170554042679

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22040449 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22015878 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22040449 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21844865 (Pople, fixed reference)
 Cluster corrected energies         -6174.21819689 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21844865 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96130141 (fixed)   0.96250407 (relaxed)   0.96232870 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139577   -0.00233373   -0.52557018
 Singles      0.01868656   -0.05816159   -0.06467304
 Pairs        0.05974204    0.00000000   -0.03456976
 Total        1.07982437   -0.06049531   -0.62481298
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54605213
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.48370373
 One electron energy                -8481.54428012
 Two electron energy                 2307.37372608
 Virial quotient                       -0.86661305
 Correlation energy                    -0.62450191
 !MRCI STATE 10.1 Energy            -6174.170554042382

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22040451 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22015880 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22040451 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21844867 (Pople, fixed reference)
 Cluster corrected energies         -6174.21819691 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21844867 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.96141362 (fixed)   0.96250409 (relaxed)   0.96232872 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139577   -0.00233373   -0.52557021
 Singles      0.01868652   -0.05816159   -0.06467302
 Pairs        0.05974204    0.00000001   -0.03456975
 Total        1.07982433   -0.06049531   -0.62481298
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54605213
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.48370751
 One electron energy                -8481.54428313
 Two electron energy                 2307.37372909
 Virial quotient                       -0.86661305
 Correlation energy                    -0.62450191
 !MRCI STATE 11.1 Energy            -6174.170554041868

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22040449 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22015878 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22040449 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21844865 (Pople, fixed reference)
 Cluster corrected energies         -6174.21819688 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21844865 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.96231787 (fixed)   0.96246762 (relaxed)   0.96231787 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00139180   -0.00241586   -0.00304068
 Singles      0.01862605   -0.05814556   -0.06459606
 Pairs        0.05983082   -0.56281462   -0.55573930
 Total        1.07984867   -0.62337603   -0.62337604
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54490563
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41859714
 One electron energy                -8480.98490451
 Two electron energy                 2306.81662284
 Virial quotient                       -0.86662065
 Correlation energy                    -0.62337604
 !MRCI STATE 12.1 Energy            -6174.168281670282

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.21805742 (Davidson, fixed reference)
 Cluster corrected energies         -6174.21784796 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.21805742 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21610548 (Pople, fixed reference)
 Cluster corrected energies         -6174.21589085 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21610548 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      706.04       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3742.33   3736.51      3.69      0.12      1.73
 REAL TIME  *      3838.17 SEC
 DISK USED  *       767.35 MB (local),        9.05 GB (total)
 SF USED    *         7.38 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -6174.41912256  AU                              
 SETTING HLSDIAG(2)     =     -6174.41912259  AU                              
 SETTING HLSDIAG(3)     =     -6174.41912257  AU                              
 SETTING HLSDIAG(4)     =     -6174.22483353  AU                              
 SETTING HLSDIAG(5)     =     -6174.22483353  AU                              
 SETTING HLSDIAG(6)     =     -6174.22483329  AU                              
 SETTING HLSDIAG(7)     =     -6174.22483330  AU                              
 SETTING HLSDIAG(8)     =     -6174.22483329  AU                              
 SETTING HLSDIAG(9)     =     -6174.22040449  AU                              
 SETTING HLSDIAG(10)    =     -6174.22040451  AU                              
 SETTING HLSDIAG(11)    =     -6174.22040449  AU                              
 SETTING HLSDIAG(12)    =     -6174.21805742  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 50
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    18620 conf    47824 CSFs
 N-1 el internal:    13496 conf    51520 CSFs
 N-2 el internal:     5716 conf    27166 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -6173.69502002
     2     -6173.69502002
     3     -6173.69502002
     4     -6173.69502002
     5     -6173.69502002
     6     -6173.66566405

 Number of blocks in overlap matrix:   580   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2035246
 Number of doubly external configurations:       2016667
 Total number of contracted configurations:      4076063
 Total number of uncontracted configurations:   44346143

 Diagonal Coupling coefficients finished.               Storage:  12993965 words, CPU-Time:     12.15 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    969481 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.69502002     0.00000000    -0.79205963  0.55D-01  0.97D-01    17.62
    1     2     2     1.00000000     0.00000000 -6173.69502002     0.00000000    -0.79263939  0.57D-01  0.97D-01    17.62
    1     3     3     1.00000000     0.00000000 -6173.69502002    -0.00000000    -0.79270642  0.57D-01  0.97D-01    17.62
    1     4     4     1.00000000     0.00000000 -6173.69502002     0.00000000    -0.79285622  0.57D-01  0.97D-01    17.62
    1     5     5     1.00000000     0.00000000 -6173.69502002    -0.00000000    -0.79207104  0.55D-01  0.97D-01    17.62
    1     6     6     1.00000000     0.00000000 -6173.66566405     0.00000000    -0.76772724  0.28D-01  0.10D+00    17.62
    2     1     1     1.09411336    -0.62502790 -6174.32004792    -0.62502790    -0.01728558  0.35D-02  0.14D-02   102.58
    2     2     2     1.09409171    -0.62499257 -6174.32001259    -0.62499257    -0.01731475  0.35D-02  0.14D-02   102.58
    2     3     3     1.09455012    -0.62470415 -6174.31972417    -0.62470415    -0.01763764  0.37D-02  0.14D-02   102.58
    2     4     4     1.09462941    -0.62463299 -6174.31965300    -0.62463299    -0.01771260  0.38D-02  0.14D-02   102.58
    2     5     5     1.09472956    -0.62462030 -6174.31964031    -0.62462030    -0.01773491  0.38D-02  0.14D-02   102.58
    2     6     6     1.08304755    -0.62036003 -6174.28602407    -0.62036003    -0.01434115  0.27D-02  0.13D-02   102.58
    3     1     1     1.08472083    -0.64132199 -6174.33634201    -0.01629408    -0.00048682  0.69D-04  0.65D-04   187.17
    3     2     2     1.08470171    -0.64131665 -6174.33633667    -0.01632407    -0.00049083  0.70D-04  0.67D-04   187.17
    3     3     3     1.08471846    -0.64131051 -6174.33633053    -0.01660637    -0.00049832  0.72D-04  0.67D-04   187.17
    3     4     4     1.08473911    -0.64130556 -6174.33632558    -0.01667258    -0.00050301  0.73D-04  0.68D-04   187.17
    3     5     5     1.08471291    -0.64130346 -6174.33632347    -0.01668316    -0.00050402  0.73D-04  0.68D-04   187.17
    3     6     6     1.08012864    -0.63440036 -6174.30006440    -0.01404033    -0.00044719  0.39D-04  0.84D-04   187.17
    4     1     1     1.08496683    -0.64184250 -6174.33686252    -0.00052051    -0.00003000  0.37D-05  0.54D-05   271.88
    4     2     2     1.08496055    -0.64184208 -6174.33686210    -0.00052543    -0.00003031  0.37D-05  0.56D-05   271.88
    4     3     3     1.08495796    -0.64184191 -6174.33686193    -0.00053140    -0.00003040  0.37D-05  0.56D-05   271.88
    4     4     4     1.08496273    -0.64184182 -6174.33686183    -0.00053625    -0.00003053  0.37D-05  0.56D-05   271.88
    4     5     5     1.08495449    -0.64184147 -6174.33686148    -0.00053801    -0.00003075  0.37D-05  0.57D-05   271.88
    4     6     6     1.08173080    -0.63490354 -6174.30056759    -0.00050318    -0.00003693  0.26D-05  0.81D-05   271.88
    5     1     1     1.08507909    -0.64187929 -6174.33689931    -0.00003679    -0.00000221  0.11D-06  0.50D-06   356.11
    5     2     2     1.08507731    -0.64187923 -6174.33689925    -0.00003716    -0.00000225  0.11D-06  0.51D-06   356.11
    5     3     3     1.08507648    -0.64187921 -6174.33689923    -0.00003729    -0.00000227  0.12D-06  0.52D-06   356.11
    5     4     4     1.08507619    -0.64187920 -6174.33689922    -0.00003739    -0.00000227  0.12D-06  0.52D-06   356.11
    5     5     5     1.08507440    -0.64187916 -6174.33689918    -0.00003769    -0.00000230  0.12D-06  0.53D-06   356.11
    5     6     6     1.08231093    -0.63494994 -6174.30061399    -0.00004640    -0.00000334  0.21D-06  0.71D-06   356.11
    6     1     1     1.08508563    -0.64188213 -6174.33690215    -0.00000284    -0.00000026  0.32D-07  0.48D-07   440.43
    6     2     2     1.08508533    -0.64188213 -6174.33690215    -0.00000289    -0.00000026  0.32D-07  0.48D-07   440.43
    6     3     3     1.08508516    -0.64188212 -6174.33690214    -0.00000292    -0.00000026  0.34D-07  0.49D-07   440.43
    6     4     4     1.08508503    -0.64188212 -6174.33690214    -0.00000292    -0.00000026  0.34D-07  0.49D-07   440.43
    6     5     5     1.08508487    -0.64188212 -6174.33690213    -0.00000296    -0.00000027  0.34D-07  0.49D-07   440.43
    6     6     6     1.08235972    -0.63495429 -6174.30061834    -0.00000435    -0.00000035  0.37D-07  0.61D-07   440.43
    7     1     1     1.08511498    -0.64188244 -6174.33690246    -0.00000031    -0.00000003  0.29D-08  0.50D-08   524.34
    7     2     2     1.08511495    -0.64188244 -6174.33690246    -0.00000031    -0.00000003  0.29D-08  0.50D-08   524.34
    7     3     3     1.08511499    -0.64188244 -6174.33690246    -0.00000032    -0.00000003  0.29D-08  0.50D-08   524.34
    7     4     4     1.08511499    -0.64188244 -6174.33690245    -0.00000032    -0.00000003  0.29D-08  0.51D-08   524.34
    7     5     5     1.08511500    -0.64188244 -6174.33690245    -0.00000032    -0.00000003  0.29D-08  0.50D-08   524.34
    7     6     6     1.08238475    -0.63495470 -6174.30061874    -0.00000040    -0.00000004  0.45D-08  0.66D-08   524.34
    8     1     1     1.08511498    -0.64188244 -6174.33690246    -0.00000000    -0.00000003  0.29D-08  0.50D-08   570.29
    8     2     2     1.08511495    -0.64188244 -6174.33690246    -0.00000000    -0.00000003  0.29D-08  0.50D-08   570.29
    8     3     3     1.08511499    -0.64188244 -6174.33690246    -0.00000000    -0.00000003  0.29D-08  0.50D-08   570.29
    8     4     4     1.08511499    -0.64188244 -6174.33690245    -0.00000000    -0.00000003  0.29D-08  0.51D-08   570.29
    8     5     5     1.08511500    -0.64188244 -6174.33690245    -0.00000000    -0.00000003  0.29D-08  0.50D-08   570.29
    8     6     6     1.08239068    -0.63495474 -6174.30061879    -0.00000004    -0.00000000  0.21D-09  0.38D-09   570.29


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.8%
 S   1.5%  16.6%
 P   0.6%  47.8%  21.0%

 Initialization:   2.2%
 Other:            7.4%

 Total CPU:      570.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.1219386   0.5750726   0.1195424   0.7362398  -0.0508393   0.0000000
 2222222222/\0000           0.6065272  -0.0391277  -0.0942429  -0.0045004   0.7253919   0.0000001
 2222222222200000          -0.2697788  -0.0214533   0.6581943  -0.0240405   0.3097783   0.5386776
 2222222222020000          -0.1967908   0.4178596  -0.5838917  -0.1913903   0.1100369   0.5386776
 2222222222002000           0.4665695  -0.3964062  -0.0743025   0.2154308  -0.4198152   0.5386777
 22222222220/\000           0.4388201   0.4899565   0.3188408  -0.5280282  -0.3023376  -0.0000000
 2222220222022000          -0.0279626  -0.0022235   0.0682215  -0.0024919   0.0321085  -0.1081226
 2222220222220000           0.0483597  -0.0410874  -0.0077012   0.0223293  -0.0435137  -0.1081226
 2222220222202000          -0.0203975   0.0433110  -0.0605199  -0.0198376   0.0114055  -0.1081226
 2222220222/2\000          -0.0126389  -0.0596059  -0.0123905  -0.0763108   0.0052695  -0.0000000
 2222220222/\2000          -0.0628660   0.0040556   0.0097682   0.0004665  -0.0751862  -0.0000000
 22222222220/0\00          -0.0122933   0.0261034  -0.0364754  -0.0119560   0.0068739   0.0702607
 2222222222/000\0          -0.0168529  -0.0013402   0.0411171  -0.0015018   0.0193517   0.0702607
 222222222200/00\           0.0291464  -0.0247633  -0.0046417   0.0134579  -0.0262257   0.0702607
 22222202222/\000          -0.0454835  -0.0507837  -0.0330477   0.0547298   0.0313371   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.366141    0.442629    0.611791    0.122997   -0.448190   -0.000000
 2           0.566520    0.494209   -0.039467    0.580064    0.130582   -0.000000
 3          -0.568648    0.321608   -0.095061    0.120580    0.685494    0.000000
 4          -0.271501   -0.532611   -0.004539    0.742630   -0.106601   -0.000000
 5           0.261139   -0.304962    0.731688   -0.051281    0.470190   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.960482

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959308   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.959308   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.959308   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.959308   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.959308   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.960482


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.61179150 (fixed)   0.95955231 (relaxed)   0.95930751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140222   -0.00200451   -0.53555339
 Singles      0.02088318   -0.06083066   -0.06830970
 Pairs        0.06435116    0.00000005   -0.03801934
 Total        1.08663655   -0.06283512   -0.64188244
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69502002
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.83629563
 One electron energy                -8489.76091171
 Two electron energy                 2315.42400925
 Virial quotient                       -0.86659351
 Correlation energy                    -0.64188244
 !MRCI STATE 1.1 Energy             -6174.336902460797

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39251294 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39215711 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39251294 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39127536 (Pople, fixed reference)
 Cluster corrected energies         -6174.39090162 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39127536 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.58006393 (fixed)   0.95955232 (relaxed)   0.95930753 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140221   -0.00200451   -0.53555335
 Singles      0.02088315   -0.06083063   -0.06830968
 Pairs        0.06435115   -0.00000003   -0.03801940
 Total        1.08663652   -0.06283517   -0.64188244
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69502002
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.83630135
 One electron energy                -8489.76091989
 Two electron energy                 2315.42401743
 Virial quotient                       -0.86659351
 Correlation energy                    -0.64188244
 !MRCI STATE 2.1 Energy             -6174.336902458016

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39251292 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39215709 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39251292 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39127534 (Pople, fixed reference)
 Cluster corrected energies         -6174.39090159 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39127534 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.68549402 (fixed)   0.95955231 (relaxed)   0.95930751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140221   -0.00200450   -0.53555338
 Singles      0.02088307   -0.06083062   -0.06830967
 Pairs        0.06435127   -0.00000000   -0.03801940
 Total        1.08663655   -0.06283512   -0.64188244
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69502002
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.83634122
 One electron energy                -8489.76099559
 Two electron energy                 2315.42409313
 Virial quotient                       -0.86659351
 Correlation energy                    -0.64188244
 !MRCI STATE 3.1 Energy             -6174.336902457081

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39251294 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39215711 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39251294 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39127536 (Pople, fixed reference)
 Cluster corrected energies         -6174.39090161 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39127536 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.74262992 (fixed)   0.95955230 (relaxed)   0.95930751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140222   -0.00200451   -0.53555331
 Singles      0.02088326   -0.06083071   -0.06830973
 Pairs        0.06435109    0.00000002   -0.03801939
 Total        1.08663657   -0.06283519   -0.64188244
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69502002
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.83627576
 One electron energy                -8489.76087561
 Two electron energy                 2315.42397316
 Virial quotient                       -0.86659351
 Correlation energy                    -0.64188244
 !MRCI STATE 4.1 Energy             -6174.336902454980

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39251294 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39215711 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39251294 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39127536 (Pople, fixed reference)
 Cluster corrected energies         -6174.39090162 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39127536 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.73168788 (fixed)   0.95955230 (relaxed)   0.95930750 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140222   -0.00200451   -0.53555331
 Singles      0.02088321   -0.06083069   -0.06830972
 Pairs        0.06435114    0.00000000   -0.03801941
 Total        1.08663657   -0.06283519   -0.64188244
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69502002
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.83628973
 One electron energy                -8489.76090241
 Two electron energy                 2315.42399996
 Virial quotient                       -0.86659351
 Correlation energy                    -0.64188243
 !MRCI STATE 5.1 Energy             -6174.336902453039

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39251295 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39215711 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39251295 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39127536 (Pople, fixed reference)
 Cluster corrected energies         -6174.39090162 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39127536 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96048234 (fixed)   0.96080726 (relaxed)   0.96048234 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00146826   -0.00179044   -0.00251177
 Singles      0.01161881   -0.04417039   -0.04755490
 Pairs        0.07089284   -0.58899391   -0.58488807
 Total        1.08397991   -0.63495474   -0.63495474
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.66566405
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.75708899
 One electron energy                -8489.01249459
 Two electron energy                 2314.71187580
 Virial quotient                       -0.86659805
 Correlation energy                    -0.63495474
 !MRCI STATE 6.1 Energy             -6174.300618787474

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.35394223 (Davidson, fixed reference)
 Cluster corrected energies         -6174.35347678 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.35394223 (Davidson, rotated reference)

 Cluster corrected energies         -6174.35263627 (Pople, fixed reference)
 Cluster corrected energies         -6174.35214969 (Pople, relaxed reference)
 Cluster corrected energies         -6174.35263627 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      897.38       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4380.95    638.61   3736.51      3.69      0.12      1.73
 REAL TIME  *      4495.72 SEC
 DISK USED  *       958.69 MB (local),       11.29 GB (total)
 SF USED    *         7.38 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -6174.39251294  AU                              
 SETTING HLSDIAG(14)    =     -6174.39251292  AU                              
 SETTING HLSDIAG(15)    =     -6174.39251294  AU                              
 SETTING HLSDIAG(16)    =     -6174.39251294  AU                              
 SETTING HLSDIAG(17)    =     -6174.39251295  AU                              
 SETTING HLSDIAG(18)    =     -6174.35394223  AU                              


         HLSDIAG
    -6174.419123
    -6174.419123
    -6174.419123
    -6174.224834
    -6174.224834
    -6174.224833
    -6174.224833
    -6174.224833
    -6174.220404
    -6174.220405
    -6174.220404
    -6174.218057
    -6174.392513
    -6174.392513
    -6174.392513
    -6174.392513
    -6174.392513
    -6174.353942
                                                  


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

 Time for Seward_LS:      13.29 sec

       10316388. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2701 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.29 sec, REAL time:     13.42 sec


 SORTLS1 read    11044077. and wrote    11044077. SO integrals in    72 records. CPU time:      0.11 sec, REAL time:      0.16 sec
 SORTLS2 read    11044077. and wrote    53911550. SO integrals in    36 records. CPU time:      0.05 sec, REAL time:      0.08 sec

 FILE SIZES: FILE 1:   241.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   241.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:  -6174.366737  -6174.366737  -6174.366737  -6174.175313  -6174.175313  -6174.175313  -6174.175313  -6174.175313
                     -6174.170554  -6174.170554  -6174.170554  -6174.168282
 Replaced energies:  -6174.419123  -6174.419123  -6174.419123  -6174.224834  -6174.224834  -6174.224833  -6174.224833  -6174.224833
                     -6174.220404  -6174.220405  -6174.220404  -6174.218057

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -6174.336902  -6174.336902  -6174.336902  -6174.336902  -6174.336902  -6174.300619
 Replaced energies:  -6174.392513  -6174.392513  -6174.392513  -6174.392513  -6174.392513  -6174.353942



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -6174.41912259

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      15.00      78.81    -433.66      60.58     -23.69      -4.76      -0.41      20.59      -3.31

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.00      -0.00    1259.44      27.15      -3.78    -379.15      -3.02      -7.17     327.27       9.46

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -78.81   -1259.44       0.00      -5.21       0.65      -3.26     379.92      -2.67      -9.25     327.90

    4   4.1  1.0  1.0       0.00       0.00       0.00   42641.52       0.00       0.00       0.00       0.00       0.00       0.00
                          433.66     -27.15       5.21       0.00      -0.03      -4.27       1.52     219.53       7.23       4.83

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42641.52       0.00       0.00       0.00       0.00       0.00
                          -60.58       3.78      -0.65       0.03       0.00     -29.96      10.83    1571.59      -1.14      -0.70

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42641.57       0.00       0.00       0.00       0.00
                           23.69     379.15       3.26       4.27      29.96       0.00    -793.42       5.51     -22.68     616.27

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42641.57       0.00       0.00       0.00
                            4.76       3.02    -379.92      -1.52     -10.83     793.42       0.00      15.39     616.34      22.72

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42641.57       0.00       0.00
                            0.41       7.17       2.67    -219.53   -1571.59      -5.51     -15.39      -0.00      -4.67      11.53

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43613.58       0.00
                          -20.59    -327.27       9.25      -7.23       1.14      22.68    -616.34       4.67      -0.00     838.09

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43613.58
                            3.31      -9.46    -327.90      -4.83       0.70    -616.27     -22.72     -11.53    -838.09      -0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19      -3.46      -2.16     705.33     -98.53      -3.99      -6.47      -0.05      -5.76       8.69

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -614.53      38.46      -7.32       0.00       0.00      -0.00      -0.00       0.00     -10.52      -6.97

   13   1.1  1.0  0.0      -0.00     892.26      -9.28      -1.35       3.19      -5.21     268.20      14.87       4.44    -231.36
                            0.00      -8.64    -890.57      11.94      15.32    -267.99      -4.94      -8.08    -231.43      -4.26

   14   2.1  1.0  0.0    -892.26       0.00     -10.04       1.22      -2.95      -4.78     -14.93     268.21       2.13      16.07
                            8.64       0.00      55.83     190.42     244.15      16.73       0.40       3.06      14.46       0.25

   15   3.1  1.0  0.0       9.28      10.04      -0.00     116.45    -287.53      -0.02       3.13      -2.58       0.03      -2.77
                          890.57     -55.83       0.00      -1.84      -2.32      -8.29       1.79     268.54      -5.16      -1.64

   16   4.1  1.0  0.0       1.35      -1.22    -116.45       0.00      -0.03    1039.87      19.10      19.52     189.01       3.47
                          -11.94    -190.42       1.84      -0.00      -0.26     -16.17     884.79      -6.40       5.76    -309.67

   17   5.1  1.0  0.0      -3.19       2.95     287.53       0.03      -0.00     421.15       7.65       7.83    -466.69      -8.69
                          -15.32    -244.15       2.32       0.26      -0.00      12.51    -690.09       4.96       7.43    -397.04

   18   6.1  1.0  0.0       5.21       4.78       0.02   -1039.87    -421.15      -0.00      10.35     -10.20      -0.08       8.32
                          267.99     -16.73       8.29      16.17     -12.51       0.00       4.04     561.04      -3.75       2.82

   19   7.1  1.0  0.0    -268.20      14.93      -3.13     -19.10      -7.65     -10.35       0.00     560.96      -4.53      -5.99
                            4.94      -0.40      -1.79    -884.79     690.09      -4.04      -0.00      10.17       3.08      -0.01

   20   8.1  1.0  0.0     -14.87    -268.21       2.58     -19.52      -7.83      10.20    -560.96       0.00       8.18    -435.96
                            8.08      -3.06    -268.54       6.40      -4.96    -561.04     -10.17       0.00     436.05       8.18

   21   9.1  1.0  0.0      -4.44      -2.13      -0.03    -189.01     466.69       0.08       4.53      -8.18      -0.00       6.22
                          231.43     -14.46       5.16      -5.76      -7.43       3.75      -3.08    -436.05      -0.00      -3.96

   22  10.1  1.0  0.0     231.36     -16.07       2.77      -3.47       8.69      -8.32       5.99     435.96      -6.22       0.00
                            4.26      -0.25       1.64     309.67     397.04      -2.82       0.01      -8.18       3.96      -0.00

   23  11.1  1.0  0.0      16.06     231.39      -2.23      -1.93       4.98       7.90    -436.01       6.06      10.94    -592.53
                            5.04      -2.56    -231.90       2.06       2.63     436.05       7.99       3.64    -592.55     -10.98

   24  12.1  1.0  0.0       4.90      -4.53    -435.37       0.00       0.00       0.00      -0.00       0.00     717.33      13.25
                          -27.24    -434.55       4.21       0.00       0.00       0.00      -0.00       0.00      13.30    -717.35

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0     573.19     366.84     256.03      73.43      29.68     339.48     147.48    -191.76      51.23     -80.07
                         -152.86    -588.41     403.93     310.88    -242.49     142.71      35.89     -37.16      78.24     122.29

   38   2.1  0.0  0.0      -1.59     441.77    -542.67     346.46     140.30    -175.42     156.21       8.28    -106.32     -91.54
                         -495.55     546.68     434.82     -20.09      15.57     159.05     203.53    -185.33      92.58    -100.13

   39   3.1  0.0  0.0     -75.92     302.86     747.84      72.02      29.17    -339.04      97.65      23.53     152.25     -55.40
                         -105.89     105.29     288.01     -48.23      37.78     114.75    -569.17     -32.78      58.88     -17.99

   40   4.1  0.0  0.0     -36.94    -476.91     250.99     443.60     179.68     113.15    -169.46       4.73      47.71      97.48
                         -680.83    -239.95    -485.92      -2.30       1.78    -165.62     -81.71    -241.92     -96.19      54.85

   41   5.1  0.0  0.0     643.41    -317.40    -131.14     -30.62     -12.41    -328.98    -106.04    -241.32     -30.86      53.85
                           83.10     533.67    -279.89     371.83    -289.97     -96.87     -93.49      15.36     -53.37    -109.65

   42   6.1  0.0  0.0     -15.88      14.67    1410.27       0.00       0.00       0.00      -0.00      -0.00     227.85       4.21
                           88.25    1407.61     -13.65       0.00      -0.00      -0.00      -0.00       0.00       4.22    -227.86


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00      -0.00    -892.26       9.28       1.35      -3.19       5.21    -268.20     -14.87
                            0.19     614.53      -0.00      -8.64    -890.57      11.94      15.32    -267.99      -4.94      -8.08

    2   2.1  1.0  1.0       0.00       0.00     892.26       0.00      10.04      -1.22       2.95       4.78      14.93    -268.21
                            3.46     -38.46       8.64      -0.00      55.83     190.42     244.15      16.73       0.40       3.06

    3   3.1  1.0  1.0       0.00       0.00      -9.28     -10.04      -0.00    -116.45     287.53       0.02      -3.13       2.58
                            2.16       7.32     890.57     -55.83      -0.00      -1.84      -2.32      -8.29       1.79     268.54

    4   4.1  1.0  1.0       0.00       0.00      -1.35       1.22     116.45       0.00       0.03   -1039.87     -19.10     -19.52
                         -705.33      -0.00     -11.94    -190.42       1.84       0.00      -0.26     -16.17     884.79      -6.40

    5   5.1  1.0  1.0       0.00       0.00       3.19      -2.95    -287.53      -0.03      -0.00    -421.15      -7.65      -7.83
                           98.53      -0.00     -15.32    -244.15       2.32       0.26       0.00      12.51    -690.09       4.96

    6   6.1  1.0  1.0       0.00       0.00      -5.21      -4.78      -0.02    1039.87     421.15      -0.00     -10.35      10.20
                            3.99       0.00     267.99     -16.73       8.29      16.17     -12.51      -0.00       4.04     561.04

    7   7.1  1.0  1.0       0.00       0.00     268.20     -14.93       3.13      19.10       7.65      10.35       0.00    -560.96
                            6.47       0.00       4.94      -0.40      -1.79    -884.79     690.09      -4.04       0.00      10.17

    8   8.1  1.0  1.0       0.00       0.00      14.87     268.21      -2.58      19.52       7.83     -10.20     560.96       0.00
                            0.05      -0.00       8.08      -3.06    -268.54       6.40      -4.96    -561.04     -10.17      -0.00

    9   9.1  1.0  1.0       0.00       0.00       4.44       2.13       0.03     189.01    -466.69      -0.08      -4.53       8.18
                            5.76      10.52     231.43     -14.46       5.16      -5.76      -7.43       3.75      -3.08    -436.05

   10  10.1  1.0  1.0       0.00       0.00    -231.36      16.07      -2.77       3.47      -8.69       8.32      -5.99    -435.96
                           -8.69       6.97       4.26      -0.25       1.64     309.67     397.04      -2.82       0.01      -8.18

   11  11.1  1.0  1.0   43613.58       0.00     -16.06    -231.39       2.23       1.93      -4.98      -7.90     436.01      -6.06
                           -0.00   -1014.61       5.04      -2.56    -231.90       2.06       2.63     436.05       7.99       3.64

   12  12.1  1.0  1.0       0.00   44128.70      -4.90       4.53     435.37      -0.00      -0.00      -0.00       0.00      -0.00
                         1014.61       0.00     -27.24    -434.55       4.21       0.00       0.00       0.00      -0.00       0.00

   13   1.1  1.0  0.0     -16.06      -4.90       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.04      27.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0    -231.39       4.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.56     434.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0       2.23     435.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          231.90      -4.21      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0       1.93      -0.00       0.00       0.00       0.00   42641.52       0.00       0.00       0.00       0.00
                           -2.06      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0      -4.98      -0.00       0.00       0.00       0.00       0.00   42641.52       0.00       0.00       0.00
                           -2.63      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0      -7.90      -0.00       0.00       0.00       0.00       0.00       0.00   42641.57       0.00       0.00
                         -436.05      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0     436.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42641.57       0.00
                           -7.99       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0      -6.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42641.57
                           -3.64      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0     -10.94    -717.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          592.55     -13.30      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0     592.53     -13.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.98     717.35      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0      -0.00      -7.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       4.79      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0       7.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.79       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00      -0.00     892.26      -9.28      -1.35       3.19      -5.21     268.20      14.87
                           -0.00      -0.00       0.00      -8.64    -890.57      11.94      15.32    -267.99      -4.94      -8.08

   26   2.1  1.0 -1.0       0.00       0.00    -892.26       0.00     -10.04       1.22      -2.95      -4.78     -14.93     268.21
                           -0.00      -0.00       8.64       0.00      55.83     190.42     244.15      16.73       0.40       3.06

   27   3.1  1.0 -1.0       0.00       0.00       9.28      10.04      -0.00     116.45    -287.53      -0.02       3.13      -2.58
                           -0.00      -0.00     890.57     -55.83       0.00      -1.84      -2.32      -8.29       1.79     268.54

   28   4.1  1.0 -1.0       0.00       0.00       1.35      -1.22    -116.45       0.00      -0.03    1039.87      19.10      19.52
                           -0.00      -0.00     -11.94    -190.42       1.84      -0.00      -0.26     -16.17     884.79      -6.40

   29   5.1  1.0 -1.0       0.00       0.00      -3.19       2.95     287.53       0.03      -0.00     421.15       7.65       7.83
                           -0.00      -0.00     -15.32    -244.15       2.32       0.26      -0.00      12.51    -690.09       4.96

   30   6.1  1.0 -1.0       0.00       0.00       5.21       4.78       0.02   -1039.87    -421.15      -0.00      10.35     -10.20
                           -0.00      -0.00     267.99     -16.73       8.29      16.17     -12.51       0.00       4.04     561.04

   31   7.1  1.0 -1.0       0.00       0.00    -268.20      14.93      -3.13     -19.10      -7.65     -10.35       0.00     560.96
                           -0.00      -0.00       4.94      -0.40      -1.79    -884.79     690.09      -4.04      -0.00      10.17

   32   8.1  1.0 -1.0       0.00       0.00     -14.87    -268.21       2.58     -19.52      -7.83      10.20    -560.96       0.00
                           -0.00      -0.00       8.08      -3.06    -268.54       6.40      -4.96    -561.04     -10.17       0.00

   33   9.1  1.0 -1.0       0.00       0.00      -4.44      -2.13      -0.03    -189.01     466.69       0.08       4.53      -8.18
                           -0.00      -0.00     231.43     -14.46       5.16      -5.76      -7.43       3.75      -3.08    -436.05

   34  10.1  1.0 -1.0       0.00       0.00     231.36     -16.07       2.77      -3.47       8.69      -8.32       5.99     435.96
                           -0.00      -0.00       4.26      -0.25       1.64     309.67     397.04      -2.82       0.01      -8.18

   35  11.1  1.0 -1.0       0.00       0.00      16.06     231.39      -2.23      -1.93       4.98       7.90    -436.01       6.06
                           -0.00      -0.00       5.04      -2.56    -231.90       2.06       2.63     436.05       7.99       3.64

   36  12.1  1.0 -1.0       0.00       0.00       4.90      -4.53    -435.37       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00     -27.24    -434.55       4.21       0.00       0.00       0.00      -0.00       0.00

   37   1.1  0.0  0.0     110.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.65      -0.00    -471.60     179.23    -788.14     -55.83    -399.59     287.88     -53.96    -425.40

   38   2.1  0.0  0.0      -8.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -104.91       0.00       6.77     741.85      42.74     -62.25    -445.94     -23.21    -261.07     530.84

   39   3.1  0.0  0.0     -16.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.38       0.00    1204.26      80.02     134.07     -40.56    -290.33     -36.03     -58.07    -331.56

   40   4.1  0.0  0.0       0.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.29       0.00      15.56     948.76      -3.90      67.19     480.77       9.14    -340.10    -262.07

   41   5.1  0.0  0.0     132.73      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.99      -0.00     569.31    -110.26    -926.46      38.46     275.30     326.36      31.92     350.42

   42   6.1  0.0  0.0       2.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.52      -0.00   -1990.62     124.57     -23.70       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -4.44     231.36      16.06       4.90       0.00       0.00       0.00       0.00       0.00       0.00
                         -231.43      -4.26      -5.04      27.24       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      -2.13     -16.07     231.39      -4.53       0.00       0.00       0.00       0.00       0.00       0.00
                           14.46       0.25       2.56     434.55       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0      -0.03       2.77      -2.23    -435.37       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.16      -1.64     231.90      -4.21       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0    -189.01      -3.47      -1.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.76    -309.67      -2.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0     466.69       8.69       4.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.43    -397.04      -2.63      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       0.08      -8.32       7.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.75       2.82    -436.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0       4.53       5.99    -436.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.08      -0.01      -7.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0      -8.18     435.96       6.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          436.05       8.18      -3.64      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00      -6.22      10.94     717.33       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -3.96     592.55     -13.30       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0       6.22       0.00    -592.53      13.25       0.00       0.00       0.00       0.00       0.00       0.00
                            3.96       0.00      10.98     717.35       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0     -10.94     592.53      -0.00       7.53       0.00       0.00       0.00       0.00       0.00       0.00
                         -592.55     -10.98      -0.00       4.79       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0    -717.33     -13.25      -7.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.30    -717.35      -4.79      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00    -892.26       9.28       1.35      -3.19       5.21
                            0.00       0.00       0.00       0.00      -0.00      -8.64    -890.57      11.94      15.32    -267.99

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00     892.26       0.00      10.04      -1.22       2.95       4.78
                            0.00       0.00       0.00       0.00       8.64      -0.00      55.83     190.42     244.15      16.73

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -9.28     -10.04      -0.00    -116.45     287.53       0.02
                            0.00       0.00       0.00       0.00     890.57     -55.83      -0.00      -1.84      -2.32      -8.29

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -1.35       1.22     116.45       0.00       0.03   -1039.87
                            0.00       0.00       0.00       0.00     -11.94    -190.42       1.84       0.00      -0.26     -16.17

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       3.19      -2.95    -287.53      -0.03      -0.00    -421.15
                            0.00       0.00       0.00       0.00     -15.32    -244.15       2.32       0.26       0.00      12.51

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -5.21      -4.78      -0.02    1039.87     421.15      -0.00
                            0.00       0.00       0.00       0.00     267.99     -16.73       8.29      16.17     -12.51      -0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     268.20     -14.93       3.13      19.10       7.65      10.35
                            0.00       0.00       0.00       0.00       4.94      -0.40      -1.79    -884.79     690.09      -4.04

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00      14.87     268.21      -2.58      19.52       7.83     -10.20
                            0.00       0.00       0.00       0.00       8.08      -3.06    -268.54       6.40      -4.96    -561.04

   21   9.1  1.0  0.0   43613.58       0.00       0.00       0.00       4.44       2.13       0.03     189.01    -466.69      -0.08
                            0.00       0.00       0.00       0.00     231.43     -14.46       5.16      -5.76      -7.43       3.75

   22  10.1  1.0  0.0       0.00   43613.58       0.00       0.00    -231.36      16.07      -2.77       3.47      -8.69       8.32
                           -0.00       0.00       0.00       0.00       4.26      -0.25       1.64     309.67     397.04      -2.82

   23  11.1  1.0  0.0       0.00       0.00   43613.58       0.00     -16.06    -231.39       2.23       1.93      -4.98      -7.90
                           -0.00      -0.00       0.00       0.00       5.04      -2.56    -231.90       2.06       2.63     436.05

   24  12.1  1.0  0.0       0.00       0.00       0.00   44128.70      -4.90       4.53     435.37      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     -27.24    -434.55       4.21       0.00       0.00       0.00

   25   1.1  1.0 -1.0       4.44    -231.36     -16.06      -4.90       0.01       0.00       0.00       0.00       0.00       0.00
                         -231.43      -4.26      -5.04      27.24      -0.00     -15.00     -78.81     433.66     -60.58      23.69

   26   2.1  1.0 -1.0       2.13      16.07    -231.39       4.53       0.00       0.00       0.00       0.00       0.00       0.00
                           14.46       0.25       2.56     434.55      15.00       0.00   -1259.44     -27.15       3.78     379.15

   27   3.1  1.0 -1.0       0.03      -2.77       2.23     435.37       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.16      -1.64     231.90      -4.21      78.81    1259.44      -0.00       5.21      -0.65       3.26

   28   4.1  1.0 -1.0     189.01       3.47       1.93      -0.00       0.00       0.00       0.00   42641.52       0.00       0.00
                            5.76    -309.67      -2.06      -0.00    -433.66      27.15      -5.21      -0.00       0.03       4.27

   29   5.1  1.0 -1.0    -466.69      -8.69      -4.98      -0.00       0.00       0.00       0.00       0.00   42641.52       0.00
                            7.43    -397.04      -2.63      -0.00      60.58      -3.78       0.65      -0.03      -0.00      29.96

   30   6.1  1.0 -1.0      -0.08       8.32      -7.90      -0.00       0.00       0.00       0.00       0.00       0.00   42641.57
                           -3.75       2.82    -436.05      -0.00     -23.69    -379.15      -3.26      -4.27     -29.96      -0.00

   31   7.1  1.0 -1.0      -4.53      -5.99     436.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.08      -0.01      -7.99       0.00      -4.76      -3.02     379.92       1.52      10.83    -793.42

   32   8.1  1.0 -1.0       8.18    -435.96      -6.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          436.05       8.18      -3.64      -0.00      -0.41      -7.17      -2.67     219.53    1571.59       5.51

   33   9.1  1.0 -1.0      -0.00       6.22     -10.94    -717.33       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -3.96     592.55     -13.30      20.59     327.27      -9.25       7.23      -1.14     -22.68

   34  10.1  1.0 -1.0      -6.22       0.00     592.53     -13.25       0.00       0.00       0.00       0.00       0.00       0.00
                            3.96      -0.00      10.98     717.35      -3.31       9.46     327.90       4.83      -0.70     616.27

   35  11.1  1.0 -1.0      10.94    -592.53      -0.00      -7.53       0.00       0.00       0.00       0.00       0.00       0.00
                         -592.55     -10.98       0.00       4.79       0.19       3.46       2.16    -705.33      98.53       3.99

   36  12.1  1.0 -1.0     717.33      13.25       7.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.30    -717.35      -4.79       0.00     614.53     -38.46       7.32      -0.00      -0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00     573.19     366.84     256.03      73.43      29.68     339.48
                         -155.24     -33.75    -100.53      -0.00     152.86     588.41    -403.93    -310.88     242.49    -142.71

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -1.59     441.77    -542.67     346.46     140.30    -175.42
                           12.96    -148.48      -8.73      -0.00     495.55    -546.68    -434.82      20.09     -15.57    -159.05

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00     -75.92     302.86     747.84      72.02      29.17    -339.04
                           22.45     -32.12     240.79      -0.00     105.89    -105.29    -288.01      48.23     -37.78    -114.75

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00     -36.94    -476.91     250.99     443.60     179.68     113.15
                            4.78    -190.31     -10.05       0.00     680.83     239.95     485.92       2.30      -1.78     165.62

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00     643.41    -317.40    -131.14     -30.62     -12.41    -328.98
                         -189.00       8.91     111.42       0.00     -83.10    -533.67     279.89    -371.83     289.97      96.87

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00     -15.88      14.67    1410.27       0.00       0.00       0.00
                            3.34       2.21    -322.28      -0.00     -88.25   -1407.61      13.65      -0.00       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     573.19      -1.59     -75.92     -36.94
                            0.00       0.00       0.00       0.00       0.00       0.00     152.86     495.55     105.89     680.83

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     366.84     441.77     302.86    -476.91
                            0.00       0.00       0.00       0.00       0.00       0.00     588.41    -546.68    -105.29     239.95

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     256.03    -542.67     747.84     250.99
                            0.00       0.00       0.00       0.00       0.00       0.00    -403.93    -434.82    -288.01     485.92

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      73.43     346.46      72.02     443.60
                            0.00       0.00       0.00       0.00       0.00       0.00    -310.88      20.09      48.23       2.30

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      29.68     140.30      29.17     179.68
                            0.00       0.00       0.00       0.00       0.00       0.00     242.49     -15.57     -37.78      -1.78

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     339.48    -175.42    -339.04     113.15
                            0.00       0.00       0.00       0.00       0.00       0.00    -142.71    -159.05    -114.75     165.62

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     147.48     156.21      97.65    -169.46
                            0.00       0.00       0.00       0.00       0.00       0.00     -35.89    -203.53     569.17      81.71

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -191.76       8.28      23.53       4.73
                            0.00       0.00       0.00       0.00       0.00       0.00      37.16     185.33      32.78     241.92

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      51.23    -106.32     152.25      47.71
                            0.00       0.00       0.00       0.00       0.00       0.00     -78.24     -92.58     -58.88      96.19

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -80.07     -91.54     -55.40      97.48
                            0.00       0.00       0.00       0.00       0.00       0.00    -122.29     100.13      17.99     -54.85

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     110.92      -8.89     -16.04       0.34
                            0.00       0.00       0.00       0.00       0.00       0.00      20.65     104.91      21.38     135.29

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  0.0    -268.20     -14.87      -4.44     231.36      16.06       4.90       0.00       0.00       0.00       0.00
                           -4.94      -8.08    -231.43      -4.26      -5.04      27.24     471.60      -6.77   -1204.26     -15.56

   14   2.1  1.0  0.0      14.93    -268.21      -2.13     -16.07     231.39      -4.53       0.00       0.00       0.00       0.00
                            0.40       3.06      14.46       0.25       2.56     434.55    -179.23    -741.85     -80.02    -948.76

   15   3.1  1.0  0.0      -3.13       2.58      -0.03       2.77      -2.23    -435.37       0.00       0.00       0.00       0.00
                            1.79     268.54      -5.16      -1.64     231.90      -4.21     788.14     -42.74    -134.07       3.90

   16   4.1  1.0  0.0     -19.10     -19.52    -189.01      -3.47      -1.93       0.00       0.00       0.00       0.00       0.00
                          884.79      -6.40       5.76    -309.67      -2.06      -0.00      55.83      62.25      40.56     -67.19

   17   5.1  1.0  0.0      -7.65      -7.83     466.69       8.69       4.98       0.00       0.00       0.00       0.00       0.00
                         -690.09       4.96       7.43    -397.04      -2.63      -0.00     399.59     445.94     290.33    -480.77

   18   6.1  1.0  0.0     -10.35      10.20       0.08      -8.32       7.90       0.00       0.00       0.00       0.00       0.00
                            4.04     561.04      -3.75       2.82    -436.05      -0.00    -287.88      23.21      36.03      -9.14

   19   7.1  1.0  0.0       0.00    -560.96       4.53       5.99    -436.01      -0.00       0.00       0.00       0.00       0.00
                            0.00      10.17       3.08      -0.01      -7.99       0.00      53.96     261.07      58.07     340.10

   20   8.1  1.0  0.0     560.96       0.00      -8.18     435.96       6.06       0.00       0.00       0.00       0.00       0.00
                          -10.17      -0.00     436.05       8.18      -3.64      -0.00     425.40    -530.84     331.56     262.07

   21   9.1  1.0  0.0      -4.53       8.18      -0.00      -6.22      10.94     717.33       0.00       0.00       0.00       0.00
                           -3.08    -436.05       0.00      -3.96     592.55     -13.30     155.24     -12.96     -22.45      -4.78

   22  10.1  1.0  0.0      -5.99    -435.96       6.22       0.00    -592.53      13.25       0.00       0.00       0.00       0.00
                            0.01      -8.18       3.96       0.00      10.98     717.35      33.75     148.48      32.12     190.31

   23  11.1  1.0  0.0     436.01      -6.06     -10.94     592.53      -0.00       7.53       0.00       0.00       0.00       0.00
                            7.99       3.64    -592.55     -10.98      -0.00       4.79     100.53       8.73    -240.79      10.05

   24  12.1  1.0  0.0       0.00      -0.00    -717.33     -13.25      -7.53      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      13.30    -717.35      -4.79      -0.00       0.00       0.00       0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     573.19      -1.59     -75.92     -36.94
                            4.76       0.41     -20.59       3.31      -0.19    -614.53    -152.86    -495.55    -105.89    -680.83

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     366.84     441.77     302.86    -476.91
                            3.02       7.17    -327.27      -9.46      -3.46      38.46    -588.41     546.68     105.29    -239.95

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     256.03    -542.67     747.84     250.99
                         -379.92       2.67       9.25    -327.90      -2.16      -7.32     403.93     434.82     288.01    -485.92

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      73.43     346.46      72.02     443.60
                           -1.52    -219.53      -7.23      -4.83     705.33       0.00     310.88     -20.09     -48.23      -2.30

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      29.68     140.30      29.17     179.68
                          -10.83   -1571.59       1.14       0.70     -98.53       0.00    -242.49      15.57      37.78       1.78

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     339.48    -175.42    -339.04     113.15
                          793.42      -5.51      22.68    -616.27      -3.99      -0.00     142.71     159.05     114.75    -165.62

   31   7.1  1.0 -1.0   42641.57       0.00       0.00       0.00       0.00       0.00     147.48     156.21      97.65    -169.46
                           -0.00     -15.39    -616.34     -22.72      -6.47      -0.00      35.89     203.53    -569.17     -81.71

   32   8.1  1.0 -1.0       0.00   42641.57       0.00       0.00       0.00       0.00    -191.76       8.28      23.53       4.73
                           15.39       0.00       4.67     -11.53      -0.05       0.00     -37.16    -185.33     -32.78    -241.92

   33   9.1  1.0 -1.0       0.00       0.00   43613.58       0.00       0.00       0.00      51.23    -106.32     152.25      47.71
                          616.34      -4.67       0.00    -838.09      -5.76     -10.52      78.24      92.58      58.88     -96.19

   34  10.1  1.0 -1.0       0.00       0.00       0.00   43613.58       0.00       0.00     -80.07     -91.54     -55.40      97.48
                           22.72      11.53     838.09       0.00       8.69      -6.97     122.29    -100.13     -17.99      54.85

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   43613.58       0.00     110.92      -8.89     -16.04       0.34
                            6.47       0.05       5.76      -8.69       0.00    1014.61     -20.65    -104.91     -21.38    -135.29

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   44128.70       0.00       0.00       0.00       0.00
                            0.00      -0.00      10.52       6.97   -1014.61      -0.00      -0.00       0.00       0.00       0.00

   37   1.1  0.0  0.0     147.48    -191.76      51.23     -80.07     110.92       0.00    5840.14       0.00       0.00       0.00
                          -35.89      37.16     -78.24    -122.29      20.65       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0     156.21       8.28    -106.32     -91.54      -8.89       0.00       0.00    5840.15       0.00       0.00
                         -203.53     185.33     -92.58     100.13     104.91      -0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0      97.65      23.53     152.25     -55.40     -16.04       0.00       0.00       0.00    5840.14       0.00
                          569.17      32.78     -58.88      17.99      21.38      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0    -169.46       4.73      47.71      97.48       0.34       0.00       0.00       0.00       0.00    5840.14
                           81.71     241.92      96.19     -54.85     135.29      -0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0    -106.04    -241.32     -30.86      53.85     132.73      -0.00       0.00       0.00       0.00       0.00
                           93.49     -15.36      53.37     109.65      -7.99       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00      -0.00     227.85       4.21       2.39       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -4.22     227.86       1.52       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42

    1   1.1  1.0  1.0     643.41     -15.88
                          -83.10     -88.25

    2   2.1  1.0  1.0    -317.40      14.67
                         -533.67   -1407.61

    3   3.1  1.0  1.0    -131.14    1410.27
                          279.89      13.65

    4   4.1  1.0  1.0     -30.62       0.00
                         -371.83      -0.00

    5   5.1  1.0  1.0     -12.41       0.00
                          289.97       0.00

    6   6.1  1.0  1.0    -328.98       0.00
                           96.87       0.00

    7   7.1  1.0  1.0    -106.04      -0.00
                           93.49       0.00

    8   8.1  1.0  1.0    -241.32      -0.00
                          -15.36      -0.00

    9   9.1  1.0  1.0     -30.86     227.85
                           53.37      -4.22

   10  10.1  1.0  1.0      53.85       4.21
                          109.65     227.86

   11  11.1  1.0  1.0     132.73       2.39
                           -7.99       1.52

   12  12.1  1.0  1.0      -0.00       0.00
                            0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00
                         -569.31    1990.62

   14   2.1  1.0  0.0       0.00       0.00
                          110.26    -124.57

   15   3.1  1.0  0.0       0.00       0.00
                          926.46      23.70

   16   4.1  1.0  0.0       0.00       0.00
                          -38.46      -0.00

   17   5.1  1.0  0.0       0.00       0.00
                         -275.30      -0.00

   18   6.1  1.0  0.0       0.00       0.00
                         -326.36      -0.00

   19   7.1  1.0  0.0       0.00       0.00
                          -31.92       0.00

   20   8.1  1.0  0.0       0.00       0.00
                         -350.42       0.00

   21   9.1  1.0  0.0       0.00       0.00
                          189.00      -3.34

   22  10.1  1.0  0.0       0.00       0.00
                           -8.91      -2.21

   23  11.1  1.0  0.0       0.00       0.00
                         -111.42     322.28

   24  12.1  1.0  0.0       0.00       0.00
                           -0.00       0.00

   25   1.1  1.0 -1.0     643.41     -15.88
                           83.10      88.25

   26   2.1  1.0 -1.0    -317.40      14.67
                          533.67    1407.61

   27   3.1  1.0 -1.0    -131.14    1410.27
                         -279.89     -13.65

   28   4.1  1.0 -1.0     -30.62       0.00
                          371.83       0.00

   29   5.1  1.0 -1.0     -12.41       0.00
                         -289.97      -0.00

   30   6.1  1.0 -1.0    -328.98       0.00
                          -96.87      -0.00

   31   7.1  1.0 -1.0    -106.04      -0.00
                          -93.49      -0.00

   32   8.1  1.0 -1.0    -241.32      -0.00
                           15.36       0.00

   33   9.1  1.0 -1.0     -30.86     227.85
                          -53.37       4.22

   34  10.1  1.0 -1.0      53.85       4.21
                         -109.65    -227.86

   35  11.1  1.0 -1.0     132.73       2.39
                            7.99      -1.52

   36  12.1  1.0 -1.0      -0.00       0.00
                           -0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00
                            0.00       0.00

   41   5.1  0.0  0.0    5840.14       0.00
                            0.00       0.00

   42   6.1  0.0  0.0       0.00   14305.44
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 42)

    The diagonal matrixelements are shifted by  -6174.41912259 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.006       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.004       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42641.521       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42641.520       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42641.572       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42641.571       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42641.572
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000     -12.213   -1259.462      16.891      21.660    -378.991      -6.993     -11.423

    2    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               12.213       0.000      78.959     269.296     345.278      23.664       0.566       4.332

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                             1259.462     -78.959       0.000      -2.595      -3.288     -11.719       2.527     379.767

    4    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              -16.891    -269.296       2.595       0.000      -0.373     -22.871    1251.282      -9.053

    5    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                              -21.660    -345.278       3.288       0.373       0.000      17.687    -975.930       7.016

    6    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                              378.991     -23.664      11.719      22.871     -17.687       0.000       5.719     793.434

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                6.993      -0.566      -2.527   -1251.282     975.930      -5.719       0.000      14.380

    8    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               11.423      -4.332    -379.767       9.053      -7.016    -793.434     -14.380       0.000

    9    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              327.285     -20.448       7.300      -8.144     -10.506       5.300      -4.359    -616.666

   10    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                6.019      -0.355       2.325     437.941     561.503      -3.990       0.011     -11.573

   11    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                7.129      -3.627    -327.956       2.910       3.725     616.674      11.293       5.144

   12    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                              -38.527    -614.541       5.959       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      14.998      78.813    -433.659      60.580     -23.694      -4.759      -0.408

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.998      -0.000    1259.441      27.145      -3.778    -379.151      -3.016      -7.172

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -78.813   -1259.441       0.000      -5.215       0.648      -3.257     379.922      -2.673

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              433.659     -27.145       5.215       0.000      -0.032      -4.271       1.525     219.532

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -60.580       3.778      -0.648       0.032       0.000     -29.965      10.829    1571.585

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               23.694     379.151       3.257       4.271      29.965       0.000    -793.416       5.510

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.759       3.016    -379.922      -1.525     -10.829     793.416       0.000      15.385

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.408       7.172       2.673    -219.532   -1571.585      -5.510     -15.385      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -20.590    -327.266       9.253      -7.233       1.141      22.680    -616.344       4.667

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.313      -9.456    -327.900      -4.829       0.701    -616.271     -22.722     -11.533

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.191      -3.459      -2.156     705.331     -98.526      -3.987      -6.473      -0.045

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -614.531      38.456      -7.318       0.000       0.000      -0.000      -0.000       0.000

    1    1  |0 0>             810.607     518.786     362.084     103.850      41.979     480.101     208.568    -271.184
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -2.242     624.760    -767.446     489.974     198.416    -248.084     220.912      11.712
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -107.371     428.303    1057.602     101.850      41.248    -479.481     138.094      33.272
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             -52.238    -674.459     354.950     627.352     254.106     160.024    -239.652       6.685
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>             909.916    -448.870    -185.465     -43.303     -17.552    -465.244    -149.961    -341.282
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>             -22.452      20.747    1994.426       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -12.213   -1259.462      16.891

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      12.213       0.000      78.959     269.296

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    1259.462     -78.959       0.000      -2.595

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -16.891    -269.296       2.595       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     -21.660    -345.278       3.288       0.373

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     378.991     -23.664      11.719      22.871

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       6.993      -0.566      -2.527   -1251.282

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      11.423      -4.332    -379.767       9.053

    9    1  |1 1>+          43613.581       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000     327.285     -20.448       7.300      -8.144

   10    1  |1 1>+              0.000   43613.577       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       6.019      -0.355       2.325     437.941

   11    1  |1 1>+              0.000       0.000   43613.582       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       7.129      -3.627    -327.956       2.910

   12    1  |1 1>+              0.000       0.000       0.000   44128.704       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -38.527    -614.541       5.959       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.006       0.000       0.000       0.000
                             -327.285      -6.019      -7.129      38.527       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               20.448       0.355       3.627     614.541      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.004       0.000
                               -7.300      -2.325     327.956      -5.959      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000   42641.521
                                8.144    -437.941      -2.910      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               10.506    -561.503      -3.725      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.300       3.990    -616.674      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                4.359      -0.011     -11.293       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              616.666      11.573      -5.144      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -5.594     837.997     -18.806      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                5.594       0.000      15.534    1014.491      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -837.997     -15.534       0.000       6.773      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               18.806   -1014.491      -6.773       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   -1261.845      13.127       1.904
                               20.590      -3.313       0.191     614.531      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000    1261.845       0.000      14.205      -1.732
                              327.266       9.456       3.459     -38.456      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -13.127     -14.205       0.000    -164.681
                               -9.253     327.900       2.156       7.318       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -1.904       1.732     164.681       0.000
                                7.233       4.829    -705.331      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       4.508      -4.165    -406.626      -0.040
                               -1.141      -0.701      98.526      -0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -7.370      -6.759      -0.024    1470.594
                              -22.680     616.271       3.987       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     379.295     -21.119       4.433      27.006
                              616.344      22.722       6.473       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      21.031     379.305      -3.652      27.603
                               -4.667      11.533       0.045      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       6.281       3.016       0.039     267.300
                               -0.000     838.094       5.756      10.523       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000    -327.193      22.732      -3.920       4.911
                             -838.094      -0.000      -8.692       6.969      -0.000      -0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000     -22.710    -327.241       3.149       2.723
                               -5.756       8.692      -0.000   -1014.609      -0.000      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -6.931       6.405     615.703      -0.000
                              -10.523      -6.969    1014.609       0.000       0.000       0.000      -0.000       0.000

    1    1  |0 0>              72.444    -113.230     156.867       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -471.603     179.229    -788.136     -55.826

    2    1  |0 0>            -150.359    -129.458     -12.570       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       6.774     741.854      42.740     -62.255

    3    1  |0 0>             215.312     -78.343     -22.683       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1204.265      80.015     134.071     -40.556

    4    1  |0 0>              67.473     137.852       0.482       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      15.556     948.762      -3.900      67.189

    5    1  |0 0>             -43.636      76.155     187.712      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     569.314    -110.260    -926.457      38.455

    6    1  |0 0>             322.230       5.951       3.383       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1990.623     124.568     -23.705       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               21.660    -378.991      -6.993     -11.423    -327.285      -6.019      -7.129      38.527

    2    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              345.278      23.664       0.566       4.332      20.448       0.355       3.627     614.541

    3    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -3.288     -11.719       2.527     379.767      -7.300      -2.325     327.956      -5.959

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.373     -22.871    1251.282      -9.053       8.144    -437.941      -2.910      -0.000

    5    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000      17.687    -975.930       7.016      10.506    -561.503      -3.725      -0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                              -17.687       0.000       5.719     793.434      -5.300       3.990    -616.674      -0.000

    7    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                              975.930      -5.719       0.000      14.380       4.359      -0.011     -11.293       0.000

    8    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -7.016    -793.434     -14.380       0.000     616.666      11.573      -5.144      -0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                              -10.506       5.300      -4.359    -616.666       0.000      -5.594     837.997     -18.806

   10    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              561.503      -3.990       0.011     -11.573       5.594       0.000      15.534    1014.491

   11    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                3.725     616.674      11.293       5.144    -837.997     -15.534       0.000       6.773

   12    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      18.806   -1014.491      -6.773       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           42641.520       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   42641.572       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   42641.571       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   42641.572       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   43613.581       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43613.577       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   43613.582       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   44128.704
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -4.508       7.370    -379.295     -21.031      -6.281     327.193      22.710       6.931
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              4.165       6.759      21.119    -379.305      -3.016     -22.732     327.241      -6.405
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-            406.626       0.024      -4.433       3.652      -0.039       3.920      -3.149    -615.703
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 1>-              0.040   -1470.594     -27.006     -27.603    -267.300      -4.911      -2.723       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000    -595.591     -10.825     -11.069     659.996      12.285       7.049       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-            595.591       0.000     -14.637      14.429       0.118     -11.772      11.177       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 1>-             10.825      14.637       0.000    -793.317       6.409       8.475    -616.615      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-             11.069     -14.429     793.317       0.000     -11.569     616.534       8.568       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-           -659.996      -0.118      -6.409      11.569       0.000      -8.797      15.475    1014.457
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 1>-            -12.285      11.772      -8.475    -616.534       8.797       0.000    -837.969      18.734
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-             -7.049     -11.177     616.615      -8.568     -15.475     837.969       0.000      10.650
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-             -0.000      -0.000       0.000      -0.000   -1014.457     -18.734     -10.650       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -399.591     287.877     -53.962    -425.402    -155.239     -33.753    -100.531      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -445.945     -23.210    -261.067     530.841      12.956    -148.476      -8.733      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -290.328     -36.030     -58.071    -331.558      22.447     -32.118     240.789      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              480.766       9.141    -340.099    -262.072       4.784    -190.314     -10.052       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              275.301     326.361      31.918     350.422    -189.003       8.905     111.422       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       3.342       2.213    -322.278      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      14.998      78.813    -433.659      60.580     -23.694      -4.759      -0.408

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.998      -0.000    1259.441      27.145      -3.778    -379.151      -3.016      -7.172

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -78.813   -1259.441       0.000      -5.215       0.648      -3.257     379.922      -2.673

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              433.659     -27.145       5.215       0.000      -0.032      -4.271       1.525     219.532

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -60.580       3.778      -0.648       0.032       0.000     -29.965      10.829    1571.585

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               23.694     379.151       3.257       4.271      29.965       0.000    -793.416       5.510

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.759       3.016    -379.922      -1.525     -10.829     793.416       0.000      15.385

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.408       7.172       2.673    -219.532   -1571.585      -5.510     -15.385      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -20.590    -327.266       9.253      -7.233       1.141      22.680    -616.344       4.667

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.313      -9.456    -327.900      -4.829       0.701    -616.271     -22.722     -11.533

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.191      -3.459      -2.156     705.331     -98.526      -3.987      -6.473      -0.045

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -614.531      38.456      -7.318       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000    1261.845     -13.127      -1.904       4.508      -7.370     379.295      21.031
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>           -1261.845       0.000     -14.205       1.732      -4.165      -6.759     -21.119     379.305
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>              13.127      14.205       0.000     164.681    -406.626      -0.024       4.433      -3.652
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               1.904      -1.732    -164.681       0.000      -0.040    1470.594      27.006      27.603
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>              -4.508       4.165     406.626       0.040       0.000     595.591      10.825      11.069
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>               7.370       6.759       0.024   -1470.594    -595.591       0.000      14.637     -14.429
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 0>            -379.295      21.119      -4.433     -27.006     -10.825     -14.637       0.000     793.317
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>             -21.031    -379.305       3.652     -27.603     -11.069      14.429    -793.317       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -6.281      -3.016      -0.039    -267.300     659.996       0.118       6.409     -11.569
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 0>             327.193     -22.732       3.920      -4.911      12.285     -11.772       8.475     616.534
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              22.710     327.241      -3.149      -2.723       7.049      11.177    -616.615       8.568
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               6.931      -6.405    -615.703       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.006       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.004       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42641.521       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42641.520       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42641.572       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42641.571       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42641.572
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -216.183    -832.137     571.247     439.648    -342.935     201.827      50.751     -52.545

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -700.819     773.119     614.935     -28.417      22.016     224.932     287.840    -262.099

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -149.749     148.900     407.304     -68.213      53.424     162.280    -804.934     -46.353

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -962.842    -339.341    -687.197      -3.257       2.521    -234.220    -115.550    -342.129

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              117.528     754.722    -395.817     525.845    -410.078    -136.999    -132.218      21.726

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              124.800    1990.658     -19.303       0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000     810.607      -2.242    -107.371     -52.238
                               20.590      -3.313       0.191     614.531       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000     518.786     624.760     428.303    -674.459
                              327.266       9.456       3.459     -38.456       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000     362.084    -767.446    1057.602     354.950
                               -9.253     327.900       2.156       7.318       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000     103.850     489.974     101.850     627.352
                                7.233       4.829    -705.331      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      41.979     198.416      41.248     254.106
                               -1.141      -0.701      98.526      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000     480.101    -248.084    -479.481     160.024
                              -22.680     616.271       3.987       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000     208.568     220.912     138.094    -239.652
                              616.344      22.722       6.473       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000    -271.184      11.712      33.272       6.685
                               -4.667      11.533       0.045      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      72.444    -150.359     215.312      67.473
                               -0.000     838.094       5.756      10.523       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000    -113.230    -129.458     -78.343     137.852
                             -838.094      -0.000      -8.692       6.969       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000     156.867     -12.570     -22.683       0.482
                               -5.756       8.692      -0.000   -1014.609       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -10.523      -6.969    1014.609       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               6.281    -327.193     -22.710      -6.931       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     471.603      -6.774   -1204.265     -15.556

    2    1  |1 0>               3.016      22.732    -327.241       6.405       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000    -179.229    -741.854     -80.015    -948.762

    3    1  |1 0>               0.039      -3.920       3.149     615.703       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     788.136     -42.740    -134.071       3.900

    4    1  |1 0>             267.300       4.911       2.723      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      55.826      62.255      40.556     -67.189

    5    1  |1 0>            -659.996     -12.285      -7.049      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     399.591     445.945     290.328    -480.766

    6    1  |1 0>              -0.118      11.772     -11.177      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000    -287.877      23.210      36.030      -9.141

    7    1  |1 0>              -6.409      -8.475     616.615       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      53.962     261.067      58.071     340.099

    8    1  |1 0>              11.569    -616.534      -8.568      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000     425.402    -530.841     331.558     262.072

    9    1  |1 0>               0.000       8.797     -15.475   -1014.457       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000     155.239     -12.956     -22.447      -4.784

   10    1  |1 0>              -8.797       0.000     837.969     -18.734       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      33.753     148.476      32.118     190.314

   11    1  |1 0>              15.475    -837.969       0.000     -10.650       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     100.531       8.733    -240.789      10.052

   12    1  |1 0>            1014.457      18.734      10.650       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     216.183     700.819     149.749     962.842

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     832.137    -773.119    -148.900     339.341

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -571.247    -614.935    -407.304     687.197

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -439.648      28.417      68.213       3.257

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     342.935     -22.016     -53.424      -2.521

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -201.827    -224.932    -162.280     234.220

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -50.751    -287.840     804.934     115.550

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      52.545     262.099      46.353     342.129

    9    1  |1 1>-          43613.581       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -110.642    -130.932     -83.276     136.033

   10    1  |1 1>-              0.000   43613.577       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -172.944     141.611      25.438     -77.573

   11    1  |1 1>-              0.000       0.000   43613.582       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      29.207     148.372      30.234     191.325

   12    1  |1 1>-              0.000       0.000       0.000   44128.704       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5840.143       0.000       0.000       0.000
                              110.642     172.944     -29.207      -0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5840.148       0.000       0.000
                              130.932    -141.611    -148.372       0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5840.144       0.000
                               83.276     -25.438     -30.234       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5840.142
                             -136.033      77.573    -191.325       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -75.474    -155.067      11.303      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.973    -322.239      -2.151      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42

    1    1  |1 1>+            909.916     -22.452
                                0.000       0.000

    2    1  |1 1>+           -448.870      20.747
                                0.000       0.000

    3    1  |1 1>+           -185.465    1994.426
                                0.000       0.000

    4    1  |1 1>+            -43.303       0.000
                                0.000       0.000

    5    1  |1 1>+            -17.552       0.000
                                0.000       0.000

    6    1  |1 1>+           -465.244       0.000
                                0.000       0.000

    7    1  |1 1>+           -149.961      -0.000
                                0.000       0.000

    8    1  |1 1>+           -341.282      -0.000
                                0.000       0.000

    9    1  |1 1>+            -43.636     322.230
                                0.000       0.000

   10    1  |1 1>+             76.155       5.951
                                0.000       0.000

   11    1  |1 1>+            187.712       3.383
                                0.000       0.000

   12    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                             -569.314    1990.623

    2    1  |1 0>               0.000       0.000
                              110.260    -124.568

    3    1  |1 0>               0.000       0.000
                              926.457      23.705

    4    1  |1 0>               0.000       0.000
                              -38.455      -0.000

    5    1  |1 0>               0.000       0.000
                             -275.301      -0.000

    6    1  |1 0>               0.000       0.000
                             -326.361      -0.000

    7    1  |1 0>               0.000       0.000
                              -31.918       0.000

    8    1  |1 0>               0.000       0.000
                             -350.422       0.000

    9    1  |1 0>               0.000       0.000
                              189.003      -3.342

   10    1  |1 0>               0.000       0.000
                               -8.905      -2.213

   11    1  |1 0>               0.000       0.000
                             -111.422     322.278

   12    1  |1 0>               0.000       0.000
                               -0.000       0.000

    1    1  |1 1>-              0.000       0.000
                             -117.528    -124.800

    2    1  |1 1>-              0.000       0.000
                             -754.722   -1990.658

    3    1  |1 1>-              0.000       0.000
                              395.817      19.303

    4    1  |1 1>-              0.000       0.000
                             -525.845      -0.000

    5    1  |1 1>-              0.000       0.000
                              410.078       0.000

    6    1  |1 1>-              0.000       0.000
                              136.999       0.000

    7    1  |1 1>-              0.000       0.000
                              132.218       0.000

    8    1  |1 1>-              0.000       0.000
                              -21.726      -0.000

    9    1  |1 1>-              0.000       0.000
                               75.474      -5.973

   10    1  |1 1>-              0.000       0.000
                              155.067     322.239

   11    1  |1 1>-              0.000       0.000
                              -11.303       2.151

   12    1  |1 1>-              0.000       0.000
                                0.000       0.000

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>            5840.142       0.000
                                0.000       0.000

    6    1  |0 0>               0.000   14305.436
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -6174.43378547    -0.01466288    -3218.13      0.00000000        0.00      0.0000
    2 -6174.42498390    -0.00586131    -1286.41      0.00880157     1931.72      0.2395
    3 -6174.42498389    -0.00586130    -1286.41      0.00880157     1931.72      0.2395
    4 -6174.42498389    -0.00586130    -1286.41      0.00880158     1931.72      0.2395
    5 -6174.41612913     0.00299346      656.99      0.01765634     3875.12      0.4805
    6 -6174.41612911     0.00299348      656.99      0.01765636     3875.12      0.4805
    7 -6174.41612898     0.00299362      657.02      0.01765649     3875.15      0.4805
    8 -6174.41612897     0.00299362      657.02      0.01765650     3875.15      0.4805
    9 -6174.41612896     0.00299363      657.03      0.01765651     3875.16      0.4805
   10 -6174.38996820     0.02915439     6398.65      0.04381726     9616.78      1.1923
   11 -6174.38996820     0.02915439     6398.65      0.04381726     9616.78      1.1923
   12 -6174.38996819     0.02915440     6398.65      0.04381728     9616.78      1.1923
   13 -6174.38996805     0.02915454     6398.68      0.04381741     9616.81      1.1923
   14 -6174.38996804     0.02915455     6398.68      0.04381743     9616.81      1.1923
   15 -6174.35086639     0.06825620    14980.51      0.08291908    18198.63      2.2563
   16 -6174.23691781     0.18220478    39989.33      0.19686765    43207.46      5.3570
   17 -6174.23691781     0.18220478    39989.33      0.19686765    43207.46      5.3570
   18 -6174.23691780     0.18220479    39989.33      0.19686766    43207.46      5.3570
   19 -6174.23003623     0.18908636    41499.66      0.20374924    44717.79      5.5443
   20 -6174.23003623     0.18908636    41499.66      0.20374924    44717.79      5.5443
   21 -6174.23003622     0.18908637    41499.66      0.20374924    44717.79      5.5443
   22 -6174.23003608     0.18908651    41499.69      0.20374939    44717.82      5.5443
   23 -6174.23003608     0.18908651    41499.69      0.20374939    44717.82      5.5443
   24 -6174.22795545     0.19116714    41956.34      0.20583002    45174.47      5.6009
   25 -6174.22728657     0.19183602    42103.14      0.20649889    45321.27      5.6191
   26 -6174.22728657     0.19183602    42103.14      0.20649889    45321.27      5.6191
   27 -6174.22728657     0.19183603    42103.14      0.20649890    45321.27      5.6191
   28 -6174.21760176     0.20152083    44228.71      0.21618371    47446.84      5.8827
   29 -6174.21760175     0.20152084    44228.71      0.21618371    47446.84      5.8827
   30 -6174.21760175     0.20152084    44228.71      0.21618372    47446.84      5.8827
   31 -6174.21760170     0.20152089    44228.72      0.21618377    47446.85      5.8827
   32 -6174.21760170     0.20152090    44228.72      0.21618377    47446.85      5.8827
   33 -6174.21760169     0.20152090    44228.72      0.21618377    47446.85      5.8827
   34 -6174.21760162     0.20152097    44228.74      0.21618384    47446.87      5.8827
   35 -6174.21478692     0.20433567    44846.50      0.21899855    48064.63      5.9593
   36 -6174.21478692     0.20433567    44846.50      0.21899855    48064.63      5.9593
   37 -6174.21478691     0.20433568    44846.50      0.21899856    48064.63      5.9593
   38 -6174.21478691     0.20433568    44846.50      0.21899856    48064.63      5.9593
   39 -6174.21478689     0.20433570    44846.50      0.21899857    48064.63      5.9593
   40 -6174.21364613     0.20547646    45096.87      0.22013934    48315.00      5.9903
   41 -6174.21364613     0.20547646    45096.87      0.22013934    48315.00      5.9903
   42 -6174.21364612     0.20547647    45096.87      0.22013934    48315.00      5.9903

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00637433 -0.00915519 -0.01319580  0.70668849 -0.00655088  0.00612270 -0.01038962 -0.00360237
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00589047  0.70679040 -0.00643850  0.00911909  0.00786784 -0.00755522 -0.65464960  0.13956744
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.56624326 -0.00745558 -0.00008157  0.00786049  0.49340372 -0.59497684  0.00990050 -0.00192428
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00002541  0.00277162  0.00005241  0.00004089  0.00004137  0.00372329  0.01746826
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00005952 -0.00684369 -0.00012748  0.00001615  0.00001642  0.00150917  0.00707434
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000001  0.00012552  0.00000080 -0.00011214  0.01482689  0.01229775  0.00020136 -0.00010836
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00637930  0.00006384 -0.00043778  0.00031115  0.00020604 -0.00941340  0.00200488
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00043667 -0.00011500  0.00637862  0.00029587  0.00023888 -0.00037281  0.00015985
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00961058  0.00009010 -0.00000001 -0.00004183 -0.00266812  0.00321690  0.00004993 -0.00001230
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00017748 -0.00466059  0.00004854 -0.00038423 -0.00003489  0.00005182 -0.00353518  0.00075146
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00010089 -0.00038420 -0.00008416  0.00466064 -0.00002161  0.00003636 -0.00018941  0.00007173
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00016809 -0.01895683 -0.00035615 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.56516363 -0.00020857  0.04407647  0.00876376  0.26795260  0.72335778 -0.00994240 -0.04300915

   2    1  |1 0>           0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                          -0.03536660  0.00680944  0.70547942  0.00592098 -0.01832686 -0.04683428 -0.13886146 -0.65345504

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00673008  0.05329802  0.00592680 -0.70482913  0.00204160  0.00814151  0.03196887 -0.00602200

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00729300 -0.00007587  0.00055098  0.00001138 -0.00000586 -0.00260485  0.00055256

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00101875  0.00000923 -0.00007674  0.00007889 -0.00004095 -0.01864608  0.00396289

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00048172 -0.00000121 -0.00637639 -0.00032633  0.00013359 -0.00047957  0.00000647

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00006634  0.00639520  0.00000296  0.00014675 -0.00002344  0.00199595  0.00942534

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000853 -0.00004399 -0.00012098  0.01806653 -0.00669364  0.00006004 -0.00010920

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00009969  0.00035379  0.00017113 -0.00466066  0.00002151  0.00004345 -0.00015166  0.00013217

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00006602 -0.00003494 -0.00467397 -0.00017394  0.00000174  0.00001853 -0.00075731 -0.00353861

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00961201  0.00000343 -0.00003033 -0.00004953 -0.00145210 -0.00391940 -0.00000207 -0.00001112

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.01890606 -0.00019447  0.00142801 -0.00000000  0.00000000  0.00000001 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                          -0.03543241 -0.00167970  0.70541446  0.01265225  0.04925315  0.00966689  0.13201646  0.65485621

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.56517391  0.00694033 -0.04421354 -0.00027547  0.76042708  0.12951716  0.00042256 -0.04494947

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00548046  0.70486185  0.00114970  0.05339182 -0.01002366  0.00016077  0.65564240 -0.13125793

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00034301  0.00008176 -0.00452820  0.00002602  0.00001363 -0.00069538  0.00028038

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00043983  0.00010417 -0.00580583 -0.00002125 -0.00000496  0.00054222 -0.00021678

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00637391  0.00018685 -0.00047954 -0.00009786  0.00036635  0.00937094 -0.00218008

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000002 -0.00011748 -0.00004271 -0.00001141  0.00323586 -0.01899256  0.00024551  0.00005320

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00017689 -0.00639182 -0.00012807 -0.00000186  0.00015997  0.00218426  0.00938356

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00017816  0.00466244 -0.00009646  0.00035128 -0.00006186 -0.00002049 -0.00352828  0.00078883

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00961088  0.00008582 -0.00003300  0.00000590  0.00412015  0.00070196 -0.00004748  0.00002405

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00006416  0.00009041  0.00467558  0.00009155  0.00001930 -0.00000383 -0.00079134 -0.00353236

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00143136 -0.00034246  0.01890370 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000004 -0.00000019  0.00000008  0.00000001 -0.18744625 -0.04918532  0.12616810 -0.06654190
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000015 -0.00000022  0.00000025 -0.00000000  0.17793865 -0.07591451  0.12247626 -0.22473973
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   3    1  |0 0>          -0.00000048 -0.00000015  0.00000003 -0.00000001 -0.02008550  0.29736255  0.09732925 -0.06286530
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000007  0.00000024  0.00000034  0.00000001 -0.09432121  0.02345016 -0.22611510 -0.20569110
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

   5    1  |0 0>          -0.00000006  0.00000015 -0.00000005  0.00000002  0.16386639  0.07611670 -0.10689246  0.04182188
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.19391484  0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000003 -0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.66936786  0.14243685 -0.17592968  0.01904839 -0.00363932  0.00111774 -0.00126185 -0.00002427
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00929009 -0.12451460 -0.08230748  0.17112100  0.00375476  0.00644905  0.00116606 -0.00045489
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00790223  0.00438484  0.00261684  0.01280157  0.08974466 -0.24611902  0.11209264  0.00000446
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00015134 -0.00934000 -0.00875165 -0.01096610 -0.00018672 -0.00089791 -0.00000000 -0.22242823
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001

   5    1  |1 1>+          0.00005987 -0.00378248 -0.00354587 -0.00444021 -0.00007609 -0.00036379 -0.00000000  0.54922399
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003

   6    1  |1 1>+          0.00020655 -0.00008214 -0.00023086 -0.00054563  0.01710515  0.00620830 -0.00000000  0.00057459
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00040260  0.00466568  0.00367961 -0.00689853  0.00020740 -0.00024296  0.00000000 -0.03028788
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00962437  0.00597972 -0.00685993  0.00037800  0.00021081  0.00003084  0.00000000 -0.00014126
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00003277  0.00007422 -0.00012704 -0.00058677 -0.00302036  0.00826047 -0.00899658 -0.00025423
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00020068 -0.00384385 -0.00317254  0.00576744  0.00003271  0.00045080 -0.00016614  0.01364273
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00361422 -0.00506654  0.00570434 -0.00025134  0.00006301  0.00016312 -0.00009445  0.00021821
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.11076006
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00688736 -0.01174649 -0.00368187 -0.00822322 -0.25792441  0.04481885  0.11187885  0.00048166

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00121430 -0.12375541 -0.11942738 -0.14729360  0.01360018 -0.01493311 -0.00700110  0.00768208

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.66867597  0.15114961 -0.16922154  0.00991599 -0.00584523 -0.00155255  0.00133228 -0.00007874

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00012975  0.00128025  0.00103406 -0.00190500 -0.00002925 -0.00009774  0.00000000  0.03479803

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00092773  0.00916189  0.00739819 -0.01364174 -0.00020994 -0.00070268  0.00000000 -0.00475189

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00962208  0.00610192 -0.00673396  0.00046969 -0.00017017 -0.00041915  0.00000000  0.00964738

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                          -0.00009467 -0.00492511 -0.00484630 -0.00591994 -0.00008094 -0.00036305 -0.00000000 -0.51305009

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00015988  0.00011707 -0.00046660 -0.00114440  0.00315199  0.01789080 -0.00000001  0.00370916

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00361421 -0.00496186  0.00579970 -0.00019245  0.00000561  0.00009777  0.00009332  0.00414653

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00009748 -0.00431753 -0.00385154 -0.00496498 -0.00014216 -0.00039414  0.00006180 -0.23054962

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00004355 -0.00000725 -0.00002589 -0.00007340  0.00868130 -0.00153575 -0.00899791 -0.00154046

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00655469

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00612416  0.12410720  0.11683851  0.15021258 -0.00801016 -0.00037849 -0.00701415  0.00768713

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00057139 -0.00736052 -0.00088389  0.00443864 -0.16835377 -0.20083784 -0.11188080 -0.00048546

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.03247337  0.11688256  0.09451051 -0.17022097 -0.00099017 -0.00680391  0.00108490 -0.00036400

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01517683  0.00947967 -0.01077094  0.00053538 -0.00017512 -0.00014142  0.00000000  0.00022324

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01183709 -0.00739427  0.00840003 -0.00041890  0.00014072  0.00010670 -0.00000000  0.00033977

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00046928 -0.00452531 -0.00364215  0.00700714  0.00036274  0.00015197 -0.00000000 -0.04008945

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001825 -0.00026742 -0.00017976 -0.00044524 -0.01394907  0.01169120 -0.00000001  0.00296879

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003
                           0.00007190 -0.00512256 -0.00479038 -0.00578141  0.00000221 -0.00056193  0.00000000  0.51248094

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00017606 -0.00383316 -0.00309317  0.00581602  0.00019491  0.00042767  0.00016677 -0.01603447

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001031 -0.00006651  0.00015463  0.00066069 -0.00565979 -0.00672511 -0.00899684 -0.00183558

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00002887 -0.00426532 -0.00398978 -0.00489646 -0.00012115 -0.00044791 -0.00006006  0.23043076

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00006107

   1    1  |0 0>          -0.21224038  0.24188262 -0.55730395  0.46382455 -0.40570713 -0.38383411  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00371502  0.04210257  0.11445822  0.70181835  0.08599216  0.61752585 -0.00000004 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.02639711 -0.14995445  0.00377045  0.33402675  0.73415581 -0.47232782  0.00000010 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00793721  0.66972780  0.60486574  0.09734420 -0.07643487 -0.25775986  0.00000002 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.23901103  0.60403241 -0.45452336 -0.25966279  0.42347637  0.27919809  0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000014  0.00000017  0.98084352 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00047524 -0.00769584  0.00002030 -0.00076332  0.01207596  0.00003034  0.00015374  0.00008649
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00768251  0.00047495  0.00038732 -0.01206994 -0.00076218 -0.00002136 -0.00014416 -0.00007992
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00007457 -0.00009157 -0.00000711  0.00011720  0.00014323 -0.00264194 -0.01371902 -0.00768275
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.01323204 -0.00008977  0.71072399  0.02274216  0.00026418 -0.00007872 -0.00015588 -0.00000002
                          -0.00000000 -0.00000000 -0.00000020 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.03240309  0.00035665  0.28784297  0.00915691  0.00016101 -0.00005244 -0.00005918 -0.00000002
                           0.00000000  0.00000000 -0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00937120 -0.00974075  0.00027207 -0.00658976 -0.00729863  0.75308752 -0.14502168 -0.00000113
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.51306650  0.00309141 -0.01214314  0.38332875  0.00284134  0.01365229 -0.00261974 -0.00000004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00328341  0.51395408 -0.00011400 -0.00297208  0.38350854  0.01419778 -0.00275198 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00427563  0.00239180  0.00007816 -0.00446021 -0.00251548 -0.05263109 -0.27332410  0.57706955
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.23054612  0.00178490 -0.00772776  0.24093803 -0.00152706 -0.00109457 -0.00501783  0.01065668
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00173046 -0.23097599 -0.00013218  0.00147687  0.24108821 -0.00054910 -0.00288118  0.00605803
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00655473  0.00005553  0.00000128  0.00000003 -0.00000000 -0.00000001  0.00000000  0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00002843 -0.00008655  0.00075810  0.00001790 -0.00013530 -0.01054005  0.00912986 -0.00766808

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00045469  0.00008406  0.01207022  0.00038744  0.00013004  0.00065851 -0.00057404  0.00047985

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000198  0.00771009 -0.00012104 -0.00001044  0.01209937 -0.00012529  0.00010814 -0.00009131

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.58684853  0.00051650 -0.00345344  0.10608162  0.00004842 -0.00003275  0.00003750 -0.00000001

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.08198347 -0.00005193 -0.02442977  0.75942159  0.00039278 -0.00030698  0.00018473 -0.00000004

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00011956 -0.51387246 -0.00712730 -0.00040818  0.38345313 -0.00951866 -0.01101474  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.03043310 -0.00970605  0.38331196  0.01245183  0.00718475  0.00341879  0.00389939 -0.00000001

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00022330 -0.00968061 -0.00259849 -0.00002797  0.00724430  0.50220646  0.57976239  0.00000001

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00044422  0.23094533  0.00438605  0.00001292  0.24105252  0.00218613 -0.00190339 -0.00598573

  10    1  |1 0>           0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01364016  0.00414922 -0.24093848 -0.00772857  0.00436731  0.00146641 -0.00119818 -0.00396405

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00008908  0.00242365 -0.00158285 -0.00018149  0.00254273 -0.21041826  0.18227021  0.57715544

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.11076007  0.00009536 -0.00000006  0.00000160 -0.00000000 -0.00000001 -0.00000001  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00036797  0.00000393 -0.01206590 -0.00052362 -0.00000428 -0.00082498 -0.00028338  0.00048074

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00005162 -0.00000031  0.00074931  0.00014382  0.00000033 -0.01317714 -0.00456311  0.00766823

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00770208 -0.00000658 -0.00053155  0.01208862  0.00000643  0.00012164  0.00004576 -0.00007436

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00031232 -0.36505791 -0.00018463 -0.00032146  0.60494968  0.00004424 -0.00012715  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00040150 -0.46805829  0.00021647  0.00027354 -0.47182552  0.00004031 -0.00011696 -0.00000001

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.51240345 -0.00047057  0.00501797 -0.38348782 -0.00021312  0.00477648 -0.01327419  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00964097 -0.00014570  0.00300802 -0.00717448  0.00002741 -0.25098527  0.72481099  0.00000112

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.04002788  0.00033876  0.38354379  0.00507332  0.00017860  0.00178235 -0.00532019 -0.00000003

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.23039855 -0.00019968 -0.00522842  0.24100369  0.00012989 -0.00499856 -0.00165938 -0.01069747

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00416364 -0.00000446  0.00155177  0.00462616  0.00000294  0.26302821  0.09108183  0.57708847

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01606546  0.00011352 -0.24104275 -0.00519780 -0.00008274  0.00177581  0.00066229  0.00385265

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00009191  0.11095363 -0.00000001  0.00000000 -0.00000036  0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000001 -0.00000001  0.00273397  0.01120841 -0.01533534  0.01407980  0.00349757 -0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000002  0.00000000  0.01413832  0.01284966  0.00100104 -0.00904111 -0.01144551  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000001  0.00000000  0.00276692  0.00814948  0.00239045 -0.00944922  0.02024058  0.00000003
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000002 -0.00000000  0.01904346 -0.01275071  0.00011334  0.00533242  0.00500662 -0.00000000
                           0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000001 -0.00000001 -0.00103527 -0.00768176 -0.01835336 -0.01345544 -0.00087953  0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000001  0.01852091
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00000787 -0.00006685 -0.00095689  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00003956 -0.00095612  0.00006636 -0.00000000 -0.00000002 -0.00000000 -0.00000008  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000050  0.00000919 -0.00001146  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.07884170 -0.00322605  0.00086490  0.00086387  0.00083417 -0.26262128 -0.00597491 -0.54936605
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000306  0.00000001  0.00000022

   5    1  |1 1>+         -0.19468109  0.00787020 -0.00218266 -0.00139139 -0.00229565  0.72821545 -0.00209034 -0.17916316
                           0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000849  0.00000000  0.00000007

   6    1  |1 1>+         -0.00017756 -0.00329425  0.00347464 -0.00814047 -0.00689794 -0.00010387 -0.01129906 -0.00006038
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00738524  0.18185748 -0.00247865  0.00317943  0.39118499  0.00135493  0.61650344 -0.00665277
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000001

   8    1  |1 1>+          0.00193487 -0.00262217 -0.18199420  0.42586949 -0.00295691  0.00100224 -0.00208811  0.01070613
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00047095 -0.01003997  0.00571288 -0.00000000  0.00000003  0.00000000 -0.00000020  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.02208355  0.54383448  0.00006879  0.00000000 -0.00000083 -0.00000000  0.00001023 -0.00000011
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00601146 -0.00028086 -0.54431230 -0.00000025 -0.00000000 -0.00000000  0.00000011  0.00000019
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.54433443 -0.02210461  0.00602312 -0.00000000 -0.00000001  0.00000307  0.00000000  0.00000042
                          -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00006008 -0.00000251 -0.00001013  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00095642 -0.00003877  0.00002056 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000007

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001961  0.00000727  0.00095903 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000
                          -0.00848748 -0.20802623  0.00139948  0.00028547  0.77124817  0.00232199 -0.00777481  0.00011140

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001
                           0.00114694  0.02905811 -0.00020305 -0.00010791 -0.05321385 -0.00027941 -0.57927476  0.00614599

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000
                          -0.00527979  0.00143934  0.18194098 -0.46770048  0.00023126 -0.00840270  0.00224947 -0.00137235

   7    1  |1 0>           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000486  0.00000002  0.00000024
                           0.18182186 -0.00738318  0.00535854 -0.00979996 -0.00127345  0.41657575  0.00635351  0.59969973

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000
                          -0.00134987  0.00008227  0.00341427 -0.00874640 -0.00025025 -0.00294245  0.00009313 -0.00418705

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00421729  0.00350139  0.54431911  0.00000027  0.00000000 -0.00000001  0.00000004  0.00000036

  10    1  |1 0>          -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.54389686  0.02215466  0.00403274  0.00000001 -0.00000000  0.00000076 -0.00000009 -0.00000910

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00369189  0.00018847  0.00567288  0.00000002 -0.00000000  0.00000000  0.00000001 -0.00000005

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.02214603  0.54435349 -0.00367319  0.00000000  0.00000305  0.00000001  0.00000063 -0.00000001

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00095700 -0.00002806  0.00001051  0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000007

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00006027 -0.00000754 -0.00000060  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00002760 -0.00095888  0.00000659 -0.00000000 -0.00000003  0.00000000  0.00000007 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000
                          -0.00140059  0.00092536  0.12927855  0.49259081 -0.00020424  0.00087421 -0.00187485 -0.00738131

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000
                          -0.00181472  0.00118570  0.16575333  0.59748945 -0.00022441  0.00133080  0.00146416  0.00699980

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000001 -0.00000002
                           0.01084730  0.18169987 -0.00118033  0.00009993  0.49904848  0.01054625 -0.53288734 -0.00465669

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000
                          -0.00111468  0.00339470  0.00001296  0.00013022  0.00942542 -0.00332789 -0.00975750  0.00394773

   8    1  |1 1>-         -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000555  0.00000001  0.00000022
                          -0.18171934  0.01081103 -0.00206721  0.00061334  0.01079328 -0.47642896 -0.00406045  0.55326386

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.02776348 -0.54356200  0.00360699  0.00000000 -0.00000057 -0.00000001  0.00001044 -0.00000002

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00414387 -0.00989045  0.00002644 -0.00000000 -0.00000002 -0.00000000  0.00000020  0.00000006

  11    1  |1 1>-          0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.54361998 -0.02779370  0.00605630  0.00000000 -0.00000001  0.00000066  0.00000002 -0.00000921

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00586896  0.00391477  0.54477073 -0.00000404  0.00000000 -0.00000001 -0.00000000 -0.00000001

   1    1  |0 0>          -0.00000001 -0.00000004  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000003  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000005 -0.00000004  0.00000000  0.00000000 -0.00000001 -0.00000001  0.00000004  0.00000004
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000001 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000006  0.00000005 -0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000004  0.00000005
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000008  0.00000000 -0.00012646  0.00001934  0.00003963  0.00186189  0.00002020 -0.00393884
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00186192 -0.00003599  0.00000373 -0.00012593 -0.00002945 -0.01392507
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000001  0.00001783  0.00000963 -0.00110476  0.00003768 -0.00185028  0.00010052
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00976179  0.00001480 -0.00476901  0.25777238  0.00086818 -0.00303391  0.00071514  0.00001796
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00298172 -0.00009302 -0.00191182  0.10439727  0.00035769 -0.00124830  0.00028584 -0.00001562
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.01115065 -0.57715312 -0.00044191  0.00047307 -0.23870595  0.00597902  0.14259169  0.00069931
                           0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00164765 -0.01045346 -0.13909050 -0.00254221 -0.00314424 -0.00160678  0.00186033 -0.04935405
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.59300554 -0.01086377  0.00167253 -0.00161501 -0.00645801 -0.13897939  0.00269112  0.01104996
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000011 -0.00000050 -0.01232054  0.00290679 -0.39337057 -0.00146936 -0.65885627  0.00617212
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000011 -0.00000001  0.66440969  0.01239627 -0.01334196 -0.00106294 -0.00852733 -0.37937675
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00001056 -0.00000001  0.00097521  0.00782696  0.00515336  0.66458607 -0.00688807  0.07943403
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000001 -0.00000000 -0.00000004  0.00000304  0.00000008  0.00000003 -0.00000001 -0.00041280
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00001753 -0.00011893 -0.00104845 -0.00000503  0.00187822 -0.00003489

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00003573 -0.00186211  0.00005960  0.00004038 -0.00012274  0.00002465

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000008  0.00000000 -0.00001029  0.00003969  0.00001377  0.00186607  0.00002243  0.00305975

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000689  0.00034358 -0.03847568 -0.00073602  0.00033798 -0.00019349 -0.00021647  0.05653369

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00225575  0.00007210 -0.27543666 -0.00516319  0.00245456 -0.00140356 -0.00152989 -0.00789626

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.56064889 -0.01085005  0.00078877 -0.00417382  0.00264771 -0.13906141  0.00256234 -0.01069133

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00036595  0.00394924 -0.00263778  0.13901490 -0.00123926 -0.00416665 -0.00054445 -0.00016543

   8    1  |1 0>           0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.01058405  0.57723488 -0.00141819  0.00016932 -0.24290284  0.00077890 -0.13550206 -0.00020276

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001065 -0.00000001 -0.00315721 -0.00459910  0.01315741  0.66450082 -0.00698143 -0.08194619

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000036 -0.00000001 -0.01235516  0.66452984  0.00496442  0.00442925 -0.00275203 -0.00170587

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000011  0.00000111 -0.00718617  0.00383094 -0.37369288  0.01213502  0.67020778 -0.00086158

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000022 -0.00000000  0.00000013  0.00000002  0.00000007  0.81217724

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00005685  0.00186257 -0.00012840 -0.00002011  0.00000706  0.00015203

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000165 -0.00010909 -0.00215119  0.00003146  0.00003148 -0.00014667

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00186582  0.00005691  0.00000404  0.00000900  0.00000997 -0.01414296

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.43759045 -0.00001270  0.00113852 -0.00253905 -0.00307641 -0.21931154  0.00003601 -0.00759384

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.37694453  0.00008675 -0.00089630  0.00200647  0.00240081  0.17104955  0.00005485 -0.00973564

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00225718  0.01074270  0.13904030 -0.00005969 -0.00119204  0.00074296  0.00582967 -0.04941984

   7    1  |1 1>-         -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00003957 -0.57723455  0.00400870  0.00182002 -0.00412947  0.00006291 -0.27808206 -0.00091175

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00954399  0.00427401  0.00002648  0.13907913  0.00047132 -0.00163804  0.00240971 -0.00095441

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000004  0.00000002  0.66436342  0.00554523 -0.02025693  0.00367888  0.00382881  0.37879899

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000063  0.01946086 -0.00686605  0.76703219 -0.01058065 -0.01125274  0.00699384

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000016 -0.00000000 -0.00531932  0.66457204  0.00728351 -0.00784120  0.00181388  0.00416920

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000022 -0.00000000 -0.00000003 -0.00000012 -0.00000004 -0.00000331  0.00000003  0.17570719

   1    1  |0 0>          -0.00000002  0.00000000 -0.00844208  0.00229959 -0.01046824  0.01146440  0.00108814  0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000001 -0.00933861  0.01056576  0.00930695 -0.00103649  0.00567621  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000002 -0.00591352  0.00215422  0.00150117 -0.00184627 -0.01653733  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00961976  0.01402441 -0.00502928 -0.00012657 -0.00205540 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000003 -0.00000000  0.00572456 -0.00071441  0.00974710  0.01352133 -0.00276481  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42

   1    1  |1 1>+         -0.01392317 -0.00018989
                           0.00000000  0.00000000

   2    1  |1 1>+          0.00393698  0.00004622
                          -0.00000000  0.00000000

   3    1  |1 1>+         -0.00019769 -0.00000262
                           0.00000000 -0.00000000

   4    1  |1 1>+          0.00029657 -0.02192182
                          -0.00000000  0.00000000

   5    1  |1 1>+         -0.00072484  0.05412683
                           0.00000000 -0.00000000

   6    1  |1 1>+         -0.00113264 -0.00001344
                           0.00000000 -0.00000000

   7    1  |1 1>+          0.01103220  0.00013193
                          -0.00000000  0.00000000

   8    1  |1 1>+          0.04934521  0.00066390
                          -0.00000000  0.00000000

   9    1  |1 1>+         -0.00544790 -0.00007045
                           0.00000000 -0.00000000

  10    1  |1 1>+          0.07934622  0.00088250
                          -0.00000000  0.00000000

  11    1  |1 1>+          0.37937233  0.00516008
                          -0.00000000  0.00000000

  12    1  |1 1>+         -0.01121513  0.83089043
                           0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000
                          -0.00017142  0.00090321

   2    1  |1 0>          -0.00000000  0.00000000
                          -0.00004782  0.01444343

   3    1  |1 0>           0.00000000 -0.00000000
                           0.01414347  0.00005236

   4    1  |1 0>          -0.00000000  0.00000000
                          -0.01222879 -0.00013021

   5    1  |1 0>           0.00000000 -0.00000000
                           0.00170990  0.00002896

   6    1  |1 0>          -0.00000000  0.00000000
                          -0.04942880  0.00025060

   7    1  |1 0>           0.00000000 -0.00000000
                          -0.00022739 -0.05057913

   8    1  |1 0>          -0.00000000  0.00000000
                          -0.00093578  0.00035247

   9    1  |1 0>          -0.00000000  0.00000000
                          -0.37866705 -0.01233703

  10    1  |1 0>          -0.00000000  0.00000000
                          -0.01222543  0.38744445

  11    1  |1 0>          -0.00000000  0.00000000
                          -0.00401117  0.00253315

  12    1  |1 0>          -0.00000000  0.00000000
                          -0.17569668 -0.00196800

   1    1  |1 1>-         -0.00000000  0.00000000
                          -0.00022936  0.01444078

   2    1  |1 1>-          0.00000000 -0.00000000
                           0.00004402 -0.00090334

   3    1  |1 1>-          0.00000000 -0.00000000
                           0.00305718  0.00020624

   4    1  |1 1>-         -0.00000000  0.00000000
                          -0.03510326 -0.00047544

   5    1  |1 1>-         -0.00000000  0.00000000
                          -0.04500595 -0.00060434

   6    1  |1 1>-          0.00000000 -0.00000000
                           0.01070153 -0.00083942

   7    1  |1 1>-          0.00000000  0.00000000
                           0.00017849  0.00034962

   8    1  |1 1>-         -0.00000000  0.00000000
                          -0.00047243  0.05056754

   9    1  |1 1>-         -0.00000000  0.00000000
                          -0.08199948  0.00310182

  10    1  |1 1>-         -0.00000000  0.00000000
                          -0.00154919  0.00264504

  11    1  |1 1>-          0.00000000 -0.00000000
                           0.00437137 -0.38759868

  12    1  |1 1>-          0.00000000 -0.00000000
                           0.81210206  0.01104882

   1    1  |0 0>           0.00000004 -0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000003
                           0.00000000  0.00000000

   3    1  |0 0>          -0.00000001 -0.00000001
                          -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000003
                           0.00000000  0.00000000

   5    1  |0 0>           0.00000005  0.00000000
                          -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000
                           0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -6174.43378547     -0.01466288    -3218.13      0.00000000        0.00      0.0000
     2   1  -6174.42498390     -0.00586131    -1286.41      0.00880157     1931.72      0.2395
     3   1  -6174.42498389     -0.00586130    -1286.41      0.00880157     1931.72      0.2395
     4   1  -6174.42498389     -0.00586130    -1286.41      0.00880158     1931.72      0.2395
     5   1  -6174.41612913      0.00299346      656.99      0.01765634     3875.12      0.4805
     6   1  -6174.41612911      0.00299348      656.99      0.01765636     3875.12      0.4805
     7   1  -6174.41612898      0.00299362      657.02      0.01765649     3875.15      0.4805
     8   1  -6174.41612897      0.00299362      657.02      0.01765650     3875.15      0.4805
     9   1  -6174.41612896      0.00299363      657.03      0.01765651     3875.16      0.4805
    10   1  -6174.38996820      0.02915439     6398.65      0.04381726     9616.78      1.1923
    11   1  -6174.38996820      0.02915439     6398.65      0.04381726     9616.78      1.1923
    12   1  -6174.38996819      0.02915440     6398.65      0.04381728     9616.78      1.1923
    13   1  -6174.38996805      0.02915454     6398.68      0.04381741     9616.81      1.1923
    14   1  -6174.38996804      0.02915455     6398.68      0.04381743     9616.81      1.1923
    15   1  -6174.35086639      0.06825620    14980.51      0.08291908    18198.63      2.2563
    16   1  -6174.23691781      0.18220478    39989.33      0.19686765    43207.46      5.3570
    17   1  -6174.23691781      0.18220478    39989.33      0.19686765    43207.46      5.3570
    18   1  -6174.23691780      0.18220479    39989.33      0.19686766    43207.46      5.3570
    19   1  -6174.23003623      0.18908636    41499.66      0.20374924    44717.79      5.5443
    20   1  -6174.23003623      0.18908636    41499.66      0.20374924    44717.79      5.5443
    21   1  -6174.23003622      0.18908637    41499.66      0.20374924    44717.79      5.5443
    22   1  -6174.23003608      0.18908651    41499.69      0.20374939    44717.82      5.5443
    23   1  -6174.23003608      0.18908651    41499.69      0.20374939    44717.82      5.5443
    24   1  -6174.22795545      0.19116714    41956.34      0.20583002    45174.47      5.6009
    25   1  -6174.22728657      0.19183602    42103.14      0.20649889    45321.27      5.6191
    26   1  -6174.22728657      0.19183602    42103.14      0.20649889    45321.27      5.6191
    27   1  -6174.22728657      0.19183603    42103.14      0.20649890    45321.27      5.6191
    28   1  -6174.21760176      0.20152083    44228.71      0.21618371    47446.84      5.8827
    29   1  -6174.21760175      0.20152084    44228.71      0.21618371    47446.84      5.8827
    30   1  -6174.21760175      0.20152084    44228.71      0.21618372    47446.84      5.8827
    31   1  -6174.21760170      0.20152089    44228.72      0.21618377    47446.85      5.8827
    32   1  -6174.21760170      0.20152090    44228.72      0.21618377    47446.85      5.8827
    33   1  -6174.21760169      0.20152090    44228.72      0.21618377    47446.85      5.8827
    34   1  -6174.21760162      0.20152097    44228.74      0.21618384    47446.87      5.8827
    35   1  -6174.21478692      0.20433567    44846.50      0.21899855    48064.63      5.9593
    36   1  -6174.21478692      0.20433567    44846.50      0.21899855    48064.63      5.9593
    37   1  -6174.21478691      0.20433568    44846.50      0.21899856    48064.63      5.9593
    38   1  -6174.21478691      0.20433568    44846.50      0.21899856    48064.63      5.9593
    39   1  -6174.21478689      0.20433570    44846.50      0.21899857    48064.63      5.9593
    40   1  -6174.21364613      0.20547646    45096.87      0.22013934    48315.00      5.9903
    41   1  -6174.21364613      0.20547646    45096.87      0.22013934    48315.00      5.9903
    42   1  -6174.21364612      0.20547647    45096.87      0.22013934    48315.00      5.9903

 E0 =  -6174.41912259 is the energy of the lowest zeroth-order state
 E1 =  -6174.43378547 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00637433 -0.00915519 -0.01319580  0.70668849 -0.00655088  0.00612270 -0.01038962 -0.00360237
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00589047  0.70679040 -0.00643850  0.00911909  0.00786784 -0.00755522 -0.65464960  0.13956744
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.56624326 -0.00745558 -0.00008157  0.00786049  0.49340372 -0.59497684  0.00990050 -0.00192428
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00002541  0.00277162  0.00005241  0.00004089  0.00004137  0.00372329  0.01746826
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000 -0.00005952 -0.00684369 -0.00012748  0.00001615  0.00001642  0.00150917  0.00707434
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000001  0.00012552  0.00000080 -0.00011214  0.01482689  0.01229775  0.00020136 -0.00010836
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000000 -0.00637930  0.00006384 -0.00043778  0.00031115  0.00020604 -0.00941340  0.00200488
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000000 -0.00043667 -0.00011500  0.00637862  0.00029587  0.00023888 -0.00037281  0.00015985
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00961058  0.00009010 -0.00000001 -0.00004183 -0.00266812  0.00321690  0.00004993 -0.00001230
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00017748 -0.00466059  0.00004854 -0.00038423 -0.00003489  0.00005182 -0.00353518  0.00075146
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00010089 -0.00038420 -0.00008416  0.00466064 -0.00002161  0.00003636 -0.00018941  0.00007173
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00016809 -0.01895683 -0.00035615 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.56516363 -0.00020857  0.04407647  0.00876376  0.26795260  0.72335778 -0.00994240 -0.04300915

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                               -0.03536660  0.00680944  0.70547942  0.00592098 -0.01832686 -0.04683428 -0.13886146 -0.65345504

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00673008  0.05329802  0.00592680 -0.70482913  0.00204160  0.00814151  0.03196887 -0.00602200

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00729300 -0.00007587  0.00055098  0.00001138 -0.00000586 -0.00260485  0.00055256

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00101875  0.00000923 -0.00007674  0.00007889 -0.00004095 -0.01864608  0.00396289

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00048172 -0.00000121 -0.00637639 -0.00032633  0.00013359 -0.00047957  0.00000647

 19  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00006634  0.00639520  0.00000296  0.00014675 -0.00002344  0.00199595  0.00942534

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000853 -0.00004399 -0.00012098  0.01806653 -0.00669364  0.00006004 -0.00010920

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00009969  0.00035379  0.00017113 -0.00466066  0.00002151  0.00004345 -0.00015166  0.00013217

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00006602 -0.00003494 -0.00467397 -0.00017394  0.00000174  0.00001853 -0.00075731 -0.00353861

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00961201  0.00000343 -0.00003033 -0.00004953 -0.00145210 -0.00391940 -0.00000207 -0.00001112

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.01890606 -0.00019447  0.00142801 -0.00000000  0.00000000  0.00000001 -0.00000000

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                               -0.03543241 -0.00167970  0.70541446  0.01265225  0.04925315  0.00966689  0.13201646  0.65485621

 26  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.56517391  0.00694033 -0.04421354 -0.00027547  0.76042708  0.12951716  0.00042256 -0.04494947

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00548046  0.70486185  0.00114970  0.05339182 -0.01002366  0.00016077  0.65564240 -0.13125793

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00034301  0.00008176 -0.00452820  0.00002602  0.00001363 -0.00069538  0.00028038

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00043983  0.00010417 -0.00580583 -0.00002125 -0.00000496  0.00054222 -0.00021678

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00637391  0.00018685 -0.00047954 -0.00009786  0.00036635  0.00937094 -0.00218008

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000002 -0.00011748 -0.00004271 -0.00001141  0.00323586 -0.01899256  0.00024551  0.00005320

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00017689 -0.00639182 -0.00012807 -0.00000186  0.00015997  0.00218426  0.00938356

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00017816  0.00466244 -0.00009646  0.00035128 -0.00006186 -0.00002049 -0.00352828  0.00078883

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00961088  0.00008582 -0.00003300  0.00000590  0.00412015  0.00070196 -0.00004748  0.00002405

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00006416  0.00009041  0.00467558  0.00009155  0.00001930 -0.00000383 -0.00079134 -0.00353236

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00143136 -0.00034246  0.01890370 -0.00000000  0.00000000 -0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00000004 -0.00000019  0.00000008  0.00000001 -0.18744625 -0.04918532  0.12616810 -0.06654190
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000015 -0.00000022  0.00000025 -0.00000000  0.17793865 -0.07591451  0.12247626 -0.22473973
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 39  1     3    1  |0 0>       -0.00000048 -0.00000015  0.00000003 -0.00000001 -0.02008550  0.29736255  0.09732925 -0.06286530
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000007  0.00000024  0.00000034  0.00000001 -0.09432121  0.02345016 -0.22611510 -0.20569110
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001

 41  1     5    1  |0 0>       -0.00000006  0.00000015 -0.00000005  0.00000002  0.16386639  0.07611670 -0.10689246  0.04182188
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.19391484  0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000003 -0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.66936786  0.14243685 -0.17592968  0.01904839 -0.00363932  0.00111774 -0.00126185 -0.00002427
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00929009 -0.12451460 -0.08230748  0.17112100  0.00375476  0.00644905  0.00116606 -0.00045489
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00790223  0.00438484  0.00261684  0.01280157  0.08974466 -0.24611902  0.11209264  0.00000446
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00015134 -0.00934000 -0.00875165 -0.01096610 -0.00018672 -0.00089791 -0.00000000 -0.22242823
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001

  5  1     5    1  |1 1>+       0.00005987 -0.00378248 -0.00354587 -0.00444021 -0.00007609 -0.00036379 -0.00000000  0.54922399
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003

  6  1     6    1  |1 1>+       0.00020655 -0.00008214 -0.00023086 -0.00054563  0.01710515  0.00620830 -0.00000000  0.00057459
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00040260  0.00466568  0.00367961 -0.00689853  0.00020740 -0.00024296  0.00000000 -0.03028788
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00962437  0.00597972 -0.00685993  0.00037800  0.00021081  0.00003084  0.00000000 -0.00014126
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00003277  0.00007422 -0.00012704 -0.00058677 -0.00302036  0.00826047 -0.00899658 -0.00025423
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00020068 -0.00384385 -0.00317254  0.00576744  0.00003271  0.00045080 -0.00016614  0.01364273
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00361422 -0.00506654  0.00570434 -0.00025134  0.00006301  0.00016312 -0.00009445  0.00021821
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.11076006
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00688736 -0.01174649 -0.00368187 -0.00822322 -0.25792441  0.04481885  0.11187885  0.00048166

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00121430 -0.12375541 -0.11942738 -0.14729360  0.01360018 -0.01493311 -0.00700110  0.00768208

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.66867597  0.15114961 -0.16922154  0.00991599 -0.00584523 -0.00155255  0.00133228 -0.00007874

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00012975  0.00128025  0.00103406 -0.00190500 -0.00002925 -0.00009774  0.00000000  0.03479803

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00092773  0.00916189  0.00739819 -0.01364174 -0.00020994 -0.00070268  0.00000000 -0.00475189

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00962208  0.00610192 -0.00673396  0.00046969 -0.00017017 -0.00041915  0.00000000  0.00964738

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                               -0.00009467 -0.00492511 -0.00484630 -0.00591994 -0.00008094 -0.00036305 -0.00000000 -0.51305009

 20  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00015988  0.00011707 -0.00046660 -0.00114440  0.00315199  0.01789080 -0.00000001  0.00370916

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00361421 -0.00496186  0.00579970 -0.00019245  0.00000561  0.00009777  0.00009332  0.00414653

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00009748 -0.00431753 -0.00385154 -0.00496498 -0.00014216 -0.00039414  0.00006180 -0.23054962

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00004355 -0.00000725 -0.00002589 -0.00007340  0.00868130 -0.00153575 -0.00899791 -0.00154046

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00655469

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00612416  0.12410720  0.11683851  0.15021258 -0.00801016 -0.00037849 -0.00701415  0.00768713

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00057139 -0.00736052 -0.00088389  0.00443864 -0.16835377 -0.20083784 -0.11188080 -0.00048546

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.03247337  0.11688256  0.09451051 -0.17022097 -0.00099017 -0.00680391  0.00108490 -0.00036400

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01517683  0.00947967 -0.01077094  0.00053538 -0.00017512 -0.00014142  0.00000000  0.00022324

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01183709 -0.00739427  0.00840003 -0.00041890  0.00014072  0.00010670 -0.00000000  0.00033977

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00046928 -0.00452531 -0.00364215  0.00700714  0.00036274  0.00015197 -0.00000000 -0.04008945

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001825 -0.00026742 -0.00017976 -0.00044524 -0.01394907  0.01169120 -0.00000001  0.00296879

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003
                                0.00007190 -0.00512256 -0.00479038 -0.00578141  0.00000221 -0.00056193  0.00000000  0.51248094

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00017606 -0.00383316 -0.00309317  0.00581602  0.00019491  0.00042767  0.00016677 -0.01603447

 34  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001031 -0.00006651  0.00015463  0.00066069 -0.00565979 -0.00672511 -0.00899684 -0.00183558

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00002887 -0.00426532 -0.00398978 -0.00489646 -0.00012115 -0.00044791 -0.00006006  0.23043076

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00006107

 37  1     1    1  |0 0>       -0.21224038  0.24188262 -0.55730395  0.46382455 -0.40570713 -0.38383411  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00371502  0.04210257  0.11445822  0.70181835  0.08599216  0.61752585 -0.00000004 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.02639711 -0.14995445  0.00377045  0.33402675  0.73415581 -0.47232782  0.00000010 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00793721  0.66972780  0.60486574  0.09734420 -0.07643487 -0.25775986  0.00000002 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.23901103  0.60403241 -0.45452336 -0.25966279  0.42347637  0.27919809  0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000014  0.00000017  0.98084352 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00047524 -0.00769584  0.00002030 -0.00076332  0.01207596  0.00003034  0.00015374  0.00008649
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00768251  0.00047495  0.00038732 -0.01206994 -0.00076218 -0.00002136 -0.00014416 -0.00007992
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00007457 -0.00009157 -0.00000711  0.00011720  0.00014323 -0.00264194 -0.01371902 -0.00768275
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.01323204 -0.00008977  0.71072399  0.02274216  0.00026418 -0.00007872 -0.00015588 -0.00000002
                               -0.00000000 -0.00000000 -0.00000020 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.03240309  0.00035665  0.28784297  0.00915691  0.00016101 -0.00005244 -0.00005918 -0.00000002
                                0.00000000  0.00000000 -0.00000008 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00937120 -0.00974075  0.00027207 -0.00658976 -0.00729863  0.75308752 -0.14502168 -0.00000113
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.51306650  0.00309141 -0.01214314  0.38332875  0.00284134  0.01365229 -0.00261974 -0.00000004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00328341  0.51395408 -0.00011400 -0.00297208  0.38350854  0.01419778 -0.00275198 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00427563  0.00239180  0.00007816 -0.00446021 -0.00251548 -0.05263109 -0.27332410  0.57706955
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.23054612  0.00178490 -0.00772776  0.24093803 -0.00152706 -0.00109457 -0.00501783  0.01065668
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00173046 -0.23097599 -0.00013218  0.00147687  0.24108821 -0.00054910 -0.00288118  0.00605803
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00655473  0.00005553  0.00000128  0.00000003 -0.00000000 -0.00000001  0.00000000  0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00002843 -0.00008655  0.00075810  0.00001790 -0.00013530 -0.01054005  0.00912986 -0.00766808

 14  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00045469  0.00008406  0.01207022  0.00038744  0.00013004  0.00065851 -0.00057404  0.00047985

 15  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000198  0.00771009 -0.00012104 -0.00001044  0.01209937 -0.00012529  0.00010814 -0.00009131

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.58684853  0.00051650 -0.00345344  0.10608162  0.00004842 -0.00003275  0.00003750 -0.00000001

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.08198347 -0.00005193 -0.02442977  0.75942159  0.00039278 -0.00030698  0.00018473 -0.00000004

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00011956 -0.51387246 -0.00712730 -0.00040818  0.38345313 -0.00951866 -0.01101474  0.00000000

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.03043310 -0.00970605  0.38331196  0.01245183  0.00718475  0.00341879  0.00389939 -0.00000001

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00022330 -0.00968061 -0.00259849 -0.00002797  0.00724430  0.50220646  0.57976239  0.00000001

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00044422  0.23094533  0.00438605  0.00001292  0.24105252  0.00218613 -0.00190339 -0.00598573

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01364016  0.00414922 -0.24093848 -0.00772857  0.00436731  0.00146641 -0.00119818 -0.00396405

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00008908  0.00242365 -0.00158285 -0.00018149  0.00254273 -0.21041826  0.18227021  0.57715544

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.11076007  0.00009536 -0.00000006  0.00000160 -0.00000000 -0.00000001 -0.00000001  0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00036797  0.00000393 -0.01206590 -0.00052362 -0.00000428 -0.00082498 -0.00028338  0.00048074

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00005162 -0.00000031  0.00074931  0.00014382  0.00000033 -0.01317714 -0.00456311  0.00766823

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00770208 -0.00000658 -0.00053155  0.01208862  0.00000643  0.00012164  0.00004576 -0.00007436

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00031232 -0.36505791 -0.00018463 -0.00032146  0.60494968  0.00004424 -0.00012715  0.00000000

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00040150 -0.46805829  0.00021647  0.00027354 -0.47182552  0.00004031 -0.00011696 -0.00000001

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.51240345 -0.00047057  0.00501797 -0.38348782 -0.00021312  0.00477648 -0.01327419  0.00000000

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00964097 -0.00014570  0.00300802 -0.00717448  0.00002741 -0.25098527  0.72481099  0.00000112

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000011  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.04002788  0.00033876  0.38354379  0.00507332  0.00017860  0.00178235 -0.00532019 -0.00000003

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.23039855 -0.00019968 -0.00522842  0.24100369  0.00012989 -0.00499856 -0.00165938 -0.01069747

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00416364 -0.00000446  0.00155177  0.00462616  0.00000294  0.26302821  0.09108183  0.57708847

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01606546  0.00011352 -0.24104275 -0.00519780 -0.00008274  0.00177581  0.00066229  0.00385265

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00009191  0.11095363 -0.00000001  0.00000000 -0.00000036  0.00000000 -0.00000000 -0.00000000

 37  1     1    1  |0 0>       -0.00000001 -0.00000001  0.00273397  0.01120841 -0.01533534  0.01407980  0.00349757 -0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000002  0.00000000  0.01413832  0.01284966  0.00100104 -0.00904111 -0.01144551  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000001  0.00000000  0.00276692  0.00814948  0.00239045 -0.00944922  0.02024058  0.00000003
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000002 -0.00000000  0.01904346 -0.01275071  0.00011334  0.00533242  0.00500662 -0.00000000
                                0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000001 -0.00000001 -0.00103527 -0.00768176 -0.01835336 -0.01345544 -0.00087953  0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000001  0.01852091
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00000787 -0.00006685 -0.00095689  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00003956 -0.00095612  0.00006636 -0.00000000 -0.00000002 -0.00000000 -0.00000008  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000050  0.00000919 -0.00001146  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.07884170 -0.00322605  0.00086490  0.00086387  0.00083417 -0.26262128 -0.00597491 -0.54936605
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000306  0.00000001  0.00000022

  5  1     5    1  |1 1>+      -0.19468109  0.00787020 -0.00218266 -0.00139139 -0.00229565  0.72821545 -0.00209034 -0.17916316
                                0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000849  0.00000000  0.00000007

  6  1     6    1  |1 1>+      -0.00017756 -0.00329425  0.00347464 -0.00814047 -0.00689794 -0.00010387 -0.01129906 -0.00006038
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00738524  0.18185748 -0.00247865  0.00317943  0.39118499  0.00135493  0.61650344 -0.00665277
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002 -0.00000002 -0.00000001

  8  1     8    1  |1 1>+       0.00193487 -0.00262217 -0.18199420  0.42586949 -0.00295691  0.00100224 -0.00208811  0.01070613
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00047095 -0.01003997  0.00571288 -0.00000000  0.00000003  0.00000000 -0.00000020  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.02208355  0.54383448  0.00006879  0.00000000 -0.00000083 -0.00000000  0.00001023 -0.00000011
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00601146 -0.00028086 -0.54431230 -0.00000025 -0.00000000 -0.00000000  0.00000011  0.00000019
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.54433443 -0.02210461  0.00602312 -0.00000000 -0.00000001  0.00000307  0.00000000  0.00000042
                               -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00006008 -0.00000251 -0.00001013  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00095642 -0.00003877  0.00002056 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000007

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001961  0.00000727  0.00095903 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000000  0.00000000
                               -0.00848748 -0.20802623  0.00139948  0.00028547  0.77124817  0.00232199 -0.00777481  0.00011140

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001
                                0.00114694  0.02905811 -0.00020305 -0.00010791 -0.05321385 -0.00027941 -0.57927476  0.00614599

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000
                               -0.00527979  0.00143934  0.18194098 -0.46770048  0.00023126 -0.00840270  0.00224947 -0.00137235

 19  1     7    1  |1 0>        0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000486  0.00000002  0.00000024
                                0.18182186 -0.00738318  0.00535854 -0.00979996 -0.00127345  0.41657575  0.00635351  0.59969973

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000
                               -0.00134987  0.00008227  0.00341427 -0.00874640 -0.00025025 -0.00294245  0.00009313 -0.00418705

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00421729  0.00350139  0.54431911  0.00000027  0.00000000 -0.00000001  0.00000004  0.00000036

 22  1    10    1  |1 0>       -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.54389686  0.02215466  0.00403274  0.00000001 -0.00000000  0.00000076 -0.00000009 -0.00000910

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00369189  0.00018847  0.00567288  0.00000002 -0.00000000  0.00000000  0.00000001 -0.00000005

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.02214603  0.54435349 -0.00367319  0.00000000  0.00000305  0.00000001  0.00000063 -0.00000001

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00095700 -0.00002806  0.00001051  0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000007

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00006027 -0.00000754 -0.00000060  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00002760 -0.00095888  0.00000659 -0.00000000 -0.00000003  0.00000000  0.00000007 -0.00000000

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000
                               -0.00140059  0.00092536  0.12927855  0.49259081 -0.00020424  0.00087421 -0.00187485 -0.00738131

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000
                               -0.00181472  0.00118570  0.16575333  0.59748945 -0.00022441  0.00133080  0.00146416  0.00699980

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000001 -0.00000002
                                0.01084730  0.18169987 -0.00118033  0.00009993  0.49904848  0.01054625 -0.53288734 -0.00465669

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000000  0.00000000
                               -0.00111468  0.00339470  0.00001296  0.00013022  0.00942542 -0.00332789 -0.00975750  0.00394773

 32  1     8    1  |1 1>-      -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000555  0.00000001  0.00000022
                               -0.18171934  0.01081103 -0.00206721  0.00061334  0.01079328 -0.47642896 -0.00406045  0.55326386

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.02776348 -0.54356200  0.00360699  0.00000000 -0.00000057 -0.00000001  0.00001044 -0.00000002

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00414387 -0.00989045  0.00002644 -0.00000000 -0.00000002 -0.00000000  0.00000020  0.00000006

 35  1    11    1  |1 1>-       0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.54361998 -0.02779370  0.00605630  0.00000000 -0.00000001  0.00000066  0.00000002 -0.00000921

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00586896  0.00391477  0.54477073 -0.00000404  0.00000000 -0.00000001 -0.00000000 -0.00000001

 37  1     1    1  |0 0>       -0.00000001 -0.00000004  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000003  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000005 -0.00000004  0.00000000  0.00000000 -0.00000001 -0.00000001  0.00000004  0.00000004
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000001 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000006  0.00000005 -0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000004  0.00000005
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000008  0.00000000 -0.00012646  0.00001934  0.00003963  0.00186189  0.00002020 -0.00393884
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00186192 -0.00003599  0.00000373 -0.00012593 -0.00002945 -0.01392507
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000001  0.00001783  0.00000963 -0.00110476  0.00003768 -0.00185028  0.00010052
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00976179  0.00001480 -0.00476901  0.25777238  0.00086818 -0.00303391  0.00071514  0.00001796
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00298172 -0.00009302 -0.00191182  0.10439727  0.00035769 -0.00124830  0.00028584 -0.00001562
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.01115065 -0.57715312 -0.00044191  0.00047307 -0.23870595  0.00597902  0.14259169  0.00069931
                                0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00164765 -0.01045346 -0.13909050 -0.00254221 -0.00314424 -0.00160678  0.00186033 -0.04935405
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.59300554 -0.01086377  0.00167253 -0.00161501 -0.00645801 -0.13897939  0.00269112  0.01104996
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00000011 -0.00000050 -0.01232054  0.00290679 -0.39337057 -0.00146936 -0.65885627  0.00617212
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000011 -0.00000001  0.66440969  0.01239627 -0.01334196 -0.00106294 -0.00852733 -0.37937675
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00001056 -0.00000001  0.00097521  0.00782696  0.00515336  0.66458607 -0.00688807  0.07943403
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000001 -0.00000000 -0.00000004  0.00000304  0.00000008  0.00000003 -0.00000001 -0.00041280
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00001753 -0.00011893 -0.00104845 -0.00000503  0.00187822 -0.00003489

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00003573 -0.00186211  0.00005960  0.00004038 -0.00012274  0.00002465

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000008  0.00000000 -0.00001029  0.00003969  0.00001377  0.00186607  0.00002243  0.00305975

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000689  0.00034358 -0.03847568 -0.00073602  0.00033798 -0.00019349 -0.00021647  0.05653369

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00225575  0.00007210 -0.27543666 -0.00516319  0.00245456 -0.00140356 -0.00152989 -0.00789626

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.56064889 -0.01085005  0.00078877 -0.00417382  0.00264771 -0.13906141  0.00256234 -0.01069133

 19  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00036595  0.00394924 -0.00263778  0.13901490 -0.00123926 -0.00416665 -0.00054445 -0.00016543

 20  1     8    1  |1 0>        0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.01058405  0.57723488 -0.00141819  0.00016932 -0.24290284  0.00077890 -0.13550206 -0.00020276

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001065 -0.00000001 -0.00315721 -0.00459910  0.01315741  0.66450082 -0.00698143 -0.08194619

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000036 -0.00000001 -0.01235516  0.66452984  0.00496442  0.00442925 -0.00275203 -0.00170587

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000011  0.00000111 -0.00718617  0.00383094 -0.37369288  0.01213502  0.67020778 -0.00086158

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000022 -0.00000000  0.00000013  0.00000002  0.00000007  0.81217724

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00005685  0.00186257 -0.00012840 -0.00002011  0.00000706  0.00015203

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000165 -0.00010909 -0.00215119  0.00003146  0.00003148 -0.00014667

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00186582  0.00005691  0.00000404  0.00000900  0.00000997 -0.01414296

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.43759045 -0.00001270  0.00113852 -0.00253905 -0.00307641 -0.21931154  0.00003601 -0.00759384

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.37694453  0.00008675 -0.00089630  0.00200647  0.00240081  0.17104955  0.00005485 -0.00973564

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00225718  0.01074270  0.13904030 -0.00005969 -0.00119204  0.00074296  0.00582967 -0.04941984

 31  1     7    1  |1 1>-      -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00003957 -0.57723455  0.00400870  0.00182002 -0.00412947  0.00006291 -0.27808206 -0.00091175

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00954399  0.00427401  0.00002648  0.13907913  0.00047132 -0.00163804  0.00240971 -0.00095441

 33  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000004  0.00000002  0.66436342  0.00554523 -0.02025693  0.00367888  0.00382881  0.37879899

 34  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000063  0.01946086 -0.00686605  0.76703219 -0.01058065 -0.01125274  0.00699384

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000016 -0.00000000 -0.00531932  0.66457204  0.00728351 -0.00784120  0.00181388  0.00416920

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000022 -0.00000000 -0.00000003 -0.00000012 -0.00000004 -0.00000331  0.00000003  0.17570719

 37  1     1    1  |0 0>       -0.00000002  0.00000000 -0.00844208  0.00229959 -0.01046824  0.01146440  0.00108814  0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00000000  0.00000001 -0.00933861  0.01056576  0.00930695 -0.00103649  0.00567621  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00000000 -0.00000002 -0.00591352  0.00215422  0.00150117 -0.00184627 -0.01653733  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00961976  0.01402441 -0.00502928 -0.00012657 -0.00205540 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000003 -0.00000000  0.00572456 -0.00071441  0.00974710  0.01352133 -0.00276481  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42

  1  1     1    1  |1 1>+      -0.01392317 -0.00018989
                                0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00393698  0.00004622
                               -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00019769 -0.00000262
                                0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00029657 -0.02192182
                               -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00072484  0.05412683
                                0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00113264 -0.00001344
                                0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.01103220  0.00013193
                               -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.04934521  0.00066390
                               -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00544790 -0.00007045
                                0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.07934622  0.00088250
                               -0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.37937233  0.00516008
                               -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.01121513  0.83089043
                                0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000
                               -0.00017142  0.00090321

 14  1     2    1  |1 0>       -0.00000000  0.00000000
                               -0.00004782  0.01444343

 15  1     3    1  |1 0>        0.00000000 -0.00000000
                                0.01414347  0.00005236

 16  1     4    1  |1 0>       -0.00000000  0.00000000
                               -0.01222879 -0.00013021

 17  1     5    1  |1 0>        0.00000000 -0.00000000
                                0.00170990  0.00002896

 18  1     6    1  |1 0>       -0.00000000  0.00000000
                               -0.04942880  0.00025060

 19  1     7    1  |1 0>        0.00000000 -0.00000000
                               -0.00022739 -0.05057913

 20  1     8    1  |1 0>       -0.00000000  0.00000000
                               -0.00093578  0.00035247

 21  1     9    1  |1 0>       -0.00000000  0.00000000
                               -0.37866705 -0.01233703

 22  1    10    1  |1 0>       -0.00000000  0.00000000
                               -0.01222543  0.38744445

 23  1    11    1  |1 0>       -0.00000000  0.00000000
                               -0.00401117  0.00253315

 24  1    12    1  |1 0>       -0.00000000  0.00000000
                               -0.17569668 -0.00196800

 25  1     1    1  |1 1>-      -0.00000000  0.00000000
                               -0.00022936  0.01444078

 26  1     2    1  |1 1>-       0.00000000 -0.00000000
                                0.00004402 -0.00090334

 27  1     3    1  |1 1>-       0.00000000 -0.00000000
                                0.00305718  0.00020624

 28  1     4    1  |1 1>-      -0.00000000  0.00000000
                               -0.03510326 -0.00047544

 29  1     5    1  |1 1>-      -0.00000000  0.00000000
                               -0.04500595 -0.00060434

 30  1     6    1  |1 1>-       0.00000000 -0.00000000
                                0.01070153 -0.00083942

 31  1     7    1  |1 1>-       0.00000000  0.00000000
                                0.00017849  0.00034962

 32  1     8    1  |1 1>-      -0.00000000  0.00000000
                               -0.00047243  0.05056754

 33  1     9    1  |1 1>-      -0.00000000  0.00000000
                               -0.08199948  0.00310182

 34  1    10    1  |1 1>-      -0.00000000  0.00000000
                               -0.00154919  0.00264504

 35  1    11    1  |1 1>-       0.00000000 -0.00000000
                                0.00437137 -0.38759868

 36  1    12    1  |1 1>-       0.00000000 -0.00000000
                                0.81210206  0.01104882

 37  1     1    1  |0 0>        0.00000004 -0.00000000
                                0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000003
                                0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000001 -0.00000001
                               -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000000 -0.00000003
                                0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000005  0.00000000
                               -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000
                                0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.01%    0.02%   49.94%    0.00%    0.00%    0.01%    0.00%
  2  1     2    1  |1 1>+         0.00%   49.96%    0.00%    0.01%    0.01%    0.01%   42.86%    1.95%
  3  1     3    1  |1 1>+        32.06%    0.01%    0.00%    0.01%   24.34%   35.40%    0.01%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.02%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>         31.94%    0.00%    0.19%    0.01%    7.18%   52.32%    0.01%    0.18%
 14  1     2    1  |1 0>          0.13%    0.00%   49.77%    0.00%    0.03%    0.22%    1.93%   42.70%
 15  1     3    1  |1 0>          0.00%    0.28%    0.00%   49.68%    0.00%    0.01%    0.10%    0.00%
 16  1     4    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.13%    0.00%   49.76%    0.02%    0.24%    0.01%    1.74%   42.88%
 26  1     2    1  |1 1>-        31.94%    0.00%    0.20%    0.00%   57.82%    1.68%    0.00%    0.20%
 27  1     3    1  |1 1>-         0.00%   49.68%    0.00%    0.29%    0.01%    0.00%   42.99%    1.72%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.51%    0.24%    1.59%    0.44%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.17%    0.58%    1.50%    5.05%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.04%    8.84%    0.95%    0.40%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.89%    0.05%    5.11%    4.23%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.69%    0.58%    1.14%    0.17%
 42  1     6    1  |0 0>          3.76%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        44.81%    2.03%    3.10%    0.04%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.01%    1.55%    0.68%    2.93%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.01%    0.00%    0.00%    0.02%    0.81%    6.06%    1.26%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.01%    0.01%    0.01%    0.00%    0.00%    0.00%    4.95%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.16%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%
  8  1     8    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.23%
 13  1     1    1  |1 0>          0.00%    0.01%    0.00%    0.01%    6.65%    0.20%    1.25%    0.00%
 14  1     2    1  |1 0>          0.00%    1.53%    1.43%    2.17%    0.02%    0.02%    0.00%    0.01%
 15  1     3    1  |1 0>         44.71%    2.28%    2.86%    0.01%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.12%
 17  1     5    1  |1 0>          0.00%    0.01%    0.01%    0.02%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.32%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.32%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    1.54%    1.37%    2.26%    0.01%    0.00%    0.00%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    2.83%    4.03%    1.25%    0.00%
 27  1     3    1  |1 1>-         0.11%    1.37%    0.89%    2.90%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.02%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.01%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.16%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.26%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.31%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          4.50%    5.85%   31.06%   21.51%   16.46%   14.73%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.18%    1.31%   49.25%    0.74%   38.13%    0.00%    0.00%
 39  1     3    1  |0 0>          0.07%    2.25%    0.00%   11.16%   53.90%   22.31%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%   44.85%   36.59%    0.95%    0.58%    6.64%    0.00%    0.00%
 41  1     5    1  |0 0>          5.71%   36.49%   20.66%    6.74%   17.93%    7.80%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.21%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%
  4  1     4    1  |1 1>+         0.02%    0.00%   50.51%    0.05%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.10%    0.00%    8.29%    0.01%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.01%    0.01%    0.00%    0.00%    0.01%   56.71%    2.10%    0.00%
  7  1     7    1  |1 1>+        26.32%    0.00%    0.01%   14.69%    0.00%    0.02%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%   26.41%    0.00%    0.00%   14.71%    0.02%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.28%    7.47%   33.30%
 10  1    10    1  |1 1>+         5.32%    0.00%    0.01%    5.81%    0.00%    0.00%    0.00%    0.01%
 11  1    11    1  |1 1>+         0.00%    5.33%    0.00%    0.00%    5.81%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.01%
 14  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>         34.44%    0.00%    0.00%    1.13%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.67%    0.00%    0.06%   57.67%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%   26.41%    0.01%    0.00%   14.70%    0.01%    0.01%    0.00%
 19  1     7    1  |1 0>          0.09%    0.01%   14.69%    0.02%    0.01%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.01%   25.22%   33.61%    0.00%
 21  1     9    1  |1 0>          0.00%    5.33%    0.00%    0.00%    5.81%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.02%    0.00%    5.81%    0.01%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    4.43%    3.32%   33.31%
 24  1    12    1  |1 0>          1.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.01%
 27  1     3    1  |1 1>-         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%   13.33%    0.00%    0.00%   36.60%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%   21.91%    0.00%    0.00%   22.26%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-        26.26%    0.00%    0.00%   14.71%    0.00%    0.00%    0.02%    0.00%
 31  1     7    1  |1 1>-         0.01%    0.00%    0.00%    0.01%    0.00%    6.30%   52.54%    0.00%
 32  1     8    1  |1 1>-         0.16%    0.00%   14.71%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         5.31%    0.00%    0.00%    5.81%    0.00%    0.00%    0.00%    0.01%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.92%    0.83%   33.30%
 35  1    11    1  |1 1>-         0.03%    0.00%    5.81%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    1.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.02%    0.02%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.02%    0.02%    0.00%    0.01%    0.01%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.04%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.04%    0.02%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.03%    0.02%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.62%    0.00%    0.00%    0.00%    0.00%    6.90%    0.00%   30.18%
  5  1     5    1  |1 1>+         3.79%    0.01%    0.00%    0.00%    0.00%   53.03%    0.00%    3.21%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%
  7  1     7    1  |1 1>+         0.01%    3.31%    0.00%    0.00%   15.30%    0.00%   38.01%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    3.31%   18.14%    0.00%    0.00%    0.00%    0.01%
  9  1     9    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.05%   29.58%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%   29.63%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+        29.63%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.01%    4.33%    0.00%    0.00%   59.48%    0.00%    0.01%    0.00%
 17  1     5    1  |1 0>          0.00%    0.08%    0.00%    0.00%    0.28%    0.00%   33.56%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    3.31%   21.87%    0.00%    0.01%    0.00%    0.00%
 19  1     7    1  |1 0>          3.31%    0.01%    0.00%    0.01%    0.00%   17.35%    0.00%   35.96%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%   29.63%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>         29.58%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.05%   29.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    1.67%   24.26%    0.00%    0.00%    0.00%    0.01%
 29  1     5    1  |1 1>-         0.00%    0.00%    2.75%   35.70%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.01%    3.30%    0.00%    0.00%   24.90%    0.01%   28.40%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 32  1     8    1  |1 1>-         3.30%    0.01%    0.00%    0.00%    0.01%   22.70%    0.00%   30.61%
 33  1     9    1  |1 1>-         0.08%   29.55%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-        29.55%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%   29.68%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.01%    0.00%    0.00%    6.64%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    1.09%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.01%   33.31%    0.00%    0.00%    5.70%    0.00%    2.03%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.01%    1.93%    0.00%    0.00%    0.00%    0.00%    0.24%
  8  1     8    1  |1 1>+        35.17%    0.01%    0.00%    0.00%    0.00%    1.93%    0.00%    0.01%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.02%    0.00%   15.47%    0.00%   43.41%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%   44.14%    0.02%    0.02%    0.00%    0.01%   14.39%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%   44.17%    0.00%    0.63%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.32%
 17  1     5    1  |1 0>          0.00%    0.00%    7.59%    0.00%    0.00%    0.00%    0.00%    0.01%
 18  1     6    1  |1 0>         31.43%    0.01%    0.00%    0.00%    0.00%    1.93%    0.00%    0.01%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    1.93%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.01%   33.32%    0.00%    0.00%    5.90%    0.00%    1.84%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%   44.16%    0.00%    0.67%
 22  1    10    1  |1 0>          0.00%    0.00%    0.02%   44.16%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.01%    0.00%   13.96%    0.01%   44.92%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.96%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 28  1     4    1  |1 1>-        19.15%    0.00%    0.00%    0.00%    0.00%    4.81%    0.00%    0.01%
 29  1     5    1  |1 1>-        14.21%    0.00%    0.00%    0.00%    0.00%    2.93%    0.00%    0.01%
 30  1     6    1  |1 1>-         0.00%    0.01%    1.93%    0.00%    0.00%    0.00%    0.00%    0.24%
 31  1     7    1  |1 1>-         0.00%   33.32%    0.00%    0.00%    0.00%    0.00%    7.73%    0.00%
 32  1     8    1  |1 1>-         0.01%    0.00%    0.00%    1.93%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%   44.14%    0.00%    0.04%    0.00%    0.00%   14.35%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.04%    0.00%   58.83%    0.01%    0.01%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%   44.17%    0.01%    0.01%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.09%
 37  1     1    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.01%    0.01%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.01%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.01%    0.02%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.02%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42

  1  1     1    1  |1 1>+         0.02%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.05%
  5  1     5    1  |1 1>+         0.00%    0.29%
  6  1     6    1  |1 1>+         0.00%    0.00%
  7  1     7    1  |1 1>+         0.01%    0.00%
  8  1     8    1  |1 1>+         0.24%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%
 10  1    10    1  |1 1>+         0.63%    0.00%
 11  1    11    1  |1 1>+        14.39%    0.00%
 12  1    12    1  |1 1>+         0.01%   69.04%
 13  1     1    1  |1 0>          0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.02%
 15  1     3    1  |1 0>          0.02%    0.00%
 16  1     4    1  |1 0>          0.01%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%
 18  1     6    1  |1 0>          0.24%    0.00%
 19  1     7    1  |1 0>          0.00%    0.26%
 20  1     8    1  |1 0>          0.00%    0.00%
 21  1     9    1  |1 0>         14.34%    0.02%
 22  1    10    1  |1 0>          0.01%   15.01%
 23  1    11    1  |1 0>          0.00%    0.00%
 24  1    12    1  |1 0>          3.09%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.02%
 26  1     2    1  |1 1>-         0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%
 28  1     4    1  |1 1>-         0.12%    0.00%
 29  1     5    1  |1 1>-         0.20%    0.00%
 30  1     6    1  |1 1>-         0.01%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.26%
 33  1     9    1  |1 1>-         0.67%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%   15.02%
 36  1    12    1  |1 1>-        65.95%    0.01%
 37  1     1    1  |0 0>          0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      230.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      897.38       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     90420.59  86039.63    638.61   3736.51      3.69      0.12      1.73
 REAL TIME  *     91226.63 SEC
 DISK USED  *       958.76 MB (local),       11.93 GB (total)
 SF USED    *         7.38 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK3 energy=  -6174.213646123764

              CI              CI           MULTI         RHF-SCF
  -6174.30061879  -6174.16828167  -6173.66566405  -6172.96982975
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
