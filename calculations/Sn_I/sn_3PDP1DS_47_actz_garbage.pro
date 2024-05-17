
 Working directory              : /wrk/irikura/molpro.RN5Y9mkYAN/
 Global scratch directory       : /wrk/irikura/molpro.RN5Y9mkYAN/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.RN5Y9mkYAN/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Sn SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCVTZ-DK3
 
 set,dkho=101
 
                                                                                 ! spherical dication (1S) orbitals
 {rhf;wf,nelec=48,sym=1,spin=0}
 
 NTRIP=11
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
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 07-May-24          TIME: 09:25:25  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


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

     21.234 MB (compressed) written to integral file ( 15.2%)

     Node minimum: 0.524 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     760824.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     760824      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    18047686. AND WROTE      147789. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1830907. AND WROTE     9150625. INTEGRALS IN     96 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

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
 CPU TIMES  *         1.94      1.62
 REAL TIME  *         2.57 SEC
 DISK USED  *        29.63 MB (local),      414.05 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  14  10

 NELEC=   48   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -6084.60504272   -6084.60504272     0.00D+00     0.14D+01     0     0       0.00      0.01    start
   2    -6119.20716287     -34.60212015     0.54D+00     0.14D+01     1     0       0.01      0.02    diag
   3    -6169.62512475     -50.41796188     0.47D+00     0.21D+00     2     0       0.00      0.02    diag
   4    -6172.72282128      -3.09769653     0.11D+00     0.18D+00     3     0       0.01      0.03    diag
   5    -6172.96793600      -0.24511472     0.32D-01     0.27D-01     4     0       0.00      0.03    diag
   6    -6172.96981377      -0.00187777     0.24D-02     0.53D-02     5     0       0.00      0.03    diag
   7    -6172.96982923      -0.00001547     0.16D-03     0.23D-03     6     0       0.01      0.04    diag
   8    -6172.96982972      -0.00000049     0.41D-04     0.31D-04     7     0       0.00      0.04    fixocc
   9    -6172.96982975      -0.00000004     0.46D-05     0.18D-04     8     0       0.01      0.05    diag
  10    -6172.96982975      -0.00000000     0.27D-06     0.63D-06     9     0       0.00      0.05    diag/orth
  11    -6172.96982975       0.00000000     0.11D-07     0.41D-07     0     0       0.01      0.06    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -6172.969829754516
  RHF One-electron energy           -8458.981645824151
  RHF Two-electron energy            2286.011816069635
  RHF Kinetic energy                 7123.758090709059
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
    5.1     2.00000   -19.53200     1  1  d1+ -0.28300    1  1  d1-  0.95908
    6.1     2.00000   -19.53200     1  1  d1+  0.95908    1  1  d1-  0.28300
    7.1     2.00000   -19.53200     1  1  d2+  0.97172
    8.1     2.00000   -19.53200     1  1  d2-  0.97172
    9.1     2.00000    -6.52363     1  4  s    1.09168
   10.1     2.00000    -1.94645     1  2  d1+ -0.30553    1  2  d1-  0.95689
   11.1     2.00000    -1.94645     1  2  d1+  0.95689    1  2  d1-  0.30553
   12.1     2.00000    -1.94645     1  2  d0   1.00448
   13.1     2.00000    -1.94645     1  2  d2+  0.97612
   14.1     2.00000    -1.94645     1  2  d2-  0.97612
   15.1     2.00000    -1.05761     1  5  s    1.09341
    1.2     2.00000  -149.69231     1  1  pz   0.99999
    2.2     2.00000  -149.69231     1  1  px   0.89528    1  1  py  -0.44548
    3.2     2.00000  -149.69231     1  1  px   0.44548    1  1  py   0.89528
    4.2     2.00000   -28.42265     1  2  pz   1.00016
    5.2     2.00000   -28.42265     1  2  px  -0.25320    1  2  py   0.96758
    6.2     2.00000   -28.42265     1  2  px   0.96758    1  2  py   0.25320
    7.2     2.00000    -4.68852     1  3  pz   0.99711
    8.2     2.00000    -4.68852     1  3  py   0.97988
    9.2     2.00000    -4.68852     1  3  px   0.97988


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
 CPU TIMES  *         2.07      0.13      1.62
 REAL TIME  *         3.55 SEC
 DISK USED  *        30.26 MB (local),      421.70 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        11.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            11
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.246D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.228D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.228D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.196D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.243D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.243D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.160D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.196D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.196D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 5 3 1 6   4 2 5 3 1 1 2 6 4 5   3 1 2 6 4 5 3 1 2 6   4 5 3 2 6 4 5 3 1 7
                                       11 9 81214151310 2 6   4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.473D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.332D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.332D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.341D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.208D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.208D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.263D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.159D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.159D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.252D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.257D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.164D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.164D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 1   2 3 3 2 1 3 2 1 6 5   410 8 7 9 6 5 4 810   7 9 3 2 1 6 5 410 8
                                        7 9 3 2 1 6 5 410 8   9 7 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882   0.05882   0.05882
 Weight factors for state symmetry  2:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
 
 Number of orbital rotations:  1253  ( 68 closed/active, 906 closed/virtual, 0 active/active, 279 active/virtual )
 Total number of variables:    4304
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -6173.61389779   -6173.63066752   -0.01676973    0.18107110 0.00007774 0.00000000  0.37E+00      0.74
   2    8   14    0  -6173.63108912   -6173.63115665   -0.00006753    0.00643518 0.00000011 0.00000000  0.44E-01      1.78
   3    5   10    0  -6173.63115685   -6173.63115686   -0.00000000    0.00003738 0.00000001 0.00000000  0.14E-03      2.56
   4    2    4    0  -6173.63115686   -6173.63115686   -0.00000000    0.00000001 0.00000000 0.00000000  0.29E-07      3.07

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.74E-08)
                       Final energy:  -6173.63115686
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -6173.730084560898
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.96830147
 One electron energy                         -8491.95335902
 Two electron energy                          2318.22327446
 Virial ratio                                    1.86649229
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -6173.730084560855
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.96830147
 One electron energy                         -8491.95335903
 Two electron energy                          2318.22327446
 Virial ratio                                    1.86649229
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -6173.730084560773
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.96830148
 One electron energy                         -8491.95335905
 Two electron energy                          2318.22327449
 Virial ratio                                    1.86649229
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -6173.552049994753
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625147
 Two electron energy                          2307.35420147
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -6173.552049994740
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625147
 Two electron energy                          2307.35420147
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -6173.552049994678
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625147
 Two electron energy                          2307.35420147
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -6173.552049994673
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625146
 Two electron energy                          2307.35420147
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -6173.552049994636
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625147
 Two electron energy                          2307.35420147
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -6173.545389942099
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.07090075
 One electron energy                         -8482.17958778
 Two electron energy                          2308.63419784
 Virial ratio                                    1.86657551
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -6173.545389941994
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.07090075
 One electron energy                         -8482.17958779
 Two electron energy                          2308.63419784
 Virial ratio                                    1.86657551
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -6173.545389941994
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.07090075
 One electron energy                         -8482.17958778
 Two electron energy                          2308.63419784
 Virial ratio                                    1.86657551
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -6173.695399678551
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433507
 One electron energy                         -8491.23791764
 Two electron energy                          2317.54251797
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -6173.695399678549
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433507
 One electron energy                         -8491.23791765
 Two electron energy                          2317.54251797
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -6173.695399678502
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433507
 One electron energy                         -8491.23791765
 Two electron energy                          2317.54251798
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -6173.695399678393
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433508
 One electron energy                         -8491.23791768
 Two electron energy                          2317.54251800
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -6173.695399678366
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433508
 One electron energy                         -8491.23791768
 Two electron energy                          2317.54251800
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -6173.665994671424
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.68343811
 One electron energy                         -8490.27979713
 Two electron energy                          2316.61380246
 Virial ratio                                    1.86651794
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999992
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999991
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.997870298490
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.999999999345
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000006007
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.002129301873
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000000007
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.999999999992
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.087801342087
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999343705
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000048
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999995337
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.912201070357
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000061559
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999943544
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.080975281859
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.999999886095
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000325687
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     2.919032292785
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999993
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.000000364873
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.999999924728
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.463663191446
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999551797
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000082250
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000008217
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.536341291501
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999938449
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000056465
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.921154419650
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000114560
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.999999668306
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     3.078838405342
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999635134
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000075272
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.448535466467
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000001104498
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999917701
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999996445
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.551457638142
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
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
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 4 2 1 5   3 6 4 2 1 1 3 5 6 4   2 1 5 3 6 4 2 1 3 5   6 4 2 3 5 6 4 2 110
                                       131415 81211 7 9 2 3   5 6 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 3   1 2 3 1 2 2 1 3 9 7   810 5 6 4 2 1 3 9 7  10 8 5 6 4 7 910 8 5
                                        6 4 2 1 3 9 7 810 5   6 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1078.47152     1  1  s    0.98900
    2.1     2.00000  -166.29937     1  2  s    1.07350
    3.1     2.00000   -33.62525     1  3  s    0.84456
    4.1     2.00000   -18.96824     1  1  d2-  0.99998
    5.1     2.00000   -18.96824     1  1  d2+  0.99998
    6.1     2.00000   -18.96824     1  1  d1-  0.99998
    7.1     2.00000   -18.96824     1  1  d1+  0.99998
    8.1     2.00000   -18.96824     1  1  d0   0.99998
    9.1     2.00000    -5.96157     1  4  s    1.09179
   10.1     2.00000    -1.38687     1  2  d2+  1.00073
   11.1     2.00000    -1.38687     1  2  d2-  1.00073
   12.1     2.00000    -1.38687     1  2  d1-  1.00073
   13.1     2.00000    -1.38687     1  2  d1+  1.00073
   14.1     2.00000    -1.38687     1  2  d0   1.00073
   15.1     1.95606    -0.56323     1  5  s    1.07014
    1.2     2.00000  -149.12692     1  1  py   0.99999
    2.2     2.00000  -149.12692     1  1  px   0.99999
    3.2     2.00000  -149.12692     1  1  pz   0.99999
    4.2     2.00000   -27.85975     1  2  py   1.00021
    5.2     2.00000   -27.85975     1  2  px   1.00021
    6.2     2.00000   -27.85975     1  2  pz   1.00021
    7.2     2.00000    -4.12862     1  3  py   0.99926
    8.2     2.00000    -4.12862     1  3  px   0.99926
    9.2     2.00000    -4.12862     1  3  pz   0.99926
   10.2     0.52133    -0.10269     1  4  pz   1.06180
   11.2     0.52133    -0.10269     1  4  px   1.06180
   12.2     0.52133    -0.10269     1  4  py   1.06180
   13.2     0.15998     0.04745     1  4  pz  -0.48043    1  9  pz   1.18790
   14.2     0.15998     0.04745     1  4  px  -0.48043    1  9  px   1.18790
   15.2     0.15998     0.04745     1  4  py  -0.48043    1  9  py   1.18790
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a0a000       0.00000283      0.00000296      0.99177470     -0.00000003     -0.00000000     -0.00000000     -0.00000000
 2 aa0000       0.99177467     -0.00024605     -0.00000283     -0.00000000      0.00000000     -0.00000002     -0.00000000
 2 0aa000       0.00024605      0.99177467     -0.00000296      0.00000000      0.00000000      0.00000000     -0.00000001
 2 0a00a0       0.00000000     -0.00000000      0.00000000      0.00000000     -0.01860311      0.00002180     -0.00002519
 2 a00a00       0.00000000     -0.00000000     -0.00000000     -0.00000000      0.70732806      0.00000333      0.00004648
 2 a0000a       0.00000003      0.00000003      0.00906126      0.69821240      0.00000000      0.00000000     -0.00000000
 2 00aa00      -0.00000003     -0.00000003     -0.00906122      0.69821240     -0.00000000      0.00000000     -0.00000000
 2 0a0a00      -0.00906122      0.00000225      0.00000003     -0.00000000     -0.00001380      0.69821239      0.00013557
 2 0a000a       0.00000225      0.00906126     -0.00000003      0.00000000     -0.00003437     -0.00013557      0.69821239
 2 a000a0       0.00906125     -0.00000225     -0.00000003     -0.00000000     -0.00001380      0.69821239      0.00013557
 2 00a0a0      -0.00000225     -0.00906125      0.00000003      0.00000000     -0.00003437     -0.00013557      0.69821238
 2 00a00a       0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.68872495     -0.00002513     -0.00002129
 2 000a0a      -0.00000005     -0.00000006     -0.01865527     -0.00000003     -0.00000000     -0.00000000     -0.00000000
 2 000aa0      -0.01865527      0.00000463      0.00000005     -0.00000000      0.00000000     -0.00000002     -0.00000000
 2 0000aa      -0.00000463     -0.01865527      0.00000006     -0.00000000      0.00000000      0.00000000     -0.00000001
 0 a2a000      -0.00000033     -0.00000034     -0.11527731      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 aa2000      -0.11527731      0.00002860      0.00000033      0.00000000     -0.00000000      0.00000000      0.00000000
 0 2aa000      -0.00002860     -0.11527731      0.00000034     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2a00a0      -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00127451     -0.00000236      0.00000267
 0 0a20a0      -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00272494     -0.00000233      0.00000274
 0 a20a00      -0.00000000      0.00000000      0.00000000      0.00000000     -0.07638173     -0.00000038     -0.00000499
 0 a02a00      -0.00000000      0.00000000      0.00000000      0.00000000     -0.07568551     -0.00000033     -0.00000500
 0 a2000a       0.00000000      0.00000000      0.00098256     -0.07541645     -0.00000000     -0.00000000      0.00000000
 0 02aa00      -0.00000000     -0.00000000     -0.00098256     -0.07541645      0.00000000     -0.00000000      0.00000000
 0 0a2a00      -0.00098256      0.00000024      0.00000000      0.00000000      0.00000149     -0.07541645     -0.00001464
 0 a020a0       0.00098256     -0.00000024     -0.00000000      0.00000000      0.00000149     -0.07541644     -0.00001464
 0 2a000a       0.00000024      0.00098256     -0.00000000     -0.00000000      0.00000371      0.00001464     -0.07541644
 0 20a0a0      -0.00000024     -0.00098256      0.00000000     -0.00000000      0.00000371      0.00001464     -0.07541644
 0 a0200a      -0.00000007     -0.00000007     -0.02413156     -0.07469104     -0.00000000     -0.00000000      0.00000000
 0 20aa00       0.00000007      0.00000007      0.02413156     -0.07469104      0.00000000     -0.00000000      0.00000000
 0 0a200a      -0.00000599     -0.02413156      0.00000007     -0.00000000      0.00000368      0.00001450     -0.07469104
 0 2a0a00       0.02413156     -0.00000599     -0.00000007      0.00000000      0.00000148     -0.07469104     -0.00001450
 0 02a0a0       0.00000599      0.02413156     -0.00000007     -0.00000000      0.00000368      0.00001450     -0.07469104
 0 a200a0      -0.02413156      0.00000599      0.00000007      0.00000000      0.00000148     -0.07469104     -0.00001450
 0 02a00a       0.00000000      0.00000000      0.00000000      0.00000000      0.07441100      0.00000269      0.00000233
 0 20a00a      -0.00000000     -0.00000000      0.00000000      0.00000000      0.07365679      0.00000271      0.00000225
 
 Energy:    -6173.73008456  -6173.73008456  -6173.73008456  -6173.55204999  -6173.55204999  -6173.55204999  -6173.55204999

 State:              8               9              10              11
 2 a0a000      -0.00000000     -0.01774361     -0.00000005     -0.00000000
 2 aa0000       0.00000000      0.00000005     -0.01774360      0.00001072
 2 0aa000      -0.00000000      0.00000000     -0.00001072     -0.01774363
 2 0a00a0       0.80601157      0.00000000     -0.00000000     -0.00000000
 2 a00a00      -0.38689503      0.00000000      0.00000000     -0.00000000
 2 a0000a      -0.00000000      0.69263734      0.00000186      0.00000005
 2 00aa00      -0.00000000     -0.69263735     -0.00000186     -0.00000005
 2 0a0a00      -0.00001920      0.00000186     -0.69263722      0.00041838
 2 0a000a       0.00002103     -0.00000005      0.00041838      0.69263721
 2 a000a0      -0.00001920     -0.00000186      0.69263722     -0.00041838
 2 00a0a0       0.00002103      0.00000005     -0.00041838     -0.69263722
 2 00a00a      -0.41911656      0.00000000      0.00000000     -0.00000000
 2 000a0a       0.00000000     -0.12730359     -0.00000034     -0.00000001
 2 000aa0       0.00000000      0.00000034     -0.12730358      0.00007690
 2 0000aa      -0.00000000      0.00000001     -0.00007690     -0.12730355
 0 a2a000       0.00000000      0.00730312      0.00000002      0.00000000
 0 aa2000      -0.00000000     -0.00000002      0.00730312     -0.00000441
 0 2aa000       0.00000000     -0.00000000      0.00000441      0.00730312
 0 2a00a0      -0.08665826     -0.00000000      0.00000000      0.00000000
 0 0a20a0      -0.08662478     -0.00000000      0.00000000      0.00000000
 0 a20a00       0.04095253     -0.00000000     -0.00000000      0.00000000
 0 a02a00       0.04222537     -0.00000000     -0.00000000      0.00000000
 0 a2000a       0.00000000     -0.07541498     -0.00000020     -0.00000001
 0 02aa00       0.00000000      0.07541498      0.00000020      0.00000001
 0 0a2a00       0.00000207     -0.00000020      0.07541497     -0.00004555
 0 a020a0       0.00000207      0.00000020     -0.07541497      0.00004555
 0 2a000a      -0.00000227      0.00000001     -0.00004555     -0.07541497
 0 20a0a0      -0.00000227     -0.00000001      0.00004555      0.07541497
 0 a0200a       0.00000000     -0.07241275     -0.00000019     -0.00000001
 0 20aa00       0.00000000      0.07241275      0.00000019      0.00000001
 0 0a200a      -0.00000225      0.00000001     -0.00004374     -0.07241273
 0 2a0a00       0.00000205     -0.00000019      0.07241273     -0.00004374
 0 02a0a0      -0.00000225     -0.00000001      0.00004374      0.07241273
 0 a200a0       0.00000205      0.00000019     -0.07241273      0.00004374
 0 02a00a       0.04443289     -0.00000000     -0.00000000      0.00000000
 0 20a00a       0.04567226     -0.00000000     -0.00000000      0.00000000
 
 Energy:    -6173.55204999  -6173.54538994  -6173.54538994  -6173.54538994
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000       0.79802352     -0.00066620     -0.00001994     -0.00002754     -0.11955132      0.55716828
 2 002000      -0.29547732      0.00024472      0.00001170     -0.00002117      0.75088454      0.55716829
 2 b0a000      -0.00002877     -0.00000308     -0.00000113     -0.69882106     -0.00003102     -0.00000000
 2 a0b000       0.00002877      0.00000308      0.00000113      0.69882106      0.00003102      0.00000000
 2 0ab000       0.00001673     -0.00010441      0.69882105     -0.00000113     -0.00000427     -0.00000000
 2 0ba000      -0.00001673      0.00010441     -0.69882105      0.00000113      0.00000427      0.00000000
 2 ab0000       0.00058367      0.69882081      0.00010439     -0.00000311      0.00000193     -0.00000000
 2 ba0000      -0.00058367     -0.69882081     -0.00010439      0.00000311     -0.00000193      0.00000000
 2 200000      -0.50254620      0.00042148      0.00000824      0.00004871     -0.63133323      0.55716829
 0 202000       0.09251743     -0.00007723     -0.00000231     -0.00000319     -0.01385997     -0.12434177
 0 022000      -0.05826179      0.00004886      0.00000095      0.00000565     -0.07319249     -0.12434177
 0 220000      -0.03425563      0.00002837      0.00000136     -0.00000245      0.08705245     -0.12434177
 0 b2a000       0.00000334      0.00000036      0.00000013      0.08101657      0.00000360      0.00000000
 0 a2b000      -0.00000334     -0.00000036     -0.00000013     -0.08101657     -0.00000360     -0.00000000
 0 2ab000      -0.00000194      0.00001210     -0.08101657      0.00000013      0.00000050      0.00000000
 0 2ba000       0.00000194     -0.00001210      0.08101657     -0.00000013     -0.00000050     -0.00000000
 0 ba2000       0.00006767      0.08101654      0.00001210     -0.00000036      0.00000022     -0.00000000
 0 ab2000      -0.00006767     -0.08101654     -0.00001210      0.00000036     -0.00000022      0.00000000
 2 00b00a       0.01628986     -0.00001349     -0.00000065      0.00000117     -0.04139677     -0.05638630
 2 00a00b      -0.01628986      0.00001349      0.00000065     -0.00000117      0.04139677      0.05638630
 2 0a00b0       0.04399556     -0.00003673     -0.00000110     -0.00000152     -0.00659094      0.05638629
 2 0b00a0      -0.04399556      0.00003673      0.00000110      0.00000152      0.00659094     -0.05638629
 2 b00a00       0.02770569     -0.00002324     -0.00000045     -0.00000269      0.03480580     -0.05638627
 2 a00b00      -0.02770569      0.00002324      0.00000045      0.00000269     -0.03480580      0.05638627
 
 Energy:    -6173.69539968  -6173.69539968  -6173.69539968  -6173.69539968  -6173.69539968  -6173.66599467
 


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
 CPU TIMES  *         5.03      2.95      0.13      1.62
 REAL TIME  *         7.22 SEC
 DISK USED  *        62.13 MB (local),      804.08 MB (total)
 SF USED    *        77.50 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -6173.730085   2.0
    -6173.730085   2.0
    -6173.730085   2.0
    -6173.552050   6.0
    -6173.552050   6.0
    -6173.552050   6.0
    -6173.552050   6.0
    -6173.552050   6.0
    -6173.545390   2.0
    -6173.545390   2.0
    -6173.545390   2.0
    -6173.695400   6.0
    -6173.695400   6.0
    -6173.695400   6.0
    -6173.695400   6.0
    -6173.695400   6.0
    -6173.665995  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 11  Roots:   1   2   3   4   5   6   7   8   9  10  11
 Number of reference states: 11  Roots:   1   2   3   4   5   6   7   8   9  10  11

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
     1     -6173.73008456
     2     -6173.73008456
     3     -6173.73008456
     4     -6173.55204999
     5     -6173.55204999
     6     -6173.55204999
     7     -6173.55204999
     8     -6173.55204999
     9     -6173.54538994
    10     -6173.54538994
    11     -6173.54538994

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4401D-06

 Number of blocks in overlap matrix:  1057   Smallest eigenvalue:  0.34D-06
 Number of N-2 electron functions:    2340
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3497694
 Number of doubly external configurations:       3654018
 Total number of contracted configurations:      7190118
 Total number of uncontracted configurations:   75813963

 Diagonal Coupling coefficients finished.               Storage:  24116821 words, CPU-Time:     68.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1290796 words, CPU-time:      0.15 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.73008456     0.00000000    -0.78770040  0.50D-01  0.98D-01    83.57
    1     2     2     1.00000000     0.00000000 -6173.73008456     0.00000000    -0.78744141  0.49D-01  0.98D-01    83.57
    1     3     3     1.00000000     0.00000000 -6173.73008456     0.00000000    -0.78749410  0.49D-01  0.98D-01    83.57
    1     4     4     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75474320  0.40D-01  0.89D-01    83.57
    1     5     5     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75506973  0.40D-01  0.89D-01    83.57
    1     6     6     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75481582  0.40D-01  0.89D-01    83.57
    1     7     7     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75477151  0.40D-01  0.89D-01    83.57
    1     8     8     1.00000000     0.00000000 -6173.55204999    -0.00000000    -0.75515248  0.40D-01  0.89D-01    83.57
    1     9     9     1.00000000     0.00000000 -6173.54538994    -0.00000000    -0.76096779  0.44D-01  0.90D-01    83.57
    1    10    10     1.00000000     0.00000000 -6173.54538994     0.00000000    -0.76103793  0.44D-01  0.90D-01    83.57
    1    11    11     1.00000000     0.00000000 -6173.54538994     0.00000000    -0.76100567  0.44D-01  0.90D-01    83.57
    2     1     1     1.09108250    -0.62044411 -6174.35052867    -0.62044411    -0.01661626  0.34D-02  0.12D-02   425.12
    2     2     2     1.09119733    -0.62036922 -6174.35045378    -0.62036922    -0.01669090  0.34D-02  0.12D-02   425.12
    2     3     3     1.09132159    -0.62028392 -6174.35036848    -0.62028392    -0.01678964  0.35D-02  0.12D-02   425.12
    2     4     4     1.08316554    -0.60963387 -6174.16168386    -0.60963387    -0.01354546  0.23D-02  0.92D-03   425.12
    2     5     5     1.08302003    -0.60962594 -6174.16167594    -0.60962594    -0.01356061  0.23D-02  0.93D-03   425.12
    2     6     6     1.08303135    -0.60961395 -6174.16166394    -0.60961395    -0.01357179  0.23D-02  0.93D-03   425.12
    2     7     7     1.08319497    -0.60961206 -6174.16166206    -0.60961206    -0.01357094  0.24D-02  0.93D-03   425.12
    2     8     8     1.08306817    -0.60959560 -6174.16164559    -0.60959560    -0.01359327  0.24D-02  0.93D-03   425.12
    2     9     9     1.08547468    -0.61046814 -6174.15585808    -0.61046814    -0.01468314  0.31D-02  0.99D-03   425.12
    2    10    10     1.08548143    -0.61045942 -6174.15584936    -0.61045942    -0.01469190  0.31D-02  0.99D-03   425.12
    2    11    11     1.08551088    -0.61044002 -6174.15582997    -0.61044002    -0.01471508  0.31D-02  0.99D-03   425.12
    3     1     1     1.08113993    -0.63628810 -6174.36637267    -0.01584400    -0.00042177  0.61D-04  0.50D-04   762.57
    3     2     2     1.08114067    -0.63628087 -6174.36636543    -0.01591165    -0.00042803  0.62D-04  0.52D-04   762.57
    3     3     3     1.08113656    -0.63627958 -6174.36636414    -0.01599566    -0.00042983  0.62D-04  0.52D-04   762.57
    3     4     4     1.07739074    -0.62266663 -6174.17471662    -0.01303276    -0.00029621  0.33D-04  0.33D-04   762.57
    3     5     5     1.07738876    -0.62266552 -6174.17471552    -0.01303958    -0.00029709  0.33D-04  0.33D-04   762.57
    3     6     6     1.07738835    -0.62266501 -6174.17471501    -0.01305106    -0.00029770  0.33D-04  0.33D-04   762.57
    3     7     7     1.07742074    -0.62266343 -6174.17471342    -0.01305136    -0.00029938  0.33D-04  0.34D-04   762.57
    3     8     8     1.07741832    -0.62266207 -6174.17471207    -0.01306648    -0.00030036  0.33D-04  0.34D-04   762.57
    3     9     9     1.07792579    -0.62452569 -6174.16991563    -0.01405755    -0.00034936  0.49D-04  0.38D-04   762.57
    3    10    10     1.07792502    -0.62452439 -6174.16991433    -0.01406497    -0.00035046  0.49D-04  0.39D-04   762.57
    3    11    11     1.07792318    -0.62452403 -6174.16991397    -0.01408401    -0.00035100  0.49D-04  0.39D-04   762.57
    4     1     1     1.08114049    -0.63672935 -6174.36681391    -0.00044125    -0.00001977  0.31D-05  0.27D-05  1098.85
    4     2     2     1.08113642    -0.63672892 -6174.36681349    -0.00044805    -0.00002013  0.31D-05  0.28D-05  1098.85
    4     3     3     1.08113648    -0.63672882 -6174.36681338    -0.00044925    -0.00002020  0.31D-05  0.28D-05  1098.85
    4     4     4     1.07800801    -0.62297625 -6174.17502625    -0.00030962    -0.00001397  0.26D-05  0.18D-05  1098.85
    4     5     5     1.07800758    -0.62297613 -6174.17502613    -0.00031061    -0.00001405  0.26D-05  0.18D-05  1098.85
    4     6     6     1.07800652    -0.62297613 -6174.17502613    -0.00031112    -0.00001405  0.26D-05  0.18D-05  1098.85
    4     7     7     1.07800369    -0.62297610 -6174.17502609    -0.00031267    -0.00001423  0.27D-05  0.19D-05  1098.85
    4     8     8     1.07800263    -0.62297594 -6174.17502594    -0.00031387    -0.00001433  0.27D-05  0.19D-05  1098.85
    4     9     9     1.07837134    -0.62488778 -6174.17027772    -0.00036209    -0.00001709  0.35D-05  0.21D-05  1098.85
    4    10    10     1.07837036    -0.62488765 -6174.17027759    -0.00036326    -0.00001719  0.35D-05  0.21D-05  1098.85
    4    11    11     1.07837118    -0.62488763 -6174.17027757    -0.00036360    -0.00001721  0.35D-05  0.21D-05  1098.85
    5     1     1     1.08121536    -0.63675142 -6174.36683598    -0.00002207    -0.00000095  0.75D-07  0.17D-06  1436.89
    5     2     2     1.08121440    -0.63675140 -6174.36683596    -0.00002247    -0.00000097  0.76D-07  0.17D-06  1436.89
    5     3     3     1.08121453    -0.63675139 -6174.36683595    -0.00002257    -0.00000097  0.77D-07  0.17D-06  1436.89
    5     4     4     1.07816146    -0.62299261 -6174.17504261    -0.00001636    -0.00000084  0.71D-07  0.19D-06  1436.89
    5     5     5     1.07816133    -0.62299260 -6174.17504259    -0.00001646    -0.00000085  0.71D-07  0.19D-06  1436.89
    5     6     6     1.07816216    -0.62299247 -6174.17504247    -0.00001634    -0.00000084  0.73D-07  0.19D-06  1436.89
    5     7     7     1.07816226    -0.62299246 -6174.17504245    -0.00001636    -0.00000085  0.73D-07  0.19D-06  1436.89
    5     8     8     1.07816191    -0.62299246 -6174.17504245    -0.00001652    -0.00000085  0.73D-07  0.19D-06  1436.89
    5     9     9     1.07848734    -0.62490692 -6174.17029686    -0.00001914    -0.00000108  0.13D-06  0.21D-06  1436.89
    5    10    10     1.07848724    -0.62490691 -6174.17029685    -0.00001926    -0.00000109  0.13D-06  0.22D-06  1436.89
    5    11    11     1.07848736    -0.62490690 -6174.17029685    -0.00001928    -0.00000109  0.13D-06  0.22D-06  1436.89
    6     1     1     1.08120909    -0.63675251 -6174.36683708    -0.00000109    -0.00000007  0.81D-08  0.12D-07  1771.49
    6     2     2     1.08120877    -0.63675251 -6174.36683707    -0.00000112    -0.00000007  0.83D-08  0.12D-07  1771.49
    6     3     3     1.08120873    -0.63675251 -6174.36683707    -0.00000112    -0.00000007  0.83D-08  0.12D-07  1771.49
    6     4     4     1.07817167    -0.62299368 -6174.17504367    -0.00000106    -0.00000009  0.11D-07  0.19D-07  1771.49
    6     5     5     1.07817162    -0.62299367 -6174.17504366    -0.00000107    -0.00000009  0.12D-07  0.20D-07  1771.49
    6     6     6     1.07817187    -0.62299353 -6174.17504352    -0.00000106    -0.00000009  0.12D-07  0.19D-07  1771.49
    6     7     7     1.07817179    -0.62299352 -6174.17504352    -0.00000106    -0.00000009  0.12D-07  0.19D-07  1771.49
    6     8     8     1.07817181    -0.62299352 -6174.17504352    -0.00000107    -0.00000009  0.12D-07  0.19D-07  1771.49
    6     9     9     1.07848852    -0.62490820 -6174.17029814    -0.00000128    -0.00000012  0.15D-07  0.26D-07  1771.49
    6    10    10     1.07848843    -0.62490820 -6174.17029814    -0.00000129    -0.00000012  0.16D-07  0.26D-07  1771.49
    6    11    11     1.07848836    -0.62490820 -6174.17029814    -0.00000129    -0.00000012  0.16D-07  0.26D-07  1771.49
    7     1     1     1.08121872    -0.63675259 -6174.36683715    -0.00000008    -0.00000001  0.41D-09  0.92D-09  2108.49
    7     2     2     1.08121875    -0.63675259 -6174.36683715    -0.00000008    -0.00000001  0.42D-09  0.95D-09  2108.49
    7     3     3     1.08121874    -0.63675259 -6174.36683715    -0.00000008    -0.00000001  0.42D-09  0.94D-09  2108.49
    7     4     4     1.07817901    -0.62299379 -6174.17504378    -0.00000011    -0.00000001  0.92D-09  0.20D-08  2108.49
    7     5     5     1.07817897    -0.62299378 -6174.17504378    -0.00000011    -0.00000001  0.93D-09  0.20D-08  2108.49
    7     6     6     1.07817880    -0.62299364 -6174.17504363    -0.00000011    -0.00000001  0.89D-09  0.20D-08  2108.49
    7     7     7     1.07817881    -0.62299364 -6174.17504363    -0.00000011    -0.00000001  0.91D-09  0.20D-08  2108.49
    7     8     8     1.07817879    -0.62299364 -6174.17504363    -0.00000011    -0.00000001  0.90D-09  0.20D-08  2108.49
    7     9     9     1.07849656    -0.62490835 -6174.17029829    -0.00000015    -0.00000001  0.12D-08  0.26D-08  2108.49
    7    10    10     1.07849654    -0.62490835 -6174.17029829    -0.00000015    -0.00000001  0.12D-08  0.26D-08  2108.49
    7    11    11     1.07849654    -0.62490835 -6174.17029829    -0.00000015    -0.00000001  0.12D-08  0.26D-08  2108.49


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   0.9%  12.2%
 P   0.4%  45.7%  28.9%

 Initialization:   3.3%
 Other:            6.9%

 Total CPU:     2108.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.9327875  -0.1740453   0.1080138  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0175475   0.0020262  -0.0137827
 2222222222/00/00          -0.0000000  -0.0000000  -0.0000000  -0.0024288   0.7781255  -0.0012331  -0.0004118   0.0010380
                           -0.0000000  -0.0000001  -0.0000001
 2222222222//0000           0.0817065   0.7779333   0.5479006   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                           -0.0093001  -0.0182076   0.0091637
 2222222222/0/000          -0.1878371  -0.5259081   0.7747188  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            0.0103719  -0.0128981  -0.0151012
 222222222200/00/           0.0000000  -0.0000000  -0.0000000   0.6750739  -0.3869634   0.0006997   0.0028914   0.0036786
                            0.0000000   0.0000000   0.0000000
 22222222220/00/0           0.0000000   0.0000000   0.0000000  -0.6726451  -0.3911620   0.0005334  -0.0024796  -0.0047167
                           -0.0000000   0.0000001   0.0000001
 222222222200/0/0           0.0171643  -0.0032026   0.0019876  -0.0001869   0.0008706   0.6592335  -0.1096278   0.0866495
                            0.5228341  -0.0603721   0.4106604
 22222222220/000/          -0.0171642   0.0032026  -0.0019876  -0.0001869   0.0008705   0.6592334  -0.1096280   0.0866493
                           -0.5228342   0.0603724  -0.4106603
 2222222222/000/0          -0.0015035  -0.0143148  -0.0100819  -0.0045985  -0.0001696   0.0412678   0.5519603   0.3843593
                           -0.2770997  -0.5425025   0.2730359
 22222222220/0/00           0.0015035   0.0143148   0.0100820  -0.0045985  -0.0001696   0.0412675   0.5519596   0.3843591
                            0.2770997   0.5425033  -0.2730362
 2222222222/0000/           0.0034564   0.0096772  -0.0142556  -0.0019080  -0.0011431  -0.1335028  -0.3707164   0.5466789
                            0.3090346  -0.3843020  -0.4499461
 222222222200//00          -0.0034564  -0.0096773   0.0142557  -0.0019080  -0.0011429  -0.1335029  -0.3707162   0.5466782
                           -0.3090350   0.3843022   0.4499466
 2222222222000//0          -0.0011343  -0.0107997  -0.0076063   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0538807   0.1054871  -0.0530906
 22222222220000//          -0.0129495   0.0024162  -0.0014995  -0.0000000   0.0000000   0.0000001   0.0000000   0.0000000
                            0.1016626  -0.0117391   0.0798509
 22222202222//000          -0.0967383   0.0180500  -0.0112020  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                           -0.0020777   0.0002399  -0.0016319
 2222222222000/0/           0.0026077   0.0073010  -0.0107551   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0600903   0.0747257   0.0874899
 2222220222//2000          -0.0084737  -0.0806785  -0.0568221   0.0000000   0.0000000   0.0000000   0.0000001   0.0000000
                           -0.0011012  -0.0021559   0.0010851
 2222220222/2/000           0.0194803   0.0545413  -0.0803451  -0.0000000   0.0000000  -0.0000000  -0.0000001   0.0000001
                            0.0012281  -0.0015272  -0.0017881
 2222220222/02/00          -0.0000000   0.0000000  -0.0000000  -0.0005491  -0.0740277   0.0001172   0.0000361  -0.0001036
                           -0.0000000   0.0000000   0.0000000
 2222220222/20/00          -0.0000000  -0.0000000  -0.0000000   0.0010112  -0.0740228   0.0001174   0.0000423  -0.0000939
                           -0.0000000   0.0000000   0.0000000
 222222022220/00/           0.0000000   0.0000000   0.0000000  -0.0646098   0.0361361  -0.0000655  -0.0002763  -0.0003533
                           -0.0000000  -0.0000000   0.0000000
 22222202222/00/0           0.0000000   0.0000000   0.0000000   0.0643829   0.0365379  -0.0000496   0.0002378   0.0004503
                           -0.0000000   0.0000000  -0.0000000
 222222022202/00/          -0.0000000  -0.0000000  -0.0000000  -0.0638337   0.0374898  -0.0000676  -0.0002739  -0.0003466
                            0.0000000  -0.0000000   0.0000000
 22222202220/20/0          -0.0000000  -0.0000000   0.0000000   0.0635984   0.0378868  -0.0000519   0.0002340   0.0004472
                            0.0000000  -0.0000000   0.0000000
 222222022220/0/0          -0.0034548   0.0006446  -0.0004000   0.0000179  -0.0000833  -0.0630965   0.0104927  -0.0082934
                           -0.0504166   0.0058216  -0.0395998
 22222202222/000/           0.0034548  -0.0006446   0.0004001   0.0000179  -0.0000833  -0.0630965   0.0104927  -0.0082934
                            0.0504166  -0.0058217   0.0395997
 222222022202/0/0           0.0171537  -0.0032006   0.0019863   0.0000177  -0.0000823  -0.0623332   0.0103658  -0.0081930
                           -0.0488372   0.0056393  -0.0383592
 22222202220/200/          -0.0171536   0.0032006  -0.0019863   0.0000177  -0.0000823  -0.0623331   0.0103658  -0.0081930
                            0.0488371  -0.0056393   0.0383591
 2222220222/020/0           0.0003026   0.0028812   0.0020293   0.0004401   0.0000162  -0.0039498  -0.0528291  -0.0367877
                            0.0267205   0.0523131  -0.0263286
 22222202220/2/00          -0.0003026  -0.0028812  -0.0020293   0.0004401   0.0000162  -0.0039498  -0.0528290  -0.0367877
                           -0.0267205  -0.0523132   0.0263287
 2222220222/2000/          -0.0006957  -0.0019478   0.0028693   0.0001826   0.0001094   0.0127778   0.0354819  -0.0523236
                           -0.0298000   0.0370579   0.0433879
 222222022202//00           0.0006957   0.0019478  -0.0028693   0.0001826   0.0001094   0.0127778   0.0354819  -0.0523236
                            0.0298000  -0.0370580  -0.0433880
 22222202222/0/00           0.0015026   0.0143060   0.0100757   0.0004348   0.0000160  -0.0039020  -0.0521901  -0.0363428
                           -0.0258835  -0.0506746   0.0255040
 2222220222/200/0          -0.0015026  -0.0143059  -0.0100757   0.0004348   0.0000160  -0.0039020  -0.0521900  -0.0363427
                            0.0258834   0.0506743  -0.0255038
 222222022220//00          -0.0034543  -0.0096713   0.0142469   0.0001804   0.0001080   0.0126233   0.0350528  -0.0516907
                            0.0288666  -0.0358972  -0.0420290
 2222220222/0200/           0.0034543   0.0096713  -0.0142468   0.0001804   0.0001081   0.0126232   0.0350527  -0.0516907
                           -0.0288664   0.0358970   0.0420287

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.082180    0.938188   -0.188925    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.007521    0.003271
             0.037347
 2           0.782437   -0.175053   -0.528953    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.021056    0.031147
            -0.006968
 3           0.551073    0.108639    0.779204   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.031018    0.021937
             0.004325
 4           0.000000   -0.000000   -0.000000   -0.002725   -0.464872   -0.006567   -0.000267   -0.842644    0.000000    0.000000
             0.000000
 5          -0.000000   -0.000000   -0.000000   -0.001632    0.842668   -0.000242    0.001243   -0.464879    0.000000    0.000000
             0.000000
 6           0.000000    0.000000    0.000000   -0.190661   -0.001395    0.058936    0.941477    0.000628   -0.000000   -0.000000
             0.000000
 7           0.000000   -0.000000   -0.000000   -0.529434   -0.002289    0.788275   -0.156564   -0.003119    0.000000   -0.000000
             0.000000
 8           0.000000   -0.000000    0.000000    0.780733   -0.001753    0.548918    0.123747   -0.005875   -0.000000   -0.000000
             0.000000
 9          -0.016402   -0.030948    0.018293   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.445079    0.399086
             0.752998
 10         -0.032113    0.003574   -0.022748    0.000000   -0.000000    0.000001    0.000000    0.000000    0.553481    0.781326
            -0.086950
 11          0.016162   -0.024308   -0.026634    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.648023   -0.393233
             0.591443

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961304   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000553    0.000082
            -0.000269
 2          -0.000000    0.961304   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000279   -0.000224
             0.000507
 3          -0.000000   -0.000000    0.961304    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000030   -0.000573
            -0.000237
 4          -0.000000    0.000000    0.000000    0.962396   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.962396    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.962396   -0.000000   -0.000000    0.000000   -0.000000
             0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.962396   -0.000000    0.000000    0.000000
            -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.962396   -0.000000    0.000000
             0.000000
 9          -0.000553   -0.000279    0.000030   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.962254   -0.000000
            -0.000000
 10          0.000082   -0.000224   -0.000573   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.962254
             0.000000
 11         -0.000269    0.000507   -0.000237   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.962254


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.93818821 (fixed)   0.96139906 (relaxed)   0.96130368 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084133   -0.00147948   -0.50789374
 Singles      0.01776277   -0.05602242   -0.06221964
 Pairs        0.06352428   -0.03165966   -0.06663922
 Total        1.08212838   -0.08916156   -0.63675259
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72978280
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.90223486
 One electron energy                -8490.48257956
 Two electron energy                 2316.11574240
 Virial quotient                       -0.86658969
 Correlation energy                    -0.63705436
 !MRCI STATE 1.1 Energy             -6174.366837153656

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41915740 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41902062 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41915740 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41720176 (Pople, fixed reference)
 Cluster corrected energies         -6174.41706106 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41720176 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.78243740 (fixed)   0.96139905 (relaxed)   0.96130367 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084133   -0.00147948   -0.54260944
 Singles      0.01776285   -0.05602248   -0.06221967
 Pairs        0.06352423    0.00590725   -0.03192348
 Total        1.08212841   -0.05159470   -0.63675259
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72978280
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.90223435
 One electron energy                -8490.48257959
 Two electron energy                 2316.11574244
 Virial quotient                       -0.86658969
 Correlation energy                    -0.63705436
 !MRCI STATE 2.1 Energy             -6174.366837153484

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41915741 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41902063 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41915741 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41720178 (Pople, fixed reference)
 Cluster corrected energies         -6174.41706107 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41720178 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.77920429 (fixed)   0.96139906 (relaxed)   0.96130367 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084133   -0.00147948   -0.53376268
 Singles      0.01776284   -0.05602247   -0.06221966
 Pairs        0.06352424   -0.00366609   -0.04077025
 Total        1.08212840   -0.06116804   -0.63675259
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72978280
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.90223519
 One electron energy                -8490.48258080
 Two electron energy                 2316.11574365
 Virial quotient                       -0.86658969
 Correlation energy                    -0.63705436
 !MRCI STATE 3.1 Energy             -6174.366837153412

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41915741 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41902063 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41915741 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41720177 (Pople, fixed reference)
 Cluster corrected energies         -6174.41706107 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41720177 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.84264368 (fixed)   0.96254966 (relaxed)   0.96239560 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138682   -0.00239815   -0.52395611
 Singles      0.01879026   -0.05815585   -0.06470233
 Pairs        0.05949717   -0.00000000   -0.03433535
 Total        1.07967425   -0.06055400   -0.62299379
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40747476
 One electron energy                -8480.96588583
 Two electron energy                 2306.79084204
 Virial quotient                       -0.86662295
 Correlation energy                    -0.62299379
 !MRCI STATE 4.1 Energy             -6174.175043784319

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22468035 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446505 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22468035 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272691 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250635 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272691 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.84266766 (fixed)   0.96254968 (relaxed)   0.96239561 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138683   -0.00239815   -0.52395609
 Singles      0.01879024   -0.05815585   -0.06470232
 Pairs        0.05949715   -0.00000004   -0.03433537
 Total        1.07967422   -0.06055404   -0.62299378
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40747390
 One electron energy                -8480.96588403
 Two electron energy                 2306.79084025
 Virial quotient                       -0.86662295
 Correlation energy                    -0.62299378
 !MRCI STATE 5.1 Energy             -6174.175043778797

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22468032 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446502 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22468032 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272688 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250632 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272688 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94147662 (fixed)   0.96254975 (relaxed)   0.96239569 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138682   -0.00239813   -0.52395628
 Singles      0.01879008   -0.05815554   -0.06470211
 Pairs        0.05949714   -0.00000009   -0.03433525
 Total        1.07967404   -0.06055376   -0.62299364
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40746143
 One electron energy                -8480.96585891
 Two electron energy                 2306.79081527
 Virial quotient                       -0.86662295
 Correlation energy                    -0.62299364
 !MRCI STATE 6.1 Energy             -6174.175043634666

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22468006 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446476 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22468006 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272661 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250606 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272661 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.78827517 (fixed)   0.96254975 (relaxed)   0.96239569 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138682   -0.00239813   -0.52395627
 Singles      0.01879011   -0.05815556   -0.06470212
 Pairs        0.05949712   -0.00000006   -0.03433524
 Total        1.07967405   -0.06055376   -0.62299364
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40746292
 One electron energy                -8480.96586146
 Two electron energy                 2306.79081783
 Virial quotient                       -0.86662295
 Correlation energy                    -0.62299364
 !MRCI STATE 7.1 Energy             -6174.175043630486

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22468006 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446476 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22468006 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272661 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250606 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272661 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.78073262 (fixed)   0.96254976 (relaxed)   0.96239569 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138682   -0.00239813   -0.52395626
 Singles      0.01879009   -0.05815555   -0.06470211
 Pairs        0.05949712   -0.00000010   -0.03433526
 Total        1.07967404   -0.06055379   -0.62299364
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40746238
 One electron energy                -8480.96586049
 Two electron energy                 2306.79081686
 Virial quotient                       -0.86662295
 Correlation energy                    -0.62299364
 !MRCI STATE 8.1 Energy             -6174.175043630184

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22468005 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446475 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22468005 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272660 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250605 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272660 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.75299820 (fixed)   0.96242789 (relaxed)   0.96225370 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138725   -0.00231993   -0.11653141
 Singles      0.01883457   -0.05818128   -0.06476722
 Pairs        0.05977087   -0.44174090   -0.44360971
 Total        1.07999270   -0.50224210   -0.62490835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54569171
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.47583085
 One electron energy                -8481.52250828
 Two electron energy                 2307.35220999
 Virial quotient                       -0.86661397
 Correlation energy                    -0.62460658
 !MRCI STATE 9.1 Energy             -6174.170298290636

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22026226 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22001810 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22026226 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21830873 (Pople, fixed reference)
 Cluster corrected energies         -6174.21805848 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21830873 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.78132559 (fixed)   0.96242790 (relaxed)   0.96225371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138725   -0.00231992   -0.57278377
 Singles      0.01883458   -0.05818127   -0.06476722
 Pairs        0.05977086    0.05100831    0.01264265
 Total        1.07999269   -0.00949289   -0.62490835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54569171
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.47583436
 One electron energy                -8481.52251301
 Two electron energy                 2307.35221472
 Virial quotient                       -0.86661397
 Correlation energy                    -0.62460658
 !MRCI STATE 10.1 Energy            -6174.170298288192

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22026225 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22001808 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22026225 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21830872 (Pople, fixed reference)
 Cluster corrected energies         -6174.21805847 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21830872 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.64802343 (fixed)   0.96242790 (relaxed)   0.96225371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138725   -0.00231993   -0.20428692
 Singles      0.01883457   -0.05818127   -0.06476722
 Pairs        0.05977087   -0.34696560   -0.35585421
 Total        1.07999269   -0.40746680   -0.62490835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54569171
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.47583281
 One electron energy                -8481.52251069
 Two electron energy                 2307.35221240
 Virial quotient                       -0.86661397
 Correlation energy                    -0.62460658
 !MRCI STATE 11.1 Energy            -6174.170298287746

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22026225 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22001808 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22026225 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21830872 (Pople, fixed reference)
 Cluster corrected energies         -6174.21805847 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21830872 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      619.45       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3152.91   3147.87      2.95      0.13      1.62
 REAL TIME  *      3232.64 SEC
 DISK USED  *       680.77 MB (local),        8.03 GB (total)
 SF USED    *         6.48 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -6174.41915740  AU                              
 SETTING HLSDIAG(2)     =     -6174.41915741  AU                              
 SETTING HLSDIAG(3)     =     -6174.41915741  AU                              
 SETTING HLSDIAG(4)     =     -6174.22468035  AU                              
 SETTING HLSDIAG(5)     =     -6174.22468032  AU                              
 SETTING HLSDIAG(6)     =     -6174.22468006  AU                              
 SETTING HLSDIAG(7)     =     -6174.22468006  AU                              
 SETTING HLSDIAG(8)     =     -6174.22468005  AU                              
 SETTING HLSDIAG(9)     =     -6174.22026226  AU                              
 SETTING HLSDIAG(10)    =     -6174.22026225  AU                              
 SETTING HLSDIAG(11)    =     -6174.22026225  AU                              


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
     1     -6173.69539968
     2     -6173.69539968
     3     -6173.69539968
     4     -6173.69539968
     5     -6173.69539968
     6     -6173.66599467

 Number of blocks in overlap matrix:   598   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2035246
 Number of doubly external configurations:       2016667
 Total number of contracted configurations:      4076063
 Total number of uncontracted configurations:   44346143

 Diagonal Coupling coefficients finished.               Storage:  12993893 words, CPU-Time:     12.28 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    969481 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.69539968    -0.00000000    -0.79125068  0.55D-01  0.97D-01    17.59
    1     2     2     1.00000000     0.00000000 -6173.69539968    -0.00000000    -0.79229805  0.56D-01  0.97D-01    17.59
    1     3     3     1.00000000     0.00000000 -6173.69539968    -0.00000000    -0.79187211  0.56D-01  0.97D-01    17.59
    1     4     4     1.00000000     0.00000000 -6173.69539968    -0.00000000    -0.79204395  0.56D-01  0.97D-01    17.59
    1     5     5     1.00000000     0.00000000 -6173.69539968    -0.00000000    -0.79121974  0.55D-01  0.97D-01    17.59
    1     6     6     1.00000000     0.00000000 -6173.66599467     0.00000000    -0.76710957  0.27D-01  0.10D+00    17.59
    2     1     1     1.09379195    -0.62489704 -6174.32029671    -0.62489704    -0.01717870  0.35D-02  0.14D-02   100.73
    2     2     2     1.09378152    -0.62487325 -6174.32027293    -0.62487325    -0.01720011  0.35D-02  0.14D-02   100.73
    2     3     3     1.09424025    -0.62459673 -6174.31999641    -0.62459673    -0.01751129  0.36D-02  0.14D-02   100.73
    2     4     4     1.09447045    -0.62459575 -6174.31999543    -0.62459575    -0.01751418  0.37D-02  0.14D-02   100.73
    2     5     5     1.09440058    -0.62449887 -6174.31989855    -0.62449887    -0.01761858  0.37D-02  0.14D-02   100.73
    2     6     6     1.08273189    -0.62032692 -6174.28632159    -0.62032692    -0.01421468  0.26D-02  0.13D-02   100.73
    3     1     1     1.08460214    -0.64109863 -6174.33649831    -0.01620160    -0.00048425  0.68D-04  0.66D-04   183.83
    3     2     2     1.08460033    -0.64109770 -6174.33649738    -0.01622445    -0.00048438  0.68D-04  0.66D-04   183.83
    3     3     3     1.08462013    -0.64108843 -6174.33648811    -0.01649170    -0.00049462  0.71D-04  0.67D-04   183.83
    3     4     4     1.08462328    -0.64108235 -6174.33648203    -0.01648660    -0.00049979  0.72D-04  0.68D-04   183.83
    3     5     5     1.08468921    -0.64108215 -6174.33648182    -0.01658328    -0.00049946  0.71D-04  0.69D-04   183.83
    3     6     6     1.08006678    -0.63424700 -6174.30024167    -0.01392008    -0.00044123  0.37D-04  0.83D-04   183.83
    4     1     1     1.08489074    -0.64161640 -6174.33701608    -0.00051777    -0.00002984  0.36D-05  0.54D-05   267.17
    4     2     2     1.08489269    -0.64161625 -6174.33701593    -0.00051855    -0.00002993  0.37D-05  0.54D-05   267.17
    4     3     3     1.08488995    -0.64161609 -6174.33701577    -0.00052766    -0.00003008  0.37D-05  0.55D-05   267.17
    4     4     4     1.08488669    -0.64161558 -6174.33701526    -0.00053323    -0.00003045  0.37D-05  0.56D-05   267.17
    4     5     5     1.08489135    -0.64161547 -6174.33701515    -0.00053333    -0.00003060  0.38D-05  0.56D-05   267.17
    4     6     6     1.08168774    -0.63474354 -6174.30073821    -0.00049654    -0.00003638  0.26D-05  0.80D-05   267.17
    5     1     1     1.08501372    -0.64165299 -6174.33705267    -0.00003659    -0.00000220  0.11D-06  0.50D-06   349.94
    5     2     2     1.08501393    -0.64165298 -6174.33705266    -0.00003673    -0.00000221  0.11D-06  0.50D-06   349.94
    5     3     3     1.08501141    -0.64165293 -6174.33705261    -0.00003684    -0.00000224  0.12D-06  0.51D-06   349.94
    5     4     4     1.08500813    -0.64165292 -6174.33705260    -0.00003734    -0.00000225  0.12D-06  0.51D-06   349.94
    5     5     5     1.08501029    -0.64165289 -6174.33705257    -0.00003742    -0.00000227  0.12D-06  0.52D-06   349.94
    5     6     6     1.08226758    -0.63478925 -6174.30078392    -0.00004571    -0.00000326  0.21D-06  0.69D-06   349.94
    6     1     1     1.08502123    -0.64165582 -6174.33705549    -0.00000282    -0.00000025  0.31D-07  0.47D-07   432.07
    6     2     2     1.08502143    -0.64165581 -6174.33705549    -0.00000283    -0.00000025  0.31D-07  0.47D-07   432.07
    6     3     3     1.08502106    -0.64165581 -6174.33705549    -0.00000288    -0.00000026  0.33D-07  0.48D-07   432.07
    6     4     4     1.08502031    -0.64165580 -6174.33705548    -0.00000288    -0.00000026  0.33D-07  0.49D-07   432.07
    6     5     5     1.08502045    -0.64165580 -6174.33705548    -0.00000291    -0.00000026  0.33D-07  0.49D-07   432.07
    6     6     6     1.08231454    -0.63479350 -6174.30078817    -0.00000425    -0.00000034  0.35D-07  0.59D-07   432.07
    7     1     1     1.08504996    -0.64165612 -6174.33705580    -0.00000030    -0.00000003  0.28D-08  0.49D-08   514.39
    7     2     2     1.08504997    -0.64165612 -6174.33705580    -0.00000030    -0.00000003  0.28D-08  0.48D-08   514.39
    7     3     3     1.08505020    -0.64165612 -6174.33705580    -0.00000031    -0.00000003  0.29D-08  0.50D-08   514.39
    7     4     4     1.08504997    -0.64165612 -6174.33705580    -0.00000031    -0.00000003  0.28D-08  0.49D-08   514.39
    7     5     5     1.08505001    -0.64165612 -6174.33705580    -0.00000031    -0.00000003  0.28D-08  0.49D-08   514.39
    7     6     6     1.08233858    -0.63479389 -6174.30078856    -0.00000039    -0.00000004  0.43D-08  0.63D-08   514.39
    8     1     1     1.08504996    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.49D-08   559.89
    8     2     2     1.08504997    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.48D-08   559.89
    8     3     3     1.08505020    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.29D-08  0.50D-08   559.89
    8     4     4     1.08504997    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.49D-08   559.89
    8     5     5     1.08505001    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.49D-08   559.89
    8     6     6     1.08234430    -0.63479393 -6174.30078860    -0.00000004    -0.00000000  0.20D-09  0.36D-09   559.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.8%
 S   1.5%  16.9%
 P   0.6%  48.8%  19.5%

 Initialization:   2.3%
 Other:            7.6%

 Total CPU:      559.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0000           0.0108697   0.1666868   0.8967352  -0.1691405  -0.2100079  -0.0000000
 22222222220/\000           0.4621991  -0.2752899   0.2226851   0.7337716   0.1653074  -0.0000000
 2222222222/0\000           0.4455558   0.2517785   0.0469050  -0.3613260   0.7141985  -0.0000000
 2222222222200000          -0.0282502   0.6995441  -0.0838733   0.3196156  -0.0617806   0.5388754
 2222222222002000           0.5097485  -0.3065043  -0.0963992  -0.3240205  -0.3675528   0.5388754
 2222222222020000          -0.4814984  -0.3930397   0.1802725   0.0044050   0.4293334   0.5388754
 2222220222202000          -0.0497951  -0.0406467   0.0186432   0.0004557   0.0444003  -0.1079338
 2222220222022000          -0.0029217   0.0723447  -0.0086739   0.0330537  -0.0063891  -0.1079338
 2222220222220000           0.0527166  -0.0316975  -0.0099693  -0.0335091  -0.0380112  -0.1079338
 2222220222/\2000          -0.0011241  -0.0172381  -0.0927370   0.0174919   0.0217182   0.0000000
 22222202222/\000          -0.0477991   0.0284696  -0.0230293  -0.0758842  -0.0170955   0.0000000
 2222220222/2\000          -0.0460778  -0.0260380  -0.0048507   0.0373671  -0.0738599  -0.0000000
 222222222200/00\           0.0312409  -0.0187847  -0.0059080  -0.0198582  -0.0225262   0.0691359
 22222222220/00\0          -0.0295096  -0.0240883   0.0110484   0.0002700   0.0263126   0.0691358
 2222222222/00\00          -0.0017313   0.0428728  -0.0051403   0.0195882  -0.0037864   0.0691358

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.531281    0.010963    0.466165    0.449379    0.467665    0.000000
 2          -0.586557    0.168117   -0.277652    0.253939   -0.637537    0.000000
 3           0.218894    0.904430    0.224596    0.047307   -0.041865    0.000000
 4          -0.062706   -0.170592    0.740068   -0.364426   -0.454754    0.000000
 5           0.492123   -0.211810    0.166726    0.720327   -0.294321    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.960512

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959344   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.959344   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.959344    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.959344    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.959344    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.960512


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.53128145 (fixed)   0.95958327 (relaxed)   0.95934430 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138543   -0.00199352   -0.53563462
 Singles      0.02078548   -0.06054956   -0.06799431
 Pairs        0.06438231   -0.00000001   -0.03802719
 Total        1.08655322   -0.06254309   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82507011
 One electron energy                -8489.71910185
 Two electron energy                 2315.38204606
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 1.1 Energy             -6174.337055797531

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259320 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224599 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259320 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135334 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098870 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135334 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.63753661 (fixed)   0.95958327 (relaxed)   0.95934429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138543   -0.00199352   -0.53563460
 Singles      0.02078544   -0.06054958   -0.06799433
 Pairs        0.06438236   -0.00000000   -0.03802719
 Total        1.08655323   -0.06254310   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82508124
 One electron energy                -8489.71913137
 Two electron energy                 2315.38207557
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 2.1 Energy             -6174.337055796892

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259320 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224599 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259320 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135335 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098870 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135335 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.90442951 (fixed)   0.95958317 (relaxed)   0.95934418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138544   -0.00199352   -0.53563431
 Singles      0.02078573   -0.06054977   -0.06799447
 Pairs        0.06438230   -0.00000001   -0.03802734
 Total        1.08655348   -0.06254330   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82503284
 One electron energy                -8489.71903781
 Two electron energy                 2315.38198201
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 3.1 Energy             -6174.337055796240

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259336 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224614 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259336 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135351 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098886 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135351 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.74006770 (fixed)   0.95958326 (relaxed)   0.95934429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138544   -0.00199352   -0.53563455
 Singles      0.02078556   -0.06054964   -0.06799435
 Pairs        0.06438225   -0.00000000   -0.03802722
 Total        1.08655324   -0.06254316   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82503739
 One electron energy                -8489.71904658
 Two electron energy                 2315.38199079
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 4.1 Energy             -6174.337055795948

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259321 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224600 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259321 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135335 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098871 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135335 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.72032668 (fixed)   0.95958325 (relaxed)   0.95934427 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138543   -0.00199352   -0.53563452
 Singles      0.02078559   -0.06054965   -0.06799437
 Pairs        0.06438226    0.00000000   -0.03802723
 Total        1.08655328   -0.06254317   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82505408
 One electron energy                -8489.71907444
 Two electron energy                 2315.38201865
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 5.1 Energy             -6174.337055795397

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259323 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224602 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259323 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135338 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098873 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135338 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96051174 (fixed)   0.96082995 (relaxed)   0.96051174 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00144985   -0.00177949   -0.00249084
 Singles      0.01153181   -0.04393728   -0.04729010
 Pairs        0.07093188   -0.58907715   -0.58501300
 Total        1.08391354   -0.63479393   -0.63479393
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.66599467
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.74663564
 One electron energy                -8488.98034447
 Two electron energy                 2314.67955587
 Virial quotient                       -0.86659935
 Correlation energy                    -0.63479393
 !MRCI STATE 6.1 Energy             -6174.300788601428

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.35405641 (Davidson, fixed reference)
 Cluster corrected energies         -6174.35360074 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.35405641 (Davidson, rotated reference)

 Cluster corrected energies         -6174.35274885 (Pople, fixed reference)
 Cluster corrected energies         -6174.35227252 (Pople, relaxed reference)
 Cluster corrected energies         -6174.35274885 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      810.79       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3780.50    627.59   3147.87      2.95      0.13      1.62
 REAL TIME  *      3878.15 SEC
 DISK USED  *       872.10 MB (local),       10.28 GB (total)
 SF USED    *         6.48 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(12)    =     -6174.39259320  AU                              
 SETTING HLSDIAG(13)    =     -6174.39259320  AU                              
 SETTING HLSDIAG(14)    =     -6174.39259336  AU                              
 SETTING HLSDIAG(15)    =     -6174.39259321  AU                              
 SETTING HLSDIAG(16)    =     -6174.39259323  AU                              
 SETTING HLSDIAG(17)    =     -6174.35405641  AU                              


         HLSDIAG
    -6174.419157
    -6174.419157
    -6174.419157
    -6174.224680
    -6174.224680
    -6174.224680
    -6174.224680
    -6174.224680
    -6174.220262
    -6174.220262
    -6174.220262
    -6174.392593
    -6174.392593
    -6174.392593
    -6174.392593
    -6174.392593
    -6174.354056
                                                  

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

 Time for Seward_LS:      13.92 sec

       10316388. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2701 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.93 sec, REAL time:     14.04 sec


 SORTLS1 read    11044077. and wrote    11044077. SO integrals in    72 records. CPU time:      0.10 sec, REAL time:      0.16 sec
 SORTLS2 read    11044077. and wrote    53911550. SO integrals in    36 records. CPU time:      0.06 sec, REAL time:      0.09 sec

 FILE SIZES: FILE 1:   241.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   241.3 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      230.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      810.79       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3795.07     14.56    627.59   3147.87      2.95      0.13      1.62
 REAL TIME  *      3892.95 SEC
 DISK USED  *       872.17 MB (local),       10.91 GB (total)
 SF USED    *         6.48 GB
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
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=  11

 Original energies:  -6174.366837  -6174.366837  -6174.366837  -6174.175044  -6174.175044  -6174.175044  -6174.175044  -6174.175044
                     -6174.170298  -6174.170298  -6174.170298
 Replaced energies:  -6174.419157  -6174.419157  -6174.419157  -6174.224680  -6174.224680  -6174.224680  -6174.224680  -6174.224680
                     -6174.220262  -6174.220262  -6174.220262

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -6174.337056  -6174.337056  -6174.337056  -6174.337056  -6174.337056  -6174.300789
 Replaced energies:  -6174.392593  -6174.392593  -6174.392593  -6174.392593  -6174.392593  -6174.354056



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -6174.41915741

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -381148.28  147968.52 -365344.97  498212.33 1792820.17-1059813.84 -849686.27 1231821.45  562144.51 -889784.99

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -147968.52   33127.29  -20337.43 -303755.84  -52063.34  110685.75 -193612.00 -110599.63 -277409.43 -327343.83

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       365344.97   20337.43 -117475.82  141411.96  442426.28    4393.25  435687.53  -33480.39  147214.21  527157.36

    4   4.1  1.0  1.0       0.00       0.00       0.00   42682.78       0.00       0.00       0.00       0.00       0.00       0.00
                      -498212.33  303755.84 -141411.96 -277470.25  621712.24  790009.21 1603240.26-1970186.10 -932184.69 1748084.98

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42682.79       0.00       0.00       0.00       0.00       0.00
                     -1792820.17   52063.34 -442426.28 -621712.24 -144748.33 -290999.39 -773315.91  958171.06  412576.41 -894284.20

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42682.85       0.00       0.00       0.00       0.00
                      1059813.84 -110685.75   -4393.25 -790009.21  290999.39  102308.43  104274.87 -141069.62 -218025.60  279237.27

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42682.85       0.00       0.00       0.00
                       849686.27  193612.00 -435687.53-1603240.26  773315.91 -104274.87  -67809.45   73254.46   57785.58     527.61

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42682.85       0.00       0.00
                     -1231821.45  110599.63   33480.39 1970186.10 -958171.06  141069.62  -73254.46 -113025.70 -136551.61 -393823.30

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43652.44       0.00
                      -562144.51  277409.43 -147214.21  932184.69 -412576.41  218025.60  -57785.58  136551.61 -393184.97 -149750.25

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43652.44
                       889784.99  327343.83 -527157.36-1748084.98  894284.20 -279237.27    -527.61  393823.30  149750.25 1037157.53

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       855263.98 -312764.12  135307.50-1668916.84  835231.96 -272116.39   63540.71  -85873.98 -503472.15  320161.96

   12   1.1  1.0  0.0  -50735.56 -157421.25  166697.39   -9590.34   24060.91    4822.63   -1541.82  -22697.22  -96165.21  164256.44
                        -4779.39   62696.69 -195660.13  -69564.69  111156.85   16651.11   11511.27  -28633.92    5118.69  -59378.46

   13   2.1  1.0  0.0 -559963.29 -863605.13 1023003.51  -56611.41  125111.49 -182022.24 -257824.29  289479.84 -210625.78  337808.91
                        48583.80 -212965.54 -118193.33  -76962.80  203029.71   47157.82  -14667.83    1471.91 -185561.25   29033.27

   14   3.1  1.0  0.0  -76578.78 -478123.54  663480.85   -2802.24   23163.21  -29462.34 -176982.48  291354.14  -82017.99 -257561.92
                       -56590.62  291324.73  152936.13  156221.51 -314541.34  -54179.76   19423.40    3023.70  267717.24  -45422.59

   15   4.1  1.0  0.0  -84300.71 -183357.50  680684.14 -193158.53  447115.90  -39227.17  -38564.97  211154.99  -28311.14  128922.51
                         4550.79 -148367.10  285486.91  -13333.38   70643.14  -62452.63  -30989.73   79986.56  -68695.39   87192.57

   16   5.1  1.0  0.0  140098.81  822008.63  461641.63 -368399.35 1182993.93  -29647.29  347831.07  131835.27  -42476.84   71799.13
                       -38053.85 -104785.33  212904.61     -53.44   26575.62  -59460.21  -22995.29   48190.67  -24156.67   92534.14

   17   6.1  1.0  0.0   85218.48 -217237.80  312245.85    6175.91   -1141.62   36414.01   87097.90 -218074.15 -265795.34  590332.52
                       -20765.73  282074.99 -149979.92   25573.58   34926.40   -8503.59  -28305.86  -31471.02  161084.85   -5757.70

   18   7.1  1.0  0.0  198524.11 -190783.96  462128.57  153028.47  -79391.65  256563.43  294682.54 -547488.76 -602354.36 1223676.18
                       -47441.64  -89528.18  104661.19   -1354.74  -18899.17   15121.02  -47094.99   36153.67  -71797.17   43322.40

   19   8.1  1.0  0.0  437775.62  666197.92-1191252.79   74843.89  -88657.56   34371.59 -311095.28  635136.86 1037151.63-1865103.57
                       -17227.45  122604.92 -126676.49  -15706.02    7265.72    6722.75   20410.34  -41601.57   58831.60   13353.78

   20   9.1  1.0  0.0  349719.12  367374.35 -770298.55   65196.41  -93846.98   92914.82  -30905.09  272058.65  544498.65-1031410.48
                       -15880.22   74133.30  -72235.89  -60811.93   34086.93   19197.52   52794.05  -18929.79    5189.71  -13702.52

   21  10.1  1.0  0.0  501185.40  -67157.49  405223.88  221820.73 -162591.97  378217.89  276529.60 -553097.39 -521062.89 1392752.83
                       -28008.51 -143235.40  146097.78  -31077.14    4211.46   36587.83  -40223.91   40317.54  -33979.28   33019.47

   22  11.1  1.0  0.0 -536671.54 -474338.62 1137186.18  -67358.34   72617.48 -113013.13  132540.34 -520630.89 -910922.06 1705968.39
                       -10190.08 -160148.15  172604.48   40641.90   -3490.93  -25556.71  -20356.92   68608.69  -26418.60   20293.83

   23   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.1  0.0  0.0    -533.42    -690.24     -80.81       4.55       5.74    -184.13    -229.64     -15.54    -158.90     -51.50
                          -76.03      -0.43     743.09    -147.27     249.83     -43.65     -13.13     285.18     -21.17     141.29

   35   2.1  0.0  0.0    -140.38     499.67      -2.82      57.57      94.14     -93.19    -348.53    -368.96      20.30      39.91
                           27.16    -508.88     283.00     -80.31     142.17      32.89     189.45    -433.32     -44.42      14.96

   36   3.1  0.0  0.0     -70.74      -2.75     230.11     288.74     505.38     -22.57      62.98     128.45     -15.34      44.83
                          857.67     143.72      20.29     -15.72      25.96    -279.50     109.75      -0.92     168.23      -8.64

   37   4.1  0.0  0.0     224.89     -87.71     815.88     -54.38     -95.57      58.89    -269.05     125.42      24.61     140.46
                          -91.84     573.53     360.10     117.22    -202.46     127.29     349.61     -96.41      32.25     112.06

   38   5.1  0.0  0.0    -622.22     419.78     319.04     -69.49    -118.84    -223.65     192.83     141.86     -77.43     107.29
                          -64.94     460.39    -382.50    -233.28     401.51      97.21     109.05     -75.48      34.13     -36.16

   39   6.1  0.0  0.0     120.35    1145.87     807.04      -0.00       0.00      -0.00      -0.00      -0.00      95.93     187.82
                         -276.68    -774.65    1141.14       0.00       0.00       0.00       0.00      -0.00    -106.99     133.05


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00  -50735.56 -559963.29  -76578.78  -84300.71  140098.81   85218.48  198524.11  437775.62  349719.12
                      -855263.98    4779.39  -48583.80   56590.62   -4550.79   38053.85   20765.73   47441.64   17227.45   15880.22

    2   2.1  1.0  1.0       0.00 -157421.25 -863605.13 -478123.54 -183357.50  822008.63 -217237.80 -190783.96  666197.92  367374.35
                       312764.12  -62696.69  212965.54 -291324.73  148367.10  104785.33 -282074.99   89528.18 -122604.92  -74133.30

    3   3.1  1.0  1.0       0.00  166697.39 1023003.51  663480.85  680684.14  461641.63  312245.85  462128.57-1191252.79 -770298.55
                      -135307.50  195660.13  118193.33 -152936.13 -285486.91 -212904.61  149979.92 -104661.19  126676.49   72235.89

    4   4.1  1.0  1.0       0.00   -9590.34  -56611.41   -2802.24 -193158.53 -368399.35    6175.91  153028.47   74843.89   65196.41
                      1668916.84   69564.69   76962.80 -156221.51   13333.38      53.44  -25573.58    1354.74   15706.02   60811.93

    5   5.1  1.0  1.0       0.00   24060.91  125111.49   23163.21  447115.90 1182993.93   -1141.62  -79391.65  -88657.56  -93846.98
                      -835231.96 -111156.85 -203029.71  314541.34  -70643.14  -26575.62  -34926.40   18899.17   -7265.72  -34086.93

    6   6.1  1.0  1.0       0.00    4822.63 -182022.24  -29462.34  -39227.17  -29647.29   36414.01  256563.43   34371.59   92914.82
                       272116.39  -16651.11  -47157.82   54179.76   62452.63   59460.21    8503.59  -15121.02   -6722.75  -19197.52

    7   7.1  1.0  1.0       0.00   -1541.82 -257824.29 -176982.48  -38564.97  347831.07   87097.90  294682.54 -311095.28  -30905.09
                       -63540.71  -11511.27   14667.83  -19423.40   30989.73   22995.29   28305.86   47094.99  -20410.34  -52794.05

    8   8.1  1.0  1.0       0.00  -22697.22  289479.84  291354.14  211154.99  131835.27 -218074.15 -547488.76  635136.86  272058.65
                        85873.98   28633.92   -1471.91   -3023.70  -79986.56  -48190.67   31471.02  -36153.67   41601.57   18929.79

    9   9.1  1.0  1.0       0.00  -96165.21 -210625.78  -82017.99  -28311.14  -42476.84 -265795.34 -602354.36 1037151.63  544498.65
                       503472.15   -5118.69  185561.25 -267717.24   68695.39   24156.67 -161084.85   71797.17  -58831.60   -5189.71

   10  10.1  1.0  1.0       0.00  164256.44  337808.91 -257561.92  128922.51   71799.13  590332.52 1223676.18-1865103.57-1031410.48
                      -320161.96   59378.46  -29033.27   45422.59  -87192.57  -92534.14    5757.70  -43322.40  -13353.78   13702.52

   11  11.1  1.0  1.0   43652.44  195805.29  173505.17  106138.15   71302.72 -104355.12  535764.19  999019.01-1491631.51 -765522.33
                       106138.48   18227.44 -231636.86  287278.85  -35769.01  -50650.69  234441.47  -34595.58   80586.30  -10916.11

   12   1.1  1.0  0.0  195805.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -18227.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   2.1  1.0  0.0  173505.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       231636.86      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   3.1  1.0  0.0  106138.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -287278.85      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   4.1  1.0  0.0   71302.72       0.00       0.00       0.00   42682.78       0.00       0.00       0.00       0.00       0.00
                        35769.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   5.1  1.0  0.0 -104355.12       0.00       0.00       0.00       0.00   42682.79       0.00       0.00       0.00       0.00
                        50650.69      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   6.1  1.0  0.0  535764.19       0.00       0.00       0.00       0.00       0.00   42682.85       0.00       0.00       0.00
                      -234441.47      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   7.1  1.0  0.0  999019.01       0.00       0.00       0.00       0.00       0.00       0.00   42682.85       0.00       0.00
                        34595.58      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   8.1  1.0  0.0-1491631.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42682.85       0.00
                       -80586.30      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   9.1  1.0  0.0 -765522.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43652.44
                        10916.11      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21  10.1  1.0  0.0 1043390.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        15678.30      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  11.1  1.0  0.0 1329781.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        38097.95      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   1.1  1.0 -1.0       0.00  -50735.56 -157421.25  166697.39   -9590.34   24060.91    4822.63   -1541.82  -22697.22  -96165.21
                           -0.00   -4779.39   62696.69 -195660.13  -69564.69  111156.85   16651.11   11511.27  -28633.92    5118.69

   24   2.1  1.0 -1.0       0.00 -559963.29 -863605.13 1023003.51  -56611.41  125111.49 -182022.24 -257824.29  289479.84 -210625.78
                           -0.00   48583.80 -212965.54 -118193.33  -76962.80  203029.71   47157.82  -14667.83    1471.91 -185561.25

   25   3.1  1.0 -1.0       0.00  -76578.78 -478123.54  663480.85   -2802.24   23163.21  -29462.34 -176982.48  291354.14  -82017.99
                           -0.00  -56590.62  291324.73  152936.13  156221.51 -314541.34  -54179.76   19423.40    3023.70  267717.24

   26   4.1  1.0 -1.0       0.00  -84300.71 -183357.50  680684.14 -193158.53  447115.90  -39227.17  -38564.97  211154.99  -28311.14
                           -0.00    4550.79 -148367.10  285486.91  -13333.38   70643.14  -62452.63  -30989.73   79986.56  -68695.39

   27   5.1  1.0 -1.0       0.00  140098.81  822008.63  461641.63 -368399.35 1182993.93  -29647.29  347831.07  131835.27  -42476.84
                           -0.00  -38053.85 -104785.33  212904.61     -53.44   26575.62  -59460.21  -22995.29   48190.67  -24156.67

   28   6.1  1.0 -1.0       0.00   85218.48 -217237.80  312245.85    6175.91   -1141.62   36414.01   87097.90 -218074.15 -265795.34
                           -0.00  -20765.73  282074.99 -149979.92   25573.58   34926.40   -8503.59  -28305.86  -31471.02  161084.85

   29   7.1  1.0 -1.0       0.00  198524.11 -190783.96  462128.57  153028.47  -79391.65  256563.43  294682.54 -547488.76 -602354.36
                           -0.00  -47441.64  -89528.18  104661.19   -1354.74  -18899.17   15121.02  -47094.99   36153.67  -71797.17

   30   8.1  1.0 -1.0       0.00  437775.62  666197.92-1191252.79   74843.89  -88657.56   34371.59 -311095.28  635136.86 1037151.63
                           -0.00  -17227.45  122604.92 -126676.49  -15706.02    7265.72    6722.75   20410.34  -41601.57   58831.60

   31   9.1  1.0 -1.0       0.00  349719.12  367374.35 -770298.55   65196.41  -93846.98   92914.82  -30905.09  272058.65  544498.65
                           -0.00  -15880.22   74133.30  -72235.89  -60811.93   34086.93   19197.52   52794.05  -18929.79    5189.71

   32  10.1  1.0 -1.0       0.00  501185.40  -67157.49  405223.88  221820.73 -162591.97  378217.89  276529.60 -553097.39 -521062.89
                           -0.00  -28008.51 -143235.40  146097.78  -31077.14    4211.46   36587.83  -40223.91   40317.54  -33979.28

   33  11.1  1.0 -1.0       0.00 -536671.54 -474338.62 1137186.18  -67358.34   72617.48 -113013.13  132540.34 -520630.89 -910922.06
                           -0.00  -10190.08 -160148.15  172604.48   40641.90   -3490.93  -25556.71  -20356.92   68608.69  -26418.60

   34   1.1  0.0  0.0      61.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           50.98      -1.59    -482.84    -310.96    -426.30      -0.53     643.61      63.96     192.90     -41.36

   35   2.1  0.0  0.0     -95.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          108.70   -1309.93    -149.63    -155.46     252.39       0.96      77.30     128.75      12.66    -249.30

   36   3.1  0.0  0.0      12.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           53.21     -82.82    -710.57     916.31    -203.57      -0.18     -92.96     272.76    -346.37     -89.06

   37   4.1  0.0  0.0      97.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -75.26    -484.27     603.02      24.34    -673.33      -2.47    -234.43    -146.71     -63.29     -32.77

   38   5.1  0.0  0.0     -99.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -111.69      84.12    -618.68    -731.85    -154.28      -1.39    -505.62     299.35     197.93     -34.09

   39   6.1  0.0  0.0     -94.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          155.77    1943.09    -362.55     225.00       0.00       0.00      -0.00       0.00       0.00     255.98


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0  501185.40 -536671.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        28008.51   10190.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0  -67157.49 -474338.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       143235.40  160148.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0  405223.88 1137186.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                      -146097.78 -172604.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0  221820.73  -67358.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        31077.14  -40641.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0 -162591.97   72617.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -4211.46    3490.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0  378217.89 -113013.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -36587.83   25556.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0  276529.60  132540.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        40223.91   20356.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0 -553097.39 -520630.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -40317.54  -68608.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0 -521062.89 -910922.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        33979.28   26418.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0 1392752.83 1705968.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -33019.47  -20293.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0 1043390.31 1329781.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -15678.30  -38097.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   1.1  1.0  0.0       0.00       0.00  -50735.56 -559963.29  -76578.78  -84300.71  140098.81   85218.48  198524.11  437775.62
                            0.00       0.00    4779.39  -48583.80   56590.62   -4550.79   38053.85   20765.73   47441.64   17227.45

   13   2.1  1.0  0.0       0.00       0.00 -157421.25 -863605.13 -478123.54 -183357.50  822008.63 -217237.80 -190783.96  666197.92
                            0.00       0.00  -62696.69  212965.54 -291324.73  148367.10  104785.33 -282074.99   89528.18 -122604.92

   14   3.1  1.0  0.0       0.00       0.00  166697.39 1023003.51  663480.85  680684.14  461641.63  312245.85  462128.57-1191252.79
                            0.00       0.00  195660.13  118193.33 -152936.13 -285486.91 -212904.61  149979.92 -104661.19  126676.49

   15   4.1  1.0  0.0       0.00       0.00   -9590.34  -56611.41   -2802.24 -193158.53 -368399.35    6175.91  153028.47   74843.89
                            0.00       0.00   69564.69   76962.80 -156221.51   13333.38      53.44  -25573.58    1354.74   15706.02

   16   5.1  1.0  0.0       0.00       0.00   24060.91  125111.49   23163.21  447115.90 1182993.93   -1141.62  -79391.65  -88657.56
                            0.00       0.00 -111156.85 -203029.71  314541.34  -70643.14  -26575.62  -34926.40   18899.17   -7265.72

   17   6.1  1.0  0.0       0.00       0.00    4822.63 -182022.24  -29462.34  -39227.17  -29647.29   36414.01  256563.43   34371.59
                            0.00       0.00  -16651.11  -47157.82   54179.76   62452.63   59460.21    8503.59  -15121.02   -6722.75

   18   7.1  1.0  0.0       0.00       0.00   -1541.82 -257824.29 -176982.48  -38564.97  347831.07   87097.90  294682.54 -311095.28
                            0.00       0.00  -11511.27   14667.83  -19423.40   30989.73   22995.29   28305.86   47094.99  -20410.34

   19   8.1  1.0  0.0       0.00       0.00  -22697.22  289479.84  291354.14  211154.99  131835.27 -218074.15 -547488.76  635136.86
                            0.00       0.00   28633.92   -1471.91   -3023.70  -79986.56  -48190.67   31471.02  -36153.67   41601.57

   20   9.1  1.0  0.0       0.00       0.00  -96165.21 -210625.78  -82017.99  -28311.14  -42476.84 -265795.34 -602354.36 1037151.63
                            0.00       0.00   -5118.69  185561.25 -267717.24   68695.39   24156.67 -161084.85   71797.17  -58831.60

   21  10.1  1.0  0.0   43652.44       0.00  164256.44  337808.91 -257561.92  128922.51   71799.13  590332.52 1223676.18-1865103.57
                            0.00       0.00   59378.46  -29033.27   45422.59  -87192.57  -92534.14    5757.70  -43322.40  -13353.78

   22  11.1  1.0  0.0       0.00   43652.44  195805.29  173505.17  106138.15   71302.72 -104355.12  535764.19  999019.01-1491631.51
                           -0.00       0.00   18227.44 -231636.86  287278.85  -35769.01  -50650.69  234441.47  -34595.58   80586.30

   23   1.1  1.0 -1.0  164256.44  195805.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -59378.46  -18227.44  381148.28 -147968.52  365344.97 -498212.33-1792820.17 1059813.84  849686.27-1231821.45

   24   2.1  1.0 -1.0  337808.91  173505.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        29033.27  231636.86  147968.52  -33127.29   20337.43  303755.84   52063.34 -110685.75  193612.00  110599.63

   25   3.1  1.0 -1.0 -257561.92  106138.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -45422.59 -287278.85 -365344.97  -20337.43  117475.82 -141411.96 -442426.28   -4393.25 -435687.53   33480.39

   26   4.1  1.0 -1.0  128922.51   71302.72       0.00       0.00       0.00   42682.78       0.00       0.00       0.00       0.00
                        87192.57   35769.01  498212.33 -303755.84  141411.96  277470.25 -621712.24 -790009.21-1603240.26 1970186.10

   27   5.1  1.0 -1.0   71799.13 -104355.12       0.00       0.00       0.00       0.00   42682.79       0.00       0.00       0.00
                        92534.14   50650.69 1792820.17  -52063.34  442426.28  621712.24  144748.33  290999.39  773315.91 -958171.06

   28   6.1  1.0 -1.0  590332.52  535764.19       0.00       0.00       0.00       0.00       0.00   42682.85       0.00       0.00
                        -5757.70 -234441.47-1059813.84  110685.75    4393.25  790009.21 -290999.39 -102308.43 -104274.87  141069.62

   29   7.1  1.0 -1.0 1223676.18  999019.01       0.00       0.00       0.00       0.00       0.00       0.00   42682.85       0.00
                        43322.40   34595.58 -849686.27 -193612.00  435687.53 1603240.26 -773315.91  104274.87   67809.45  -73254.46

   30   8.1  1.0 -1.0-1865103.57-1491631.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42682.85
                        13353.78  -80586.30 1231821.45 -110599.63  -33480.39-1970186.10  958171.06 -141069.62   73254.46  113025.70

   31   9.1  1.0 -1.0-1031410.48 -765522.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                       -13702.52   10916.11  562144.51 -277409.43  147214.21 -932184.69  412576.41 -218025.60   57785.58 -136551.61

   32  10.1  1.0 -1.0 1392752.83 1043390.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        33019.47   15678.30 -889784.99 -327343.83  527157.36 1748084.98 -894284.20  279237.27     527.61 -393823.30

   33  11.1  1.0 -1.0 1705968.39 1329781.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        20293.83   38097.95 -855263.98  312764.12 -135307.50 1668916.84 -835231.96  272116.39  -63540.71   85873.98

   34   1.1  0.0  0.0       0.00       0.00    -533.42    -690.24     -80.81       4.55       5.74    -184.13    -229.64     -15.54
                          -93.69      55.81      76.03       0.43    -743.09     147.27    -249.83      43.65      13.13    -285.18

   35   2.1  0.0  0.0       0.00       0.00    -140.38     499.67      -2.82      57.57      94.14     -93.19    -348.53    -368.96
                           -5.00    -102.50     -27.16     508.88    -283.00      80.31    -142.17     -32.89    -189.45     433.32

   36   3.1  0.0  0.0       0.00       0.00     -70.74      -2.75     230.11     288.74     505.38     -22.57      62.98     128.45
                          121.82     181.55    -857.67    -143.72     -20.29      15.72     -25.96     279.50    -109.75       0.92

   37   4.1  0.0  0.0       0.00       0.00     224.89     -87.71     815.88     -54.38     -95.57      58.89    -269.05     125.42
                           61.81    -140.70      91.84    -573.53    -360.10    -117.22     202.46    -127.29    -349.61      96.41

   38   5.1  0.0  0.0       0.00       0.00    -622.22     419.78     319.04     -69.49    -118.84    -223.65     192.83     141.86
                         -184.85      53.25      64.94    -460.39     382.50     233.28    -401.51     -97.21    -109.05      75.48

   39   6.1  0.0  0.0       0.00       0.00     120.35    1145.87     807.04      -0.00       0.00      -0.00      -0.00      -0.00
                          -29.56     201.06     276.68     774.65   -1141.14      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39

    1   1.1  1.0  1.0       0.00       0.00       0.00    -533.42    -140.38     -70.74     224.89    -622.22     120.35
                            0.00       0.00       0.00      76.03     -27.16    -857.67      91.84      64.94     276.68

    2   2.1  1.0  1.0       0.00       0.00       0.00    -690.24     499.67      -2.75     -87.71     419.78    1145.87
                            0.00       0.00       0.00       0.43     508.88    -143.72    -573.53    -460.39     774.65

    3   3.1  1.0  1.0       0.00       0.00       0.00     -80.81      -2.82     230.11     815.88     319.04     807.04
                            0.00       0.00       0.00    -743.09    -283.00     -20.29    -360.10     382.50   -1141.14

    4   4.1  1.0  1.0       0.00       0.00       0.00       4.55      57.57     288.74     -54.38     -69.49      -0.00
                            0.00       0.00       0.00     147.27      80.31      15.72    -117.22     233.28      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       5.74      94.14     505.38     -95.57    -118.84       0.00
                            0.00       0.00       0.00    -249.83    -142.17     -25.96     202.46    -401.51      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00    -184.13     -93.19     -22.57      58.89    -223.65      -0.00
                            0.00       0.00       0.00      43.65     -32.89     279.50    -127.29     -97.21      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00    -229.64    -348.53      62.98    -269.05     192.83      -0.00
                            0.00       0.00       0.00      13.13    -189.45    -109.75    -349.61    -109.05      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00     -15.54    -368.96     128.45     125.42     141.86      -0.00
                            0.00       0.00       0.00    -285.18     433.32       0.92      96.41      75.48       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00    -158.90      20.30     -15.34      24.61     -77.43      95.93
                            0.00       0.00       0.00      21.17      44.42    -168.23     -32.25     -34.13     106.99

   10  10.1  1.0  1.0       0.00       0.00       0.00     -51.50      39.91      44.83     140.46     107.29     187.82
                            0.00       0.00       0.00    -141.29     -14.96       8.64    -112.06      36.16    -133.05

   11  11.1  1.0  1.0       0.00       0.00       0.00      61.24     -95.42      12.07      97.58     -99.62     -94.53
                            0.00       0.00       0.00     -50.98    -108.70     -53.21      75.26     111.69    -155.77

   12   1.1  1.0  0.0  349719.12  501185.40 -536671.54       0.00       0.00       0.00       0.00       0.00       0.00
                        15880.22   28008.51   10190.08       1.59    1309.93      82.82     484.27     -84.12   -1943.09

   13   2.1  1.0  0.0  367374.35  -67157.49 -474338.62       0.00       0.00       0.00       0.00       0.00       0.00
                       -74133.30  143235.40  160148.15     482.84     149.63     710.57    -603.02     618.68     362.55

   14   3.1  1.0  0.0 -770298.55  405223.88 1137186.18       0.00       0.00       0.00       0.00       0.00       0.00
                        72235.89 -146097.78 -172604.48     310.96     155.46    -916.31     -24.34     731.85    -225.00

   15   4.1  1.0  0.0   65196.41  221820.73  -67358.34       0.00       0.00       0.00       0.00       0.00       0.00
                        60811.93   31077.14  -40641.90     426.30    -252.39     203.57     673.33     154.28      -0.00

   16   5.1  1.0  0.0  -93846.98 -162591.97   72617.48       0.00       0.00       0.00       0.00       0.00       0.00
                       -34086.93   -4211.46    3490.93       0.53      -0.96       0.18       2.47       1.39      -0.00

   17   6.1  1.0  0.0   92914.82  378217.89 -113013.13       0.00       0.00       0.00       0.00       0.00       0.00
                       -19197.52  -36587.83   25556.71    -643.61     -77.30      92.96     234.43     505.62       0.00

   18   7.1  1.0  0.0  -30905.09  276529.60  132540.34       0.00       0.00       0.00       0.00       0.00       0.00
                       -52794.05   40223.91   20356.92     -63.96    -128.75    -272.76     146.71    -299.35      -0.00

   19   8.1  1.0  0.0  272058.65 -553097.39 -520630.89       0.00       0.00       0.00       0.00       0.00       0.00
                        18929.79  -40317.54  -68608.69    -192.90     -12.66     346.37      63.29    -197.93      -0.00

   20   9.1  1.0  0.0  544498.65 -521062.89 -910922.06       0.00       0.00       0.00       0.00       0.00       0.00
                        -5189.71   33979.28   26418.60      41.36     249.30      89.06      32.77      34.09    -255.98

   21  10.1  1.0  0.0-1031410.48 1392752.83 1705968.39       0.00       0.00       0.00       0.00       0.00       0.00
                        13702.52  -33019.47  -20293.83      93.69       5.00    -121.82     -61.81     184.85      29.56

   22  11.1  1.0  0.0 -765522.33 1043390.31 1329781.63       0.00       0.00       0.00       0.00       0.00       0.00
                       -10916.11  -15678.30  -38097.95     -55.81     102.50    -181.55     140.70     -53.25    -201.06

   23   1.1  1.0 -1.0       0.00       0.00       0.00    -533.42    -140.38     -70.74     224.89    -622.22     120.35
                      -562144.51  889784.99  855263.98     -76.03      27.16     857.67     -91.84     -64.94    -276.68

   24   2.1  1.0 -1.0       0.00       0.00       0.00    -690.24     499.67      -2.75     -87.71     419.78    1145.87
                       277409.43  327343.83 -312764.12      -0.43    -508.88     143.72     573.53     460.39    -774.65

   25   3.1  1.0 -1.0       0.00       0.00       0.00     -80.81      -2.82     230.11     815.88     319.04     807.04
                      -147214.21 -527157.36  135307.50     743.09     283.00      20.29     360.10    -382.50    1141.14

   26   4.1  1.0 -1.0       0.00       0.00       0.00       4.55      57.57     288.74     -54.38     -69.49      -0.00
                       932184.69-1748084.98-1668916.84    -147.27     -80.31     -15.72     117.22    -233.28       0.00

   27   5.1  1.0 -1.0       0.00       0.00       0.00       5.74      94.14     505.38     -95.57    -118.84       0.00
                      -412576.41  894284.20  835231.96     249.83     142.17      25.96    -202.46     401.51       0.00

   28   6.1  1.0 -1.0       0.00       0.00       0.00    -184.13     -93.19     -22.57      58.89    -223.65      -0.00
                       218025.60 -279237.27 -272116.39     -43.65      32.89    -279.50     127.29      97.21       0.00

   29   7.1  1.0 -1.0       0.00       0.00       0.00    -229.64    -348.53      62.98    -269.05     192.83      -0.00
                       -57785.58    -527.61   63540.71     -13.13     189.45     109.75     349.61     109.05       0.00

   30   8.1  1.0 -1.0       0.00       0.00       0.00     -15.54    -368.96     128.45     125.42     141.86      -0.00
                       136551.61  393823.30  -85873.98     285.18    -433.32      -0.92     -96.41     -75.48      -0.00

   31   9.1  1.0 -1.0   43652.44       0.00       0.00    -158.90      20.30     -15.34      24.61     -77.43      95.93
                       393184.97  149750.25 -503472.15     -21.17     -44.42     168.23      32.25      34.13    -106.99

   32  10.1  1.0 -1.0       0.00   43652.44       0.00     -51.50      39.91      44.83     140.46     107.29     187.82
                      -149750.25-1037157.53  320161.96     141.29      14.96      -8.64     112.06     -36.16     133.05

   33  11.1  1.0 -1.0       0.00       0.00   43652.44      61.24     -95.42      12.07      97.58     -99.62     -94.53
                       503472.15 -320161.96 -106138.48      50.98     108.70      53.21     -75.26    -111.69     155.77

   34   1.1  0.0  0.0    -158.90     -51.50      61.24    5830.17       0.00       0.00       0.00       0.00       0.00
                           21.17    -141.29     -50.98       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.1  0.0  0.0      20.30      39.91     -95.42       0.00    5830.17       0.00       0.00       0.00       0.00
                           44.42     -14.96    -108.70      -0.00       0.00       0.00       0.00       0.00       0.00

   36   3.1  0.0  0.0     -15.34      44.83      12.07       0.00       0.00    5830.14       0.00       0.00       0.00
                         -168.23       8.64     -53.21      -0.00      -0.00       0.00       0.00       0.00       0.00

   37   4.1  0.0  0.0      24.61     140.46      97.58       0.00       0.00       0.00    5830.17       0.00       0.00
                          -32.25    -112.06      75.26      -0.00      -0.00      -0.00       0.00       0.00       0.00

   38   5.1  0.0  0.0     -77.43     107.29     -99.62       0.00       0.00       0.00       0.00    5830.16       0.00
                          -34.13      36.16     111.69      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   39   6.1  0.0  0.0      95.93     187.82     -94.53       0.00       0.00       0.00       0.00       0.00   14288.02
                          106.99    -133.05    -155.77      -0.00      -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 39)

    The diagonal matrixelements are shifted by  -6174.41915741 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.004       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42682.782       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42682.788       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42682.847       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42682.846       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42682.848
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>          -71750.922 -507267.476   63723.485  -66391.003  116078.455   63668.675  139287.509  293504.748
                                0.000    9979.321  -98336.996  -52407.552  105507.900   26457.702   41686.008   -8065.594

    2    1  |1 0>         -507267.476-1221322.085  385288.322 -169683.645  669715.058 -282319.480 -317213.933  675766.225
                            -9979.321       0.000 -289573.001   50490.469  217658.098 -166111.525   52934.259  -85653.968

    3    1  |1 0>           63723.485  385288.322  938303.611  479334.890  342808.791  199958.134  201628.732 -636324.436
                            98336.996  289573.001       0.000  -91404.440 -372960.603   67740.946  -60272.223   91711.882

    4    1  |1 0>          -66391.003 -169683.645  479334.890 -273167.414   55661.012  -23370.765   80937.916  202231.744
                            52407.552  -50490.469   91404.440       0.000   49990.035  -62243.929  -20955.103   67664.877

    5    1  |1 0>          116078.455  669715.058  342808.791   55661.012 1673006.058  -21771.043  189815.333   30531.254
                          -105507.900 -217658.098  372960.603  -49990.035       0.000  -66741.410   -2896.400   28938.309

    6    1  |1 0>           63668.675 -282319.480  199958.134  -23370.765  -21771.043   51497.181  243005.259 -129897.329
                           -26457.702  166111.525  -67740.946   62243.929   66741.410       0.000  -30707.441  -27007.076

    7    1  |1 0>          139287.509 -317213.933  201628.732   80937.916  189815.333  243005.259  416744.040 -607110.593
                           -41686.008  -52934.259   60272.223   20955.103    2896.400   30707.441       0.000   11132.220

    8    1  |1 0>          293504.748  675766.225 -636324.436  202231.744   30531.254 -129897.329 -607110.593  898219.157
                             8065.594   85653.968  -91711.882  -67664.877  -28938.309   27007.076  -11132.220       0.000

    9    1  |1 0>          179289.691  110837.977 -602678.806   26081.820  -96395.497 -122244.989 -447782.052  925751.470
                           -14848.467  183631.777 -240383.161    5574.454   41184.447 -100329.497   88099.299  -54985.606

   10    1  |1 0>          470538.436  191379.458  104412.775  248012.925  -64200.233  684868.562 1060805.681-1709926.292
                            22181.911 -121812.344  135425.352  -83629.316  -62453.561   29942.812  -59076.162   19066.253

   11    1  |1 0>         -241028.835 -212721.373  879163.064    2789.101  -22441.906  298930.145  800133.292-1422884.389
                             5683.273 -277033.840  325186.622    3445.651  -38283.906  147703.835  -38857.291  105496.791

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -381148.279  147968.515 -365344.975  498212.329 1792820.172-1059813.838 -849686.273 1231821.448

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -147968.515   33127.289  -20337.428 -303755.836  -52063.341  110685.745 -193611.995 -110599.632

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                           365344.975   20337.428 -117475.819  141411.957  442426.278    4393.246  435687.526  -33480.385

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -498212.329  303755.836 -141411.957 -277470.252  621712.242  790009.206 1603240.260-1970186.099

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                         -1792820.172   52063.341 -442426.278 -621712.242 -144748.326 -290999.388 -773315.911  958171.056

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          1059813.838 -110685.745   -4393.246 -790009.206  290999.388  102308.431  104274.872 -141069.619

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                           849686.273  193611.995 -435687.526-1603240.260  773315.911 -104274.872  -67809.454   73254.464

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                         -1231821.448  110599.632   33480.385 1970186.099 -958171.056  141069.619  -73254.464 -113025.704

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -562144.508  277409.432 -147214.210  932184.692 -412576.414  218025.596  -57785.584  136551.606

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                           889784.990  327343.832 -527157.357-1748084.982  894284.202 -279237.267    -527.606  393823.297

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                           855263.978 -312764.122  135307.496-1668916.839  835231.956 -272116.387   63540.705  -85873.984

    1    1  |0 0>            -754.371    -976.144    -114.288       6.433       8.116    -260.404    -324.756     -21.984
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            -198.532     706.641      -3.985      81.410     133.141    -131.796    -492.890    -521.791
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -100.042      -3.884     325.424     408.345     714.710     -31.924      89.074     181.658
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             318.037    -124.037    1153.831     -76.899    -135.159      83.283    -380.501     177.376
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            -879.950     593.664     451.188     -98.274    -168.070    -316.288     272.703     200.624
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>             170.203    1620.511    1141.330      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000  -71750.922 -507267.476   63723.485  -66391.003  116078.455
                                0.000       0.000       0.000       0.000    9979.321  -98336.996  -52407.552  105507.900

    2    1  |1 1>+              0.000       0.000       0.000 -507267.476-1221322.085  385288.322 -169683.645  669715.058
                                0.000       0.000       0.000   -9979.321       0.000 -289573.001   50490.469  217658.098

    3    1  |1 1>+              0.000       0.000       0.000   63723.485  385288.322  938303.611  479334.890  342808.791
                                0.000       0.000       0.000   98336.996  289573.001       0.000  -91404.440 -372960.603

    4    1  |1 1>+              0.000       0.000       0.000  -66391.003 -169683.645  479334.890 -273167.414   55661.012
                                0.000       0.000       0.000   52407.552  -50490.469   91404.440       0.000   49990.035

    5    1  |1 1>+              0.000       0.000       0.000  116078.455  669715.058  342808.791   55661.012 1673006.058
                                0.000       0.000       0.000 -105507.900 -217658.098  372960.603  -49990.035       0.000

    6    1  |1 1>+              0.000       0.000       0.000   63668.675 -282319.480  199958.134  -23370.765  -21771.043
                                0.000       0.000       0.000  -26457.702  166111.525  -67740.946   62243.929   66741.410

    7    1  |1 1>+              0.000       0.000       0.000  139287.509 -317213.933  201628.732   80937.916  189815.333
                                0.000       0.000       0.000  -41686.008  -52934.259   60272.223   20955.103    2896.400

    8    1  |1 1>+              0.000       0.000       0.000  293504.748  675766.225 -636324.436  202231.744   30531.254
                                0.000       0.000       0.000    8065.594   85653.968  -91711.882  -67664.877  -28938.309

    9    1  |1 1>+          43652.441       0.000       0.000  179289.691  110837.977 -602678.806   26081.820  -96395.497
                                0.000       0.000       0.000  -14848.467  183631.777 -240383.161    5574.454   41184.447

   10    1  |1 1>+              0.000   43652.443       0.000  470538.436  191379.458  104412.775  248012.925  -64200.233
                                0.000       0.000       0.000   22181.911 -121812.344  135425.352  -83629.316  -62453.561

   11    1  |1 1>+              0.000       0.000   43652.444 -241028.835 -212721.373  879163.064    2789.101  -22441.906
                                0.000       0.000       0.000    5683.273 -277033.840  325186.622    3445.651  -38283.906

    1    1  |1 0>          179289.691  470538.436 -241028.835       0.004       0.000       0.000       0.000       0.000
                            14848.467  -22181.911   -5683.273       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>          110837.977  191379.458 -212721.373       0.000       0.000       0.000       0.000       0.000
                          -183631.777  121812.344  277033.840      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>         -602678.806  104412.775  879163.064       0.000       0.000       0.001       0.000       0.000
                           240383.161 -135425.352 -325186.622      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>           26081.820  248012.925    2789.101       0.000       0.000       0.000   42682.782       0.000
                            -5574.454   83629.316   -3445.651      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>          -96395.497  -64200.233  -22441.906       0.000       0.000       0.000       0.000   42682.788
                           -41184.447   62453.561   38283.906      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>         -122244.989  684868.562  298930.145       0.000       0.000       0.000       0.000       0.000
                           100329.497  -29942.812 -147703.835      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>         -447782.052 1060805.681  800133.292       0.000       0.000       0.000       0.000       0.000
                           -88099.299   59076.162   38857.291      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>          925751.470-1709926.292-1422884.389       0.000       0.000       0.000       0.000       0.000
                            54985.606  -19066.253 -105496.791      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>          770037.371-1097764.449-1185425.194       0.000       0.000       0.000       0.000       0.000
                                0.000   14337.834   26399.625      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>        -1097764.449 1969649.942 1944090.177       0.000       0.000       0.000       0.000       0.000
                           -14337.834       0.000   -3263.678      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>        -1185425.194 1944090.177 1880595.217       0.000       0.000       0.000       0.000       0.000
                           -26399.625    3263.678       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000 -284640.206 -172022.228  -52828.211   82051.188
                           562144.508 -889784.990 -855263.978    6759.073  -78687.195  178368.213   45971.769  -51691.630

    2    1  |1 1>-              0.000       0.000       0.000  284640.206       0.000-1061457.120  -89623.022  492780.697
                          -277409.432 -327343.832  312764.122  -78687.195  301178.755 -122422.389  159332.298  -69469.270

    3    1  |1 1>-              0.000       0.000       0.000  172022.228 1061457.120       0.000  483297.857  310051.061
                           147214.210  527157.357 -135307.496  178368.213 -122422.389 -216284.346 -312335.013   71868.021

    4    1  |1 1>-              0.000       0.000       0.000   52828.211   89623.022 -483297.857       0.000 -576656.362
                          -932184.692 1748084.982 1668916.839   45971.769  159332.298 -312335.013   18856.244  -49914.456

    5    1  |1 1>-              0.000       0.000       0.000  -82051.188 -492780.697 -310051.061  576656.362       0.000
                           412576.414 -894284.202 -835231.956  -51691.630  -69469.270   71868.021  -49914.456  -37583.601

    6    1  |1 1>-              0.000       0.000       0.000  -56848.454   24901.160 -241624.178  -32104.825  -20156.555
                          -218025.596  279237.267  272116.387    2909.474 -232802.749  144362.692   26077.432   17348.025

    7    1  |1 1>-              0.000       0.000       0.000 -141467.978  -47404.675 -451919.761 -135477.026  302092.087
                            57785.584     527.606  -63540.705   25406.609   73677.708  -87741.056   22870.990   29623.856

    8    1  |1 1>-              0.000       0.000       0.000 -325603.466 -266379.909 1048361.414   96386.501  155911.975
                          -136551.606 -393823.297   85873.984   32428.883  -87735.566   87435.725  -45453.206  -39213.588

    9    1  |1 1>-              0.000       0.000       0.000 -315287.832 -408707.812  486687.851  -66119.821   36324.174
                          -393184.974 -149750.252  503472.152    7609.549   78791.460 -138226.191   91575.504   -7021.754

   10    1  |1 1>-              0.000       0.000       0.000 -238244.756  286354.486 -468660.337  -65688.964  165739.532
                           149750.252 1037157.529 -320161.964   61791.920   80753.094  -71188.110  -39679.598  -68409.471

   11    1  |1 1>-              0.000       0.000       0.000  517939.332  458094.738 -729061.056   98048.177 -125138.525
                          -503472.152  320161.964  106138.482   20094.226  -50550.155   81087.025  -54030.676  -33346.988

    1    1  |0 0>            -224.715     -72.839      86.607       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -1.585    -482.840    -310.957    -426.301      -0.534

    2    1  |0 0>              28.715      56.439    -134.939       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1309.928    -149.630    -155.457     252.390       0.962

    3    1  |0 0>             -21.695      63.395      17.067       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -82.820    -710.566     916.312    -203.568      -0.176

    4    1  |0 0>              34.798     198.642     137.993       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -484.265     603.023      24.338    -673.329      -2.466

    5    1  |0 0>            -109.503     151.738    -140.884       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      84.120    -618.679    -731.847    -154.279      -1.388

    6    1  |0 0>             135.669     265.612    -133.680       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1943.088    -362.553     225.003       0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+          63668.675  139287.509  293504.748  179289.691  470538.436 -241028.835       0.000       0.000
                            26457.702   41686.008   -8065.594   14848.467  -22181.911   -5683.273 -381148.279  147968.515

    2    1  |1 1>+        -282319.480 -317213.933  675766.225  110837.977  191379.458 -212721.373       0.000       0.000
                          -166111.525   52934.259  -85653.968 -183631.777  121812.344  277033.840 -147968.515   33127.289

    3    1  |1 1>+         199958.134  201628.732 -636324.436 -602678.806  104412.775  879163.064       0.000       0.000
                            67740.946  -60272.223   91711.882  240383.161 -135425.352 -325186.622  365344.975   20337.428

    4    1  |1 1>+         -23370.765   80937.916  202231.744   26081.820  248012.925    2789.101       0.000       0.000
                           -62243.929  -20955.103   67664.877   -5574.454   83629.316   -3445.651 -498212.329  303755.836

    5    1  |1 1>+         -21771.043  189815.333   30531.254  -96395.497  -64200.233  -22441.906       0.000       0.000
                           -66741.410   -2896.400   28938.309  -41184.447   62453.561   38283.906-1792820.172   52063.341

    6    1  |1 1>+          51497.181  243005.259 -129897.329 -122244.989  684868.562  298930.145       0.000       0.000
                                0.000  -30707.441  -27007.076  100329.497  -29942.812 -147703.835 1059813.838 -110685.745

    7    1  |1 1>+         243005.259  416744.040 -607110.593 -447782.052 1060805.681  800133.292       0.000       0.000
                            30707.441       0.000   11132.220  -88099.299   59076.162   38857.291  849686.273  193611.995

    8    1  |1 1>+        -129897.329 -607110.593  898219.157  925751.470-1709926.292-1422884.389       0.000       0.000
                            27007.076  -11132.220       0.000   54985.606  -19066.253 -105496.791-1231821.448  110599.632

    9    1  |1 1>+        -122244.989 -447782.052  925751.470  770037.371-1097764.449-1185425.194       0.000       0.000
                          -100329.497   88099.299  -54985.606       0.000   14337.834   26399.625 -562144.508  277409.432

   10    1  |1 1>+         684868.562 1060805.681-1709926.292-1097764.449 1969649.942 1944090.177       0.000       0.000
                            29942.812  -59076.162   19066.253  -14337.834       0.000   -3263.678  889784.990  327343.832

   11    1  |1 1>+         298930.145  800133.292-1422884.389-1185425.194 1944090.177 1880595.217       0.000       0.000
                           147703.835  -38857.291  105496.791  -26399.625    3263.678       0.000  855263.978 -312764.122

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000  284640.206
                                0.000       0.000       0.000       0.000       0.000       0.000   -6759.073   78687.195

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000 -284640.206       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   78687.195 -301178.755

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000 -172022.228-1061457.120
                                0.000       0.000       0.000       0.000       0.000       0.000 -178368.213  122422.389

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000  -52828.211  -89623.022
                                0.000       0.000       0.000       0.000       0.000       0.000  -45971.769 -159332.298

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   82051.188  492780.697
                                0.000       0.000       0.000       0.000       0.000       0.000   51691.630   69469.270

    6    1  |1 0>           42682.847       0.000       0.000       0.000       0.000       0.000   56848.454  -24901.160
                                0.000       0.000       0.000       0.000       0.000       0.000   -2909.474  232802.749

    7    1  |1 0>               0.000   42682.846       0.000       0.000       0.000       0.000  141467.978   47404.675
                               -0.000       0.000       0.000       0.000       0.000       0.000  -25406.609  -73677.708

    8    1  |1 0>               0.000       0.000   42682.848       0.000       0.000       0.000  325603.466  266379.909
                               -0.000      -0.000       0.000       0.000       0.000       0.000  -32428.883   87735.566

    9    1  |1 0>               0.000       0.000       0.000   43652.441       0.000       0.000  315287.832  408707.812
                               -0.000      -0.000      -0.000       0.000       0.000       0.000   -7609.549  -78791.460

   10    1  |1 0>               0.000       0.000       0.000       0.000   43652.443       0.000  238244.756 -286354.486
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000  -61791.920  -80753.094

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43652.444 -517939.332 -458094.738
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000  -20094.226   50550.155

    1    1  |1 1>-          56848.454  141467.978  325603.466  315287.832  238244.756 -517939.332       0.004       0.000
                             2909.474   25406.609   32428.883    7609.549   61791.920   20094.226       0.000       0.000

    2    1  |1 1>-         -24901.160   47404.675  266379.909  408707.812 -286354.486 -458094.738       0.000       0.000
                          -232802.749   73677.708  -87735.566   78791.460   80753.094  -50550.155       0.000       0.000

    3    1  |1 1>-         241624.178  451919.761-1048361.414 -486687.851  468660.337  729061.056       0.000       0.000
                           144362.692  -87741.056   87435.725 -138226.191  -71188.110   81087.025       0.000       0.000

    4    1  |1 1>-          32104.825  135477.026  -96386.501   66119.821   65688.964  -98048.177       0.000       0.000
                            26077.432   22870.990  -45453.206   91575.504  -39679.598  -54030.676       0.000       0.000

    5    1  |1 1>-          20156.555 -302092.087 -155911.975  -36324.174 -165739.532  125138.525       0.000       0.000
                            17348.025   29623.856  -39213.588   -7021.754  -68409.471  -33346.988       0.000       0.000

    6    1  |1 1>-              0.000  119830.223  178506.092  253646.390 -149987.694 -458754.844       0.000       0.000
                            12025.886    9323.087   17499.666 -127478.885  -21800.193  183846.477       0.000       0.000

    7    1  |1 1>-        -119830.223       0.000  167155.434  404075.659 -669733.773 -612692.939       0.000       0.000
                             9323.087   66602.367  -39996.793   13437.238   -2190.969  -10068.254       0.000       0.000

    8    1  |1 1>-        -178506.092 -167155.434       0.000 -541002.437  927728.468  686601.120       0.000       0.000
                            17499.666  -39996.793   58833.504  -28214.840  -37951.353    8469.446       0.000       0.000

    9    1  |1 1>-        -253646.390 -404075.659  541002.437       0.000  360870.243 -102813.139       0.000       0.000
                          -127478.885   13437.238  -28214.840   -7339.361   33716.129   10961.919       0.000       0.000

   10    1  |1 1>-         149987.694  669733.773 -927728.468 -360870.243       0.000  468513.454       0.000       0.000
                           -21800.193   -2190.969  -37951.353   33716.129  -46696.586  -25436.138       0.000       0.000

   11    1  |1 1>-         458754.844  612692.939 -686601.120  102813.139 -468513.454       0.000       0.000       0.000
                           183846.477  -10068.254    8469.446   10961.919  -25436.138  -53878.644       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              643.609      63.956     192.898     -41.361     -93.686      55.813    -107.521      -0.612

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               77.300     128.754      12.658    -249.300      -5.000    -102.496      38.407    -719.659

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -92.955     272.760    -346.366     -89.061     121.821     181.554    1212.934     203.256

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -234.427    -146.712     -63.290     -32.767      61.809    -140.705    -129.885     811.097

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -505.619     299.348     197.929     -34.095    -184.848      53.252     -91.834     651.085

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     255.982     -29.559     201.061    -391.284   -1095.519

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -365344.975  498212.329 1792820.172-1059813.838 -849686.273 1231821.448  562144.508 -889784.990

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                           -20337.428 -303755.836  -52063.341  110685.745 -193611.995 -110599.632 -277409.432 -327343.832

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -117475.819  141411.957  442426.278    4393.246  435687.526  -33480.385  147214.210  527157.357

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -141411.957 -277470.252  621712.242  790009.206 1603240.260-1970186.099 -932184.692 1748084.982

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -442426.278 -621712.242 -144748.326 -290999.388 -773315.911  958171.056  412576.414 -894284.202

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -4393.246 -790009.206  290999.388  102308.431  104274.872 -141069.619 -218025.596  279237.267

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -435687.526-1603240.260  773315.911 -104274.872  -67809.454   73254.464   57785.584     527.606

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            33480.385 1970186.099 -958171.056  141069.619  -73254.464 -113025.704 -136551.606 -393823.297

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -147214.210  932184.692 -412576.414  218025.596  -57785.584  136551.606 -393184.974 -149750.252

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                          -527157.357-1748084.982  894284.202 -279237.267    -527.606  393823.297  149750.252 1037157.529

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                           135307.496-1668916.839  835231.956 -272116.387   63540.705  -85873.984 -503472.152  320161.964

    1    1  |1 0>          172022.228   52828.211  -82051.188  -56848.454 -141467.978 -325603.466 -315287.832 -238244.756
                          -178368.213  -45971.769   51691.630   -2909.474  -25406.609  -32428.883   -7609.549  -61791.920

    2    1  |1 0>         1061457.120   89623.022 -492780.697   24901.160  -47404.675 -266379.909 -408707.812  286354.486
                           122422.389 -159332.298   69469.270  232802.749  -73677.708   87735.566  -78791.460  -80753.094

    3    1  |1 0>               0.000 -483297.857 -310051.061 -241624.178 -451919.761 1048361.414  486687.851 -468660.337
                           216284.346  312335.013  -71868.021 -144362.692   87741.056  -87435.725  138226.191   71188.110

    4    1  |1 0>          483297.857       0.000  576656.362  -32104.825 -135477.026   96386.501  -66119.821  -65688.964
                           312335.013  -18856.244   49914.456  -26077.432  -22870.990   45453.206  -91575.504   39679.598

    5    1  |1 0>          310051.061 -576656.362       0.000  -20156.555  302092.087  155911.975   36324.174  165739.532
                           -71868.021   49914.456   37583.601  -17348.025  -29623.856   39213.588    7021.754   68409.471

    6    1  |1 0>          241624.178   32104.825   20156.555       0.000 -119830.223 -178506.092 -253646.390  149987.694
                          -144362.692  -26077.432  -17348.025  -12025.886   -9323.087  -17499.666  127478.885   21800.193

    7    1  |1 0>          451919.761  135477.026 -302092.087  119830.223       0.000 -167155.434 -404075.659  669733.773
                            87741.056  -22870.990  -29623.856   -9323.087  -66602.367   39996.793  -13437.238    2190.969

    8    1  |1 0>        -1048361.414  -96386.501 -155911.975  178506.092  167155.434       0.000  541002.437 -927728.468
                           -87435.725   45453.206   39213.588  -17499.666   39996.793  -58833.504   28214.840   37951.353

    9    1  |1 0>         -486687.851   66119.821  -36324.174  253646.390  404075.659 -541002.437       0.000 -360870.243
                           138226.191  -91575.504    7021.754  127478.885  -13437.238   28214.840    7339.361  -33716.129

   10    1  |1 0>          468660.337   65688.964 -165739.532 -149987.694 -669733.773  927728.468  360870.243       0.000
                            71188.110   39679.598   68409.471   21800.193    2190.969   37951.353  -33716.129   46696.586

   11    1  |1 0>          729061.056  -98048.177  125138.525 -458754.844 -612692.939  686601.120 -102813.139  468513.454
                           -81087.025   54030.676   33346.988 -183846.477   10068.254   -8469.446  -10961.919   25436.138

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.001       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000   42682.782       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000   42682.788       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000   42682.847       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000   42682.846       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42682.848       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   43652.441       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   43652.443
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1050.888    -208.267     353.308     -61.728     -18.562     403.302     -29.936     199.816

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              400.225    -113.576     201.061      46.511     267.929    -612.801     -62.823      21.161

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               28.696     -22.229      36.718    -395.272     155.214      -1.308     237.908     -12.222

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              509.256     165.780    -286.322     180.013     494.422    -136.350      45.612     158.476

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -540.936    -329.914     567.820     137.475     154.216    -106.746      48.274     -51.137

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1613.817       0.000       0.000       0.000       0.000      -0.001    -151.305     188.156

  State Sym Spin    / Nr.       33          34          35          36          37          38          39

    1    1  |1 1>+              0.000    -754.371    -198.532    -100.042     318.037    -879.950     170.203
                          -855263.978       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    -976.144     706.641      -3.884    -124.037     593.664    1620.511
                           312764.122       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -114.288      -3.985     325.424    1153.831     451.188    1141.330
                          -135307.496       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       6.433      81.410     408.345     -76.899     -98.274      -0.000
                          1668916.839       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       8.116     133.141     714.710    -135.159    -168.070       0.000
                          -835231.956       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000    -260.404    -131.796     -31.924      83.283    -316.288      -0.000
                           272116.387       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000    -324.756    -492.890      89.074    -380.501     272.703      -0.000
                           -63540.705       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     -21.984    -521.791     181.658     177.376     200.624      -0.000
                            85873.984       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000    -224.715      28.715     -21.695      34.798    -109.503     135.669
                           503472.152       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000     -72.839      56.439      63.395     198.642     151.738     265.612
                          -320161.964       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000      86.607    -134.939      17.067     137.993    -140.884    -133.680
                           106138.482       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>          517939.332       0.000       0.000       0.000       0.000       0.000       0.000
                           -20094.226       1.585    1309.928      82.820     484.265     -84.120   -1943.088

    2    1  |1 0>          458094.738       0.000       0.000       0.000       0.000       0.000       0.000
                            50550.155     482.840     149.630     710.566    -603.023     618.679     362.553

    3    1  |1 0>         -729061.056       0.000       0.000       0.000       0.000       0.000       0.000
                           -81087.025     310.957     155.457    -916.312     -24.338     731.847    -225.003

    4    1  |1 0>           98048.177       0.000       0.000       0.000       0.000       0.000       0.000
                            54030.676     426.301    -252.390     203.568     673.329     154.279      -0.000

    5    1  |1 0>         -125138.525       0.000       0.000       0.000       0.000       0.000       0.000
                            33346.988       0.534      -0.962       0.176       2.466       1.388      -0.000

    6    1  |1 0>          458754.844       0.000       0.000       0.000       0.000       0.000       0.000
                          -183846.477    -643.609     -77.300      92.955     234.427     505.619       0.000

    7    1  |1 0>          612692.939       0.000       0.000       0.000       0.000       0.000       0.000
                            10068.254     -63.956    -128.754    -272.760     146.712    -299.348      -0.000

    8    1  |1 0>         -686601.120       0.000       0.000       0.000       0.000       0.000       0.000
                            -8469.446    -192.898     -12.658     346.366      63.290    -197.929      -0.000

    9    1  |1 0>          102813.139       0.000       0.000       0.000       0.000       0.000       0.000
                           -10961.919      41.361     249.300      89.061      32.767      34.095    -255.982

   10    1  |1 0>         -468513.454       0.000       0.000       0.000       0.000       0.000       0.000
                            25436.138      93.686       5.000    -121.821     -61.809     184.848      29.559

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            53878.644     -55.813     102.496    -181.554     140.705     -53.252    -201.061

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     107.521     -38.407   -1212.934     129.885      91.834     391.284

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.612     719.659    -203.256    -811.097    -651.085    1095.519

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1050.888    -400.225     -28.696    -509.256     540.936   -1613.817

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     208.267     113.576      22.229    -165.780     329.914      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -353.308    -201.061     -36.718     286.322    -567.820      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      61.728     -46.511     395.272    -180.013    -137.475      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      18.562    -267.929    -155.214    -494.422    -154.216      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -403.302     612.801       1.308     136.350     106.746       0.001

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      29.936      62.823    -237.908     -45.612     -48.274     151.305

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -199.816     -21.161      12.222    -158.476      51.137    -188.156

   11    1  |1 1>-          43652.444       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -72.094    -153.720     -75.255     106.437     157.958    -220.296

    1    1  |0 0>               0.000    5830.171       0.000       0.000       0.000       0.000       0.000
                               72.094       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5830.170       0.000       0.000       0.000       0.000
                              153.720      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5830.135       0.000       0.000       0.000
                               75.255      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5830.169       0.000       0.000
                             -106.437      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5830.164       0.000
                             -157.958      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14288.019
                              220.296      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -6212.02773140   -37.60857399 -8254127.91      0.00000000        0.00      0.0000
    2 -6199.37501287   -24.95585545 -5477177.18     12.65271854  2776950.74    344.2980
    3 -6189.56772637   -15.14856895 -3324726.59     22.46000504  4929401.33    611.1679
    4 -6187.07845653   -12.65929911 -2778395.01     24.94927488  5475732.91    678.9044
    5 -6185.07875007   -10.65959266 -2339510.17     26.94898133  5914617.74    733.3191
    6 -6183.48261522    -9.06345781 -1989199.06     28.54511618  6264928.85    776.7522
    7 -6180.40009882    -5.98094140 -1312664.91     31.62763259  6941463.00    860.6317
    8 -6179.41972159    -5.00056417 -1097496.98     32.60800982  7156630.93    887.3091
    9 -6178.49112936    -4.07197194  -893694.54     33.53660204  7360433.37    912.5774
   10 -6177.45159151    -3.03243409  -665542.35     34.57613990  7588585.56    940.8647
   11 -6176.19310697    -1.77394956  -389336.93     35.83462443  7864790.99    975.1098
   12 -6175.84883468    -1.42967727  -313777.89     36.17889672  7940350.02    984.4779
   13 -6175.38097225    -0.96181484  -211093.96     36.64675915  8043033.96    997.2091
   14 -6175.04501115    -0.62585373  -137359.02     36.98272026  8116768.90   1006.3511
   15 -6174.68349451    -0.26433709   -58015.29     37.34423690  8196112.63   1016.1885
   16 -6174.39273559     0.02642182     5798.92     37.63499581  8259926.83   1024.1004
   17 -6174.39262017     0.02653724     5824.25     37.63511123  8259952.16   1024.1035
   18 -6174.39259949     0.02655793     5828.79     37.63513192  8259956.70   1024.1041
   19 -6174.39259057     0.02656684     5830.75     37.63514083  8259958.66   1024.1044
   20 -6174.39255751     0.02659991     5838.00     37.63517390  8259965.92   1024.1053
   21 -6174.35425448     0.06490293    14244.55     37.67347692  8268372.46   1025.1475
   22 -6174.32007690     0.09908051    21745.66     37.70765450  8275873.57   1026.0776
   23 -6174.18549040     0.23366701    51283.98     37.84224100  8305411.89   1029.7398
   24 -6173.96008926     0.45906816   100753.82     38.06764215  8354881.73   1035.8733
   25 -6173.57828922     0.84086820   184549.24     38.44944219  8438677.15   1046.2626
   26 -6173.40626106     1.01289635   222305.05     38.62147034  8476432.97   1050.9437
   27 -6172.78839586     1.63076155   357910.79     39.23933554  8612038.70   1067.7567
   28 -6172.29015681     2.12900060   467261.62     39.73757459  8721389.54   1081.3145
   29 -6171.98335145     2.43580596   534597.62     40.04437995  8788725.53   1089.6631
   30 -6171.10306040     3.31609701   727799.17     40.92467100  8981927.08   1113.6170
   31 -6170.49628558     3.92287183   860970.85     41.53144582  9115098.76   1130.1282
   32 -6169.66682694     4.75233047  1043015.98     42.36090446  9297143.89   1152.6989
   33 -6168.14995606     6.26920135  1375930.66     43.87777534  9630058.57   1193.9751
   34 -6165.59036559     8.82879183  1937695.83     46.43736582 10191823.74   1263.6251
   35 -6163.56800674    10.85115068  2381552.30     48.45972467 10635680.21   1318.6563
   36 -6161.38603842    13.03311899  2860438.99     50.64169298 11114566.90   1378.0307
   37 -6159.29154595    15.12761147  3320126.95     52.73618546 11574254.86   1435.0247
   38 -6149.07868623    25.34047119  5561590.57     62.94904518 13815718.49   1712.9308
   39 -6136.75750808    37.66164934  8265776.60     75.27022333 16519904.52   2048.2071

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.04220010 -0.28714385  0.20411701 -0.26403546  0.47574494 -0.08326088 -0.08561472 -0.02144305
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.02329788 -0.01269001  0.21827275 -0.07574767 -0.19563627 -0.15442960 -0.17083015  0.27147519
                           0.01578696 -0.08638039  0.02917019  0.28364851  0.03289764  0.01597711 -0.09974928  0.00354495

   3    1  |1 1>+          0.10633978  0.04705537 -0.13500025  0.10041021  0.22343270  0.11446667  0.19110518  0.26907658
                           0.02147534  0.00532938  0.00817710 -0.00476505  0.03238799  0.34622216 -0.13789047  0.07507759

   4    1  |1 1>+         -0.02798350  0.45348131 -0.01743849 -0.00968792  0.23507525  0.13242985 -0.19135171  0.02288065
                           0.03337811 -0.06732915 -0.08670756  0.24999589  0.11965974 -0.06814419  0.01135643  0.02706593

   5    1  |1 1>+         -0.00036296 -0.24389354 -0.26688397 -0.03743064 -0.01576742  0.07809365  0.10829705 -0.07291050
                          -0.00162701  0.03703252  0.26327269  0.43977896  0.14776934 -0.09600765 -0.02154094  0.02823722

   6    1  |1 1>+          0.10144130  0.05052758  0.15509322 -0.03136341 -0.03390805  0.05994299  0.12853344  0.15307652
                           0.04355571 -0.01541747 -0.06623998 -0.02271827 -0.04762687 -0.00782277  0.09976082 -0.03731845

   7    1  |1 1>+          0.17840572 -0.01054427  0.10322102 -0.04007292 -0.02640329  0.10742226  0.17688141  0.11746798
                           0.10809443  0.01965076 -0.04792574  0.06805366  0.03249315 -0.14147957 -0.02873941 -0.03410331

   8    1  |1 1>+         -0.27304457 -0.04360585 -0.18568493  0.04621381  0.07675167 -0.04830207 -0.06256622  0.09659760
                          -0.14943527  0.00909182  0.02795142 -0.05866886  0.01565508 -0.05015354  0.00896580  0.11404891

   9    1  |1 1>+         -0.18913557 -0.03306409  0.01116290  0.00952383  0.04589107  0.01469295  0.02975513  0.23206384
                          -0.09281511 -0.00827317 -0.06014449 -0.01027262  0.01899074 -0.14146388 -0.00612411 -0.04443830

  10    1  |1 1>+          0.31458045 -0.09789836 -0.09847493 -0.01843544 -0.00759007  0.01893108 -0.05822218  0.16248720
                           0.16952423  0.09559606 -0.03126503 -0.08141131  0.03270241 -0.30879440  0.03006490  0.10325571

  11    1  |1 1>+          0.30911211  0.07984212  0.01251108 -0.04505938 -0.04403338  0.00044922 -0.08292679 -0.20739104
                           0.15643756  0.01099186  0.08164197  0.02254665 -0.01833568  0.09930511  0.01811789  0.03112464

   1    1  |1 0>           0.00163816  0.01018259  0.09265616 -0.00567695 -0.02952957 -0.19414184 -0.09415493 -0.13979229
                           0.01471136 -0.05297349 -0.00189437  0.11263448  0.03815656  0.17084973 -0.11612213 -0.11657646

   2    1  |1 0>           0.02709232  0.01514788  0.41200512 -0.10252920 -0.12431250 -0.10700170 -0.09899479  0.08626054
                           0.02226369 -0.12381563 -0.00016373  0.06929630  0.11417268  0.08172277  0.00868897  0.11540712

   3    1  |1 0>          -0.13377305 -0.04294279  0.01275918 -0.03821028 -0.09654452  0.04412122 -0.05643347 -0.10907345
                          -0.05314483  0.19422441 -0.10593380 -0.19926364  0.14848693 -0.22031658  0.38972797 -0.21233508

   4    1  |1 0>          -0.01257165  0.03507446  0.11787351 -0.04380108 -0.03028294  0.01278309 -0.12894837 -0.26878571
                          -0.01963516 -0.00369901  0.01355606  0.10322717 -0.12731050 -0.02551750  0.11188984 -0.13216901

   5    1  |1 0>           0.00765367  0.08627292  0.11071820  0.01930945  0.03927223 -0.02831533 -0.14931274 -0.22835527
                          -0.03067993 -0.01504946 -0.12581029 -0.40027157 -0.11764368 -0.09315658 -0.23771110  0.02790524

   6    1  |1 0>          -0.06072746 -0.01756405  0.03698621  0.04594944 -0.02038369 -0.08614924  0.07943331 -0.15485931
                          -0.01083846 -0.07061627 -0.03382153  0.08047982  0.03041564  0.07028879 -0.03144318 -0.17510272

   7    1  |1 0>          -0.12246962 -0.01012657  0.04424673 -0.00424193 -0.07353719 -0.02645175  0.08559394  0.03198999
                          -0.05897566 -0.14780939  0.00723127 -0.01848520  0.01970938  0.09932864 -0.12852826 -0.12571652

   8    1  |1 0>           0.21315500  0.02996987 -0.21006644  0.01881701 -0.01059723 -0.00309991 -0.08769548  0.02130406
                           0.10132611  0.17498134  0.00409319 -0.14238649  0.04818995  0.04016451  0.01349929  0.02657131

   9    1  |1 0>           0.18090756  0.01817223 -0.11456834  0.03768303 -0.05232668 -0.07308075 -0.05182352 -0.01319238
                           0.08396202 -0.00832369  0.02929956 -0.00320482  0.02761322  0.13489777 -0.01338793 -0.04693948

  10    1  |1 0>          -0.28729569 -0.00428853 -0.06535376 -0.00123876 -0.05056388  0.10610513  0.10550986  0.11637357
                          -0.15626978  0.08997888 -0.01279695 -0.04391862  0.02618674  0.18278505 -0.18746024 -0.02291337

  11    1  |1 0>          -0.28407097 -0.03378580  0.16435984 -0.03422219  0.07495691  0.04596873  0.06573020 -0.03556219
                          -0.14028412 -0.00667801 -0.00539506  0.05823463 -0.05216429 -0.13985526 -0.01188171  0.01615274

   1    1  |1 1>-         -0.10566395 -0.01027406  0.24089511  0.28784537  0.17245955 -0.08506415 -0.02889748  0.00808744
                           0.15473166  0.03207488  0.27109459 -0.01940069 -0.00253149 -0.08580890  0.25529737  0.18602101

   2    1  |1 1>-         -0.05756103 -0.03573826  0.06005379 -0.02993384 -0.06391970  0.24206624  0.09254057  0.05520253
                          -0.03405923  0.03765453 -0.07086456  0.01202116  0.16172572 -0.13147683  0.39890970 -0.07102084

   3    1  |1 1>-          0.09964696  0.00923946 -0.26851406  0.14485539  0.09156213 -0.12963783 -0.13111009  0.20743379
                           0.01689890  0.10901276  0.04232761 -0.03204957 -0.07832225 -0.01938335  0.10176570 -0.09172795

   4    1  |1 1>-          0.13621664  0.02494491  0.06524538  0.17959735  0.02073064 -0.15710773 -0.11228244 -0.14404758
                          -0.26787434  0.02917087 -0.14756451 -0.04282014  0.31024481 -0.24308180 -0.17289325  0.05016578

   5    1  |1 1>-         -0.07389646 -0.01482379  0.03550560 -0.10409443 -0.09214770  0.00527188  0.05357670  0.11342717
                           0.13854297 -0.03604058  0.13684473 -0.25094036  0.47880489  0.11747737 -0.07078663  0.00266171

   6    1  |1 1>-         -0.02451640  0.02301571  0.07777048 -0.06273085 -0.02224858 -0.02454675  0.08324433 -0.08540147
                          -0.04706322  0.14160294 -0.04484543  0.10689640 -0.14183912 -0.02744582 -0.04532990  0.13868651

   7    1  |1 1>-         -0.07766894 -0.00090952  0.15389038 -0.02164461 -0.05280536  0.01516713  0.06401059 -0.02315002
                          -0.02602798  0.23380870 -0.04219197  0.13930963  0.07424465  0.13639055 -0.04503786  0.01902519

   8    1  |1 1>-          0.08760835 -0.02017957 -0.12156204  0.06664789  0.03879770 -0.10681422 -0.01850343  0.00020621
                           0.05872340 -0.34550086  0.04164092 -0.00463283  0.03616588  0.03771864  0.06677889  0.08319470

   9    1  |1 1>-          0.00885810 -0.02552363  0.08190944  0.05261499 -0.00985032 -0.03765420  0.01639456  0.02343748
                          -0.01097013 -0.20382176 -0.02072266  0.07475219  0.04985642  0.03992772  0.06764901  0.05643028

  10    1  |1 1>-          0.04935012  0.03850106 -0.02285075  0.01519620 -0.01903117 -0.24979102 -0.15970517  0.04610284
                           0.01080427  0.33477146  0.01953810  0.04854253  0.10741531  0.19276375  0.14465545 -0.15825351

  11    1  |1 1>-          0.00755239  0.03913311 -0.01325613 -0.04301139 -0.00205579  0.17022790 -0.04078587  0.05853802
                          -0.04512708  0.31382676  0.03111010 -0.08387744 -0.00205300 -0.05086064 -0.04143293  0.31350827

   1    1  |0 0>           0.00002565 -0.00004201  0.00016394 -0.00013740  0.00009838  0.00002494 -0.00011107  0.00025954
                          -0.00001246 -0.00001124  0.00017829  0.00003218 -0.00004639  0.00007253 -0.00008460 -0.00028897

   2    1  |0 0>           0.00000338  0.00006142  0.00000247 -0.00005072  0.00000720  0.00001855 -0.00001556  0.00002866
                           0.00000359  0.00000526  0.00003465 -0.00009936 -0.00005455 -0.00010242  0.00001176 -0.00015371

   3    1  |0 0>           0.00000310  0.00002670  0.00015915 -0.00010494  0.00002130 -0.00026044  0.00047702 -0.00012610
                           0.00005701  0.00001822 -0.00008055 -0.00028759 -0.00015897 -0.00005241 -0.00002710 -0.00007815

   4    1  |0 0>          -0.00003003  0.00006096 -0.00000548  0.00000253 -0.00011324 -0.00008847  0.00016075 -0.00014801
                          -0.00000949 -0.00000177 -0.00002583  0.00005724  0.00003398 -0.00026479  0.00004817 -0.00049255

   5    1  |0 0>           0.00002181 -0.00005915  0.00007374 -0.00009592  0.00024449  0.00008496 -0.00013494 -0.00021737
                           0.00000359  0.00000788  0.00002777  0.00004017 -0.00000018 -0.00020942 -0.00011736 -0.00018566

   6    1  |0 0>          -0.00001247  0.00005855 -0.00005247  0.00004791 -0.00010938  0.00027250 -0.00032598 -0.00115332
                          -0.00003597  0.00000559  0.00016310 -0.00021051 -0.00009385  0.00023932  0.00061825 -0.00005073

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.11643797  0.03763254  0.11709280 -0.04388303  0.12353205  0.03814629 -0.13533066  0.00188232
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.16568503 -0.09837316  0.21459839 -0.02485638 -0.13457791  0.06285002 -0.10204929  0.00022454
                          -0.08733349  0.04836668 -0.09614167  0.11332961 -0.03006353 -0.04037837  0.04584443 -0.00095186

   3    1  |1 1>+          0.05363868 -0.08380373  0.03915581 -0.12756255 -0.11548625  0.09115982  0.01236277  0.00155500
                          -0.05551891  0.07534836  0.20427090 -0.06870532 -0.13356120 -0.09500250  0.04255706 -0.00107322

   4    1  |1 1>+         -0.01353993  0.03774697 -0.01900977 -0.11357724  0.10781197 -0.05059124 -0.02408877  0.00028196
                          -0.01562917 -0.09419104  0.01156847  0.02262773  0.12795341  0.01603958  0.11773108 -0.00112123

   5    1  |1 1>+         -0.04593569 -0.03119379 -0.05670667  0.03361141  0.04361924 -0.02155087 -0.05389082 -0.00091970
                           0.08977870 -0.00918724  0.03278225 -0.03265318  0.09132465 -0.10282192 -0.01582834 -0.00016929

   6    1  |1 1>+         -0.00212040  0.01399572 -0.11472430  0.05858203 -0.07898880  0.08634347 -0.05551263  0.00026919
                           0.25364744  0.23624306 -0.01573371 -0.13485414  0.43667106 -0.12508948  0.08748923 -0.00039664

   7    1  |1 1>+         -0.09961731  0.01144732 -0.02332470  0.02212758  0.10987035  0.18872853  0.11040787  0.00341531
                           0.16548954 -0.11969766 -0.10499633  0.29972491 -0.07108724  0.19063036 -0.17927008  0.00110816

   8    1  |1 1>+          0.08442419  0.05196474 -0.16168676 -0.11832648  0.03710400  0.10513552  0.10456266  0.00170844
                          -0.12730842  0.32901053 -0.23578726  0.12332781  0.08256123  0.03472428 -0.04826999  0.00436777

   9    1  |1 1>+         -0.19893134  0.00363234  0.07230834  0.08127961  0.08589983  0.02202320  0.08170271  0.00451886
                           0.01396074 -0.22784178 -0.15618283 -0.39684714 -0.06444513 -0.11421490  0.05365688  0.00651262

  10    1  |1 1>+         -0.07452587  0.01402324 -0.08758762 -0.21535266 -0.11486442 -0.05925889 -0.07615555 -0.00271465
                          -0.28267819  0.01108870 -0.04504188 -0.11561127  0.02690010  0.10668211  0.02057872 -0.00225595

  11    1  |1 1>+          0.11492298  0.03952371 -0.04262080  0.05660466  0.16297645 -0.05022579  0.16645050  0.00474690
                          -0.00474778  0.16476106 -0.21728758 -0.16817563 -0.13841518 -0.20194264  0.07113679  0.00910119

   1    1  |1 0>          -0.01079170  0.25135440  0.24769730 -0.03148686 -0.09604509 -0.03627744  0.26647166 -0.00182271
                           0.03839442  0.02229756 -0.01717149 -0.10522743 -0.17052604 -0.00844740 -0.20680233 -0.00859454

   2    1  |1 0>          -0.01369209 -0.20559859  0.09405125 -0.04141957  0.11739727  0.04245843  0.01092213  0.00047459
                          -0.17579245 -0.09694506 -0.07934502  0.18939253 -0.06157508 -0.03012044  0.09498669 -0.00260552

   3    1  |1 0>           0.10881555 -0.04765228  0.07308488 -0.01795616 -0.01778141  0.07939044 -0.02171106  0.00230331
                          -0.07217475 -0.14700812 -0.08721127  0.08540722 -0.10587635 -0.05042810  0.02455706 -0.00479600

   4    1  |1 0>          -0.08292814 -0.15547848 -0.07223103  0.09731509  0.24677660 -0.02038888 -0.11685056 -0.00377635
                          -0.12728443  0.04014449  0.21474271 -0.16180911  0.16588786  0.21726476 -0.15534886  0.00026110

   5    1  |1 0>          -0.27616974  0.06235356 -0.06835872  0.01855431 -0.01298281 -0.06839728  0.02876292  0.00200479
                          -0.05551663 -0.02676702 -0.09645294 -0.01276617 -0.09577224 -0.07003994 -0.01290614  0.00290532

   6    1  |1 0>          -0.03031729  0.05909304  0.21864084 -0.03166718 -0.22720261 -0.13047815 -0.12367775  0.01193207
                           0.05884877 -0.02171483 -0.00304912  0.08950866  0.13746396  0.17912571  0.03719819  0.01330550

   7    1  |1 0>           0.04185076  0.06895283 -0.15715295  0.03477763  0.03032140 -0.01066246 -0.24938650 -0.01482495
                          -0.05345234 -0.02864562 -0.14393831  0.05850358 -0.20028984  0.19160580  0.32669030 -0.00405906

   8    1  |1 0>          -0.00239097  0.06184584  0.15113022  0.01576735  0.19048895 -0.16113049  0.14424278 -0.01330442
                           0.03413379  0.02871520 -0.01400657  0.11204844 -0.13606892  0.27772075  0.07328713 -0.00033893

   9    1  |1 0>          -0.00817592 -0.09169053 -0.07237239  0.11672240 -0.03541858  0.18338147  0.03575837 -0.00215916
                          -0.11796079 -0.06714569  0.05138130 -0.10497669 -0.09156589 -0.12880229 -0.13860935 -0.00539251

  10    1  |1 0>          -0.05732089 -0.22444307 -0.04506561  0.08577723  0.16173086 -0.02259128  0.17519712  0.00335199
                          -0.02453422  0.03672744  0.11344975  0.05988554 -0.15816426  0.12188544 -0.18825051  0.00353549

  11    1  |1 0>           0.00037758  0.15997561 -0.04314948  0.04181740  0.00640262  0.08875949  0.22482304 -0.01380836
                           0.19070114 -0.00940300  0.00006842  0.02825529  0.08931282  0.01351230 -0.09190627 -0.00472439

   1    1  |1 1>-         -0.10809613 -0.10154350 -0.12614446  0.01589125 -0.11380278 -0.05324082  0.13038053 -0.00208514
                           0.13829198  0.00529723 -0.00062005  0.02374069 -0.05144709 -0.01141069  0.00968083 -0.00100450

   2    1  |1 1>-          0.24922257  0.01278178  0.15315931 -0.04359472  0.00618295 -0.07070920  0.11932690  0.00094416
                          -0.06879967  0.07564471  0.22645503  0.01297881 -0.13485068 -0.08255038 -0.09578665  0.00400529

   3    1  |1 1>-          0.28360696  0.14685483 -0.02597983  0.12391739 -0.08032770 -0.04562042 -0.07060844  0.00177032
                           0.28335763 -0.16326410 -0.11907371  0.05670873 -0.06131463  0.08719694  0.02418325  0.00090617

   4    1  |1 1>-          0.12042540 -0.06922189 -0.06027911  0.03653738 -0.04171519  0.05301556 -0.01712523  0.00019380
                           0.13570579  0.00310134  0.11369650 -0.04589682 -0.00470915 -0.04536851 -0.08304211  0.00116661

   5    1  |1 1>-          0.04290708  0.11221084 -0.02552613 -0.06613495  0.07137056 -0.03135646  0.02084176 -0.00232033
                           0.06018443 -0.09392697 -0.11773384  0.05635267  0.05880847 -0.09514384  0.09499149 -0.00069691

   6    1  |1 1>-          0.11844077  0.26089650  0.00388417 -0.14833955 -0.14735283  0.15722775  0.24573847 -0.00543835
                          -0.05316326 -0.17387737 -0.09086949  0.01744161  0.05438827 -0.31030152  0.06372191  0.00238922

   7    1  |1 1>-          0.12687809  0.07422334 -0.12221121  0.00410420 -0.11808994 -0.16398226  0.07269819  0.00036217
                           0.04653266  0.03686171 -0.08680961 -0.28800260  0.03527030  0.46461740 -0.03784075 -0.00144907

   8    1  |1 1>-          0.02989010  0.04028087  0.28653358  0.16491875 -0.05137767  0.04440512  0.29761067 -0.00416807
                          -0.09724102 -0.02064690 -0.00008415 -0.11246394  0.25958200  0.14892282 -0.12613042  0.00033657

   9    1  |1 1>-         -0.05646910  0.45848621 -0.23391202  0.19666309 -0.01403084 -0.04774122 -0.22798003  0.00688225
                          -0.16158810 -0.00873512  0.14217592  0.01174238 -0.08753792  0.02418104 -0.03836408  0.00087568

  10    1  |1 1>-         -0.26294502  0.12828549  0.12665230 -0.05698589  0.06521883  0.12903873  0.02864653  0.00074912
                          -0.06897975  0.03691832  0.12947762  0.01764299  0.10383196 -0.03987642 -0.12950530  0.00169944

  11    1  |1 1>-          0.01480344 -0.00365661  0.18003868  0.40438130  0.04990857 -0.03604756 -0.04699779  0.00180089
                          -0.09568111  0.00448641  0.04843161  0.10028950  0.11369140 -0.01387406  0.02678100 -0.00160061

   1    1  |0 0>           0.00067675 -0.00030191  0.00016343  0.00011348  0.00055673  0.00303926 -0.00139307  0.47180714
                          -0.00026813 -0.00070906 -0.00104585 -0.00018378  0.00162944  0.00112606  0.00010642 -0.12674554

   2    1  |0 0>           0.00013917  0.00003752 -0.00110517  0.00037579  0.00204250  0.00258555  0.01043696  0.47328876
                           0.00020514  0.00059377  0.00126041  0.00019582 -0.00048431  0.00136961  0.00879300  0.03888577

   3    1  |0 0>           0.00029075  0.00004333  0.00021863  0.00020648 -0.00113286  0.00035920  0.00003418 -0.18524176
                          -0.00003526 -0.00007331  0.00069508 -0.00054131  0.00083372  0.00096873  0.00018863 -0.05421188

   4    1  |0 0>          -0.00012361 -0.00004478 -0.00008735  0.00104686 -0.00051126 -0.00100004  0.00170454  0.11082836
                          -0.00030179 -0.00029933 -0.00042041  0.00116533  0.00108208  0.00133078 -0.00286851 -0.29411417

   5    1  |0 0>          -0.00005550  0.00052515  0.00012651 -0.00026466  0.00066975 -0.00132047 -0.00031790 -0.05084755
                           0.00019010 -0.00057011  0.00041697 -0.00011258  0.00055980  0.00006635 -0.00176049  0.62902387

   6    1  |0 0>           0.00034420 -0.00009445 -0.00209481  0.00018853  0.00072142 -0.00023504 -0.00201845 -0.00278987
                           0.00008811 -0.00132183 -0.00111375 -0.00097188  0.00220287  0.00058265 -0.00578191  0.00096458

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00053798  0.00072468  0.00045853  0.00201196 -0.00255572 -0.04666905  0.04244781 -0.04601383
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00082498 -0.00001342 -0.00030931  0.00015746 -0.00115853 -0.02037343  0.00484218  0.09055908
                          -0.00008378 -0.00003310 -0.00071421 -0.00032613 -0.00066735 -0.01230841  0.01501336 -0.01325408

   3    1  |1 1>+          0.00044634 -0.00001295 -0.00023231 -0.00112936 -0.00111217 -0.01935875 -0.00060291  0.02298453
                          -0.00034798 -0.00012365 -0.00028763  0.00030667 -0.00112042  0.00090601 -0.04978352  0.06962562

   4    1  |1 1>+         -0.00113625  0.00019372 -0.00014969  0.00077972 -0.00261624 -0.03227799  0.00133789  0.01986865
                           0.00017563 -0.00050637 -0.00032851 -0.00197889  0.00036273 -0.00096014  0.00574230  0.00768900

   5    1  |1 1>+          0.00019196  0.00006545  0.00019512  0.00034539 -0.00011444  0.01455952  0.00216983 -0.00287773
                           0.00014371 -0.00022285  0.00012671 -0.00013624  0.00233371  0.02105977  0.02762696 -0.11324961

   6    1  |1 1>+         -0.00079739 -0.00003732 -0.00060059  0.00035520 -0.00070198 -0.02113197  0.03499294  0.08375022
                           0.00140002 -0.00174670  0.00057773 -0.00320037  0.00172630  0.01828272  0.06116125 -0.08013174

   7    1  |1 1>+         -0.00128890 -0.00058654  0.00066432  0.00132136 -0.00038571 -0.03865201 -0.08862705 -0.13506351
                          -0.00105102  0.00173480 -0.00034225  0.00372063 -0.00598599 -0.09198121 -0.03059540  0.44014135

   8    1  |1 1>+         -0.00099421 -0.00103310  0.00022283 -0.00009700  0.00557261  0.02032750  0.04529547 -0.02748806
                          -0.00021682  0.00054923 -0.00081908  0.00100809 -0.00674555 -0.10542166  0.00191601  0.28668191

   9    1  |1 1>+         -0.00124652 -0.00029271  0.00058676 -0.00123293  0.00393335 -0.04470025  0.10341370  0.03134574
                          -0.00032304  0.00124155 -0.00139225  0.00063322 -0.01303001 -0.19034719  0.01687982  0.18044063

  10    1  |1 1>+          0.00092189 -0.00020870 -0.00056786  0.00076167  0.00091909  0.06421629 -0.00767091  0.01541901
                          -0.00009922 -0.00091044  0.00065962 -0.00111830  0.00533438  0.07443175 -0.01728100 -0.12266969

  11    1  |1 1>+         -0.00135698 -0.00057635  0.00090598 -0.00251454  0.00660159 -0.03174171  0.15048059  0.02540379
                          -0.00049707  0.00162998 -0.00225875  0.00089176 -0.01606040 -0.23139506  0.00366412  0.23193744

   1    1  |1 0>          -0.00273934  0.00004189 -0.00053755 -0.00154758 -0.01180848 -0.08991700 -0.43058918  0.00817033
                          -0.00133196 -0.00095275 -0.00005465  0.00201478  0.00883930  0.07132090  0.11822410 -0.05695919

   2    1  |1 0>           0.00133475  0.00032083 -0.00015176 -0.00015666 -0.00162203 -0.03424811  0.11207809  0.23123637
                           0.00276571 -0.00028426  0.00008736 -0.00226983  0.00297921  0.10194423 -0.07930173  0.02005741

   3    1  |1 0>          -0.00084400 -0.00030920  0.00011600  0.00128121 -0.00803756 -0.07097206 -0.11040351 -0.04811257
                          -0.00001310 -0.00092453 -0.00004598 -0.00070354  0.00249648  0.06310674 -0.06474874  0.06601384

   4    1  |1 0>           0.00037915 -0.00026197  0.00002042  0.00113566 -0.00046257  0.05301851 -0.05055616  0.07812471
                          -0.00097907  0.00142145  0.00041858  0.00052706  0.00078572 -0.01498233  0.11371389 -0.02222004

   5    1  |1 0>           0.00059222 -0.00038590 -0.00004968 -0.00077360  0.00255203  0.00008423  0.09182888 -0.07866496
                          -0.00011156  0.00024939 -0.00017432  0.00041488 -0.00346055 -0.02680946 -0.01964384 -0.03702633

   6    1  |1 0>           0.00218773 -0.00076928 -0.00087334  0.00152492  0.01154621 -0.00325490  0.52456283  0.04793083
                          -0.00010765  0.00058144 -0.00028711  0.00225429 -0.02592402 -0.24431728 -0.29005473  0.06112021

   7    1  |1 0>           0.00036851 -0.00055373  0.00085641  0.00174257  0.01366196  0.32930889 -0.19117554 -0.08332133
                          -0.00185930 -0.00081402 -0.00032931 -0.00625548  0.01806166  0.12823903  0.11558897  0.16507767

   8    1  |1 0>           0.00395110 -0.00074758 -0.00167919 -0.00436770  0.01604493  0.27738495  0.13696524  0.43294393
                           0.00251092  0.00020682  0.00043614 -0.00241879  0.01247896  0.17345167  0.03925493 -0.02866358

   9    1  |1 0>           0.00551666 -0.00138229  0.00209773 -0.00109161 -0.00385176  0.04752948  0.32123640 -0.28713593
                           0.00358904 -0.00086842  0.00207516  0.00101458  0.01799810  0.46370515 -0.26070053  0.11241602

  10    1  |1 0>          -0.00078695 -0.00038787 -0.00048818 -0.00227652 -0.00279279 -0.10646026  0.09150567 -0.08473437
                           0.00174426  0.00039258  0.00056344  0.00226742 -0.00271385 -0.03227268  0.02543995 -0.12071250

  11    1  |1 0>           0.00683322 -0.00191673  0.00025813 -0.00514574  0.00916180  0.25692494  0.21195283  0.18626509
                           0.00370583 -0.00033456  0.00201917 -0.00048960  0.02231595  0.42999770 -0.08095188  0.00130364

   1    1  |1 1>-          0.00077129 -0.00036272 -0.00046003 -0.00194404  0.00091979  0.04418862 -0.06160133 -0.00673624
                          -0.00045406 -0.00012252  0.00006847  0.00007837  0.00133648  0.01893335 -0.01773161 -0.04472691

   2    1  |1 1>-          0.00036066 -0.00034600 -0.00000288 -0.00146447  0.00366554  0.01746287  0.02768226 -0.00118364
                          -0.00115419  0.00111089 -0.00098233  0.00189222 -0.00575216 -0.07803949 -0.00629021  0.10728141

   3    1  |1 1>-         -0.00058213  0.00051589 -0.00034621  0.00104585 -0.00132539 -0.02894588  0.01669476 -0.01140734
                           0.00042956  0.00016815 -0.00032324 -0.00032497 -0.00301355 -0.04268163 -0.00058584  0.00376635

   4    1  |1 1>-          0.00049681 -0.00021509  0.00032670 -0.00033080  0.00205118  0.02121080  0.01529727 -0.05435668
                          -0.00000280  0.00075781  0.00018374  0.00134572 -0.00061620 -0.01007032  0.01680672  0.04834947

   5    1  |1 1>-          0.00031992  0.00000978 -0.00003072 -0.00053084 -0.00009047  0.01172824  0.01084765  0.00495568
                           0.00051753 -0.00125232 -0.00001988 -0.00115874  0.00361064  0.04394875  0.02651254 -0.13270069

   6    1  |1 1>-          0.00323229 -0.00136528  0.00071864 -0.00365469  0.00892802  0.12136897  0.03233829 -0.08554496
                          -0.00004558 -0.00121863  0.00006107  0.00130368  0.00375042  0.06645605 -0.00925637 -0.04746592

   7    1  |1 1>-          0.00005188  0.00056410 -0.00019741  0.00151438 -0.00011081  0.01132368 -0.01004685 -0.01606028
                           0.00019592  0.00031850  0.00229378 -0.00003550 -0.00128028  0.01742088 -0.04522634  0.14413310

   8    1  |1 1>-          0.00092813 -0.00079486  0.00060969 -0.00155585  0.00544879  0.06054471 -0.04165073 -0.00741764
                           0.00054963 -0.00006553  0.00235399  0.00201261  0.00238477  0.05312188  0.05436637  0.13667895

   9    1  |1 1>-         -0.00058748  0.00046342 -0.00017165  0.00221556 -0.00369439 -0.06686181  0.04683537 -0.06171446
                          -0.00015320  0.00090963 -0.00072257  0.00088051 -0.00610029 -0.07285867 -0.07959437  0.05028210

  10    1  |1 1>-         -0.00000245 -0.00039149  0.00063515 -0.00017537  0.00223904  0.00466254 -0.00535024 -0.02028827
                          -0.00046273  0.00068123 -0.00001412  0.00176880 -0.00218576 -0.02526376  0.01397339  0.08545695

  11    1  |1 1>-         -0.00132297  0.00021404 -0.00025304  0.00060663 -0.00461603 -0.07525440 -0.00237525  0.02814751
                           0.00074507 -0.00021257  0.00018564 -0.00034802  0.00030323  0.00211264  0.02510593 -0.01817299

   1    1  |0 0>          -0.29517371  0.11912431 -0.49036018 -0.43817313  0.00229193  0.01650436  0.00204505 -0.00096259
                          -0.24212738  0.34761346 -0.21829467  0.00115964  0.00229868  0.00920816  0.00727708 -0.00128830

   2    1  |0 0>          -0.06921318  0.10274446  0.02474990  0.71300680  0.00143543  0.01663406  0.00133913  0.00263163
                          -0.21275415 -0.05709227 -0.18732132  0.40707150  0.00251689  0.01376357  0.01084406 -0.00392605

   3    1  |0 0>          -0.47881832 -0.14151840  0.24812692  0.04672032 -0.00023802  0.00131294  0.00041683 -0.00098686
                           0.51515118  0.32577768 -0.50180293  0.16217132 -0.00112009 -0.00252735 -0.00734600 -0.00326947

   4    1  |0 0>           0.15531397  0.64343262  0.46324367 -0.22118821  0.00157169  0.00608101  0.00518894 -0.00158251
                          -0.04765264 -0.23309217 -0.36371724 -0.10256525 -0.00001413 -0.00699598  0.00366665 -0.00028349

   5    1  |0 0>          -0.52966662  0.41111204 -0.09053880  0.02700360 -0.00208181 -0.00443042 -0.00786843  0.00081782
                           0.04912944 -0.29599178  0.08770379 -0.21221748  0.00136869  0.01819929 -0.00778925  0.00140509

   6    1  |0 0>           0.00010822 -0.00038776  0.00027530  0.00029453  0.71336701 -0.05171750 -0.00505369  0.00381742
                           0.00065731  0.00000726  0.00021795  0.00007093  0.69795864 -0.02602029 -0.02171003 -0.00111267

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.13972011 -0.02601696 -0.04021307 -0.10462632  0.07564050 -0.07394533  0.08224357  0.04738687
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.09502192 -0.13991927  0.05451720  0.13510375 -0.20942173  0.12298068  0.25946243  0.05444944
                          -0.17711134 -0.02575175  0.05140384  0.03441380  0.15166795 -0.01710918  0.04100388  0.18249528

   3    1  |1 1>+          0.17601635  0.09150021  0.07719182  0.07073884 -0.00491610  0.26934560  0.01644799  0.13100375
                          -0.11176249  0.00646830  0.05718967 -0.07391336  0.04658528  0.06372792 -0.09981799  0.08503126

   4    1  |1 1>+         -0.19558353 -0.06697108 -0.05469006 -0.03037761 -0.03725881  0.05003574 -0.02279069  0.02047674
                           0.07294807 -0.10923517 -0.03896173 -0.07899675 -0.00888287  0.09514416 -0.00920402  0.07382325

   5    1  |1 1>+          0.00751490  0.00461868 -0.06064611 -0.07800136  0.04930842  0.03697964 -0.05598225  0.04767842
                          -0.00695438  0.03744076 -0.05402829  0.02076249 -0.11139839 -0.02664170 -0.09199790 -0.13910216

   6    1  |1 1>+          0.03995723 -0.11877584 -0.28907761 -0.19448971 -0.02537850  0.13451301  0.11767641 -0.02805887
                           0.11739019 -0.00489994  0.31773541  0.18978749 -0.21328486  0.05795953 -0.01244484 -0.14334898

   7    1  |1 1>+         -0.17032600  0.01130008 -0.00907936  0.17414101  0.07280683  0.08038209 -0.04101290 -0.23831659
                          -0.13482387  0.17865849  0.06542936 -0.10374921 -0.04869677  0.00832719 -0.12833609 -0.02865223

   8    1  |1 1>+         -0.04398837 -0.06079894 -0.03039434 -0.03036014 -0.11701503  0.12213137  0.19298059  0.05382020
                          -0.05873222  0.13208383  0.13738831 -0.16988946 -0.29330041 -0.05056118  0.20350013  0.05453485

   9    1  |1 1>+          0.20816618 -0.09735172  0.02473771 -0.34505511  0.02466618  0.16528703 -0.17932569 -0.21843130
                          -0.14547857 -0.00890483 -0.08938080  0.12112326  0.21599863  0.07435318 -0.03127140  0.08593084

  10    1  |1 1>+          0.01753460  0.03491361  0.11253435 -0.09922630 -0.15658433  0.18391551 -0.12590699  0.03859651
                           0.11027682 -0.04458545  0.11488567 -0.12019980  0.02397235 -0.03346504  0.15709593  0.19892605

  11    1  |1 1>+          0.17814747 -0.11036924  0.03321284 -0.19382104 -0.00608579 -0.04074799  0.14311354  0.10968743
                          -0.17151021  0.00871001 -0.23669334 -0.05254734 -0.10451020 -0.09761194  0.07512093 -0.11407365

   1    1  |1 0>           0.11455354 -0.23040867 -0.13141697 -0.01317018 -0.07604574  0.10284486 -0.01045759 -0.06929466
                           0.11548133 -0.17789726  0.04182405 -0.08364778 -0.19839136 -0.13277798 -0.07593682  0.01173648

   2    1  |1 0>           0.04080667 -0.00119827  0.09319705 -0.05862671  0.10691484 -0.01498485 -0.10304965 -0.02452635
                           0.14474428  0.13229227  0.09038138  0.08287893  0.00160782  0.01195436  0.17097582 -0.31350238

   3    1  |1 0>           0.02653810 -0.04319350 -0.01796994 -0.05713573 -0.07693164  0.28161477 -0.09071355  0.03877409
                           0.12929178 -0.05798423  0.04265356  0.10435741 -0.10712447 -0.19279894 -0.07474333 -0.07766389

   4    1  |1 0>           0.03881138  0.14776661 -0.22353624  0.08465964 -0.08899297  0.29639095  0.16983642 -0.20990561
                          -0.26330067 -0.02276210 -0.02233860 -0.18773177  0.19705404 -0.05012501  0.20181653 -0.04399958

   5    1  |1 0>           0.00841284  0.02950949  0.01479318  0.07442677 -0.05618670 -0.04085176  0.27236077  0.01459521
                           0.12442465  0.00375567  0.02638248  0.08189077 -0.04064443  0.17630727  0.02394585  0.12652064

   6    1  |1 0>           0.14652809  0.08157764 -0.16577742  0.06914073 -0.18424167  0.01383200 -0.07290446 -0.10645325
                           0.15392324  0.00844526 -0.10019111 -0.07508114 -0.13776804 -0.16592799 -0.14791334  0.14051571

   7    1  |1 0>           0.02660858  0.23276993 -0.28022458 -0.12930231 -0.13464305 -0.01022987 -0.03462711  0.12043354
                          -0.17165480 -0.12901472 -0.03683013  0.25163339 -0.07624124 -0.00582086 -0.10305571  0.06025896

   8    1  |1 0>           0.17240168 -0.01168897 -0.17678369 -0.04191992  0.14004188  0.07725421 -0.05057608  0.04726574
                          -0.04178543  0.09484261  0.10743136 -0.07534851 -0.02782841  0.00012548 -0.07063655 -0.05947340

   9    1  |1 0>          -0.20898535 -0.12313939 -0.07572611 -0.01975987 -0.20438888  0.10648044 -0.00561401 -0.04239272
                          -0.07860015 -0.24251019 -0.00628152  0.05119656 -0.01727117 -0.06559188  0.04491964 -0.14117306

  10    1  |1 0>          -0.00950800 -0.17836690 -0.24745885 -0.13086023 -0.11180806  0.04895375 -0.00327536  0.16005317
                           0.25200462  0.17813203  0.02886458 -0.05013240  0.19523672 -0.09457112  0.07683103 -0.00685775

  11    1  |1 0>           0.06709476 -0.17737729  0.14606088 -0.02267896  0.11561754 -0.09532271  0.01268923  0.04608419
                          -0.19857275 -0.14008582 -0.01722663 -0.08514134 -0.01230554  0.08140476  0.02441101  0.16717364

   1    1  |1 1>-          0.13583516  0.06247187  0.07022582  0.10447467 -0.08960856  0.15223022  0.02134897  0.03837015
                          -0.02471980 -0.03369523 -0.05401360 -0.06137009 -0.02674643 -0.04637911 -0.18794590  0.07465645

   2    1  |1 1>-          0.09176349  0.13291867 -0.10369533  0.00409802 -0.12421778 -0.27882581  0.07026131  0.19028881
                          -0.02382650 -0.15165145 -0.06170735  0.00831004  0.02043413  0.12904909  0.19095636  0.09747355

   3    1  |1 1>-          0.00145142 -0.11568270 -0.11844734  0.07749296  0.05774675 -0.13472111  0.25267116 -0.20189054
                           0.08679550 -0.14120425  0.03674010  0.02750051  0.29425439 -0.00348939  0.17833920 -0.07862053

   4    1  |1 1>-          0.13027294  0.05938614 -0.03650756  0.02084612  0.03573931  0.08281542  0.05133948  0.27759570
                          -0.06361930  0.10792555  0.03186289  0.04016509  0.06169427  0.04618498 -0.16268877 -0.16716576

   5    1  |1 1>-         -0.10548189  0.01347189 -0.09512543 -0.01998611  0.04328222  0.10910511  0.10190726 -0.21089227
                           0.06878440 -0.01817367 -0.13656545 -0.11188438  0.01967296 -0.00287540  0.06586618  0.04704781

   6    1  |1 1>-          0.05373196  0.37786412 -0.29152482  0.03902336  0.13462079  0.17282114  0.04513727 -0.00662129
                           0.10547153  0.18677184 -0.01316032 -0.13265301  0.23720226 -0.11684455  0.10747665  0.00547963

   7    1  |1 1>-         -0.14084036  0.10632061  0.34344108 -0.14271856  0.08158257  0.10988163  0.08345158  0.09789836
                           0.22615094 -0.09741727 -0.00963708  0.01318410  0.04620849 -0.07738306  0.09309665 -0.09550115

   8    1  |1 1>-         -0.17578971  0.27538892  0.03851675 -0.07369655  0.01006912  0.01718822  0.07100733  0.05575898
                           0.08782045  0.13579443 -0.04885377  0.33912149  0.03633782 -0.01549528  0.03923030  0.14537954

   9    1  |1 1>-          0.13781383 -0.19793846 -0.06041991  0.17103889  0.34152756  0.14925797 -0.21472022  0.13259173
                           0.01681390 -0.00273198  0.03815253  0.02016679 -0.05068748 -0.09580816  0.29443727  0.09422282

  10    1  |1 1>-         -0.01526132  0.03766654 -0.08140989 -0.05757411  0.00097756 -0.13002673 -0.19052964  0.02217236
                          -0.08312134  0.09077192  0.13572244  0.07751205 -0.08400818  0.26983012  0.02056833  0.20131918

  11    1  |1 1>-         -0.04764826 -0.13301816 -0.03631498  0.16133474  0.07109905  0.14910001  0.08638846  0.03722839
                          -0.07082776  0.02164765 -0.16340359  0.35524454 -0.07278472 -0.23544321 -0.05102435  0.18513413

   1    1  |0 0>          -0.00100625  0.00151211  0.00041864 -0.00028313  0.00004243 -0.00031825 -0.00031911 -0.00031666
                           0.00083090 -0.00021983 -0.00110558  0.00002980 -0.00025095 -0.00053954  0.00029035 -0.00046690

   2    1  |0 0>           0.00181999 -0.00119607  0.00044058  0.00041988 -0.00101812 -0.00004498 -0.00000602  0.00019291
                          -0.00079017 -0.00011078  0.00011549  0.00051835  0.00099536  0.00014542  0.00013842 -0.00009879

   3    1  |0 0>          -0.00004265  0.00162544  0.00033573 -0.00040355  0.00039530  0.00049286  0.00037164 -0.00026733
                           0.00041754 -0.00047550  0.00050310 -0.00005765 -0.00070818  0.00041058 -0.00010280  0.00024603

   4    1  |0 0>          -0.00058521  0.00019228 -0.00015136 -0.00063482 -0.00054800  0.00007439 -0.00034175  0.00053087
                          -0.00052748  0.00035871  0.00107501 -0.00045083  0.00037739 -0.00066022  0.00002252  0.00047461

   5    1  |0 0>           0.00242532  0.00106804  0.00101270  0.00123490 -0.00028572 -0.00004720 -0.00004424 -0.00030506
                          -0.00161143  0.00131985  0.00010950 -0.00051963  0.00033427 -0.00043930  0.00010293  0.00034795

   6    1  |0 0>           0.00037948  0.00198333  0.00004203  0.00056771 -0.00074086  0.00138700  0.00057675  0.00028538
                          -0.00231177 -0.00440580 -0.00057183  0.00004088  0.00066787  0.00048886  0.00037312 -0.00020200

 State Sym Spin     / Nr.     33          34          35          36          37          38          39

   1    1  |1 1>+         -0.03713573 -0.22267201  0.40867695  0.29709511 -0.25035252 -0.25943006  0.04894441
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.04270049  0.34653810 -0.02028404  0.11346126 -0.18447044  0.00882643 -0.01925934
                           0.04814193 -0.04623330 -0.03050287  0.22020913  0.12407865  0.07862549  0.00802925

   3    1  |1 1>+          0.31017998 -0.14203695  0.13715807  0.08699942  0.20011199  0.06994901  0.08711281
                           0.26188077  0.18707784  0.09912208 -0.00767319 -0.04079554  0.00399870 -0.05475530

   4    1  |1 1>+         -0.09162698 -0.23734322  0.09699111 -0.04618085 -0.00881722  0.43142934 -0.03453245
                          -0.07059915  0.04026035 -0.19007084  0.33062949 -0.05759152  0.06856822 -0.03772877

   5    1  |1 1>+          0.11003586  0.06828181 -0.00030252  0.00474736  0.27635490 -0.29942928  0.01941032
                           0.01152216 -0.00999414 -0.26536543  0.39420665  0.12910324 -0.01720784  0.02617022

   6    1  |1 1>+          0.20675012  0.01035709 -0.04653390  0.00199943 -0.15929829  0.07906016  0.09863774
                           0.02046950 -0.08944517  0.04946530 -0.03698192  0.01819748 -0.00399455 -0.04015416

   7    1  |1 1>+          0.15461329 -0.00593150 -0.06550615 -0.00692893 -0.14131991  0.00311099  0.20157067
                           0.06022738 -0.10883615 -0.11336290  0.05776207  0.00170701 -0.02861334 -0.05030075

   8    1  |1 1>+         -0.09863908 -0.04884762  0.08775436 -0.02529855  0.19239259 -0.06876111 -0.29950987
                          -0.02158080 -0.04476751 -0.04887905 -0.07115131 -0.05176473 -0.00343204  0.07111408

   9    1  |1 1>+          0.03177725 -0.01162728  0.04868437 -0.00304602 -0.03275577 -0.02601745 -0.20655986
                           0.03538498 -0.14396624 -0.09538515 -0.03264751 -0.02920486  0.00269344  0.04856698

  10    1  |1 1>+         -0.13342947 -0.00783296  0.01332280 -0.03238897  0.04638272 -0.07669120  0.35423650
                           0.00441443 -0.22595701 -0.19603436 -0.10746243 -0.06149050 -0.09919662 -0.08592494

  11    1  |1 1>+         -0.08806679 -0.00068584 -0.05102799  0.00502037  0.00833297  0.07679169  0.33915665
                          -0.11493668  0.12614549  0.08544968  0.05939864  0.05562340 -0.00629276 -0.07637333

   1    1  |1 0>           0.01690308 -0.18951044 -0.00531648 -0.05458341  0.05784291 -0.02525960  0.00038043
                           0.12034352 -0.17824103 -0.13223120 -0.06967575 -0.05669122 -0.07539199  0.00440481

   2    1  |1 0>           0.17780082 -0.16041240  0.06747164 -0.17109993  0.34545101 -0.02447211 -0.00437657
                          -0.09731512 -0.05429699 -0.02168214 -0.05635471 -0.08874785 -0.12480307  0.05658590

   3    1  |1 0>           0.00201439  0.09595397  0.15236056  0.07256890  0.12282160  0.03820713  0.09440677
                           0.16300383  0.21420106  0.22419588  0.21928477 -0.03596993  0.20615148 -0.07887146

   4    1  |1 0>           0.08229223 -0.04243567  0.03422666  0.01812657  0.12424339 -0.01067505  0.01859980
                           0.09237952  0.09029833 -0.01095472 -0.11742578  0.06684657 -0.01165047 -0.00567373

   5    1  |1 0>           0.37536692  0.06397624  0.01121264  0.10493014  0.13809064 -0.08706360  0.00671464
                           0.07149398 -0.08177869 -0.14995096  0.32695914  0.16825520 -0.00289111 -0.01080841

   6    1  |1 0>          -0.02630097 -0.07884909  0.05679461 -0.04228241  0.03461533 -0.01613301  0.06092031
                           0.07611501 -0.01055117 -0.06261797 -0.04767000 -0.04688259 -0.07558840 -0.02559825

   7    1  |1 0>          -0.01406548 -0.07714755  0.04073869 -0.01429185  0.05564782  0.01340161  0.13966485
                          -0.12589686 -0.05170406 -0.02047139  0.01522709  0.01066839 -0.13523109 -0.00620962

   8    1  |1 0>           0.03277184  0.01942729  0.02381843  0.02788267 -0.21497298 -0.03959954 -0.24183117
                           0.03004964 -0.08671092  0.00422338  0.13804623  0.02291639  0.15605517  0.03195556

   9    1  |1 0>           0.03959241 -0.05920621 -0.01678174 -0.03231446 -0.13399930 -0.03622806 -0.19032736
                          -0.07484857 -0.05477643 -0.02888725  0.00649245  0.00555748 -0.02058989  0.04978185

  10    1  |1 0>          -0.04650740  0.03477764  0.09932493 -0.01183139 -0.09442950  0.04116383  0.31559585
                          -0.24239535 -0.09104289 -0.02789469  0.04389819  0.06324438  0.08251891 -0.08027929

  11    1  |1 0>          -0.06524598  0.03219541 -0.00940693  0.04932315  0.17468968  0.06485700  0.30995302
                           0.13666863  0.03283362  0.00700069 -0.05378382  0.00040217  0.01058389 -0.07376508

   1    1  |1 1>-          0.06020802 -0.05723797  0.22160702 -0.29820564 -0.14207858 -0.04288814 -0.07066896
                          -0.29182436  0.01347986  0.03072393 -0.01025271  0.29959471 -0.06828540 -0.16021347

   2    1  |1 1>-          0.28815074 -0.15625115 -0.16650355  0.02233265 -0.08592813 -0.02035971 -0.06020740
                          -0.04399062 -0.14598601 -0.20221629 -0.03444676  0.05222110 -0.04439856  0.02663248

   3    1  |1 1>-          0.11546002  0.05651170  0.23341028 -0.11767304  0.26603834  0.02742107  0.10155183
                          -0.06228744 -0.03941720 -0.01484051 -0.04132711 -0.04138113 -0.10353067  0.01155556

   4    1  |1 1>-         -0.05510036  0.11422525  0.13108538 -0.13823549 -0.11059506  0.06669289  0.05676825
                           0.07114372  0.14330944 -0.32462861 -0.17311716 -0.14367614 -0.02320741  0.28422105

   5    1  |1 1>-         -0.01626642  0.01555571 -0.13897203  0.13918339 -0.01665942 -0.01585577 -0.04214609
                           0.00541873  0.35491516 -0.29919830 -0.23581629  0.20034575  0.02158047 -0.15613624

   6    1  |1 1>-         -0.05462433 -0.03798760 -0.06243696  0.02860696 -0.08051449 -0.00319939 -0.02518365
                          -0.07871839 -0.04117613  0.11480377  0.14001088 -0.06145006 -0.12968186  0.06903209

   7    1  |1 1>-          0.14424070  0.08246011 -0.06388082  0.07079387 -0.12725892  0.00529053 -0.08583997
                           0.01315845  0.12442057  0.01268482  0.12597847  0.00055230 -0.23748964  0.01868070

   8    1  |1 1>-          0.01849334  0.05037981  0.08668513 -0.05648493  0.10178235 -0.01727028  0.09427875
                          -0.07615726  0.04080286 -0.02840483 -0.03456440  0.00945623  0.34928385 -0.05574242

   9    1  |1 1>-          0.12088109  0.07273323  0.02658473 -0.01884682 -0.08896208 -0.00908917 -0.00132792
                          -0.10451980  0.04593282 -0.02239142  0.02405234  0.01586959  0.19797266  0.00348122

  10    1  |1 1>-         -0.00896200  0.22595341  0.09546516  0.10240443  0.08316745  0.05509015  0.04554137
                          -0.22525194  0.20238281  0.02892842  0.02460694  0.01566876 -0.32533840  0.00998687

  11    1  |1 1>-         -0.08519539 -0.20280773 -0.08636604  0.02112572  0.05504635  0.02566850  0.00393213
                           0.05979733 -0.03138715 -0.02395285 -0.03488717  0.00795027 -0.31131686  0.05812851

   1    1  |0 0>           0.00000101 -0.00008546 -0.00005329 -0.00007884  0.00012249  0.00004297  0.00000642
                          -0.00010008  0.00013207  0.00009281 -0.00006241  0.00000905 -0.00000928  0.00001362

   2    1  |0 0>           0.00002883 -0.00003897 -0.00015421 -0.00001531 -0.00005040  0.00006343  0.00000383
                          -0.00011814  0.00017968  0.00002780  0.00012363  0.00003258  0.00002367  0.00000195

   3    1  |0 0>           0.00024467 -0.00019066 -0.00005079 -0.00006743 -0.00003731 -0.00003079  0.00004673
                           0.00006440  0.00009989  0.00003249  0.00008219 -0.00005673  0.00000838  0.00002411

   4    1  |0 0>           0.00037856 -0.00007739  0.00014489 -0.00000334  0.00011785  0.00004925 -0.00001219
                           0.00048721  0.00014444  0.00007379 -0.00008951 -0.00001090  0.00000265 -0.00001601

   5    1  |0 0>           0.00011279  0.00021144 -0.00000280 -0.00002340 -0.00001493  0.00004358  0.00000901
                           0.00016605 -0.00004364 -0.00024486  0.00011769 -0.00016268 -0.00000883 -0.00003832

   6    1  |0 0>          -0.00008122  0.00027343  0.00009499  0.00015169  0.00006624  0.00005908  0.00000732
                           0.00012766  0.00000811  0.00018795  0.00007398  0.00023155  0.00003218  0.00002902


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -6212.02773140    -37.60857399 -8254127.91      0.00000000        0.00      0.0000
     2   1  -6199.37501287    -24.95585545 -5477177.18     12.65271854  2776950.74    344.2980
     3   1  -6189.56772637    -15.14856895 -3324726.59     22.46000504  4929401.33    611.1679
     4   1  -6187.07845653    -12.65929911 -2778395.01     24.94927488  5475732.91    678.9044
     5   1  -6185.07875007    -10.65959266 -2339510.17     26.94898133  5914617.74    733.3191
     6   1  -6183.48261522     -9.06345781 -1989199.06     28.54511618  6264928.85    776.7522
     7   1  -6180.40009882     -5.98094140 -1312664.91     31.62763259  6941463.00    860.6317
     8   1  -6179.41972159     -5.00056417 -1097496.98     32.60800982  7156630.93    887.3091
     9   1  -6178.49112936     -4.07197194  -893694.54     33.53660204  7360433.37    912.5774
    10   1  -6177.45159151     -3.03243409  -665542.35     34.57613990  7588585.56    940.8647
    11   1  -6176.19310697     -1.77394956  -389336.93     35.83462443  7864790.99    975.1098
    12   1  -6175.84883468     -1.42967727  -313777.89     36.17889672  7940350.02    984.4779
    13   1  -6175.38097225     -0.96181484  -211093.96     36.64675915  8043033.96    997.2091
    14   1  -6175.04501115     -0.62585373  -137359.02     36.98272026  8116768.90   1006.3511
    15   1  -6174.68349451     -0.26433709   -58015.29     37.34423690  8196112.63   1016.1885
    16   1  -6174.39273559      0.02642182     5798.92     37.63499581  8259926.83   1024.1004
    17   1  -6174.39262017      0.02653724     5824.25     37.63511123  8259952.16   1024.1035
    18   1  -6174.39259949      0.02655793     5828.79     37.63513192  8259956.70   1024.1041
    19   1  -6174.39259057      0.02656684     5830.75     37.63514083  8259958.66   1024.1044
    20   1  -6174.39255751      0.02659991     5838.00     37.63517390  8259965.92   1024.1053
    21   1  -6174.35425448      0.06490293    14244.55     37.67347692  8268372.46   1025.1475
    22   1  -6174.32007690      0.09908051    21745.66     37.70765450  8275873.57   1026.0776
    23   1  -6174.18549040      0.23366701    51283.98     37.84224100  8305411.89   1029.7398
    24   1  -6173.96008926      0.45906816   100753.82     38.06764215  8354881.73   1035.8733
    25   1  -6173.57828922      0.84086820   184549.24     38.44944219  8438677.15   1046.2626
    26   1  -6173.40626106      1.01289635   222305.05     38.62147034  8476432.97   1050.9437
    27   1  -6172.78839586      1.63076155   357910.79     39.23933554  8612038.70   1067.7567
    28   1  -6172.29015681      2.12900060   467261.62     39.73757459  8721389.54   1081.3145
    29   1  -6171.98335145      2.43580596   534597.62     40.04437995  8788725.53   1089.6631
    30   1  -6171.10306040      3.31609701   727799.17     40.92467100  8981927.08   1113.6170
    31   1  -6170.49628558      3.92287183   860970.85     41.53144582  9115098.76   1130.1282
    32   1  -6169.66682694      4.75233047  1043015.98     42.36090446  9297143.89   1152.6989
    33   1  -6168.14995606      6.26920135  1375930.66     43.87777534  9630058.57   1193.9751
    34   1  -6165.59036559      8.82879183  1937695.83     46.43736582 10191823.74   1263.6251
    35   1  -6163.56800674     10.85115068  2381552.30     48.45972467 10635680.21   1318.6563
    36   1  -6161.38603842     13.03311899  2860438.99     50.64169298 11114566.90   1378.0307
    37   1  -6159.29154595     15.12761147  3320126.95     52.73618546 11574254.86   1435.0247
    38   1  -6149.07868623     25.34047119  5561590.57     62.94904518 13815718.49   1712.9308
    39   1  -6136.75750808     37.66164934  8265776.60     75.27022333 16519904.52   2048.2071

 E0 =  -6174.41915741 is the energy of the lowest zeroth-order state
 E1 =  -6212.02773140 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.04220010 -0.28714385  0.20411701 -0.26403546  0.47574494 -0.08326088 -0.08561472 -0.02144305
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.02329788 -0.01269001  0.21827275 -0.07574767 -0.19563627 -0.15442960 -0.17083015  0.27147519
                                0.01578696 -0.08638039  0.02917019  0.28364851  0.03289764  0.01597711 -0.09974928  0.00354495

  3  1     3    1  |1 1>+       0.10633978  0.04705537 -0.13500025  0.10041021  0.22343270  0.11446667  0.19110518  0.26907658
                                0.02147534  0.00532938  0.00817710 -0.00476505  0.03238799  0.34622216 -0.13789047  0.07507759

  4  1     4    1  |1 1>+      -0.02798350  0.45348131 -0.01743849 -0.00968792  0.23507525  0.13242985 -0.19135171  0.02288065
                                0.03337811 -0.06732915 -0.08670756  0.24999589  0.11965974 -0.06814419  0.01135643  0.02706593

  5  1     5    1  |1 1>+      -0.00036296 -0.24389354 -0.26688397 -0.03743064 -0.01576742  0.07809365  0.10829705 -0.07291050
                               -0.00162701  0.03703252  0.26327269  0.43977896  0.14776934 -0.09600765 -0.02154094  0.02823722

  6  1     6    1  |1 1>+       0.10144130  0.05052758  0.15509322 -0.03136341 -0.03390805  0.05994299  0.12853344  0.15307652
                                0.04355571 -0.01541747 -0.06623998 -0.02271827 -0.04762687 -0.00782277  0.09976082 -0.03731845

  7  1     7    1  |1 1>+       0.17840572 -0.01054427  0.10322102 -0.04007292 -0.02640329  0.10742226  0.17688141  0.11746798
                                0.10809443  0.01965076 -0.04792574  0.06805366  0.03249315 -0.14147957 -0.02873941 -0.03410331

  8  1     8    1  |1 1>+      -0.27304457 -0.04360585 -0.18568493  0.04621381  0.07675167 -0.04830207 -0.06256622  0.09659760
                               -0.14943527  0.00909182  0.02795142 -0.05866886  0.01565508 -0.05015354  0.00896580  0.11404891

  9  1     9    1  |1 1>+      -0.18913557 -0.03306409  0.01116290  0.00952383  0.04589107  0.01469295  0.02975513  0.23206384
                               -0.09281511 -0.00827317 -0.06014449 -0.01027262  0.01899074 -0.14146388 -0.00612411 -0.04443830

 10  1    10    1  |1 1>+       0.31458045 -0.09789836 -0.09847493 -0.01843544 -0.00759007  0.01893108 -0.05822218  0.16248720
                                0.16952423  0.09559606 -0.03126503 -0.08141131  0.03270241 -0.30879440  0.03006490  0.10325571

 11  1    11    1  |1 1>+       0.30911211  0.07984212  0.01251108 -0.04505938 -0.04403338  0.00044922 -0.08292679 -0.20739104
                                0.15643756  0.01099186  0.08164197  0.02254665 -0.01833568  0.09930511  0.01811789  0.03112464

 12  1     1    1  |1 0>        0.00163816  0.01018259  0.09265616 -0.00567695 -0.02952957 -0.19414184 -0.09415493 -0.13979229
                                0.01471136 -0.05297349 -0.00189437  0.11263448  0.03815656  0.17084973 -0.11612213 -0.11657646

 13  1     2    1  |1 0>        0.02709232  0.01514788  0.41200512 -0.10252920 -0.12431250 -0.10700170 -0.09899479  0.08626054
                                0.02226369 -0.12381563 -0.00016373  0.06929630  0.11417268  0.08172277  0.00868897  0.11540712

 14  1     3    1  |1 0>       -0.13377305 -0.04294279  0.01275918 -0.03821028 -0.09654452  0.04412122 -0.05643347 -0.10907345
                               -0.05314483  0.19422441 -0.10593380 -0.19926364  0.14848693 -0.22031658  0.38972797 -0.21233508

 15  1     4    1  |1 0>       -0.01257165  0.03507446  0.11787351 -0.04380108 -0.03028294  0.01278309 -0.12894837 -0.26878571
                               -0.01963516 -0.00369901  0.01355606  0.10322717 -0.12731050 -0.02551750  0.11188984 -0.13216901

 16  1     5    1  |1 0>        0.00765367  0.08627292  0.11071820  0.01930945  0.03927223 -0.02831533 -0.14931274 -0.22835527
                               -0.03067993 -0.01504946 -0.12581029 -0.40027157 -0.11764368 -0.09315658 -0.23771110  0.02790524

 17  1     6    1  |1 0>       -0.06072746 -0.01756405  0.03698621  0.04594944 -0.02038369 -0.08614924  0.07943331 -0.15485931
                               -0.01083846 -0.07061627 -0.03382153  0.08047982  0.03041564  0.07028879 -0.03144318 -0.17510272

 18  1     7    1  |1 0>       -0.12246962 -0.01012657  0.04424673 -0.00424193 -0.07353719 -0.02645175  0.08559394  0.03198999
                               -0.05897566 -0.14780939  0.00723127 -0.01848520  0.01970938  0.09932864 -0.12852826 -0.12571652

 19  1     8    1  |1 0>        0.21315500  0.02996987 -0.21006644  0.01881701 -0.01059723 -0.00309991 -0.08769548  0.02130406
                                0.10132611  0.17498134  0.00409319 -0.14238649  0.04818995  0.04016451  0.01349929  0.02657131

 20  1     9    1  |1 0>        0.18090756  0.01817223 -0.11456834  0.03768303 -0.05232668 -0.07308075 -0.05182352 -0.01319238
                                0.08396202 -0.00832369  0.02929956 -0.00320482  0.02761322  0.13489777 -0.01338793 -0.04693948

 21  1    10    1  |1 0>       -0.28729569 -0.00428853 -0.06535376 -0.00123876 -0.05056388  0.10610513  0.10550986  0.11637357
                               -0.15626978  0.08997888 -0.01279695 -0.04391862  0.02618674  0.18278505 -0.18746024 -0.02291337

 22  1    11    1  |1 0>       -0.28407097 -0.03378580  0.16435984 -0.03422219  0.07495691  0.04596873  0.06573020 -0.03556219
                               -0.14028412 -0.00667801 -0.00539506  0.05823463 -0.05216429 -0.13985526 -0.01188171  0.01615274

 23  1     1    1  |1 1>-      -0.10566395 -0.01027406  0.24089511  0.28784537  0.17245955 -0.08506415 -0.02889748  0.00808744
                                0.15473166  0.03207488  0.27109459 -0.01940069 -0.00253149 -0.08580890  0.25529737  0.18602101

 24  1     2    1  |1 1>-      -0.05756103 -0.03573826  0.06005379 -0.02993384 -0.06391970  0.24206624  0.09254057  0.05520253
                               -0.03405923  0.03765453 -0.07086456  0.01202116  0.16172572 -0.13147683  0.39890970 -0.07102084

 25  1     3    1  |1 1>-       0.09964696  0.00923946 -0.26851406  0.14485539  0.09156213 -0.12963783 -0.13111009  0.20743379
                                0.01689890  0.10901276  0.04232761 -0.03204957 -0.07832225 -0.01938335  0.10176570 -0.09172795

 26  1     4    1  |1 1>-       0.13621664  0.02494491  0.06524538  0.17959735  0.02073064 -0.15710773 -0.11228244 -0.14404758
                               -0.26787434  0.02917087 -0.14756451 -0.04282014  0.31024481 -0.24308180 -0.17289325  0.05016578

 27  1     5    1  |1 1>-      -0.07389646 -0.01482379  0.03550560 -0.10409443 -0.09214770  0.00527188  0.05357670  0.11342717
                                0.13854297 -0.03604058  0.13684473 -0.25094036  0.47880489  0.11747737 -0.07078663  0.00266171

 28  1     6    1  |1 1>-      -0.02451640  0.02301571  0.07777048 -0.06273085 -0.02224858 -0.02454675  0.08324433 -0.08540147
                               -0.04706322  0.14160294 -0.04484543  0.10689640 -0.14183912 -0.02744582 -0.04532990  0.13868651

 29  1     7    1  |1 1>-      -0.07766894 -0.00090952  0.15389038 -0.02164461 -0.05280536  0.01516713  0.06401059 -0.02315002
                               -0.02602798  0.23380870 -0.04219197  0.13930963  0.07424465  0.13639055 -0.04503786  0.01902519

 30  1     8    1  |1 1>-       0.08760835 -0.02017957 -0.12156204  0.06664789  0.03879770 -0.10681422 -0.01850343  0.00020621
                                0.05872340 -0.34550086  0.04164092 -0.00463283  0.03616588  0.03771864  0.06677889  0.08319470

 31  1     9    1  |1 1>-       0.00885810 -0.02552363  0.08190944  0.05261499 -0.00985032 -0.03765420  0.01639456  0.02343748
                               -0.01097013 -0.20382176 -0.02072266  0.07475219  0.04985642  0.03992772  0.06764901  0.05643028

 32  1    10    1  |1 1>-       0.04935012  0.03850106 -0.02285075  0.01519620 -0.01903117 -0.24979102 -0.15970517  0.04610284
                                0.01080427  0.33477146  0.01953810  0.04854253  0.10741531  0.19276375  0.14465545 -0.15825351

 33  1    11    1  |1 1>-       0.00755239  0.03913311 -0.01325613 -0.04301139 -0.00205579  0.17022790 -0.04078587  0.05853802
                               -0.04512708  0.31382676  0.03111010 -0.08387744 -0.00205300 -0.05086064 -0.04143293  0.31350827

 34  1     1    1  |0 0>        0.00002565 -0.00004201  0.00016394 -0.00013740  0.00009838  0.00002494 -0.00011107  0.00025954
                               -0.00001246 -0.00001124  0.00017829  0.00003218 -0.00004639  0.00007253 -0.00008460 -0.00028897

 35  1     2    1  |0 0>        0.00000338  0.00006142  0.00000247 -0.00005072  0.00000720  0.00001855 -0.00001556  0.00002866
                                0.00000359  0.00000526  0.00003465 -0.00009936 -0.00005455 -0.00010242  0.00001176 -0.00015371

 36  1     3    1  |0 0>        0.00000310  0.00002670  0.00015915 -0.00010494  0.00002130 -0.00026044  0.00047702 -0.00012610
                                0.00005701  0.00001822 -0.00008055 -0.00028759 -0.00015897 -0.00005241 -0.00002710 -0.00007815

 37  1     4    1  |0 0>       -0.00003003  0.00006096 -0.00000548  0.00000253 -0.00011324 -0.00008847  0.00016075 -0.00014801
                               -0.00000949 -0.00000177 -0.00002583  0.00005724  0.00003398 -0.00026479  0.00004817 -0.00049255

 38  1     5    1  |0 0>        0.00002181 -0.00005915  0.00007374 -0.00009592  0.00024449  0.00008496 -0.00013494 -0.00021737
                                0.00000359  0.00000788  0.00002777  0.00004017 -0.00000018 -0.00020942 -0.00011736 -0.00018566

 39  1     6    1  |0 0>       -0.00001247  0.00005855 -0.00005247  0.00004791 -0.00010938  0.00027250 -0.00032598 -0.00115332
                               -0.00003597  0.00000559  0.00016310 -0.00021051 -0.00009385  0.00023932  0.00061825 -0.00005073


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.11643797  0.03763254  0.11709280 -0.04388303  0.12353205  0.03814629 -0.13533066  0.00188232
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.16568503 -0.09837316  0.21459839 -0.02485638 -0.13457791  0.06285002 -0.10204929  0.00022454
                               -0.08733349  0.04836668 -0.09614167  0.11332961 -0.03006353 -0.04037837  0.04584443 -0.00095186

  3  1     3    1  |1 1>+       0.05363868 -0.08380373  0.03915581 -0.12756255 -0.11548625  0.09115982  0.01236277  0.00155500
                               -0.05551891  0.07534836  0.20427090 -0.06870532 -0.13356120 -0.09500250  0.04255706 -0.00107322

  4  1     4    1  |1 1>+      -0.01353993  0.03774697 -0.01900977 -0.11357724  0.10781197 -0.05059124 -0.02408877  0.00028196
                               -0.01562917 -0.09419104  0.01156847  0.02262773  0.12795341  0.01603958  0.11773108 -0.00112123

  5  1     5    1  |1 1>+      -0.04593569 -0.03119379 -0.05670667  0.03361141  0.04361924 -0.02155087 -0.05389082 -0.00091970
                                0.08977870 -0.00918724  0.03278225 -0.03265318  0.09132465 -0.10282192 -0.01582834 -0.00016929

  6  1     6    1  |1 1>+      -0.00212040  0.01399572 -0.11472430  0.05858203 -0.07898880  0.08634347 -0.05551263  0.00026919
                                0.25364744  0.23624306 -0.01573371 -0.13485414  0.43667106 -0.12508948  0.08748923 -0.00039664

  7  1     7    1  |1 1>+      -0.09961731  0.01144732 -0.02332470  0.02212758  0.10987035  0.18872853  0.11040787  0.00341531
                                0.16548954 -0.11969766 -0.10499633  0.29972491 -0.07108724  0.19063036 -0.17927008  0.00110816

  8  1     8    1  |1 1>+       0.08442419  0.05196474 -0.16168676 -0.11832648  0.03710400  0.10513552  0.10456266  0.00170844
                               -0.12730842  0.32901053 -0.23578726  0.12332781  0.08256123  0.03472428 -0.04826999  0.00436777

  9  1     9    1  |1 1>+      -0.19893134  0.00363234  0.07230834  0.08127961  0.08589983  0.02202320  0.08170271  0.00451886
                                0.01396074 -0.22784178 -0.15618283 -0.39684714 -0.06444513 -0.11421490  0.05365688  0.00651262

 10  1    10    1  |1 1>+      -0.07452587  0.01402324 -0.08758762 -0.21535266 -0.11486442 -0.05925889 -0.07615555 -0.00271465
                               -0.28267819  0.01108870 -0.04504188 -0.11561127  0.02690010  0.10668211  0.02057872 -0.00225595

 11  1    11    1  |1 1>+       0.11492298  0.03952371 -0.04262080  0.05660466  0.16297645 -0.05022579  0.16645050  0.00474690
                               -0.00474778  0.16476106 -0.21728758 -0.16817563 -0.13841518 -0.20194264  0.07113679  0.00910119

 12  1     1    1  |1 0>       -0.01079170  0.25135440  0.24769730 -0.03148686 -0.09604509 -0.03627744  0.26647166 -0.00182271
                                0.03839442  0.02229756 -0.01717149 -0.10522743 -0.17052604 -0.00844740 -0.20680233 -0.00859454

 13  1     2    1  |1 0>       -0.01369209 -0.20559859  0.09405125 -0.04141957  0.11739727  0.04245843  0.01092213  0.00047459
                               -0.17579245 -0.09694506 -0.07934502  0.18939253 -0.06157508 -0.03012044  0.09498669 -0.00260552

 14  1     3    1  |1 0>        0.10881555 -0.04765228  0.07308488 -0.01795616 -0.01778141  0.07939044 -0.02171106  0.00230331
                               -0.07217475 -0.14700812 -0.08721127  0.08540722 -0.10587635 -0.05042810  0.02455706 -0.00479600

 15  1     4    1  |1 0>       -0.08292814 -0.15547848 -0.07223103  0.09731509  0.24677660 -0.02038888 -0.11685056 -0.00377635
                               -0.12728443  0.04014449  0.21474271 -0.16180911  0.16588786  0.21726476 -0.15534886  0.00026110

 16  1     5    1  |1 0>       -0.27616974  0.06235356 -0.06835872  0.01855431 -0.01298281 -0.06839728  0.02876292  0.00200479
                               -0.05551663 -0.02676702 -0.09645294 -0.01276617 -0.09577224 -0.07003994 -0.01290614  0.00290532

 17  1     6    1  |1 0>       -0.03031729  0.05909304  0.21864084 -0.03166718 -0.22720261 -0.13047815 -0.12367775  0.01193207
                                0.05884877 -0.02171483 -0.00304912  0.08950866  0.13746396  0.17912571  0.03719819  0.01330550

 18  1     7    1  |1 0>        0.04185076  0.06895283 -0.15715295  0.03477763  0.03032140 -0.01066246 -0.24938650 -0.01482495
                               -0.05345234 -0.02864562 -0.14393831  0.05850358 -0.20028984  0.19160580  0.32669030 -0.00405906

 19  1     8    1  |1 0>       -0.00239097  0.06184584  0.15113022  0.01576735  0.19048895 -0.16113049  0.14424278 -0.01330442
                                0.03413379  0.02871520 -0.01400657  0.11204844 -0.13606892  0.27772075  0.07328713 -0.00033893

 20  1     9    1  |1 0>       -0.00817592 -0.09169053 -0.07237239  0.11672240 -0.03541858  0.18338147  0.03575837 -0.00215916
                               -0.11796079 -0.06714569  0.05138130 -0.10497669 -0.09156589 -0.12880229 -0.13860935 -0.00539251

 21  1    10    1  |1 0>       -0.05732089 -0.22444307 -0.04506561  0.08577723  0.16173086 -0.02259128  0.17519712  0.00335199
                               -0.02453422  0.03672744  0.11344975  0.05988554 -0.15816426  0.12188544 -0.18825051  0.00353549

 22  1    11    1  |1 0>        0.00037758  0.15997561 -0.04314948  0.04181740  0.00640262  0.08875949  0.22482304 -0.01380836
                                0.19070114 -0.00940300  0.00006842  0.02825529  0.08931282  0.01351230 -0.09190627 -0.00472439

 23  1     1    1  |1 1>-      -0.10809613 -0.10154350 -0.12614446  0.01589125 -0.11380278 -0.05324082  0.13038053 -0.00208514
                                0.13829198  0.00529723 -0.00062005  0.02374069 -0.05144709 -0.01141069  0.00968083 -0.00100450

 24  1     2    1  |1 1>-       0.24922257  0.01278178  0.15315931 -0.04359472  0.00618295 -0.07070920  0.11932690  0.00094416
                               -0.06879967  0.07564471  0.22645503  0.01297881 -0.13485068 -0.08255038 -0.09578665  0.00400529

 25  1     3    1  |1 1>-       0.28360696  0.14685483 -0.02597983  0.12391739 -0.08032770 -0.04562042 -0.07060844  0.00177032
                                0.28335763 -0.16326410 -0.11907371  0.05670873 -0.06131463  0.08719694  0.02418325  0.00090617

 26  1     4    1  |1 1>-       0.12042540 -0.06922189 -0.06027911  0.03653738 -0.04171519  0.05301556 -0.01712523  0.00019380
                                0.13570579  0.00310134  0.11369650 -0.04589682 -0.00470915 -0.04536851 -0.08304211  0.00116661

 27  1     5    1  |1 1>-       0.04290708  0.11221084 -0.02552613 -0.06613495  0.07137056 -0.03135646  0.02084176 -0.00232033
                                0.06018443 -0.09392697 -0.11773384  0.05635267  0.05880847 -0.09514384  0.09499149 -0.00069691

 28  1     6    1  |1 1>-       0.11844077  0.26089650  0.00388417 -0.14833955 -0.14735283  0.15722775  0.24573847 -0.00543835
                               -0.05316326 -0.17387737 -0.09086949  0.01744161  0.05438827 -0.31030152  0.06372191  0.00238922

 29  1     7    1  |1 1>-       0.12687809  0.07422334 -0.12221121  0.00410420 -0.11808994 -0.16398226  0.07269819  0.00036217
                                0.04653266  0.03686171 -0.08680961 -0.28800260  0.03527030  0.46461740 -0.03784075 -0.00144907

 30  1     8    1  |1 1>-       0.02989010  0.04028087  0.28653358  0.16491875 -0.05137767  0.04440512  0.29761067 -0.00416807
                               -0.09724102 -0.02064690 -0.00008415 -0.11246394  0.25958200  0.14892282 -0.12613042  0.00033657

 31  1     9    1  |1 1>-      -0.05646910  0.45848621 -0.23391202  0.19666309 -0.01403084 -0.04774122 -0.22798003  0.00688225
                               -0.16158810 -0.00873512  0.14217592  0.01174238 -0.08753792  0.02418104 -0.03836408  0.00087568

 32  1    10    1  |1 1>-      -0.26294502  0.12828549  0.12665230 -0.05698589  0.06521883  0.12903873  0.02864653  0.00074912
                               -0.06897975  0.03691832  0.12947762  0.01764299  0.10383196 -0.03987642 -0.12950530  0.00169944

 33  1    11    1  |1 1>-       0.01480344 -0.00365661  0.18003868  0.40438130  0.04990857 -0.03604756 -0.04699779  0.00180089
                               -0.09568111  0.00448641  0.04843161  0.10028950  0.11369140 -0.01387406  0.02678100 -0.00160061

 34  1     1    1  |0 0>        0.00067675 -0.00030191  0.00016343  0.00011348  0.00055673  0.00303926 -0.00139307  0.47180714
                               -0.00026813 -0.00070906 -0.00104585 -0.00018378  0.00162944  0.00112606  0.00010642 -0.12674554

 35  1     2    1  |0 0>        0.00013917  0.00003752 -0.00110517  0.00037579  0.00204250  0.00258555  0.01043696  0.47328876
                                0.00020514  0.00059377  0.00126041  0.00019582 -0.00048431  0.00136961  0.00879300  0.03888577

 36  1     3    1  |0 0>        0.00029075  0.00004333  0.00021863  0.00020648 -0.00113286  0.00035920  0.00003418 -0.18524176
                               -0.00003526 -0.00007331  0.00069508 -0.00054131  0.00083372  0.00096873  0.00018863 -0.05421188

 37  1     4    1  |0 0>       -0.00012361 -0.00004478 -0.00008735  0.00104686 -0.00051126 -0.00100004  0.00170454  0.11082836
                               -0.00030179 -0.00029933 -0.00042041  0.00116533  0.00108208  0.00133078 -0.00286851 -0.29411417

 38  1     5    1  |0 0>       -0.00005550  0.00052515  0.00012651 -0.00026466  0.00066975 -0.00132047 -0.00031790 -0.05084755
                                0.00019010 -0.00057011  0.00041697 -0.00011258  0.00055980  0.00006635 -0.00176049  0.62902387

 39  1     6    1  |0 0>        0.00034420 -0.00009445 -0.00209481  0.00018853  0.00072142 -0.00023504 -0.00201845 -0.00278987
                                0.00008811 -0.00132183 -0.00111375 -0.00097188  0.00220287  0.00058265 -0.00578191  0.00096458


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00053798  0.00072468  0.00045853  0.00201196 -0.00255572 -0.04666905  0.04244781 -0.04601383
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00082498 -0.00001342 -0.00030931  0.00015746 -0.00115853 -0.02037343  0.00484218  0.09055908
                               -0.00008378 -0.00003310 -0.00071421 -0.00032613 -0.00066735 -0.01230841  0.01501336 -0.01325408

  3  1     3    1  |1 1>+       0.00044634 -0.00001295 -0.00023231 -0.00112936 -0.00111217 -0.01935875 -0.00060291  0.02298453
                               -0.00034798 -0.00012365 -0.00028763  0.00030667 -0.00112042  0.00090601 -0.04978352  0.06962562

  4  1     4    1  |1 1>+      -0.00113625  0.00019372 -0.00014969  0.00077972 -0.00261624 -0.03227799  0.00133789  0.01986865
                                0.00017563 -0.00050637 -0.00032851 -0.00197889  0.00036273 -0.00096014  0.00574230  0.00768900

  5  1     5    1  |1 1>+       0.00019196  0.00006545  0.00019512  0.00034539 -0.00011444  0.01455952  0.00216983 -0.00287773
                                0.00014371 -0.00022285  0.00012671 -0.00013624  0.00233371  0.02105977  0.02762696 -0.11324961

  6  1     6    1  |1 1>+      -0.00079739 -0.00003732 -0.00060059  0.00035520 -0.00070198 -0.02113197  0.03499294  0.08375022
                                0.00140002 -0.00174670  0.00057773 -0.00320037  0.00172630  0.01828272  0.06116125 -0.08013174

  7  1     7    1  |1 1>+      -0.00128890 -0.00058654  0.00066432  0.00132136 -0.00038571 -0.03865201 -0.08862705 -0.13506351
                               -0.00105102  0.00173480 -0.00034225  0.00372063 -0.00598599 -0.09198121 -0.03059540  0.44014135

  8  1     8    1  |1 1>+      -0.00099421 -0.00103310  0.00022283 -0.00009700  0.00557261  0.02032750  0.04529547 -0.02748806
                               -0.00021682  0.00054923 -0.00081908  0.00100809 -0.00674555 -0.10542166  0.00191601  0.28668191

  9  1     9    1  |1 1>+      -0.00124652 -0.00029271  0.00058676 -0.00123293  0.00393335 -0.04470025  0.10341370  0.03134574
                               -0.00032304  0.00124155 -0.00139225  0.00063322 -0.01303001 -0.19034719  0.01687982  0.18044063

 10  1    10    1  |1 1>+       0.00092189 -0.00020870 -0.00056786  0.00076167  0.00091909  0.06421629 -0.00767091  0.01541901
                               -0.00009922 -0.00091044  0.00065962 -0.00111830  0.00533438  0.07443175 -0.01728100 -0.12266969

 11  1    11    1  |1 1>+      -0.00135698 -0.00057635  0.00090598 -0.00251454  0.00660159 -0.03174171  0.15048059  0.02540379
                               -0.00049707  0.00162998 -0.00225875  0.00089176 -0.01606040 -0.23139506  0.00366412  0.23193744

 12  1     1    1  |1 0>       -0.00273934  0.00004189 -0.00053755 -0.00154758 -0.01180848 -0.08991700 -0.43058918  0.00817033
                               -0.00133196 -0.00095275 -0.00005465  0.00201478  0.00883930  0.07132090  0.11822410 -0.05695919

 13  1     2    1  |1 0>        0.00133475  0.00032083 -0.00015176 -0.00015666 -0.00162203 -0.03424811  0.11207809  0.23123637
                                0.00276571 -0.00028426  0.00008736 -0.00226983  0.00297921  0.10194423 -0.07930173  0.02005741

 14  1     3    1  |1 0>       -0.00084400 -0.00030920  0.00011600  0.00128121 -0.00803756 -0.07097206 -0.11040351 -0.04811257
                               -0.00001310 -0.00092453 -0.00004598 -0.00070354  0.00249648  0.06310674 -0.06474874  0.06601384

 15  1     4    1  |1 0>        0.00037915 -0.00026197  0.00002042  0.00113566 -0.00046257  0.05301851 -0.05055616  0.07812471
                               -0.00097907  0.00142145  0.00041858  0.00052706  0.00078572 -0.01498233  0.11371389 -0.02222004

 16  1     5    1  |1 0>        0.00059222 -0.00038590 -0.00004968 -0.00077360  0.00255203  0.00008423  0.09182888 -0.07866496
                               -0.00011156  0.00024939 -0.00017432  0.00041488 -0.00346055 -0.02680946 -0.01964384 -0.03702633

 17  1     6    1  |1 0>        0.00218773 -0.00076928 -0.00087334  0.00152492  0.01154621 -0.00325490  0.52456283  0.04793083
                               -0.00010765  0.00058144 -0.00028711  0.00225429 -0.02592402 -0.24431728 -0.29005473  0.06112021

 18  1     7    1  |1 0>        0.00036851 -0.00055373  0.00085641  0.00174257  0.01366196  0.32930889 -0.19117554 -0.08332133
                               -0.00185930 -0.00081402 -0.00032931 -0.00625548  0.01806166  0.12823903  0.11558897  0.16507767

 19  1     8    1  |1 0>        0.00395110 -0.00074758 -0.00167919 -0.00436770  0.01604493  0.27738495  0.13696524  0.43294393
                                0.00251092  0.00020682  0.00043614 -0.00241879  0.01247896  0.17345167  0.03925493 -0.02866358

 20  1     9    1  |1 0>        0.00551666 -0.00138229  0.00209773 -0.00109161 -0.00385176  0.04752948  0.32123640 -0.28713593
                                0.00358904 -0.00086842  0.00207516  0.00101458  0.01799810  0.46370515 -0.26070053  0.11241602

 21  1    10    1  |1 0>       -0.00078695 -0.00038787 -0.00048818 -0.00227652 -0.00279279 -0.10646026  0.09150567 -0.08473437
                                0.00174426  0.00039258  0.00056344  0.00226742 -0.00271385 -0.03227268  0.02543995 -0.12071250

 22  1    11    1  |1 0>        0.00683322 -0.00191673  0.00025813 -0.00514574  0.00916180  0.25692494  0.21195283  0.18626509
                                0.00370583 -0.00033456  0.00201917 -0.00048960  0.02231595  0.42999770 -0.08095188  0.00130364

 23  1     1    1  |1 1>-       0.00077129 -0.00036272 -0.00046003 -0.00194404  0.00091979  0.04418862 -0.06160133 -0.00673624
                               -0.00045406 -0.00012252  0.00006847  0.00007837  0.00133648  0.01893335 -0.01773161 -0.04472691

 24  1     2    1  |1 1>-       0.00036066 -0.00034600 -0.00000288 -0.00146447  0.00366554  0.01746287  0.02768226 -0.00118364
                               -0.00115419  0.00111089 -0.00098233  0.00189222 -0.00575216 -0.07803949 -0.00629021  0.10728141

 25  1     3    1  |1 1>-      -0.00058213  0.00051589 -0.00034621  0.00104585 -0.00132539 -0.02894588  0.01669476 -0.01140734
                                0.00042956  0.00016815 -0.00032324 -0.00032497 -0.00301355 -0.04268163 -0.00058584  0.00376635

 26  1     4    1  |1 1>-       0.00049681 -0.00021509  0.00032670 -0.00033080  0.00205118  0.02121080  0.01529727 -0.05435668
                               -0.00000280  0.00075781  0.00018374  0.00134572 -0.00061620 -0.01007032  0.01680672  0.04834947

 27  1     5    1  |1 1>-       0.00031992  0.00000978 -0.00003072 -0.00053084 -0.00009047  0.01172824  0.01084765  0.00495568
                                0.00051753 -0.00125232 -0.00001988 -0.00115874  0.00361064  0.04394875  0.02651254 -0.13270069

 28  1     6    1  |1 1>-       0.00323229 -0.00136528  0.00071864 -0.00365469  0.00892802  0.12136897  0.03233829 -0.08554496
                               -0.00004558 -0.00121863  0.00006107  0.00130368  0.00375042  0.06645605 -0.00925637 -0.04746592

 29  1     7    1  |1 1>-       0.00005188  0.00056410 -0.00019741  0.00151438 -0.00011081  0.01132368 -0.01004685 -0.01606028
                                0.00019592  0.00031850  0.00229378 -0.00003550 -0.00128028  0.01742088 -0.04522634  0.14413310

 30  1     8    1  |1 1>-       0.00092813 -0.00079486  0.00060969 -0.00155585  0.00544879  0.06054471 -0.04165073 -0.00741764
                                0.00054963 -0.00006553  0.00235399  0.00201261  0.00238477  0.05312188  0.05436637  0.13667895

 31  1     9    1  |1 1>-      -0.00058748  0.00046342 -0.00017165  0.00221556 -0.00369439 -0.06686181  0.04683537 -0.06171446
                               -0.00015320  0.00090963 -0.00072257  0.00088051 -0.00610029 -0.07285867 -0.07959437  0.05028210

 32  1    10    1  |1 1>-      -0.00000245 -0.00039149  0.00063515 -0.00017537  0.00223904  0.00466254 -0.00535024 -0.02028827
                               -0.00046273  0.00068123 -0.00001412  0.00176880 -0.00218576 -0.02526376  0.01397339  0.08545695

 33  1    11    1  |1 1>-      -0.00132297  0.00021404 -0.00025304  0.00060663 -0.00461603 -0.07525440 -0.00237525  0.02814751
                                0.00074507 -0.00021257  0.00018564 -0.00034802  0.00030323  0.00211264  0.02510593 -0.01817299

 34  1     1    1  |0 0>       -0.29517371  0.11912431 -0.49036018 -0.43817313  0.00229193  0.01650436  0.00204505 -0.00096259
                               -0.24212738  0.34761346 -0.21829467  0.00115964  0.00229868  0.00920816  0.00727708 -0.00128830

 35  1     2    1  |0 0>       -0.06921318  0.10274446  0.02474990  0.71300680  0.00143543  0.01663406  0.00133913  0.00263163
                               -0.21275415 -0.05709227 -0.18732132  0.40707150  0.00251689  0.01376357  0.01084406 -0.00392605

 36  1     3    1  |0 0>       -0.47881832 -0.14151840  0.24812692  0.04672032 -0.00023802  0.00131294  0.00041683 -0.00098686
                                0.51515118  0.32577768 -0.50180293  0.16217132 -0.00112009 -0.00252735 -0.00734600 -0.00326947

 37  1     4    1  |0 0>        0.15531397  0.64343262  0.46324367 -0.22118821  0.00157169  0.00608101  0.00518894 -0.00158251
                               -0.04765264 -0.23309217 -0.36371724 -0.10256525 -0.00001413 -0.00699598  0.00366665 -0.00028349

 38  1     5    1  |0 0>       -0.52966662  0.41111204 -0.09053880  0.02700360 -0.00208181 -0.00443042 -0.00786843  0.00081782
                                0.04912944 -0.29599178  0.08770379 -0.21221748  0.00136869  0.01819929 -0.00778925  0.00140509

 39  1     6    1  |0 0>        0.00010822 -0.00038776  0.00027530  0.00029453  0.71336701 -0.05171750 -0.00505369  0.00381742
                                0.00065731  0.00000726  0.00021795  0.00007093  0.69795864 -0.02602029 -0.02171003 -0.00111267


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.13972011 -0.02601696 -0.04021307 -0.10462632  0.07564050 -0.07394533  0.08224357  0.04738687
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.09502192 -0.13991927  0.05451720  0.13510375 -0.20942173  0.12298068  0.25946243  0.05444944
                               -0.17711134 -0.02575175  0.05140384  0.03441380  0.15166795 -0.01710918  0.04100388  0.18249528

  3  1     3    1  |1 1>+       0.17601635  0.09150021  0.07719182  0.07073884 -0.00491610  0.26934560  0.01644799  0.13100375
                               -0.11176249  0.00646830  0.05718967 -0.07391336  0.04658528  0.06372792 -0.09981799  0.08503126

  4  1     4    1  |1 1>+      -0.19558353 -0.06697108 -0.05469006 -0.03037761 -0.03725881  0.05003574 -0.02279069  0.02047674
                                0.07294807 -0.10923517 -0.03896173 -0.07899675 -0.00888287  0.09514416 -0.00920402  0.07382325

  5  1     5    1  |1 1>+       0.00751490  0.00461868 -0.06064611 -0.07800136  0.04930842  0.03697964 -0.05598225  0.04767842
                               -0.00695438  0.03744076 -0.05402829  0.02076249 -0.11139839 -0.02664170 -0.09199790 -0.13910216

  6  1     6    1  |1 1>+       0.03995723 -0.11877584 -0.28907761 -0.19448971 -0.02537850  0.13451301  0.11767641 -0.02805887
                                0.11739019 -0.00489994  0.31773541  0.18978749 -0.21328486  0.05795953 -0.01244484 -0.14334898

  7  1     7    1  |1 1>+      -0.17032600  0.01130008 -0.00907936  0.17414101  0.07280683  0.08038209 -0.04101290 -0.23831659
                               -0.13482387  0.17865849  0.06542936 -0.10374921 -0.04869677  0.00832719 -0.12833609 -0.02865223

  8  1     8    1  |1 1>+      -0.04398837 -0.06079894 -0.03039434 -0.03036014 -0.11701503  0.12213137  0.19298059  0.05382020
                               -0.05873222  0.13208383  0.13738831 -0.16988946 -0.29330041 -0.05056118  0.20350013  0.05453485

  9  1     9    1  |1 1>+       0.20816618 -0.09735172  0.02473771 -0.34505511  0.02466618  0.16528703 -0.17932569 -0.21843130
                               -0.14547857 -0.00890483 -0.08938080  0.12112326  0.21599863  0.07435318 -0.03127140  0.08593084

 10  1    10    1  |1 1>+       0.01753460  0.03491361  0.11253435 -0.09922630 -0.15658433  0.18391551 -0.12590699  0.03859651
                                0.11027682 -0.04458545  0.11488567 -0.12019980  0.02397235 -0.03346504  0.15709593  0.19892605

 11  1    11    1  |1 1>+       0.17814747 -0.11036924  0.03321284 -0.19382104 -0.00608579 -0.04074799  0.14311354  0.10968743
                               -0.17151021  0.00871001 -0.23669334 -0.05254734 -0.10451020 -0.09761194  0.07512093 -0.11407365

 12  1     1    1  |1 0>        0.11455354 -0.23040867 -0.13141697 -0.01317018 -0.07604574  0.10284486 -0.01045759 -0.06929466
                                0.11548133 -0.17789726  0.04182405 -0.08364778 -0.19839136 -0.13277798 -0.07593682  0.01173648

 13  1     2    1  |1 0>        0.04080667 -0.00119827  0.09319705 -0.05862671  0.10691484 -0.01498485 -0.10304965 -0.02452635
                                0.14474428  0.13229227  0.09038138  0.08287893  0.00160782  0.01195436  0.17097582 -0.31350238

 14  1     3    1  |1 0>        0.02653810 -0.04319350 -0.01796994 -0.05713573 -0.07693164  0.28161477 -0.09071355  0.03877409
                                0.12929178 -0.05798423  0.04265356  0.10435741 -0.10712447 -0.19279894 -0.07474333 -0.07766389

 15  1     4    1  |1 0>        0.03881138  0.14776661 -0.22353624  0.08465964 -0.08899297  0.29639095  0.16983642 -0.20990561
                               -0.26330067 -0.02276210 -0.02233860 -0.18773177  0.19705404 -0.05012501  0.20181653 -0.04399958

 16  1     5    1  |1 0>        0.00841284  0.02950949  0.01479318  0.07442677 -0.05618670 -0.04085176  0.27236077  0.01459521
                                0.12442465  0.00375567  0.02638248  0.08189077 -0.04064443  0.17630727  0.02394585  0.12652064

 17  1     6    1  |1 0>        0.14652809  0.08157764 -0.16577742  0.06914073 -0.18424167  0.01383200 -0.07290446 -0.10645325
                                0.15392324  0.00844526 -0.10019111 -0.07508114 -0.13776804 -0.16592799 -0.14791334  0.14051571

 18  1     7    1  |1 0>        0.02660858  0.23276993 -0.28022458 -0.12930231 -0.13464305 -0.01022987 -0.03462711  0.12043354
                               -0.17165480 -0.12901472 -0.03683013  0.25163339 -0.07624124 -0.00582086 -0.10305571  0.06025896

 19  1     8    1  |1 0>        0.17240168 -0.01168897 -0.17678369 -0.04191992  0.14004188  0.07725421 -0.05057608  0.04726574
                               -0.04178543  0.09484261  0.10743136 -0.07534851 -0.02782841  0.00012548 -0.07063655 -0.05947340

 20  1     9    1  |1 0>       -0.20898535 -0.12313939 -0.07572611 -0.01975987 -0.20438888  0.10648044 -0.00561401 -0.04239272
                               -0.07860015 -0.24251019 -0.00628152  0.05119656 -0.01727117 -0.06559188  0.04491964 -0.14117306

 21  1    10    1  |1 0>       -0.00950800 -0.17836690 -0.24745885 -0.13086023 -0.11180806  0.04895375 -0.00327536  0.16005317
                                0.25200462  0.17813203  0.02886458 -0.05013240  0.19523672 -0.09457112  0.07683103 -0.00685775

 22  1    11    1  |1 0>        0.06709476 -0.17737729  0.14606088 -0.02267896  0.11561754 -0.09532271  0.01268923  0.04608419
                               -0.19857275 -0.14008582 -0.01722663 -0.08514134 -0.01230554  0.08140476  0.02441101  0.16717364

 23  1     1    1  |1 1>-       0.13583516  0.06247187  0.07022582  0.10447467 -0.08960856  0.15223022  0.02134897  0.03837015
                               -0.02471980 -0.03369523 -0.05401360 -0.06137009 -0.02674643 -0.04637911 -0.18794590  0.07465645

 24  1     2    1  |1 1>-       0.09176349  0.13291867 -0.10369533  0.00409802 -0.12421778 -0.27882581  0.07026131  0.19028881
                               -0.02382650 -0.15165145 -0.06170735  0.00831004  0.02043413  0.12904909  0.19095636  0.09747355

 25  1     3    1  |1 1>-       0.00145142 -0.11568270 -0.11844734  0.07749296  0.05774675 -0.13472111  0.25267116 -0.20189054
                                0.08679550 -0.14120425  0.03674010  0.02750051  0.29425439 -0.00348939  0.17833920 -0.07862053

 26  1     4    1  |1 1>-       0.13027294  0.05938614 -0.03650756  0.02084612  0.03573931  0.08281542  0.05133948  0.27759570
                               -0.06361930  0.10792555  0.03186289  0.04016509  0.06169427  0.04618498 -0.16268877 -0.16716576

 27  1     5    1  |1 1>-      -0.10548189  0.01347189 -0.09512543 -0.01998611  0.04328222  0.10910511  0.10190726 -0.21089227
                                0.06878440 -0.01817367 -0.13656545 -0.11188438  0.01967296 -0.00287540  0.06586618  0.04704781

 28  1     6    1  |1 1>-       0.05373196  0.37786412 -0.29152482  0.03902336  0.13462079  0.17282114  0.04513727 -0.00662129
                                0.10547153  0.18677184 -0.01316032 -0.13265301  0.23720226 -0.11684455  0.10747665  0.00547963

 29  1     7    1  |1 1>-      -0.14084036  0.10632061  0.34344108 -0.14271856  0.08158257  0.10988163  0.08345158  0.09789836
                                0.22615094 -0.09741727 -0.00963708  0.01318410  0.04620849 -0.07738306  0.09309665 -0.09550115

 30  1     8    1  |1 1>-      -0.17578971  0.27538892  0.03851675 -0.07369655  0.01006912  0.01718822  0.07100733  0.05575898
                                0.08782045  0.13579443 -0.04885377  0.33912149  0.03633782 -0.01549528  0.03923030  0.14537954

 31  1     9    1  |1 1>-       0.13781383 -0.19793846 -0.06041991  0.17103889  0.34152756  0.14925797 -0.21472022  0.13259173
                                0.01681390 -0.00273198  0.03815253  0.02016679 -0.05068748 -0.09580816  0.29443727  0.09422282

 32  1    10    1  |1 1>-      -0.01526132  0.03766654 -0.08140989 -0.05757411  0.00097756 -0.13002673 -0.19052964  0.02217236
                               -0.08312134  0.09077192  0.13572244  0.07751205 -0.08400818  0.26983012  0.02056833  0.20131918

 33  1    11    1  |1 1>-      -0.04764826 -0.13301816 -0.03631498  0.16133474  0.07109905  0.14910001  0.08638846  0.03722839
                               -0.07082776  0.02164765 -0.16340359  0.35524454 -0.07278472 -0.23544321 -0.05102435  0.18513413

 34  1     1    1  |0 0>       -0.00100625  0.00151211  0.00041864 -0.00028313  0.00004243 -0.00031825 -0.00031911 -0.00031666
                                0.00083090 -0.00021983 -0.00110558  0.00002980 -0.00025095 -0.00053954  0.00029035 -0.00046690

 35  1     2    1  |0 0>        0.00181999 -0.00119607  0.00044058  0.00041988 -0.00101812 -0.00004498 -0.00000602  0.00019291
                               -0.00079017 -0.00011078  0.00011549  0.00051835  0.00099536  0.00014542  0.00013842 -0.00009879

 36  1     3    1  |0 0>       -0.00004265  0.00162544  0.00033573 -0.00040355  0.00039530  0.00049286  0.00037164 -0.00026733
                                0.00041754 -0.00047550  0.00050310 -0.00005765 -0.00070818  0.00041058 -0.00010280  0.00024603

 37  1     4    1  |0 0>       -0.00058521  0.00019228 -0.00015136 -0.00063482 -0.00054800  0.00007439 -0.00034175  0.00053087
                               -0.00052748  0.00035871  0.00107501 -0.00045083  0.00037739 -0.00066022  0.00002252  0.00047461

 38  1     5    1  |0 0>        0.00242532  0.00106804  0.00101270  0.00123490 -0.00028572 -0.00004720 -0.00004424 -0.00030506
                               -0.00161143  0.00131985  0.00010950 -0.00051963  0.00033427 -0.00043930  0.00010293  0.00034795

 39  1     6    1  |0 0>        0.00037948  0.00198333  0.00004203  0.00056771 -0.00074086  0.00138700  0.00057675  0.00028538
                               -0.00231177 -0.00440580 -0.00057183  0.00004088  0.00066787  0.00048886  0.00037312 -0.00020200


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39

  1  1     1    1  |1 1>+      -0.03713573 -0.22267201  0.40867695  0.29709511 -0.25035252 -0.25943006  0.04894441
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.04270049  0.34653810 -0.02028404  0.11346126 -0.18447044  0.00882643 -0.01925934
                                0.04814193 -0.04623330 -0.03050287  0.22020913  0.12407865  0.07862549  0.00802925

  3  1     3    1  |1 1>+       0.31017998 -0.14203695  0.13715807  0.08699942  0.20011199  0.06994901  0.08711281
                                0.26188077  0.18707784  0.09912208 -0.00767319 -0.04079554  0.00399870 -0.05475530

  4  1     4    1  |1 1>+      -0.09162698 -0.23734322  0.09699111 -0.04618085 -0.00881722  0.43142934 -0.03453245
                               -0.07059915  0.04026035 -0.19007084  0.33062949 -0.05759152  0.06856822 -0.03772877

  5  1     5    1  |1 1>+       0.11003586  0.06828181 -0.00030252  0.00474736  0.27635490 -0.29942928  0.01941032
                                0.01152216 -0.00999414 -0.26536543  0.39420665  0.12910324 -0.01720784  0.02617022

  6  1     6    1  |1 1>+       0.20675012  0.01035709 -0.04653390  0.00199943 -0.15929829  0.07906016  0.09863774
                                0.02046950 -0.08944517  0.04946530 -0.03698192  0.01819748 -0.00399455 -0.04015416

  7  1     7    1  |1 1>+       0.15461329 -0.00593150 -0.06550615 -0.00692893 -0.14131991  0.00311099  0.20157067
                                0.06022738 -0.10883615 -0.11336290  0.05776207  0.00170701 -0.02861334 -0.05030075

  8  1     8    1  |1 1>+      -0.09863908 -0.04884762  0.08775436 -0.02529855  0.19239259 -0.06876111 -0.29950987
                               -0.02158080 -0.04476751 -0.04887905 -0.07115131 -0.05176473 -0.00343204  0.07111408

  9  1     9    1  |1 1>+       0.03177725 -0.01162728  0.04868437 -0.00304602 -0.03275577 -0.02601745 -0.20655986
                                0.03538498 -0.14396624 -0.09538515 -0.03264751 -0.02920486  0.00269344  0.04856698

 10  1    10    1  |1 1>+      -0.13342947 -0.00783296  0.01332280 -0.03238897  0.04638272 -0.07669120  0.35423650
                                0.00441443 -0.22595701 -0.19603436 -0.10746243 -0.06149050 -0.09919662 -0.08592494

 11  1    11    1  |1 1>+      -0.08806679 -0.00068584 -0.05102799  0.00502037  0.00833297  0.07679169  0.33915665
                               -0.11493668  0.12614549  0.08544968  0.05939864  0.05562340 -0.00629276 -0.07637333

 12  1     1    1  |1 0>        0.01690308 -0.18951044 -0.00531648 -0.05458341  0.05784291 -0.02525960  0.00038043
                                0.12034352 -0.17824103 -0.13223120 -0.06967575 -0.05669122 -0.07539199  0.00440481

 13  1     2    1  |1 0>        0.17780082 -0.16041240  0.06747164 -0.17109993  0.34545101 -0.02447211 -0.00437657
                               -0.09731512 -0.05429699 -0.02168214 -0.05635471 -0.08874785 -0.12480307  0.05658590

 14  1     3    1  |1 0>        0.00201439  0.09595397  0.15236056  0.07256890  0.12282160  0.03820713  0.09440677
                                0.16300383  0.21420106  0.22419588  0.21928477 -0.03596993  0.20615148 -0.07887146

 15  1     4    1  |1 0>        0.08229223 -0.04243567  0.03422666  0.01812657  0.12424339 -0.01067505  0.01859980
                                0.09237952  0.09029833 -0.01095472 -0.11742578  0.06684657 -0.01165047 -0.00567373

 16  1     5    1  |1 0>        0.37536692  0.06397624  0.01121264  0.10493014  0.13809064 -0.08706360  0.00671464
                                0.07149398 -0.08177869 -0.14995096  0.32695914  0.16825520 -0.00289111 -0.01080841

 17  1     6    1  |1 0>       -0.02630097 -0.07884909  0.05679461 -0.04228241  0.03461533 -0.01613301  0.06092031
                                0.07611501 -0.01055117 -0.06261797 -0.04767000 -0.04688259 -0.07558840 -0.02559825

 18  1     7    1  |1 0>       -0.01406548 -0.07714755  0.04073869 -0.01429185  0.05564782  0.01340161  0.13966485
                               -0.12589686 -0.05170406 -0.02047139  0.01522709  0.01066839 -0.13523109 -0.00620962

 19  1     8    1  |1 0>        0.03277184  0.01942729  0.02381843  0.02788267 -0.21497298 -0.03959954 -0.24183117
                                0.03004964 -0.08671092  0.00422338  0.13804623  0.02291639  0.15605517  0.03195556

 20  1     9    1  |1 0>        0.03959241 -0.05920621 -0.01678174 -0.03231446 -0.13399930 -0.03622806 -0.19032736
                               -0.07484857 -0.05477643 -0.02888725  0.00649245  0.00555748 -0.02058989  0.04978185

 21  1    10    1  |1 0>       -0.04650740  0.03477764  0.09932493 -0.01183139 -0.09442950  0.04116383  0.31559585
                               -0.24239535 -0.09104289 -0.02789469  0.04389819  0.06324438  0.08251891 -0.08027929

 22  1    11    1  |1 0>       -0.06524598  0.03219541 -0.00940693  0.04932315  0.17468968  0.06485700  0.30995302
                                0.13666863  0.03283362  0.00700069 -0.05378382  0.00040217  0.01058389 -0.07376508

 23  1     1    1  |1 1>-       0.06020802 -0.05723797  0.22160702 -0.29820564 -0.14207858 -0.04288814 -0.07066896
                               -0.29182436  0.01347986  0.03072393 -0.01025271  0.29959471 -0.06828540 -0.16021347

 24  1     2    1  |1 1>-       0.28815074 -0.15625115 -0.16650355  0.02233265 -0.08592813 -0.02035971 -0.06020740
                               -0.04399062 -0.14598601 -0.20221629 -0.03444676  0.05222110 -0.04439856  0.02663248

 25  1     3    1  |1 1>-       0.11546002  0.05651170  0.23341028 -0.11767304  0.26603834  0.02742107  0.10155183
                               -0.06228744 -0.03941720 -0.01484051 -0.04132711 -0.04138113 -0.10353067  0.01155556

 26  1     4    1  |1 1>-      -0.05510036  0.11422525  0.13108538 -0.13823549 -0.11059506  0.06669289  0.05676825
                                0.07114372  0.14330944 -0.32462861 -0.17311716 -0.14367614 -0.02320741  0.28422105

 27  1     5    1  |1 1>-      -0.01626642  0.01555571 -0.13897203  0.13918339 -0.01665942 -0.01585577 -0.04214609
                                0.00541873  0.35491516 -0.29919830 -0.23581629  0.20034575  0.02158047 -0.15613624

 28  1     6    1  |1 1>-      -0.05462433 -0.03798760 -0.06243696  0.02860696 -0.08051449 -0.00319939 -0.02518365
                               -0.07871839 -0.04117613  0.11480377  0.14001088 -0.06145006 -0.12968186  0.06903209

 29  1     7    1  |1 1>-       0.14424070  0.08246011 -0.06388082  0.07079387 -0.12725892  0.00529053 -0.08583997
                                0.01315845  0.12442057  0.01268482  0.12597847  0.00055230 -0.23748964  0.01868070

 30  1     8    1  |1 1>-       0.01849334  0.05037981  0.08668513 -0.05648493  0.10178235 -0.01727028  0.09427875
                               -0.07615726  0.04080286 -0.02840483 -0.03456440  0.00945623  0.34928385 -0.05574242

 31  1     9    1  |1 1>-       0.12088109  0.07273323  0.02658473 -0.01884682 -0.08896208 -0.00908917 -0.00132792
                               -0.10451980  0.04593282 -0.02239142  0.02405234  0.01586959  0.19797266  0.00348122

 32  1    10    1  |1 1>-      -0.00896200  0.22595341  0.09546516  0.10240443  0.08316745  0.05509015  0.04554137
                               -0.22525194  0.20238281  0.02892842  0.02460694  0.01566876 -0.32533840  0.00998687

 33  1    11    1  |1 1>-      -0.08519539 -0.20280773 -0.08636604  0.02112572  0.05504635  0.02566850  0.00393213
                                0.05979733 -0.03138715 -0.02395285 -0.03488717  0.00795027 -0.31131686  0.05812851

 34  1     1    1  |0 0>        0.00000101 -0.00008546 -0.00005329 -0.00007884  0.00012249  0.00004297  0.00000642
                               -0.00010008  0.00013207  0.00009281 -0.00006241  0.00000905 -0.00000928  0.00001362

 35  1     2    1  |0 0>        0.00002883 -0.00003897 -0.00015421 -0.00001531 -0.00005040  0.00006343  0.00000383
                               -0.00011814  0.00017968  0.00002780  0.00012363  0.00003258  0.00002367  0.00000195

 36  1     3    1  |0 0>        0.00024467 -0.00019066 -0.00005079 -0.00006743 -0.00003731 -0.00003079  0.00004673
                                0.00006440  0.00009989  0.00003249  0.00008219 -0.00005673  0.00000838  0.00002411

 37  1     4    1  |0 0>        0.00037856 -0.00007739  0.00014489 -0.00000334  0.00011785  0.00004925 -0.00001219
                                0.00048721  0.00014444  0.00007379 -0.00008951 -0.00001090  0.00000265 -0.00001601

 38  1     5    1  |0 0>        0.00011279  0.00021144 -0.00000280 -0.00002340 -0.00001493  0.00004358  0.00000901
                                0.00016605 -0.00004364 -0.00024486  0.00011769 -0.00016268 -0.00000883 -0.00003832

 39  1     6    1  |0 0>       -0.00008122  0.00027343  0.00009499  0.00015169  0.00006624  0.00005908  0.00000732
                                0.00012766  0.00000811  0.00018795  0.00007398  0.00023155  0.00003218  0.00002902



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.18%    8.25%    4.17%    6.97%   22.63%    0.69%    0.73%    0.05%
  2  1     2    1  |1 1>+         0.08%    0.76%    4.85%    8.62%    3.94%    2.41%    3.91%    7.37%
  3  1     3    1  |1 1>+         1.18%    0.22%    1.83%    1.01%    5.10%   13.30%    5.55%    7.80%
  4  1     4    1  |1 1>+         0.19%   21.02%    0.78%    6.26%    6.96%    2.22%    3.67%    0.13%
  5  1     5    1  |1 1>+         0.00%    6.09%   14.05%   19.48%    2.21%    1.53%    1.22%    0.61%
  6  1     6    1  |1 1>+         1.22%    0.28%    2.84%    0.15%    0.34%    0.37%    2.65%    2.48%
  7  1     7    1  |1 1>+         4.35%    0.05%    1.30%    0.62%    0.18%    3.16%    3.21%    1.50%
  8  1     8    1  |1 1>+         9.69%    0.20%    3.53%    0.56%    0.61%    0.48%    0.40%    2.23%
  9  1     9    1  |1 1>+         4.44%    0.12%    0.37%    0.02%    0.25%    2.02%    0.09%    5.58%
 10  1    10    1  |1 1>+        12.77%    1.87%    1.07%    0.70%    0.11%    9.57%    0.43%    3.71%
 11  1    11    1  |1 1>+        12.00%    0.65%    0.68%    0.25%    0.23%    0.99%    0.72%    4.40%
 12  1     1    1  |1 0>          0.02%    0.29%    0.86%    1.27%    0.23%    6.69%    2.23%    3.31%
 13  1     2    1  |1 0>          0.12%    1.56%   16.97%    1.53%    2.85%    1.81%    0.99%    2.08%
 14  1     3    1  |1 0>          2.07%    3.96%    1.14%    4.12%    3.14%    5.05%   15.51%    5.70%
 15  1     4    1  |1 0>          0.05%    0.12%    1.41%    1.26%    1.71%    0.08%    2.91%    8.97%
 16  1     5    1  |1 0>          0.10%    0.77%    2.81%   16.06%    1.54%    0.95%    7.88%    5.29%
 17  1     6    1  |1 0>          0.38%    0.53%    0.25%    0.86%    0.13%    1.24%    0.73%    5.46%
 18  1     7    1  |1 0>          1.85%    2.20%    0.20%    0.04%    0.58%    1.06%    2.38%    1.68%
 19  1     8    1  |1 0>          5.57%    3.15%    4.41%    2.06%    0.24%    0.16%    0.79%    0.12%
 20  1     9    1  |1 0>          3.98%    0.04%    1.40%    0.14%    0.35%    2.35%    0.29%    0.24%
 21  1    10    1  |1 0>         10.70%    0.81%    0.44%    0.19%    0.32%    4.47%    4.63%    1.41%
 22  1    11    1  |1 0>         10.04%    0.12%    2.70%    0.46%    0.83%    2.17%    0.45%    0.15%
 23  1     1    1  |1 1>-         3.51%    0.11%   13.15%    8.32%    2.97%    1.46%    6.60%    3.47%
 24  1     2    1  |1 1>-         0.45%    0.27%    0.86%    0.10%    3.02%    7.59%   16.77%    0.81%
 25  1     3    1  |1 1>-         1.02%    1.20%    7.39%    2.20%    1.45%    1.72%    2.75%    5.14%
 26  1     4    1  |1 1>-         9.03%    0.15%    2.60%    3.41%    9.67%    8.38%    4.25%    2.33%
 27  1     5    1  |1 1>-         2.47%    0.15%    2.00%    7.38%   23.77%    1.38%    0.79%    1.29%
 28  1     6    1  |1 1>-         0.28%    2.06%    0.81%    1.54%    2.06%    0.14%    0.90%    2.65%
 29  1     7    1  |1 1>-         0.67%    5.47%    2.55%    1.99%    0.83%    1.88%    0.61%    0.09%
 30  1     8    1  |1 1>-         1.11%   11.98%    1.65%    0.45%    0.28%    1.28%    0.48%    0.69%
 31  1     9    1  |1 1>-         0.02%    4.22%    0.71%    0.84%    0.26%    0.30%    0.48%    0.37%
 32  1    10    1  |1 1>-         0.26%   11.36%    0.09%    0.26%    1.19%    9.96%    4.64%    2.72%
 33  1    11    1  |1 1>-         0.21%   10.00%    0.11%    0.89%    0.00%    3.16%    0.34%   10.17%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         1.36%    0.14%    1.37%    0.19%    1.53%    0.15%    1.83%    0.00%
  2  1     2    1  |1 1>+         3.51%    1.20%    5.53%    1.35%    1.90%    0.56%    1.25%    0.00%
  3  1     3    1  |1 1>+         0.60%    1.27%    4.33%    2.10%    3.12%    1.73%    0.20%    0.00%
  4  1     4    1  |1 1>+         0.04%    1.03%    0.05%    1.34%    2.80%    0.28%    1.44%    0.00%
  5  1     5    1  |1 1>+         1.02%    0.11%    0.43%    0.22%    1.02%    1.10%    0.32%    0.00%
  6  1     6    1  |1 1>+         6.43%    5.60%    1.34%    2.16%   19.69%    2.31%    1.07%    0.00%
  7  1     7    1  |1 1>+         3.73%    1.45%    1.16%    9.03%    1.71%    7.20%    4.43%    0.00%
  8  1     8    1  |1 1>+         2.33%   11.09%    8.17%    2.92%    0.82%    1.23%    1.33%    0.00%
  9  1     9    1  |1 1>+         3.98%    5.19%    2.96%   16.41%    1.15%    1.35%    0.96%    0.01%
 10  1    10    1  |1 1>+         8.55%    0.03%    0.97%    5.97%    1.39%    1.49%    0.62%    0.00%
 11  1    11    1  |1 1>+         1.32%    2.87%    4.90%    3.15%    4.57%    4.33%    3.28%    0.01%
 12  1     1    1  |1 0>          0.16%    6.37%    6.16%    1.21%    3.83%    0.14%   11.38%    0.01%
 13  1     2    1  |1 0>          3.11%    5.17%    1.51%    3.76%    1.76%    0.27%    0.91%    0.00%
 14  1     3    1  |1 0>          1.71%    2.39%    1.29%    0.76%    1.15%    0.88%    0.11%    0.00%
 15  1     4    1  |1 0>          2.31%    2.58%    5.13%    3.57%    8.84%    4.76%    3.78%    0.00%
 16  1     5    1  |1 0>          7.94%    0.46%    1.40%    0.05%    0.93%    0.96%    0.10%    0.00%
 17  1     6    1  |1 0>          0.44%    0.40%    4.78%    0.90%    7.05%    4.91%    1.67%    0.03%
 18  1     7    1  |1 0>          0.46%    0.56%    4.54%    0.46%    4.10%    3.68%   16.89%    0.02%
 19  1     8    1  |1 0>          0.12%    0.46%    2.30%    1.28%    5.48%   10.31%    2.62%    0.02%
 20  1     9    1  |1 0>          1.40%    1.29%    0.79%    2.46%    0.96%    5.02%    2.05%    0.00%
 21  1    10    1  |1 0>          0.39%    5.17%    1.49%    1.09%    5.12%    1.54%    6.61%    0.00%
 22  1    11    1  |1 0>          3.64%    2.57%    0.19%    0.25%    0.80%    0.81%    5.90%    0.02%
 23  1     1    1  |1 1>-         3.08%    1.03%    1.59%    0.08%    1.56%    0.30%    1.71%    0.00%
 24  1     2    1  |1 1>-         6.68%    0.59%    7.47%    0.21%    1.82%    1.18%    2.34%    0.00%
 25  1     3    1  |1 1>-        16.07%    4.82%    1.49%    1.86%    1.02%    0.97%    0.56%    0.00%
 26  1     4    1  |1 1>-         3.29%    0.48%    1.66%    0.34%    0.18%    0.49%    0.72%    0.00%
 27  1     5    1  |1 1>-         0.55%    2.14%    1.45%    0.75%    0.86%    1.00%    0.95%    0.00%
 28  1     6    1  |1 1>-         1.69%    9.83%    0.83%    2.23%    2.47%   12.10%    6.44%    0.00%
 29  1     7    1  |1 1>-         1.83%    0.69%    2.25%    8.30%    1.52%   24.28%    0.67%    0.00%
 30  1     8    1  |1 1>-         1.03%    0.20%    8.21%    3.98%    7.00%    2.41%   10.45%    0.00%
 31  1     9    1  |1 1>-         2.93%   21.03%    7.49%    3.88%    0.79%    0.29%    5.34%    0.00%
 32  1    10    1  |1 1>-         7.39%    1.78%    3.28%    0.36%    1.50%    1.82%    1.76%    0.00%
 33  1    11    1  |1 1>-         0.94%    0.00%    3.48%   17.36%    1.54%    0.15%    0.29%    0.00%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.87%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%   22.55%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.73%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.88%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.83%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.22%    0.18%    0.21%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.02%    0.84%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.25%    0.54%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.05%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.08%    1.28%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.50%    1.34%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    1.00%    0.88%   21.20%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    1.15%    0.21%    8.29%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    3.82%    1.10%    3.35%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.97%    0.04%    1.53%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    5.46%    2.27%    5.44%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    1.32%   19.94%    0.33%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.16%    1.89%    5.39%
 14  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.90%    1.64%    0.67%
 15  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.30%    1.55%    0.66%
 16  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.88%    0.76%
 17  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.08%    5.97%   35.93%    0.60%
 18  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%   12.49%    4.99%    3.42%
 19  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.04%   10.70%    2.03%   18.83%
 20  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%   21.73%   17.12%    9.51%
 21  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.24%    0.90%    2.18%
 22  1    11    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.06%   25.09%    5.15%    3.47%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.41%    0.20%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.64%    0.08%    1.15%
 25  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.27%    0.03%    0.01%
 26  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.05%    0.53%
 27  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.21%    0.08%    1.76%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    1.91%    0.11%    0.96%
 29  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.21%    2.10%
 30  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.65%    0.47%    1.87%
 31  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.98%    0.85%    0.63%
 32  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.02%    0.77%
 33  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.57%    0.06%    0.11%
 34  1     1    1  |0 0>         14.58%   13.50%   28.81%   19.20%    0.00%    0.04%    0.01%    0.00%
 35  1     2    1  |0 0>          5.01%    1.38%    3.57%   67.41%    0.00%    0.05%    0.01%    0.00%
 36  1     3    1  |0 0>         49.46%   12.62%   31.34%    2.85%    0.00%    0.00%    0.01%    0.00%
 37  1     4    1  |0 0>          2.64%   46.83%   34.69%    5.94%    0.00%    0.01%    0.00%    0.00%
 38  1     5    1  |0 0>         28.30%   25.66%    1.59%    4.58%    0.00%    0.04%    0.01%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.60%    0.34%    0.05%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         1.95%    0.07%    0.16%    1.09%    0.57%    0.55%    0.68%    0.22%
  2  1     2    1  |1 1>+         4.04%    2.02%    0.56%    1.94%    6.69%    1.54%    6.90%    3.63%
  3  1     3    1  |1 1>+         4.35%    0.84%    0.92%    1.05%    0.22%    7.66%    1.02%    2.44%
  4  1     4    1  |1 1>+         4.36%    1.64%    0.45%    0.72%    0.15%    1.16%    0.06%    0.59%
  5  1     5    1  |1 1>+         0.01%    0.14%    0.66%    0.65%    1.48%    0.21%    1.16%    2.16%
  6  1     6    1  |1 1>+         1.54%    1.41%   18.45%    7.38%    4.61%    2.15%    1.40%    2.13%
  7  1     7    1  |1 1>+         4.72%    3.20%    0.44%    4.11%    0.77%    0.65%    1.82%    5.76%
  8  1     8    1  |1 1>+         0.54%    2.11%    1.98%    2.98%    9.97%    1.75%    7.87%    0.59%
  9  1     9    1  |1 1>+         6.45%    0.96%    0.86%   13.37%    4.73%    3.28%    3.31%    5.51%
 10  1    10    1  |1 1>+         1.25%    0.32%    2.59%    2.43%    2.51%    3.49%    4.05%    4.11%
 11  1    11    1  |1 1>+         6.12%    1.23%    5.71%    4.03%    1.10%    1.12%    2.61%    2.50%
 12  1     1    1  |1 0>          2.65%    8.47%    1.90%    0.72%    4.51%    2.82%    0.59%    0.49%
 13  1     2    1  |1 0>          2.26%    1.75%    1.69%    1.03%    1.14%    0.04%    3.99%    9.89%
 14  1     3    1  |1 0>          1.74%    0.52%    0.21%    1.42%    1.74%   11.65%    1.38%    0.75%
 15  1     4    1  |1 0>          7.08%    2.24%    5.05%    4.24%    4.68%    9.04%    6.96%    4.60%
 16  1     5    1  |1 0>          1.56%    0.09%    0.09%    1.22%    0.48%    3.28%    7.48%    1.62%
 17  1     6    1  |1 0>          4.52%    0.67%    3.75%    1.04%    5.29%    2.77%    2.72%    3.11%
 18  1     7    1  |1 0>          3.02%    7.08%    7.99%    8.00%    2.39%    0.01%    1.18%    1.81%
 19  1     8    1  |1 0>          3.15%    0.91%    4.28%    0.74%    2.04%    0.60%    0.75%    0.58%
 20  1     9    1  |1 0>          4.99%    7.40%    0.58%    0.30%    4.21%    1.56%    0.20%    2.17%
 21  1    10    1  |1 0>          6.36%    6.35%    6.21%    1.96%    5.06%    1.13%    0.59%    2.57%
 22  1    11    1  |1 0>          4.39%    5.11%    2.16%    0.78%    1.35%    1.57%    0.08%    3.01%
 23  1     1    1  |1 1>-         1.91%    0.50%    0.78%    1.47%    0.87%    2.53%    3.58%    0.70%
 24  1     2    1  |1 1>-         0.90%    4.07%    1.46%    0.01%    1.58%    9.44%    4.14%    4.57%
 25  1     3    1  |1 1>-         0.75%    3.33%    1.54%    0.68%    8.99%    1.82%    9.56%    4.69%
 26  1     4    1  |1 1>-         2.10%    1.52%    0.23%    0.20%    0.51%    0.90%    2.91%   10.50%
 27  1     5    1  |1 1>-         1.59%    0.05%    2.77%    1.29%    0.23%    1.19%    1.47%    4.67%
 28  1     6    1  |1 1>-         1.40%   17.77%    8.52%    1.91%    7.44%    4.35%    1.36%    0.01%
 29  1     7    1  |1 1>-         7.10%    2.08%   11.80%    2.05%    0.88%    1.81%    1.56%    1.87%
 30  1     8    1  |1 1>-         3.86%    9.43%    0.39%   12.04%    0.14%    0.05%    0.66%    2.42%
 31  1     9    1  |1 1>-         1.93%    3.92%    0.51%    2.97%   11.92%    3.15%   13.28%    2.65%
 32  1    10    1  |1 1>-         0.71%    0.97%    2.50%    0.93%    0.71%    8.97%    3.67%    4.10%
 33  1    11    1  |1 1>-         0.73%    1.82%    2.80%   15.22%    1.04%    7.77%    1.01%    3.57%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39

  1  1     1    1  |1 1>+         0.14%    4.96%   16.70%    8.83%    6.27%    6.73%    0.24%
  2  1     2    1  |1 1>+         0.41%   12.22%    0.13%    6.14%    4.94%    0.63%    0.04%
  3  1     3    1  |1 1>+        16.48%    5.52%    2.86%    0.76%    4.17%    0.49%    1.06%
  4  1     4    1  |1 1>+         1.34%    5.80%    4.55%   11.14%    0.34%   19.08%    0.26%
  5  1     5    1  |1 1>+         1.22%    0.48%    7.04%   15.54%    9.30%    9.00%    0.11%
  6  1     6    1  |1 1>+         4.32%    0.81%    0.46%    0.14%    2.57%    0.63%    1.13%
  7  1     7    1  |1 1>+         2.75%    1.19%    1.71%    0.34%    2.00%    0.08%    4.32%
  8  1     8    1  |1 1>+         1.02%    0.44%    1.01%    0.57%    3.97%    0.47%    9.48%
  9  1     9    1  |1 1>+         0.23%    2.09%    1.15%    0.11%    0.19%    0.07%    4.50%
 10  1    10    1  |1 1>+         1.78%    5.11%    3.86%    1.26%    0.59%    1.57%   13.29%
 11  1    11    1  |1 1>+         2.10%    1.59%    0.99%    0.36%    0.32%    0.59%   12.09%
 12  1     1    1  |1 0>          1.48%    6.77%    1.75%    0.78%    0.66%    0.63%    0.00%
 13  1     2    1  |1 0>          4.11%    2.87%    0.50%    3.25%   12.72%    1.62%    0.32%
 14  1     3    1  |1 0>          2.66%    5.51%    7.35%    5.34%    1.64%    4.40%    1.51%
 15  1     4    1  |1 0>          1.53%    1.00%    0.13%    1.41%    1.99%    0.02%    0.04%
 16  1     5    1  |1 0>         14.60%    1.08%    2.26%   11.79%    4.74%    0.76%    0.02%
 17  1     6    1  |1 0>          0.65%    0.63%    0.71%    0.41%    0.34%    0.60%    0.44%
 18  1     7    1  |1 0>          1.60%    0.86%    0.21%    0.04%    0.32%    1.85%    1.95%
 19  1     8    1  |1 0>          0.20%    0.79%    0.06%    1.98%    4.67%    2.59%    5.95%
 20  1     9    1  |1 0>          0.72%    0.65%    0.11%    0.11%    1.80%    0.17%    3.87%
 21  1    10    1  |1 0>          6.09%    0.95%    1.06%    0.21%    1.29%    0.85%   10.60%
 22  1    11    1  |1 0>          2.29%    0.21%    0.01%    0.53%    3.05%    0.43%   10.15%
 23  1     1    1  |1 1>-         8.88%    0.35%    5.01%    8.90%   10.99%    0.65%    3.07%
 24  1     2    1  |1 1>-         8.50%    4.57%    6.86%    0.17%    1.01%    0.24%    0.43%
 25  1     3    1  |1 1>-         1.72%    0.47%    5.47%    1.56%    7.25%    1.15%    1.04%
 26  1     4    1  |1 1>-         0.81%    3.36%   12.26%    4.91%    3.29%    0.50%    8.40%
 27  1     5    1  |1 1>-         0.03%   12.62%   10.88%    7.50%    4.04%    0.07%    2.62%
 28  1     6    1  |1 1>-         0.92%    0.31%    1.71%    2.04%    1.03%    1.68%    0.54%
 29  1     7    1  |1 1>-         2.10%    2.23%    0.42%    2.09%    1.62%    5.64%    0.77%
 30  1     8    1  |1 1>-         0.61%    0.42%    0.83%    0.44%    1.04%   12.23%    1.20%
 31  1     9    1  |1 1>-         2.55%    0.74%    0.12%    0.09%    0.82%    3.93%    0.00%
 32  1    10    1  |1 1>-         5.08%    9.20%    1.00%    1.11%    0.72%   10.89%    0.22%
 33  1    11    1  |1 1>-         1.08%    4.21%    0.80%    0.17%    0.31%    9.76%    0.34%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%


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

              2       7      810.79       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     88303.49  84508.42     14.56    627.59   3147.87      2.95      0.13      1.62
 REAL TIME  *     89127.36 SEC
 DISK USED  *       872.17 MB (local),       10.91 GB (total)
 SF USED    *         6.48 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK3 energy=  -6136.757508078843

              CI              CI           MULTI         RHF-SCF
  -6174.30078860  -6174.17029829  -6173.66599467  -6172.96982975
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
