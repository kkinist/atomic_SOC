
 Working directory              : /wrk/irikura/molpro.UcWeBY7htW/
 Global scratch directory       : /wrk/irikura/molpro.UcWeBY7htW/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.UcWeBY7htW/

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
 
                                                                                 !lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 09-May-24          TIME: 19:20:28  
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

     Node minimum: 0.786 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     760824.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     760824      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    18047686. AND WROTE      147789. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1830907. AND WROTE     9150625. INTEGRALS IN     48 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

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
 CPU TIMES  *         1.83      1.64
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
   1    -6084.60504269   -6084.60504269     0.00D+00     0.14D+01     0     0       0.01      0.02    start
   2    -6119.20716596     -34.60212326     0.54D+00     0.14D+01     1     0       0.00      0.02    diag
   3    -6169.62512421     -50.41795825     0.47D+00     0.21D+00     2     0       0.01      0.03    diag
   4    -6172.72282135      -3.09769714     0.11D+00     0.18D+00     3     0       0.00      0.03    diag
   5    -6172.96793600      -0.24511465     0.32D-01     0.27D-01     4     0       0.00      0.03    diag
   6    -6172.96981377      -0.00187777     0.24D-02     0.53D-02     5     0       0.01      0.04    diag
   7    -6172.96982923      -0.00001547     0.16D-03     0.23D-03     6     0       0.00      0.04    diag
   8    -6172.96982972      -0.00000049     0.41D-04     0.31D-04     7     0       0.01      0.05    fixocc
   9    -6172.96982975      -0.00000004     0.46D-05     0.18D-04     8     0       0.00      0.05    diag
  10    -6172.96982975      -0.00000000     0.27D-06     0.63D-06     9     0       0.01      0.06    diag/orth
  11    -6172.96982975       0.00000000     0.11D-07     0.41D-07     0     0       0.00      0.06    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -6172.969829754502
  RHF One-electron energy           -8458.981645824093
  RHF Two-electron energy            2286.011816069591
  RHF Kinetic energy                 7123.758090708899
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
    5.1     2.00000   -19.53200     1  1  d1+  0.99597
    6.1     2.00000   -19.53200     1  1  d1-  0.99597
    7.1     2.00000   -19.53200     1  1  d2-  0.99498
    8.1     2.00000   -19.53200     1  1  d2+  0.99498
    9.1     2.00000    -6.52363     1  4  s    1.09168
   10.1     2.00000    -1.94645     1  2  d1+  1.00239
   11.1     2.00000    -1.94645     1  2  d1-  1.00239
   12.1     2.00000    -1.94645     1  2  d0   1.00448
   13.1     2.00000    -1.94645     1  2  d2-  0.99948
   14.1     2.00000    -1.94645     1  2  d2+  0.99948
   15.1     2.00000    -1.05761     1  5  s    1.09341
    1.2     2.00000  -149.69231     1  1  pz   0.99999
    2.2     2.00000  -149.69231     1  1  px   0.99823
    3.2     2.00000  -149.69231     1  1  py   0.99823
    4.2     2.00000   -28.42265     1  2  pz   1.00016
    5.2     2.00000   -28.42265     1  2  px   0.99515
    6.2     2.00000   -28.42265     1  2  py   0.99515
    7.2     2.00000    -4.68852     1  3  pz   0.99711
    8.2     2.00000    -4.68852     1  3  px   0.98844
    9.2     2.00000    -4.68852     1  3  py   0.98844


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
 CPU TIMES  *         2.18      0.35      1.64
 REAL TIME  *         2.94 SEC
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
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.243D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.845D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.834D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.921D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.921D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.629D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.621D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.215D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.921D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.922D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 1 4   6 2 3 5 1 1 2 4 6 3   5 1 2 4 6 3 5 1 2 4   6 3 5 2 4 6 3 5 1 7
                                        91112 814151310 2 4   6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.999D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.566D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.564D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.122D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.920D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.916D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.116D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.117D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.111D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.111D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.110D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.105D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.116D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.116D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 2   1 3 3 1 2 3 1 2 6 4   5 810 7 9 6 4 510 8   7 9 3 1 2 6 4 5 810
                                        7 9 3 1 2 6 4 5 810   9 7 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
                                          0.05882   0.05882   0.05882
 Weight factors for state symmetry  2:    0.05882   0.05882   0.05882   0.05882   0.05882   0.05882
 
 Number of orbital rotations:  1253  ( 68 closed/active, 906 closed/virtual, 0 active/active, 279 active/virtual )
 Total number of variables:    4304
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -6173.61389779   -6173.63066752   -0.01676973    0.18107110 0.00007774 0.00000000  0.37E+00      0.76
   2    8   14    0  -6173.63108912   -6173.63115665   -0.00006753    0.00643518 0.00000011 0.00000000  0.44E-01      1.78
   3    8   16    0  -6173.63115685   -6173.63115686   -0.00000000    0.00003738 0.00000000 0.00000000  0.14E-03      2.69
   4    4    8    0  -6173.63115686   -6173.63115686    0.00000000    0.00000002 0.00000001 0.00000000  0.18E-07      3.31

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.74E-08)
                       Final energy:  -6173.63115686
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -6173.730084560918
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.96830147
 One electron energy                         -8491.95335901
 Two electron energy                          2318.22327445
 Virial ratio                                    1.86649229
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -6173.730084560889
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.96830147
 One electron energy                         -8491.95335901
 Two electron energy                          2318.22327445
 Virial ratio                                    1.86649229
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -6173.730084560680
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.96830148
 One electron energy                         -8491.95335908
 Two electron energy                          2318.22327451
 Virial ratio                                    1.86649229
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -6173.552049994822
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625145
 Two electron energy                          2307.35420146
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -6173.552049994812
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625145
 Two electron energy                          2307.35420145
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -6173.552049994641
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625147
 Two electron energy                          2307.35420147
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -6173.552049994600
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625148
 Two electron energy                          2307.35420149
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -6173.552049994538
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84651952
 One electron energy                         -8480.90625148
 Two electron energy                          2307.35420149
 Virial ratio                                    1.86660374
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -6173.545389942255
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.07090074
 One electron energy                         -8482.17958776
 Two electron energy                          2308.63419782
 Virial ratio                                    1.86657551
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -6173.545389941955
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.07090074
 One electron energy                         -8482.17958779
 Two electron energy                          2308.63419784
 Virial ratio                                    1.86657551
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -6173.545389941836
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.07090075
 One electron energy                         -8482.17958781
 Two electron energy                          2308.63419787
 Virial ratio                                    1.86657551
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -6173.695399678651
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433506
 One electron energy                         -8491.23791762
 Two electron energy                          2317.54251794
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -6173.695399678578
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433507
 One electron energy                         -8491.23791764
 Two electron energy                          2317.54251796
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -6173.695399678565
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433507
 One electron energy                         -8491.23791763
 Two electron energy                          2317.54251796
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -6173.695399678260
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433508
 One electron energy                         -8491.23791770
 Two electron energy                          2317.54251803
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -6173.695399678237
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.85433508
 One electron energy                         -8491.23791770
 Two electron energy                          2317.54251803
 Virial ratio                                    1.86650128
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -6173.665994671410
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

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000032002
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999982152
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999998
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000136
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.326113161872
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.999999917475
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000126889
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.673894333187
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999981
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000000001314
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.999999999696
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.061661367625
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999481126
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000675289
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000001070
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.938333374269
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999998
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999997928
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000001587
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999998443
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.967712373026
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000003402
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999983272
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.032286213658
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000141
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999999999991
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.999999999818
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.001294555720
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999999997491
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999997725
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999996186
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.998705233963
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999968000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000019920
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999998415
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000001421
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.706174465102
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000079123
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     3.999999889839
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     3.293819453155
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999878
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999998695
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000000487
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.937044076655
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000521383
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999326986
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000002743
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.062961391768
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
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 2   4 6 5 3 1 1 4 3 5 6   2 1 4 3 5 2 6 1 2 4   6 3 5 2 4 6 3 5 1 7
                                        91112 814151013 2 3   5 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 1 2 1   2 3 3 2 1 2 1 3 4 6   810 7 9 5 3 1 2 6 4   5 810 7 9 4 6 5 810
                                        9 7 1 2 3 6 4 5 810   9 7 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1078.47152     1  1  s    0.98900
    2.1     2.00000  -166.29937     1  2  s    1.07350
    3.1     2.00000   -33.62525     1  3  s    0.84456
    4.1     2.00000   -18.96824     1  1  d0   0.99998
    5.1     2.00000   -18.96824     1  1  d1-  0.99998
    6.1     2.00000   -18.96824     1  1  d1+  0.99998
    7.1     2.00000   -18.96824     1  1  d2-  0.99998
    8.1     2.00000   -18.96824     1  1  d2+  0.99998
    9.1     2.00000    -5.96157     1  4  s    1.09179
   10.1     2.00000    -1.38687     1  2  d0   1.00073
   11.1     2.00000    -1.38687     1  2  d1+  1.00073
   12.1     2.00000    -1.38687     1  2  d1-  1.00073
   13.1     2.00000    -1.38687     1  2  d2+  1.00073
   14.1     2.00000    -1.38687     1  2  d2-  1.00073
   15.1     1.95606    -0.56323     1  5  s    1.07014
    1.2     2.00000  -149.12692     1  1  pz   0.99999
    2.2     2.00000  -149.12692     1  1  py   0.99999
    3.2     2.00000  -149.12692     1  1  px   0.99999
    4.2     2.00000   -27.85975     1  2  pz   1.00021
    5.2     2.00000   -27.85975     1  2  py   1.00021
    6.2     2.00000   -27.85975     1  2  px   1.00021
    7.2     2.00000    -4.12862     1  3  pz   0.99926
    8.2     2.00000    -4.12862     1  3  px   0.99926
    9.2     2.00000    -4.12862     1  3  py   0.99926
   10.2     0.52133    -0.10269     1  4  px   1.06180
   11.2     0.52133    -0.10269     1  4  py   1.06180
   12.2     0.52133    -0.10269     1  4  pz   1.06180
   13.2     0.15998     0.04745     1  4  pz  -0.48043    1  9  pz   1.18790
   14.2     0.15998     0.04745     1  4  py  -0.48043    1  9  py   1.18790
   15.2     0.15998     0.04745     1  4  px  -0.48043    1  9  px   1.18790
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a0a000      -0.00000133      0.00004514      0.99177470     -0.00000002      0.00000000      0.00000000      0.00000000
 2 0aa000       0.99177469     -0.00017741      0.00000134     -0.00000000     -0.00000000     -0.00000001     -0.00000000
 2 aa0000       0.00017741      0.99177469     -0.00004514     -0.00000000     -0.00000000      0.00000000     -0.00000001
 2 0a00a0      -0.00000000     -0.00000000     -0.00000000      0.00000781     -0.07243441      0.00000986     -0.00011585
 2 00aa00       0.00000000     -0.00000000     -0.00000000      0.00000654      0.73160595     -0.00003401      0.00004107
 2 0a0a00       0.00906126     -0.00000162      0.00000001      0.00000855      0.00002973      0.69821241      0.00011411
 2 a00a00      -0.00000001      0.00000041      0.00906126      0.69821241     -0.00000980     -0.00000855     -0.00001090
 2 00a00a       0.00000001     -0.00000041     -0.00906123      0.69821240     -0.00000980     -0.00000855     -0.00001090
 2 0a000a      -0.00000162     -0.00906123      0.00000041      0.00001090      0.00000777     -0.00011411      0.69821240
 2 00a0a0      -0.00906124      0.00000162     -0.00000001      0.00000855      0.00002973      0.69821238      0.00011411
 2 a000a0       0.00000162      0.00906124     -0.00000041      0.00001090      0.00000777     -0.00011411      0.69821237
 2 a0000a      -0.00000000      0.00000000      0.00000000     -0.00001435     -0.65917153      0.00002414      0.00007478
 2 0000aa       0.00000334      0.01865527     -0.00000085     -0.00000000      0.00000000     -0.00000000      0.00000001
 2 000a0a      -0.00000003      0.00000085      0.01865527      0.00000002     -0.00000000     -0.00000000     -0.00000000
 2 000aa0       0.01865527     -0.00000334      0.00000003      0.00000000      0.00000000      0.00000002      0.00000000
 0 a2a000       0.00000015     -0.00000525     -0.11527731      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 aa2000      -0.00002062     -0.11527731      0.00000525      0.00000000      0.00000000     -0.00000000      0.00000000
 0 2aa000      -0.11527731      0.00002062     -0.00000016      0.00000000      0.00000000      0.00000000      0.00000000
 0 0a20a0       0.00000000      0.00000000      0.00000000     -0.00000085      0.00706380     -0.00000103      0.00001247
 0 2a00a0       0.00000000      0.00000000      0.00000000     -0.00000083      0.00850875     -0.00000109      0.00001244
 0 02aa00      -0.00000000      0.00000000      0.00000000     -0.00000071     -0.07894815      0.00000366     -0.00000432
 0 20aa00      -0.00000000      0.00000000      0.00000000     -0.00000069     -0.07833856      0.00000365     -0.00000451
 0 2a0a00       0.00098256     -0.00000018      0.00000000     -0.00000092     -0.00000321     -0.07541645     -0.00001233
 0 a20a00      -0.00000000      0.00000004      0.00098256     -0.07541645      0.00000106      0.00000092      0.00000118
 0 0a200a      -0.00000018     -0.00098256      0.00000004     -0.00000118     -0.00000084      0.00001233     -0.07541645
 0 02a00a       0.00000000     -0.00000004     -0.00098256     -0.07541644      0.00000106      0.00000092      0.00000118
 0 a020a0       0.00000018      0.00098256     -0.00000004     -0.00000118     -0.00000084      0.00001233     -0.07541644
 0 20a0a0      -0.00098256      0.00000018     -0.00000000     -0.00000092     -0.00000321     -0.07541644     -0.00001233
 0 0a2a00      -0.02413156      0.00000432     -0.00000003     -0.00000091     -0.00000318     -0.07469104     -0.00001221
 0 a02a00       0.00000003     -0.00000110     -0.02413156     -0.07469104      0.00000105      0.00000091      0.00000117
 0 20a00a      -0.00000003      0.00000110      0.02413156     -0.07469104      0.00000105      0.00000091      0.00000117
 0 2a000a       0.00000432      0.02413156     -0.00000110     -0.00000117     -0.00000083      0.00001221     -0.07469104
 0 02a0a0       0.02413156     -0.00000432      0.00000003     -0.00000091     -0.00000318     -0.07469104     -0.00001221
 0 a200a0      -0.00000432     -0.02413156      0.00000110     -0.00000117     -0.00000083      0.00001221     -0.07469103
 0 a2000a      -0.00000000     -0.00000000     -0.00000000      0.00000154      0.07127476     -0.00000262     -0.00000796
 0 a0200a       0.00000000     -0.00000000     -0.00000000      0.00000154      0.07043940     -0.00000257     -0.00000812
 
 Energy:    -6173.73008456  -6173.73008456  -6173.73008456  -6173.55204999  -6173.55204999  -6173.55204999  -6173.55204999

 State:              8               9              10              11
 2 a0a000       0.00000000     -0.01774362      0.00000008      0.00000020
 2 0aa000       0.00000000     -0.00000008     -0.01774363     -0.00000064
 2 aa0000      -0.00000000     -0.00000020      0.00000064     -0.01774361
 2 0a00a0       0.80296573     -0.00000000      0.00000000      0.00000000
 2 00aa00      -0.33875285      0.00000000     -0.00000000      0.00000000
 2 0a0a00      -0.00000588      0.00000302      0.69263733      0.00002502
 2 a00a00      -0.00000767      0.69263734     -0.00000302     -0.00000765
 2 00a00a      -0.00000767     -0.69263735      0.00000302      0.00000765
 2 0a000a       0.00010144     -0.00000765      0.00002502     -0.69263733
 2 00a0a0      -0.00000588     -0.00000302     -0.69263736     -0.00002502
 2 a000a0       0.00010144      0.00000765     -0.00002502      0.69263735
 2 a0000a      -0.46421293     -0.00000000     -0.00000000      0.00000000
 2 0000aa       0.00000000      0.00000141     -0.00000460      0.12730360
 2 000a0a      -0.00000000      0.12730358     -0.00000056     -0.00000141
 2 000aa0      -0.00000000      0.00000056      0.12730358      0.00000460
 0 a2a000      -0.00000000      0.00730312     -0.00000003     -0.00000008
 0 aa2000       0.00000000      0.00000008     -0.00000026      0.00730312
 0 2aa000      -0.00000000      0.00000003      0.00730312      0.00000026
 0 0a20a0      -0.08637928      0.00000000     -0.00000000     -0.00000000
 0 2a00a0      -0.08624894      0.00000000     -0.00000000     -0.00000000
 0 02aa00       0.03575568     -0.00000000      0.00000000     -0.00000000
 0 20aa00       0.03707221     -0.00000000      0.00000000     -0.00000000
 0 2a0a00       0.00000064     -0.00000033     -0.07541498     -0.00000272
 0 a20a00       0.00000083     -0.07541498      0.00000033      0.00000083
 0 0a200a      -0.00001096      0.00000083     -0.00000272      0.07541498
 0 02a00a       0.00000083      0.07541498     -0.00000033     -0.00000083
 0 a020a0      -0.00001096     -0.00000083      0.00000272     -0.07541498
 0 20a0a0       0.00000064      0.00000033      0.07541498      0.00000272
 0 0a2a00       0.00000063     -0.00000032     -0.07241274     -0.00000262
 0 a02a00       0.00000082     -0.07241275      0.00000032      0.00000080
 0 20a00a       0.00000082      0.07241275     -0.00000032     -0.00000080
 0 2a000a      -0.00001085      0.00000080     -0.00000262      0.07241274
 0 02a0a0       0.00000063      0.00000032      0.07241275      0.00000262
 0 a200a0      -0.00001085     -0.00000080      0.00000262     -0.07241275
 0 a2000a       0.04930708      0.00000000      0.00000000     -0.00000000
 0 a0200a       0.05049326      0.00000000      0.00000000     -0.00000000
 
 Energy:    -6173.55204999  -6173.54538994  -6173.54538994  -6173.54538994
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000       0.80679847     -0.00005601      0.00007289     -0.00001313     -0.01451655      0.55716828
 2 200000      -0.39082753      0.00001198     -0.00003614      0.00000255      0.70596625      0.55716829
 2 b0a000      -0.00001144      0.00000042     -0.00002058     -0.69882106     -0.00000380     -0.00000000
 2 a0b000       0.00001144     -0.00000042      0.00002058      0.69882106      0.00000380      0.00000000
 2 0ab000       0.00004876      0.69882100      0.00029047      0.00000041      0.00001515     -0.00000000
 2 0ba000      -0.00004876     -0.69882100     -0.00029047     -0.00000041     -0.00001515      0.00000000
 2 ab0000      -0.00006314     -0.00029046      0.69882100     -0.00002058      0.00000083      0.00000000
 2 ba0000       0.00006314      0.00029046     -0.69882100      0.00002058     -0.00000083     -0.00000000
 2 002000      -0.41597093      0.00004403     -0.00003675      0.00001057     -0.69144969      0.55716829
 0 202000       0.09353473     -0.00000649      0.00000845     -0.00000152     -0.00168295     -0.12434177
 0 022000      -0.04530989      0.00000139     -0.00000419      0.00000030      0.08184493     -0.12434177
 0 220000      -0.04822485      0.00000510     -0.00000426      0.00000123     -0.08016198     -0.12434177
 0 b2a000       0.00000133     -0.00000005      0.00000239      0.08101657      0.00000044      0.00000000
 0 a2b000      -0.00000133      0.00000005     -0.00000239     -0.08101657     -0.00000044     -0.00000000
 0 ab2000       0.00000732      0.00003367     -0.08101656      0.00000239     -0.00000010     -0.00000000
 0 ba2000      -0.00000732     -0.00003367      0.08101656     -0.00000239      0.00000010      0.00000000
 0 2ab000      -0.00000565     -0.08101656     -0.00003367     -0.00000005     -0.00000176      0.00000000
 0 2ba000       0.00000565      0.08101656      0.00003367      0.00000005      0.00000176     -0.00000000
 2 00ab00      -0.02293276      0.00000243     -0.00000203      0.00000058     -0.03812009      0.05638630
 2 00ba00       0.02293276     -0.00000243      0.00000203     -0.00000058      0.03812009     -0.05638630
 2 0b00a0      -0.04447933      0.00000309     -0.00000402      0.00000072      0.00080031     -0.05638629
 2 0a00b0       0.04447933     -0.00000309      0.00000402     -0.00000072     -0.00080031      0.05638629
 2 a0000b      -0.02154657      0.00000066     -0.00000199      0.00000014      0.03892037      0.05638628
 2 b0000a       0.02154657     -0.00000066      0.00000199     -0.00000014     -0.03892037     -0.05638628
 
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
 CPU TIMES  *         5.32      3.14      0.35      1.64
 REAL TIME  *         6.81 SEC
 DISK USED  *        62.13 MB (local),      804.08 MB (total)
 SF USED    *        77.59 MB
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

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2323D-06

 Number of blocks in overlap matrix:  1059   Smallest eigenvalue:  0.23D-06
 Number of N-2 electron functions:    2340
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3497694
 Number of doubly external configurations:       3654018
 Total number of contracted configurations:      7190118
 Total number of uncontracted configurations:   75813963

 Diagonal Coupling coefficients finished.               Storage:  24116789 words, CPU-Time:     67.89 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1290796 words, CPU-time:      0.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.73008456     0.00000000    -0.78765018  0.49D-01  0.99D-01    83.56
    1     2     2     1.00000000     0.00000000 -6173.73008456     0.00000000    -0.78798043  0.50D-01  0.98D-01    83.56
    1     3     3     1.00000000     0.00000000 -6173.73008456     0.00000000    -0.78779664  0.49D-01  0.99D-01    83.56
    1     4     4     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75484585  0.40D-01  0.89D-01    83.56
    1     5     5     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75516572  0.40D-01  0.89D-01    83.56
    1     6     6     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75484927  0.39D-01  0.89D-01    83.56
    1     7     7     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75490792  0.40D-01  0.89D-01    83.56
    1     8     8     1.00000000     0.00000000 -6173.55204999     0.00000000    -0.75524541  0.40D-01  0.89D-01    83.56
    1     9     9     1.00000000     0.00000000 -6173.54538994     0.00000000    -0.76107050  0.44D-01  0.90D-01    83.56
    1    10    10     1.00000000     0.00000000 -6173.54538994     0.00000000    -0.76108609  0.44D-01  0.90D-01    83.56
    1    11    11     1.00000000     0.00000000 -6173.54538994     0.00000000    -0.76113514  0.44D-01  0.90D-01    83.56
    2     1     1     1.09118736    -0.62048713 -6174.35057169    -0.62048713    -0.01659367  0.34D-02  0.12D-02   420.29
    2     2     2     1.09133724    -0.62040571 -6174.35049027    -0.62040571    -0.01667887  0.34D-02  0.12D-02   420.29
    2     3     3     1.09151438    -0.62028710 -6174.35037166    -0.62028710    -0.01680684  0.35D-02  0.12D-02   420.29
    2     4     4     1.08321215    -0.60966938 -6174.16171938    -0.60966938    -0.01352793  0.23D-02  0.92D-03   420.29
    2     5     5     1.08309729    -0.60964872 -6174.16169872    -0.60964872    -0.01355457  0.23D-02  0.93D-03   420.29
    2     6     6     1.08311618    -0.60963307 -6174.16168306    -0.60963307    -0.01357088  0.24D-02  0.93D-03   420.29
    2     7     7     1.08331136    -0.60961571 -6174.16166571    -0.60961571    -0.01358636  0.24D-02  0.92D-03   420.29
    2     8     8     1.08315445    -0.60961131 -6174.16166130    -0.60961131    -0.01359585  0.24D-02  0.93D-03   420.29
    2     9     9     1.08552586    -0.61048474 -6174.15587468    -0.61048474    -0.01468277  0.31D-02  0.99D-03   420.29
    2    10    10     1.08554401    -0.61046943 -6174.15585938    -0.61046943    -0.01469953  0.31D-02  0.99D-03   420.29
    2    11    11     1.08558778    -0.61044291 -6174.15583285    -0.61044291    -0.01472921  0.31D-02  0.99D-03   420.29
    3     1     1     1.08119674    -0.63629919 -6174.36638375    -0.01581206    -0.00041533  0.60D-04  0.48D-04   754.90
    3     2     2     1.08120278    -0.63629433 -6174.36637889    -0.01588862    -0.00041968  0.61D-04  0.49D-04   754.90
    3     3     3     1.08119766    -0.63629050 -6174.36637506    -0.01600340    -0.00042343  0.61D-04  0.49D-04   754.90
    3     4     4     1.07743462    -0.62267650 -6174.17472650    -0.01300712    -0.00029162  0.33D-04  0.31D-04   754.90
    3     5     5     1.07743307    -0.62267573 -6174.17472572    -0.01302701    -0.00029228  0.33D-04  0.31D-04   754.90
    3     6     6     1.07743159    -0.62267519 -6174.17472519    -0.01304213    -0.00029287  0.33D-04  0.31D-04   754.90
    3     7     7     1.07746470    -0.62267375 -6174.17472375    -0.01305804    -0.00029432  0.33D-04  0.32D-04   754.90
    3     8     8     1.07746186    -0.62267218 -6174.17472218    -0.01306087    -0.00029588  0.33D-04  0.32D-04   754.90
    3     9     9     1.07795897    -0.62453419 -6174.16992413    -0.01404945    -0.00034538  0.49D-04  0.37D-04   754.90
    3    10    10     1.07795831    -0.62453319 -6174.16992313    -0.01406376    -0.00034625  0.49D-04  0.37D-04   754.90
    3    11    11     1.07795673    -0.62453247 -6174.16992241    -0.01408956    -0.00034704  0.49D-04  0.37D-04   754.90
    4     1     1     1.08116534    -0.63673142 -6174.36681598    -0.00043223    -0.00001851  0.31D-05  0.22D-05  1090.28
    4     2     2     1.08116403    -0.63673119 -6174.36681575    -0.00043686    -0.00001871  0.31D-05  0.23D-05  1090.28
    4     3     3     1.08116314    -0.63673117 -6174.36681573    -0.00044067    -0.00001874  0.31D-05  0.23D-05  1090.28
    4     4     4     1.07802822    -0.62297892 -6174.17502892    -0.00030242    -0.00001254  0.26D-05  0.13D-05  1090.28
    4     5     5     1.07802790    -0.62297889 -6174.17502888    -0.00030316    -0.00001257  0.26D-05  0.13D-05  1090.28
    4     6     6     1.07802855    -0.62297887 -6174.17502886    -0.00030367    -0.00001258  0.26D-05  0.13D-05  1090.28
    4     7     7     1.07802402    -0.62297878 -6174.17502878    -0.00030503    -0.00001279  0.27D-05  0.13D-05  1090.28
    4     8     8     1.07802443    -0.62297876 -6174.17502875    -0.00030658    -0.00001281  0.27D-05  0.13D-05  1090.28
    4     9     9     1.07838945    -0.62489017 -6174.17028012    -0.00035598    -0.00001586  0.35D-05  0.16D-05  1090.28
    4    10    10     1.07838902    -0.62489012 -6174.17028006    -0.00035693    -0.00001590  0.35D-05  0.17D-05  1090.28
    4    11    11     1.07838945    -0.62489010 -6174.17028004    -0.00035763    -0.00001592  0.35D-05  0.17D-05  1090.28
    5     1     1     1.08122261    -0.63675172 -6174.36683628    -0.00002030    -0.00000076  0.72D-07  0.11D-06  1422.95
    5     2     2     1.08122171    -0.63675172 -6174.36683628    -0.00002053    -0.00000077  0.71D-07  0.11D-06  1422.95
    5     3     3     1.08122205    -0.63675171 -6174.36683627    -0.00002055    -0.00000077  0.72D-07  0.11D-06  1422.95
    5     4     4     1.07816462    -0.62299312 -6174.17504312    -0.00001420    -0.00000055  0.69D-07  0.92D-07  1422.95
    5     5     5     1.07816493    -0.62299312 -6174.17504312    -0.00001424    -0.00000055  0.68D-07  0.92D-07  1422.95
    5     6     6     1.07816544    -0.62299298 -6174.17504297    -0.00001411    -0.00000055  0.70D-07  0.91D-07  1422.95
    5     7     7     1.07816520    -0.62299298 -6174.17504297    -0.00001419    -0.00000055  0.70D-07  0.91D-07  1422.95
    5     8     8     1.07816551    -0.62299297 -6174.17504297    -0.00001422    -0.00000055  0.70D-07  0.92D-07  1422.95
    5     9     9     1.07849193    -0.62490744 -6174.17029738    -0.00001727    -0.00000079  0.12D-06  0.12D-06  1422.95
    5    10    10     1.07849173    -0.62490744 -6174.17029738    -0.00001732    -0.00000079  0.12D-06  0.12D-06  1422.95
    5    11    11     1.07849195    -0.62490743 -6174.17029738    -0.00001734    -0.00000079  0.12D-06  0.12D-06  1422.95
    6     1     1     1.08121215    -0.63675255 -6174.36683711    -0.00000083    -0.00000004  0.43D-08  0.63D-08  1756.00
    6     2     2     1.08121189    -0.63675255 -6174.36683711    -0.00000084    -0.00000004  0.43D-08  0.64D-08  1756.00
    6     3     3     1.08121197    -0.63675255 -6174.36683711    -0.00000084    -0.00000004  0.43D-08  0.64D-08  1756.00
    6     4     4     1.07817304    -0.62299375 -6174.17504375    -0.00000063    -0.00000004  0.42D-08  0.86D-08  1756.00
    6     5     5     1.07817306    -0.62299375 -6174.17504375    -0.00000063    -0.00000004  0.42D-08  0.87D-08  1756.00
    6     6     6     1.07817328    -0.62299360 -6174.17504360    -0.00000062    -0.00000004  0.44D-08  0.85D-08  1756.00
    6     7     7     1.07817330    -0.62299360 -6174.17504360    -0.00000063    -0.00000004  0.44D-08  0.85D-08  1756.00
    6     8     8     1.07817327    -0.62299360 -6174.17504360    -0.00000063    -0.00000004  0.44D-08  0.86D-08  1756.00
    6     9     9     1.07849129    -0.62490829 -6174.17029823    -0.00000085    -0.00000006  0.59D-08  0.13D-07  1756.00
    6    10    10     1.07849126    -0.62490829 -6174.17029823    -0.00000085    -0.00000006  0.59D-08  0.13D-07  1756.00
    6    11    11     1.07849127    -0.62490829 -6174.17029823    -0.00000085    -0.00000006  0.59D-08  0.13D-07  1756.00
    7     1     1     1.08121883    -0.63675260 -6174.36683716    -0.00000004    -0.00000000  0.18D-09  0.40D-09  2091.01
    7     2     2     1.08121886    -0.63675260 -6174.36683716    -0.00000004    -0.00000000  0.18D-09  0.41D-09  2091.01
    7     3     3     1.08121884    -0.63675260 -6174.36683716    -0.00000004    -0.00000000  0.18D-09  0.41D-09  2091.01
    7     4     4     1.07817864    -0.62299379 -6174.17504379    -0.00000004    -0.00000000  0.30D-09  0.87D-09  2091.01
    7     5     5     1.07817867    -0.62299379 -6174.17504379    -0.00000004    -0.00000000  0.30D-09  0.87D-09  2091.01
    7     6     6     1.07817853    -0.62299365 -6174.17504364    -0.00000004    -0.00000000  0.29D-09  0.87D-09  2091.01
    7     7     7     1.07817852    -0.62299365 -6174.17504364    -0.00000004    -0.00000000  0.29D-09  0.86D-09  2091.01
    7     8     8     1.07817853    -0.62299365 -6174.17504364    -0.00000004    -0.00000000  0.29D-09  0.87D-09  2091.01
    7     9     9     1.07849694    -0.62490836 -6174.17029830    -0.00000007    -0.00000001  0.46D-09  0.13D-08  2091.01
    7    10    10     1.07849695    -0.62490836 -6174.17029830    -0.00000007    -0.00000001  0.47D-09  0.13D-08  2091.01
    7    11    11     1.07849695    -0.62490836 -6174.17029830    -0.00000007    -0.00000001  0.46D-09  0.13D-08  2091.01


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   0.9%  12.3%
 P   0.4%  46.2%  28.2%

 Initialization:   3.3%
 Other:            6.8%

 Total CPU:     2091.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.0001870  -0.0228348   0.9547406   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0113766   0.0156715  -0.0112680
 22222222220//000           0.9508154  -0.0894192  -0.0023249   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.0171660   0.0022342  -0.0142242
 2222222222//0000           0.0894493   0.9505440   0.0227169  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                            0.0088256  -0.0158557  -0.0131414
 22222222220/00/0          -0.0000000   0.0000000   0.0000000  -0.0649690   0.7754041   0.0033878   0.0019554  -0.0003807
                            0.0000001  -0.0000000   0.0000000
 2222222222/0000/           0.0000000  -0.0000000  -0.0000000   0.7040076  -0.3314446  -0.0009114   0.0002396  -0.0021847
                           -0.0000000  -0.0000000   0.0000001
 222222222200//00           0.0000000  -0.0000000   0.0000000  -0.6390386  -0.4439595  -0.0024764  -0.0021950   0.0025654
                           -0.0000001   0.0000001  -0.0000001
 22222222220/0/00          -0.0174960   0.0016454   0.0000428  -0.0002746  -0.0003509  -0.2591914   0.6062320   0.1393495
                           -0.5114633   0.0665678  -0.4238114
 222222222200/0/0           0.0174960  -0.0016454  -0.0000428  -0.0002747  -0.0003510  -0.2591915   0.6062320   0.1393498
                            0.5114633  -0.0665680   0.4238113
 222222222200/00/           0.0000034  -0.0004202   0.0175683   0.0011280  -0.0019563   0.4697210   0.0917812   0.4743935
                           -0.3389679  -0.4669338   0.3357315
 2222222222/00/00          -0.0000034   0.0004202  -0.0175682   0.0011281  -0.0019563   0.4697210   0.0917812   0.4743935
                            0.3389678   0.4669339  -0.3357314
 2222222222/000/0          -0.0016460  -0.0174910  -0.0004180  -0.0023577  -0.0029091   0.4077852   0.2795899  -0.4578675
                            0.2629604  -0.4724231  -0.3915486
 22222222220/000/           0.0016460   0.0174910   0.0004180  -0.0023577  -0.0029091   0.4077850   0.2795901  -0.4578676
                           -0.2629603   0.4724230   0.3915488
 2222222222000//0           0.0131997  -0.0012414  -0.0000323   0.0000000   0.0000000  -0.0000000   0.0000001  -0.0000000
                           -0.0994513   0.0129438  -0.0824078
 2222220222/2/000          -0.0000194   0.0023682  -0.0990152   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            0.0013468   0.0018553  -0.0013340
 22222202222//000          -0.0986081   0.0092736   0.0002411  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                           -0.0020323   0.0002645  -0.0016840
 2222220222//2000          -0.0092767  -0.0985800  -0.0023559  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                            0.0010448  -0.0018771  -0.0015558
 22222222220000//           0.0012418   0.0131960   0.0003154   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                            0.0511312  -0.0918601  -0.0761345
 2222222222000/0/           0.0000026  -0.0003170   0.0132542   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            0.0659105   0.0907928  -0.0652812
 22222202222/00/0          -0.0000000   0.0000000  -0.0000000   0.0054033  -0.0738320  -0.0003232  -0.0001874   0.0000390
                           -0.0000000   0.0000000  -0.0000000
 22222202220/20/0          -0.0000000   0.0000000   0.0000000   0.0069581  -0.0737018  -0.0003214  -0.0001846   0.0000335
                           -0.0000000  -0.0000000  -0.0000000
 2222220222/2000/           0.0000000  -0.0000000  -0.0000000  -0.0673070   0.0308257   0.0000833  -0.0000252   0.0002095
                            0.0000000   0.0000000  -0.0000000
 2222220222/0200/          -0.0000000   0.0000000   0.0000000  -0.0666424   0.0322373   0.0000901  -0.0000204   0.0002062
                           -0.0000000  -0.0000000   0.0000000
 222222022202//00           0.0000000  -0.0000000   0.0000000   0.0612391   0.0415948   0.0002331   0.0002078  -0.0002451
                            0.0000000  -0.0000000   0.0000000
 222222022220//00           0.0000000  -0.0000000   0.0000000   0.0603489   0.0428761   0.0002381   0.0002098  -0.0002430
                            0.0000000  -0.0000000   0.0000000
 22222202222/0/00           0.0035214  -0.0003312  -0.0000086   0.0000263   0.0000336   0.0248078  -0.0580239  -0.0133375
                            0.0493203  -0.0064191   0.0408680
 222222022220/0/0          -0.0035214   0.0003312   0.0000086   0.0000263   0.0000336   0.0248078  -0.0580239  -0.0133375
                           -0.0493202   0.0064191  -0.0408680
 22222202220/2/00          -0.0174855   0.0016444   0.0000428   0.0000260   0.0000332   0.0245078  -0.0573221  -0.0131762
                            0.0477755  -0.0062181   0.0395880
 222222022202/0/0           0.0174855  -0.0016444  -0.0000428   0.0000260   0.0000332   0.0245078  -0.0573221  -0.0131762
                           -0.0477755   0.0062181  -0.0395880

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956321    0.089967    0.000188    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000007    0.038069
             0.003581
 2          -0.089937    0.956048   -0.022967   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000914   -0.003580
             0.038058
 3          -0.002338    0.022848    0.960268    0.000000    0.000000   -0.000000    0.000000    0.000000    0.038226   -0.000093
             0.000910
 4           0.000000    0.000000    0.000000    0.001611   -0.947922   -0.000392   -0.003367   -0.166238   -0.000000   -0.000000
            -0.000000
 5           0.000000   -0.000000   -0.000000   -0.002794   -0.166227   -0.000501   -0.004155    0.947918    0.000000   -0.000000
             0.000000
 6          -0.000000    0.000000    0.000000    0.670827   -0.001490   -0.370161    0.582374    0.004073    0.000000   -0.000000
            -0.000000
 7           0.000000   -0.000000    0.000000    0.131076   -0.001949    0.865783    0.399293    0.002252   -0.000000   -0.000000
             0.000000
 8          -0.000000    0.000000    0.000000    0.677500    0.003420    0.199011   -0.653898   -0.000164    0.000000    0.000000
            -0.000000
 9          -0.030275    0.015566    0.020065   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.488190    0.736622
            -0.378722
 10          0.003940   -0.027964    0.027640    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.672489   -0.095873
             0.680395
 11         -0.025087   -0.023177   -0.019873    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.483529    0.610383
             0.563918

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961304   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000451    0.000021
            -0.000427
 2          -0.000000    0.961304   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000280   -0.000453
            -0.000318
 3          -0.000000   -0.000000    0.961304    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000322    0.000423
            -0.000320
 4           0.000000    0.000000    0.000000    0.962396    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.962396    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.962396   -0.000000    0.000000   -0.000000    0.000000
             0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.962396    0.000000   -0.000000    0.000000
            -0.000000
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.962396   -0.000000   -0.000000
            -0.000000
 9          -0.000451    0.000280    0.000322    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.962254    0.000000
             0.000000
 10          0.000021   -0.000453    0.000423   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.962254
            -0.000000
 11         -0.000427   -0.000318   -0.000320    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.962254


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95632050 (fixed)   0.96139902 (relaxed)   0.96130364 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084132   -0.00147948   -0.53434627
 Singles      0.01776169   -0.05602105   -0.06221877
 Pairs        0.06352546   -0.00303594   -0.04018755
 Total        1.08212848   -0.06053647   -0.63675260
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72978279
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.90213098
 One electron energy                -8490.48245959
 Two electron energy                 2316.11562244
 Virial quotient                       -0.86658971
 Correlation energy                    -0.63705436
 !MRCI STATE 1.1 Energy             -6174.366837156952

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41915746 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41902069 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41915746 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41720183 (Pople, fixed reference)
 Cluster corrected energies         -6174.41706113 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41720183 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95604752 (fixed)   0.96139900 (relaxed)   0.96130363 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084132   -0.00147948   -0.50733849
 Singles      0.01776175   -0.05602110   -0.06221879
 Pairs        0.06352544   -0.03226176   -0.06719531
 Total        1.08212850   -0.08976234   -0.63675260
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72978279
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.90212975
 One electron energy                -8490.48245914
 Two electron energy                 2316.11562198
 Virial quotient                       -0.86658971
 Correlation energy                    -0.63705436
 !MRCI STATE 2.1 Energy             -6174.366837156900

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41915748 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41902071 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41915748 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41720185 (Pople, fixed reference)
 Cluster corrected energies         -6174.41706115 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41720185 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96026845 (fixed)   0.96139901 (relaxed)   0.96130364 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084132   -0.00147948   -0.53643926
 Singles      0.01776173   -0.05602108   -0.06221878
 Pairs        0.06352544   -0.00077102   -0.03809455
 Total        1.08212848   -0.05827158   -0.63675260
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72978279
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.90213145
 One electron energy                -8490.48246020
 Two electron energy                 2316.11562304
 Virial quotient                       -0.86658971
 Correlation energy                    -0.63705436
 !MRCI STATE 3.1 Energy             -6174.366837156810

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41915747 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41902069 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41915747 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41720183 (Pople, fixed reference)
 Cluster corrected energies         -6174.41706113 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41720183 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94792227 (fixed)   0.96254983 (relaxed)   0.96239578 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138678   -0.00239814   -0.52395863
 Singles      0.01878839   -0.05815333   -0.06470089
 Pairs        0.05949867    0.00000000   -0.03433428
 Total        1.07967384   -0.06055147   -0.62299379
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40730035
 One electron energy                -8480.96565924
 Two electron energy                 2306.79061545
 Virial quotient                       -0.86662297
 Correlation energy                    -0.62299380
 !MRCI STATE 4.1 Energy             -6174.175043789817

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22468010 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446482 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22468010 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272665 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250612 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272665 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94791825 (fixed)   0.96254982 (relaxed)   0.96239577 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138678   -0.00239814   -0.52395858
 Singles      0.01878842   -0.05815336   -0.06470090
 Pairs        0.05949866   -0.00000001   -0.03433431
 Total        1.07967387   -0.06055151   -0.62299379
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40730153
 One electron energy                -8480.96566180
 Two electron energy                 2306.79061801
 Virial quotient                       -0.86662297
 Correlation energy                    -0.62299380
 !MRCI STATE 5.1 Energy             -6174.175043789711

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22468011 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446483 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22468011 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272667 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250613 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272667 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.67082673 (fixed)   0.96254988 (relaxed)   0.96239583 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138678   -0.00239813   -0.52395887
 Singles      0.01878825   -0.05815309   -0.06470069
 Pairs        0.05949869    0.00000011   -0.03433408
 Total        1.07967372   -0.06055110   -0.62299365
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40729353
 One electron energy                -8480.96564141
 Two electron energy                 2306.79059777
 Virial quotient                       -0.86662297
 Correlation energy                    -0.62299365
 !MRCI STATE 6.1 Energy             -6174.175043640484

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22467986 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446459 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22467986 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272642 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250588 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272642 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.86578330 (fixed)   0.96254988 (relaxed)   0.96239583 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138678   -0.00239813   -0.52395871
 Singles      0.01878824   -0.05815308   -0.06470069
 Pairs        0.05949870   -0.00000007   -0.03433424
 Total        1.07967372   -0.06055127   -0.62299365
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40729265
 One electron energy                -8480.96564030
 Two electron energy                 2306.79059666
 Virial quotient                       -0.86662298
 Correlation energy                    -0.62299365
 !MRCI STATE 7.1 Energy             -6174.175043639934

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22467986 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446458 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22467986 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272641 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250588 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272641 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.67749969 (fixed)   0.96254988 (relaxed)   0.96239583 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138678   -0.00239813   -0.52395881
 Singles      0.01878825   -0.05815309   -0.06470069
 Pairs        0.05949869    0.00000004   -0.03433415
 Total        1.07967372   -0.06055117   -0.62299365
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55204999
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.40729368
 One electron energy                -8480.96564158
 Two electron energy                 2306.79059794
 Virial quotient                       -0.86662297
 Correlation energy                    -0.62299364
 !MRCI STATE 8.1 Energy             -6174.175043639581

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22467986 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22446459 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22467986 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22272642 (Pople, fixed reference)
 Cluster corrected energies         -6174.22250588 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22272642 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.73662168 (fixed)   0.96242772 (relaxed)   0.96225355 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138721   -0.00231993   -0.73127380
 Singles      0.01883329   -0.05817964   -0.06476624
 Pairs        0.05977254    0.22217503    0.17113169
 Total        1.07999305    0.16167546   -0.62490836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54569171
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.47539290
 One electron energy                -8481.52194530
 Two electron energy                 2307.35164700
 Virial quotient                       -0.86661403
 Correlation energy                    -0.62460659
 !MRCI STATE 9.1 Energy             -6174.170298299376

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22026248 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22001835 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22026248 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21830896 (Pople, fixed reference)
 Cluster corrected energies         -6174.21805874 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21830896 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.68039499 (fixed)   0.96242772 (relaxed)   0.96225354 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138721   -0.00231993   -0.15596920
 Singles      0.01883330   -0.05817964   -0.06476624
 Pairs        0.05977254   -0.39914995   -0.40417292
 Total        1.07999305   -0.45964951   -0.62490836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54569171
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.47539387
 One electron energy                -8481.52194633
 Two electron energy                 2307.35164803
 Virial quotient                       -0.86661403
 Correlation energy                    -0.62460659
 !MRCI STATE 10.1 Energy            -6174.170298299064

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22026249 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22001835 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22026249 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21830896 (Pople, fixed reference)
 Cluster corrected energies         -6174.21805874 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21830896 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.61038325 (fixed)   0.96242772 (relaxed)   0.96225355 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138721   -0.00231993   -0.21923878
 Singles      0.01883329   -0.05817964   -0.06476624
 Pairs        0.05977254   -0.33081923   -0.34090333
 Total        1.07999305   -0.39131880   -0.62490836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.54569171
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.47539280
 One electron energy                -8481.52194518
 Two electron energy                 2307.35164689
 Virial quotient                       -0.86661403
 Correlation energy                    -0.62460659
 !MRCI STATE 11.1 Energy            -6174.170298297698

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22026248 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22001835 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22026248 (Davidson, rotated reference)

 Cluster corrected energies         -6174.21830896 (Pople, fixed reference)
 Cluster corrected energies         -6174.21805874 (Pople, relaxed reference)
 Cluster corrected energies         -6174.21830896 (Pople, rotated reference)



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
 CPU TIMES  *      3112.15   3106.82      3.14      0.35      1.64
 REAL TIME  *      3192.01 SEC
 DISK USED  *       680.77 MB (local),        8.03 GB (total)
 SF USED    *         6.48 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -6174.41915746  AU                              
 SETTING HLSDIAG(2)     =     -6174.41915748  AU                              
 SETTING HLSDIAG(3)     =     -6174.41915747  AU                              
 SETTING HLSDIAG(4)     =     -6174.22468010  AU                              
 SETTING HLSDIAG(5)     =     -6174.22468011  AU                              
 SETTING HLSDIAG(6)     =     -6174.22467986  AU                              
 SETTING HLSDIAG(7)     =     -6174.22467986  AU                              
 SETTING HLSDIAG(8)     =     -6174.22467986  AU                              
 SETTING HLSDIAG(9)     =     -6174.22026248  AU                              
 SETTING HLSDIAG(10)    =     -6174.22026249  AU                              
 SETTING HLSDIAG(11)    =     -6174.22026248  AU                              


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

 Number of blocks in overlap matrix:   600   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2035246
 Number of doubly external configurations:       2016667
 Total number of contracted configurations:      4076063
 Total number of uncontracted configurations:   44346143

 Diagonal Coupling coefficients finished.               Storage:  12993861 words, CPU-Time:     12.22 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    969481 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.69539968     0.00000000    -0.79131056  0.55D-01  0.97D-01    17.71
    1     2     2     1.00000000     0.00000000 -6173.69539968    -0.00000000    -0.79202994  0.56D-01  0.97D-01    17.71
    1     3     3     1.00000000     0.00000000 -6173.69539968    -0.00000000    -0.79168399  0.55D-01  0.97D-01    17.71
    1     4     4     1.00000000     0.00000000 -6173.69539968    -0.00000000    -0.79191475  0.56D-01  0.97D-01    17.71
    1     5     5     1.00000000     0.00000000 -6173.69539968     0.00000000    -0.79121750  0.55D-01  0.97D-01    17.71
    1     6     6     1.00000000     0.00000000 -6173.66599467    -0.00000000    -0.76709037  0.27D-01  0.10D+00    17.71
    2     1     1     1.09381873    -0.62490124 -6174.32030092    -0.62490124    -0.01717174  0.35D-02  0.14D-02   100.50
    2     2     2     1.09376947    -0.62487666 -6174.32027634    -0.62487666    -0.01719814  0.35D-02  0.14D-02   100.50
    2     3     3     1.09409742    -0.62466954 -6174.32006922    -0.62466954    -0.01742503  0.36D-02  0.14D-02   100.50
    2     4     4     1.09429622    -0.62454701 -6174.31994669    -0.62454701    -0.01756375  0.37D-02  0.14D-02   100.50
    2     5     5     1.09437053    -0.62451957 -6174.31991925    -0.62451957    -0.01759732  0.37D-02  0.14D-02   100.50
    2     6     6     1.08271004    -0.62031984 -6174.28631451    -0.62031984    -0.01422122  0.26D-02  0.13D-02   100.50
    3     1     1     1.08459684    -0.64110025 -6174.33649993    -0.01619900    -0.00048275  0.68D-04  0.65D-04   183.44
    3     2     2     1.08460794    -0.64109857 -6174.33649825    -0.01622191    -0.00048374  0.68D-04  0.65D-04   183.44
    3     3     3     1.08460800    -0.64109315 -6174.33649283    -0.01642361    -0.00048988  0.70D-04  0.66D-04   183.44
    3     4     4     1.08461137    -0.64108651 -6174.33648619    -0.01653950    -0.00049623  0.71D-04  0.67D-04   183.44
    3     5     5     1.08462083    -0.64108542 -6174.33648510    -0.01656585    -0.00049755  0.72D-04  0.67D-04   183.44
    3     6     6     1.08005621    -0.63424709 -6174.30024176    -0.01392726    -0.00044111  0.37D-04  0.83D-04   183.44
    4     1     1     1.08489127    -0.64161661 -6174.33701629    -0.00051636    -0.00002966  0.36D-05  0.54D-05   266.32
    4     2     2     1.08488913    -0.64161638 -6174.33701605    -0.00051780    -0.00002984  0.36D-05  0.55D-05   266.32
    4     3     3     1.08489210    -0.64161634 -6174.33701602    -0.00052319    -0.00002989  0.37D-05  0.54D-05   266.32
    4     4     4     1.08488780    -0.64161595 -6174.33701562    -0.00052943    -0.00003019  0.37D-05  0.55D-05   266.32
    4     5     5     1.08488609    -0.64161594 -6174.33701561    -0.00053052    -0.00003018  0.37D-05  0.55D-05   266.32
    4     6     6     1.08168591    -0.63474351 -6174.30073818    -0.00049642    -0.00003639  0.26D-05  0.80D-05   266.32
    5     1     1     1.08501455    -0.64165301 -6174.33705269    -0.00003640    -0.00000219  0.11D-06  0.50D-06   348.58
    5     2     2     1.08501369    -0.64165299 -6174.33705267    -0.00003662    -0.00000220  0.11D-06  0.50D-06   348.58
    5     3     3     1.08501228    -0.64165296 -6174.33705263    -0.00003662    -0.00000222  0.11D-06  0.51D-06   348.58
    5     4     4     1.08501130    -0.64165292 -6174.33705260    -0.00003698    -0.00000225  0.12D-06  0.51D-06   348.58
    5     5     5     1.08501153    -0.64165292 -6174.33705260    -0.00003698    -0.00000225  0.12D-06  0.51D-06   348.58
    5     6     6     1.08226822    -0.63478924 -6174.30078391    -0.00004573    -0.00000327  0.21D-06  0.69D-06   348.58
    6     1     1     1.08502173    -0.64165582 -6174.33705550    -0.00000281    -0.00000025  0.31D-07  0.46D-07   430.62
    6     2     2     1.08502130    -0.64165582 -6174.33705549    -0.00000282    -0.00000025  0.31D-07  0.47D-07   430.62
    6     3     3     1.08502140    -0.64165581 -6174.33705549    -0.00000286    -0.00000026  0.32D-07  0.47D-07   430.62
    6     4     4     1.08502096    -0.64165581 -6174.33705549    -0.00000288    -0.00000026  0.33D-07  0.48D-07   430.62
    6     5     5     1.08502101    -0.64165581 -6174.33705549    -0.00000289    -0.00000026  0.33D-07  0.48D-07   430.62
    6     6     6     1.08231470    -0.63479350 -6174.30078817    -0.00000426    -0.00000034  0.35D-07  0.59D-07   430.62
    7     1     1     1.08504993    -0.64165612 -6174.33705580    -0.00000030    -0.00000003  0.28D-08  0.48D-08   513.16
    7     2     2     1.08504996    -0.64165612 -6174.33705580    -0.00000030    -0.00000003  0.28D-08  0.49D-08   513.16
    7     3     3     1.08504998    -0.64165612 -6174.33705580    -0.00000031    -0.00000003  0.28D-08  0.48D-08   513.16
    7     4     4     1.08505001    -0.64165612 -6174.33705580    -0.00000031    -0.00000003  0.28D-08  0.49D-08   513.16
    7     5     5     1.08504998    -0.64165612 -6174.33705580    -0.00000031    -0.00000003  0.28D-08  0.49D-08   513.16
    7     6     6     1.08233857    -0.63479389 -6174.30078856    -0.00000039    -0.00000004  0.43D-08  0.63D-08   513.16
    8     1     1     1.08504993    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.48D-08   558.92
    8     2     2     1.08504996    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.49D-08   558.92
    8     3     3     1.08504998    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.48D-08   558.92
    8     4     4     1.08505001    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.49D-08   558.92
    8     5     5     1.08504998    -0.64165612 -6174.33705580    -0.00000000    -0.00000003  0.28D-08  0.49D-08   558.92
    8     6     6     1.08234429    -0.63479393 -6174.30078860    -0.00000004    -0.00000000  0.20D-09  0.36D-09   558.92


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.9%
 S   1.5%  17.0%
 P   0.6%  49.1%  19.1%

 Initialization:   2.2%
 Other:            7.5%

 Total CPU:      558.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000          -0.0302314   0.0290625   0.3280487   0.8852973   0.1078088   0.0000000
 22222222220/\000           0.4388814  -0.2813357   0.1063132  -0.1102457   0.7807210  -0.0000000
 2222222222/\0000           0.0330320   0.7516594   0.5124026  -0.2316622   0.1498058  -0.0000000
 2222222222002000           0.6583689   0.2098921  -0.2207035   0.1273828  -0.2464243   0.5388754
 2222222222020000          -0.1560485  -0.4161375   0.5848033  -0.1878611  -0.1683966   0.5388754
 2222222222200000          -0.5023205   0.2062454  -0.3640998   0.0604783   0.4148209   0.5388754
 2222220222202000          -0.0161382  -0.0430356   0.0604785  -0.0194280  -0.0174150  -0.1079338
 2222220222022000          -0.0519485   0.0213291  -0.0376539   0.0062544   0.0428995  -0.1079338
 2222220222220000           0.0680864   0.0217064  -0.0228246   0.0131735  -0.0254844  -0.1079338
 2222220222/2\000           0.0031264  -0.0030055  -0.0339256  -0.0915543  -0.0111492  -0.0000000
 22222202222/\000          -0.0453876   0.0290948  -0.0109945   0.0114012  -0.0807395   0.0000000
 2222220222/\2000          -0.0034161  -0.0777340  -0.0529909   0.0239577  -0.0154924   0.0000000
 222222222200/\00           0.0403493   0.0128637  -0.0135263   0.0078069  -0.0151025   0.0691359
 22222222220/00\0          -0.0095637  -0.0255038   0.0358408  -0.0115134  -0.0103205   0.0691358
 2222222222/0000\          -0.0307857   0.0126402  -0.0223146   0.0037065   0.0254231   0.0691358

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.207690    0.442647    0.033315   -0.030491   -0.824154   -0.000000
 2          -0.513998   -0.283750    0.758109    0.029312    0.006691    0.000000
 3           0.720414    0.107225    0.516799    0.330864   -0.115307   -0.000000
 4          -0.232881   -0.111192   -0.233650    0.892894   -0.043512   -0.000000
 5          -0.199454    0.787420    0.151091    0.108734    0.475266    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.960512

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959344    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.959344    0.000000   -0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.959344   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.959344   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.959344    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.960512


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.82415411 (fixed)   0.95958329 (relaxed)   0.95934431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138543   -0.00199352   -0.53563472
 Singles      0.02078537   -0.06054952   -0.06799427
 Pairs        0.06438239    0.00000004   -0.03802713
 Total        1.08655318   -0.06254299   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82507817
 One electron energy                -8489.71912411
 Two electron energy                 2315.38206831
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 1.1 Energy             -6174.337055797108

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259318 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224596 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259318 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135332 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098868 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135332 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.75810899 (fixed)   0.95958327 (relaxed)   0.95934429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138543   -0.00199352   -0.53563459
 Singles      0.02078549   -0.06054958   -0.06799432
 Pairs        0.06438231   -0.00000001   -0.03802720
 Total        1.08655323   -0.06254312   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82502322
 One electron energy                -8489.71903017
 Two electron energy                 2315.38197437
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 2.1 Energy             -6174.337055796895

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259321 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224599 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259321 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135335 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098870 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135335 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.72041396 (fixed)   0.95958326 (relaxed)   0.95934429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138543   -0.00199352   -0.53563464
 Singles      0.02078545   -0.06054955   -0.06799431
 Pairs        0.06438236    0.00000002   -0.03802716
 Total        1.08655324   -0.06254305   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82505804
 One electron energy                -8489.71908882
 Two electron energy                 2315.38203302
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 3.1 Energy             -6174.337055796836

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259321 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224600 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259321 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135335 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098871 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135335 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.89289351 (fixed)   0.95958325 (relaxed)   0.95934427 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138544   -0.00199352   -0.53563448
 Singles      0.02078561   -0.06054970   -0.06799439
 Pairs        0.06438223   -0.00000000   -0.03802726
 Total        1.08655328   -0.06254322   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82501703
 One electron energy                -8489.71901335
 Two electron energy                 2315.38195756
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 4.1 Energy             -6174.337055796308

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259324 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224602 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259324 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135338 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098873 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135338 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.78741991 (fixed)   0.95958326 (relaxed)   0.95934429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138543   -0.00199352   -0.53563453
 Singles      0.02078555   -0.06054962   -0.06799435
 Pairs        0.06438227   -0.00000004   -0.03802724
 Total        1.08655325   -0.06254318   -0.64165612
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69539968
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.82504266
 One electron energy                -8489.71905686
 Two electron energy                 2315.38200106
 Virial quotient                       -0.86659490
 Correlation energy                    -0.64165612
 !MRCI STATE 5.1 Energy             -6174.337055796062

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39259322 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39224600 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39259322 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39135336 (Pople, fixed reference)
 Cluster corrected energies         -6174.39098871 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39135336 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96051175 (fixed)   0.96082996 (relaxed)   0.96051175 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00144985   -0.00177949   -0.00249083
 Singles      0.01153181   -0.04393728   -0.04729009
 Pairs        0.07093187   -0.58907716   -0.58501300
 Total        1.08391352   -0.63479393   -0.63479393
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.66599467
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.74663503
 One electron energy                -8488.98034395
 Two electron energy                 2314.67955535
 Virial quotient                       -0.86659935
 Correlation energy                    -0.63479393
 !MRCI STATE 6.1 Energy             -6174.300788601359

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.35405640 (Davidson, fixed reference)
 Cluster corrected energies         -6174.35360072 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.35405640 (Davidson, rotated reference)

 Cluster corrected energies         -6174.35274883 (Pople, fixed reference)
 Cluster corrected energies         -6174.35227251 (Pople, relaxed reference)
 Cluster corrected energies         -6174.35274883 (Pople, rotated reference)



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
 CPU TIMES  *      3739.18    627.02   3106.82      3.14      0.35      1.64
 REAL TIME  *      3837.37 SEC
 DISK USED  *       872.10 MB (local),       10.28 GB (total)
 SF USED    *         6.48 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(12)    =     -6174.39259318  AU                              
 SETTING HLSDIAG(13)    =     -6174.39259321  AU                              
 SETTING HLSDIAG(14)    =     -6174.39259321  AU                              
 SETTING HLSDIAG(15)    =     -6174.39259324  AU                              
 SETTING HLSDIAG(16)    =     -6174.39259322  AU                              
 SETTING HLSDIAG(17)    =     -6174.35405640  AU                              


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

 Time for Seward_LS:      13.77 sec

       10316388. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2701 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.77 sec, REAL time:     13.89 sec


 SORTLS1 read    11044077. and wrote    11044077. SO integrals in    72 records. CPU time:      0.10 sec, REAL time:      0.16 sec
 SORTLS2 read    11044077. and wrote    53911550. SO integrals in    36 records. CPU time:      0.05 sec, REAL time:      0.09 sec

 FILE SIZES: FILE 1:   241.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   241.3 MBYTE

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

 Lowest unperturbed energy E0= -6174.41915748

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -29.92    1251.93     -33.19     -24.60     264.14      51.45     266.99    -166.31    -229.02

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.92       0.00    -117.81    -359.45    -249.58     -29.74       2.10     -21.77      21.66      20.75

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1251.93     117.81      -0.00      -8.44      -5.77     145.73    -342.60     -79.33    -251.49      33.35

    4   4.1  1.0  1.0       0.00       0.00       0.00   42682.85       0.00       0.00       0.00       0.00       0.00       0.00
                           33.19     359.45       8.44      -0.00       8.46    -546.67    -376.25     613.65     229.91    -412.13

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42682.85       0.00       0.00       0.00       0.00       0.00
                           24.60     249.58       5.77      -8.46      -0.00     786.15     541.82    -883.80     157.74    -286.17

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42682.90       0.00       0.00       0.00       0.00
                         -264.14      29.74    -145.73     546.67    -786.15       0.00    -537.32    -333.37     208.78    -209.36

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42682.90       0.00       0.00       0.00
                          -51.45      -2.10     342.60     376.25    -541.82     537.32       0.00     477.09     345.17     376.42

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42682.90       0.00       0.00
                         -266.99      21.77      79.33    -613.65     883.80     333.37    -477.09      -0.00     394.53      47.34

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43652.41       0.00
                          166.31     -21.66     251.49    -229.91    -157.74    -208.78    -345.17    -394.53      -0.00    -490.68

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43652.41
                          229.02     -20.75     -33.35     412.13     286.17     209.36    -376.42     -47.34     490.68      -0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -164.63      10.49     209.13     340.57     238.12    -388.97     225.77    -211.83    -592.03    -329.54

   12   1.1  1.0  0.0       0.00    -889.16     -21.27       0.94       1.23    -152.51    -133.90     176.92     107.89    -166.02
                            0.00       2.17     -83.28     280.08    -131.92      17.18       3.51      16.92      11.04      15.27

   13   2.1  1.0  0.0     889.16       0.00      -0.17       0.64      -7.38     118.29    -230.64     -72.54     168.76      -7.67
                           -2.17      -0.00    -885.50     -25.91      11.59     190.72      39.16     184.36     119.72     157.96

   14   3.1  1.0  0.0      21.27       0.17      -0.00     -25.95     309.72       4.21      -4.71      -1.92       4.02      -0.15
                           83.28     885.50       0.00       0.27       1.47    -158.41    -110.80     187.39     -88.77     168.39

   15   4.1  1.0  0.0      -0.94      -0.64      25.95       0.00       3.40    -778.99    -150.37    -785.29      22.34      29.24
                         -280.08      25.91      -0.27      -0.00      -0.17     185.45    -428.59     -97.92     346.29     -45.76

   16   5.1  1.0  0.0      -1.23       7.38    -309.72      -3.40      -0.00     -66.30     -10.69     -65.12    -252.20    -349.29
                          131.92     -11.59      -1.47       0.17       0.00     390.51    -912.10    -206.77    -163.98      19.08

   17   6.1  1.0  0.0     152.51    -118.29      -4.21     778.99      66.30       0.00    -393.06      72.62    -268.05     142.78
                          -17.18    -190.72     158.41    -185.45    -390.51      -0.00     110.11    -503.94      13.74     397.80

   18   7.1  1.0  0.0     133.90     230.64       4.71     150.37      10.69     393.06      -0.00    -392.38      15.20    -259.20
                           -3.51     -39.16     110.80     428.59     912.10    -110.11       0.00    -218.34      68.26     167.75

   19   8.1  1.0  0.0    -176.92      72.54       1.92     785.29      65.12     -72.62     392.38       0.00     261.38     -92.74
                          -16.92    -184.36    -187.39      97.92     206.77     503.94     218.34      -0.00    -271.13      10.10

   20   9.1  1.0  0.0    -107.89    -168.76      -4.02     -22.34     252.20     268.05     -15.20    -261.38      -0.00    -297.50
                          -11.04    -119.72      88.77    -346.29     163.98     -13.74     -68.26     271.13      -0.00    -375.55

   21  10.1  1.0  0.0     166.02       7.67       0.15     -29.24     349.29    -142.78     259.20      92.74     297.50      -0.00
                          -15.27    -157.96    -168.39      45.76     -19.08    -397.80    -167.75     -10.10     375.55       0.00

   22  11.1  1.0  0.0     121.97    -159.72      -3.84      19.97    -252.45      67.72     342.65    -134.43     413.76    -300.37
                           10.93     119.67    -133.58    -289.01     135.30     -44.98      55.78    -326.58      58.99     453.22

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

   34   1.1  0.0  0.0     -67.19    -388.84    -209.63      19.18       3.80    -462.14    -122.11    -276.41      47.85     -28.19
                         -644.46      33.78     -29.05    -121.34    -257.90     156.12    -331.99     -75.88     -95.02      13.37

   35   2.1  0.0  0.0    -655.34     330.77    -526.22     -19.24      -2.09     -39.81     257.37     -12.72     -71.49     126.37
                          265.89      17.78    -681.98      78.43     164.88     275.95    -228.87     118.46     109.42      95.33

   36   3.1  0.0  0.0    -471.87     -70.44     749.21    -212.48     -17.54    -131.11     126.08      12.26    -142.03    -111.06
                         -437.47     351.20    -456.67     -28.92     -62.72     -91.11     311.21     266.31     -48.57     118.30

   37   4.1  0.0  0.0     218.64      85.66    -239.18    -573.41     -48.05      28.53     -58.08     -59.52      49.57      44.37
                          152.57     787.38     229.10      31.45      66.35    -170.50    -259.68     112.34     -73.87      84.03

   38   5.1  0.0  0.0    -201.76    -687.31    -232.60     -68.43      -5.66      39.48     -20.20     396.55      57.81     -68.37
                          539.21      50.78    -134.88    -215.90    -459.00      -3.27      22.79      66.59      89.03      22.59

   39   6.1  0.0  0.0      -0.28      33.63   -1406.31       0.00      -0.00       0.00       0.00       0.00     117.35     161.65
                        -1400.53     131.71       3.42       0.00       0.00      -0.00       0.00      -0.00    -177.07      23.05


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00     889.16      21.27      -0.94      -1.23     152.51     133.90    -176.92    -107.89
                          164.63      -0.00       2.17     -83.28     280.08    -131.92      17.18       3.51      16.92      11.04

    2   2.1  1.0  1.0       0.00    -889.16       0.00       0.17      -0.64       7.38    -118.29     230.64      72.54    -168.76
                          -10.49      -2.17       0.00    -885.50     -25.91      11.59     190.72      39.16     184.36     119.72

    3   3.1  1.0  1.0       0.00     -21.27      -0.17      -0.00      25.95    -309.72      -4.21       4.71       1.92      -4.02
                         -209.13      83.28     885.50      -0.00       0.27       1.47    -158.41    -110.80     187.39     -88.77

    4   4.1  1.0  1.0       0.00       0.94       0.64     -25.95       0.00      -3.40     778.99     150.37     785.29     -22.34
                         -340.57    -280.08      25.91      -0.27       0.00      -0.17     185.45    -428.59     -97.92     346.29

    5   5.1  1.0  1.0       0.00       1.23      -7.38     309.72       3.40      -0.00      66.30      10.69      65.12     252.20
                         -238.12     131.92     -11.59      -1.47       0.17      -0.00     390.51    -912.10    -206.77    -163.98

    6   6.1  1.0  1.0       0.00    -152.51     118.29       4.21    -778.99     -66.30       0.00     393.06     -72.62     268.05
                          388.97     -17.18    -190.72     158.41    -185.45    -390.51       0.00     110.11    -503.94      13.74

    7   7.1  1.0  1.0       0.00    -133.90    -230.64      -4.71    -150.37     -10.69    -393.06      -0.00     392.38     -15.20
                         -225.77      -3.51     -39.16     110.80     428.59     912.10    -110.11      -0.00    -218.34      68.26

    8   8.1  1.0  1.0       0.00     176.92     -72.54      -1.92    -785.29     -65.12      72.62    -392.38       0.00    -261.38
                          211.83     -16.92    -184.36    -187.39      97.92     206.77     503.94     218.34       0.00    -271.13

    9   9.1  1.0  1.0       0.00     107.89     168.76       4.02      22.34    -252.20    -268.05      15.20     261.38      -0.00
                          592.03     -11.04    -119.72      88.77    -346.29     163.98     -13.74     -68.26     271.13       0.00

   10  10.1  1.0  1.0       0.00    -166.02      -7.67      -0.15      29.24    -349.29     142.78    -259.20     -92.74    -297.50
                          329.54     -15.27    -157.96    -168.39      45.76     -19.08    -397.80    -167.75     -10.10     375.55

   11  11.1  1.0  1.0   43652.41    -121.97     159.72       3.84     -19.97     252.45     -67.72    -342.65     134.43    -413.76
                            0.00      10.93     119.67    -133.58    -289.01     135.30     -44.98      55.78    -326.58      58.99

   12   1.1  1.0  0.0    -121.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   2.1  1.0  0.0     159.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -119.67      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   3.1  1.0  0.0       3.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          133.58      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   4.1  1.0  0.0     -19.97       0.00       0.00       0.00   42682.85       0.00       0.00       0.00       0.00       0.00
                          289.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   5.1  1.0  0.0     252.45       0.00       0.00       0.00       0.00   42682.85       0.00       0.00       0.00       0.00
                         -135.30      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   6.1  1.0  0.0     -67.72       0.00       0.00       0.00       0.00       0.00   42682.90       0.00       0.00       0.00
                           44.98      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   7.1  1.0  0.0    -342.65       0.00       0.00       0.00       0.00       0.00       0.00   42682.90       0.00       0.00
                          -55.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   8.1  1.0  0.0     134.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42682.90       0.00
                          326.58      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   9.1  1.0  0.0    -413.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43652.41
                          -58.99      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21  10.1  1.0  0.0     300.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -453.22      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  11.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   1.1  1.0 -1.0       0.00       0.00    -889.16     -21.27       0.94       1.23    -152.51    -133.90     176.92     107.89
                           -0.00       0.00       2.17     -83.28     280.08    -131.92      17.18       3.51      16.92      11.04

   24   2.1  1.0 -1.0       0.00     889.16       0.00      -0.17       0.64      -7.38     118.29    -230.64     -72.54     168.76
                           -0.00      -2.17      -0.00    -885.50     -25.91      11.59     190.72      39.16     184.36     119.72

   25   3.1  1.0 -1.0       0.00      21.27       0.17      -0.00     -25.95     309.72       4.21      -4.71      -1.92       4.02
                           -0.00      83.28     885.50       0.00       0.27       1.47    -158.41    -110.80     187.39     -88.77

   26   4.1  1.0 -1.0       0.00      -0.94      -0.64      25.95       0.00       3.40    -778.99    -150.37    -785.29      22.34
                           -0.00    -280.08      25.91      -0.27      -0.00      -0.17     185.45    -428.59     -97.92     346.29

   27   5.1  1.0 -1.0       0.00      -1.23       7.38    -309.72      -3.40      -0.00     -66.30     -10.69     -65.12    -252.20
                           -0.00     131.92     -11.59      -1.47       0.17       0.00     390.51    -912.10    -206.77    -163.98

   28   6.1  1.0 -1.0       0.00     152.51    -118.29      -4.21     778.99      66.30       0.00    -393.06      72.62    -268.05
                           -0.00     -17.18    -190.72     158.41    -185.45    -390.51      -0.00     110.11    -503.94      13.74

   29   7.1  1.0 -1.0       0.00     133.90     230.64       4.71     150.37      10.69     393.06      -0.00    -392.38      15.20
                           -0.00      -3.51     -39.16     110.80     428.59     912.10    -110.11       0.00    -218.34      68.26

   30   8.1  1.0 -1.0       0.00    -176.92      72.54       1.92     785.29      65.12     -72.62     392.38       0.00     261.38
                           -0.00     -16.92    -184.36    -187.39      97.92     206.77     503.94     218.34      -0.00    -271.13

   31   9.1  1.0 -1.0       0.00    -107.89    -168.76      -4.02     -22.34     252.20     268.05     -15.20    -261.38      -0.00
                           -0.00     -11.04    -119.72      88.77    -346.29     163.98     -13.74     -68.26     271.13      -0.00

   32  10.1  1.0 -1.0       0.00     166.02       7.67       0.15     -29.24     349.29    -142.78     259.20      92.74     297.50
                           -0.00     -15.27    -157.96    -168.39      45.76     -19.08    -397.80    -167.75     -10.10     375.55

   33  11.1  1.0 -1.0       0.00     121.97    -159.72      -3.84      19.97    -252.45      67.72     342.65    -134.43     413.76
                           -0.00      10.93     119.67    -133.58    -289.01     135.30     -44.98      55.78    -326.58      58.99

   34   1.1  0.0  0.0     -71.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -89.45     -73.19   -1206.52     534.60      16.86     -26.49     271.29     133.28      -8.09      43.54

   35   2.1  0.0  0.0    -112.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -32.40     -72.89    -367.07    -369.95     395.32    -565.15    -331.91    -198.30     180.10      61.90

   36   3.1  0.0  0.0       5.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -72.28    -381.63     434.89     146.96     266.65    -389.44     463.66     126.28    -416.37    -111.62

   37   4.1  0.0  0.0      14.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          127.18   -1152.91    -120.36    -144.19    -120.82     175.89      24.18    -439.53      -9.85    -143.70

   38   5.1  0.0  0.0    -124.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           66.41     -95.67     434.19    1012.70      80.49    -112.44      39.33    -153.12     499.61    -160.63

   39   6.1  0.0  0.0    -116.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -146.72     186.33    1980.07      47.32      -0.00       0.00      -0.00      -0.00       0.00    -128.74


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0     166.02     121.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.27     -10.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       7.67    -159.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          157.96    -119.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.15      -3.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          168.39     133.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0     -29.24      19.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -45.76     289.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0     349.29    -252.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.08    -135.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0    -142.78      67.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          397.80      44.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0     259.20     342.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          167.75     -55.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0      92.74    -134.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.10     326.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0     297.50     413.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -375.55     -58.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0      -0.00    -300.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -453.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0     300.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          453.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   1.1  1.0  0.0       0.00       0.00       0.00     889.16      21.27      -0.94      -1.23     152.51     133.90    -176.92
                            0.00       0.00      -0.00       2.17     -83.28     280.08    -131.92      17.18       3.51      16.92

   13   2.1  1.0  0.0       0.00       0.00    -889.16       0.00       0.17      -0.64       7.38    -118.29     230.64      72.54
                            0.00       0.00      -2.17       0.00    -885.50     -25.91      11.59     190.72      39.16     184.36

   14   3.1  1.0  0.0       0.00       0.00     -21.27      -0.17      -0.00      25.95    -309.72      -4.21       4.71       1.92
                            0.00       0.00      83.28     885.50      -0.00       0.27       1.47    -158.41    -110.80     187.39

   15   4.1  1.0  0.0       0.00       0.00       0.94       0.64     -25.95       0.00      -3.40     778.99     150.37     785.29
                            0.00       0.00    -280.08      25.91      -0.27       0.00      -0.17     185.45    -428.59     -97.92

   16   5.1  1.0  0.0       0.00       0.00       1.23      -7.38     309.72       3.40      -0.00      66.30      10.69      65.12
                            0.00       0.00     131.92     -11.59      -1.47       0.17      -0.00     390.51    -912.10    -206.77

   17   6.1  1.0  0.0       0.00       0.00    -152.51     118.29       4.21    -778.99     -66.30       0.00     393.06     -72.62
                            0.00       0.00     -17.18    -190.72     158.41    -185.45    -390.51       0.00     110.11    -503.94

   18   7.1  1.0  0.0       0.00       0.00    -133.90    -230.64      -4.71    -150.37     -10.69    -393.06      -0.00     392.38
                            0.00       0.00      -3.51     -39.16     110.80     428.59     912.10    -110.11      -0.00    -218.34

   19   8.1  1.0  0.0       0.00       0.00     176.92     -72.54      -1.92    -785.29     -65.12      72.62    -392.38       0.00
                            0.00       0.00     -16.92    -184.36    -187.39      97.92     206.77     503.94     218.34       0.00

   20   9.1  1.0  0.0       0.00       0.00     107.89     168.76       4.02      22.34    -252.20    -268.05      15.20     261.38
                            0.00       0.00     -11.04    -119.72      88.77    -346.29     163.98     -13.74     -68.26     271.13

   21  10.1  1.0  0.0   43652.41       0.00    -166.02      -7.67      -0.15      29.24    -349.29     142.78    -259.20     -92.74
                            0.00       0.00     -15.27    -157.96    -168.39      45.76     -19.08    -397.80    -167.75     -10.10

   22  11.1  1.0  0.0       0.00   43652.41    -121.97     159.72       3.84     -19.97     252.45     -67.72    -342.65     134.43
                           -0.00       0.00      10.93     119.67    -133.58    -289.01     135.30     -44.98      55.78    -326.58

   23   1.1  1.0 -1.0    -166.02    -121.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.27     -10.93       0.00      29.92   -1251.93      33.19      24.60    -264.14     -51.45    -266.99

   24   2.1  1.0 -1.0      -7.67     159.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          157.96    -119.67     -29.92      -0.00     117.81     359.45     249.58      29.74      -2.10      21.77

   25   3.1  1.0 -1.0      -0.15       3.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          168.39     133.58    1251.93    -117.81       0.00       8.44       5.77    -145.73     342.60      79.33

   26   4.1  1.0 -1.0      29.24     -19.97       0.00       0.00       0.00   42682.85       0.00       0.00       0.00       0.00
                          -45.76     289.01     -33.19    -359.45      -8.44       0.00      -8.46     546.67     376.25    -613.65

   27   5.1  1.0 -1.0    -349.29     252.45       0.00       0.00       0.00       0.00   42682.85       0.00       0.00       0.00
                           19.08    -135.30     -24.60    -249.58      -5.77       8.46       0.00    -786.15    -541.82     883.80

   28   6.1  1.0 -1.0     142.78     -67.72       0.00       0.00       0.00       0.00       0.00   42682.90       0.00       0.00
                          397.80      44.98     264.14     -29.74     145.73    -546.67     786.15      -0.00     537.32     333.37

   29   7.1  1.0 -1.0    -259.20    -342.65       0.00       0.00       0.00       0.00       0.00       0.00   42682.90       0.00
                          167.75     -55.78      51.45       2.10    -342.60    -376.25     541.82    -537.32      -0.00    -477.09

   30   8.1  1.0 -1.0     -92.74     134.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42682.90
                           10.10     326.58     266.99     -21.77     -79.33     613.65    -883.80    -333.37     477.09       0.00

   31   9.1  1.0 -1.0    -297.50    -413.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -375.55     -58.99    -166.31      21.66    -251.49     229.91     157.74     208.78     345.17     394.53

   32  10.1  1.0 -1.0      -0.00     300.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -453.22    -229.02      20.75      33.35    -412.13    -286.17    -209.36     376.42      47.34

   33  11.1  1.0 -1.0    -300.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          453.22      -0.00     164.63     -10.49    -209.13    -340.57    -238.12     388.97    -225.77     211.83

   34   1.1  0.0  0.0       0.00       0.00     -67.19    -388.84    -209.63      19.18       3.80    -462.14    -122.11    -276.41
                         -252.53     -79.80     644.46     -33.78      29.05     121.34     257.90    -156.12     331.99      75.88

   35   2.1  0.0  0.0       0.00       0.00    -655.34     330.77    -526.22     -19.24      -2.09     -39.81     257.37     -12.72
                           -2.70     -87.06    -265.89     -17.78     681.98     -78.43    -164.88    -275.95     228.87    -118.46

   36   3.1  0.0  0.0       0.00       0.00    -471.87     -70.44     749.21    -212.48     -17.54    -131.11     126.08      12.26
                           46.71       7.37     437.47    -351.20     456.67      28.92      62.72      91.11    -311.21    -266.31

   37   4.1  0.0  0.0       0.00       0.00     218.64      85.66    -239.18    -573.41     -48.05      28.53     -58.08     -59.52
                            9.88    -188.48    -152.57    -787.38    -229.10     -31.45     -66.35     170.50     259.68    -112.34

   38   5.1  0.0  0.0       0.00       0.00    -201.76    -687.31    -232.60     -68.43      -5.66      39.48     -20.20     396.55
                          -75.25     137.77    -539.21     -50.78     134.88     215.90     459.00       3.27     -22.79     -66.59

   39   6.1  0.0  0.0       0.00       0.00      -0.28      33.63   -1406.31       0.00      -0.00       0.00       0.00       0.00
                          231.29     191.70    1400.53    -131.71      -3.42      -0.00      -0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39

    1   1.1  1.0  1.0       0.00       0.00       0.00     -67.19    -655.34    -471.87     218.64    -201.76      -0.28
                            0.00       0.00       0.00     644.46    -265.89     437.47    -152.57    -539.21    1400.53

    2   2.1  1.0  1.0       0.00       0.00       0.00    -388.84     330.77     -70.44      85.66    -687.31      33.63
                            0.00       0.00       0.00     -33.78     -17.78    -351.20    -787.38     -50.78    -131.71

    3   3.1  1.0  1.0       0.00       0.00       0.00    -209.63    -526.22     749.21    -239.18    -232.60   -1406.31
                            0.00       0.00       0.00      29.05     681.98     456.67    -229.10     134.88      -3.42

    4   4.1  1.0  1.0       0.00       0.00       0.00      19.18     -19.24    -212.48    -573.41     -68.43       0.00
                            0.00       0.00       0.00     121.34     -78.43      28.92     -31.45     215.90      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       3.80      -2.09     -17.54     -48.05      -5.66      -0.00
                            0.00       0.00       0.00     257.90    -164.88      62.72     -66.35     459.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00    -462.14     -39.81    -131.11      28.53      39.48       0.00
                            0.00       0.00       0.00    -156.12    -275.95      91.11     170.50       3.27       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00    -122.11     257.37     126.08     -58.08     -20.20       0.00
                            0.00       0.00       0.00     331.99     228.87    -311.21     259.68     -22.79      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00    -276.41     -12.72      12.26     -59.52     396.55       0.00
                            0.00       0.00       0.00      75.88    -118.46    -266.31    -112.34     -66.59       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00      47.85     -71.49    -142.03      49.57      57.81     117.35
                            0.00       0.00       0.00      95.02    -109.42      48.57      73.87     -89.03     177.07

   10  10.1  1.0  1.0       0.00       0.00       0.00     -28.19     126.37    -111.06      44.37     -68.37     161.65
                            0.00       0.00       0.00     -13.37     -95.33    -118.30     -84.03     -22.59     -23.05

   11  11.1  1.0  1.0       0.00       0.00       0.00     -71.76    -112.08       5.21      14.40    -124.00    -116.23
                            0.00       0.00       0.00      89.45      32.40      72.28    -127.18     -66.41     146.72

   12   1.1  1.0  0.0    -107.89     166.02     121.97       0.00       0.00       0.00       0.00       0.00       0.00
                           11.04      15.27     -10.93      73.19      72.89     381.63    1152.91      95.67    -186.33

   13   2.1  1.0  0.0    -168.76       7.67    -159.72       0.00       0.00       0.00       0.00       0.00       0.00
                          119.72     157.96    -119.67    1206.52     367.07    -434.89     120.36    -434.19   -1980.07

   14   3.1  1.0  0.0      -4.02       0.15      -3.84       0.00       0.00       0.00       0.00       0.00       0.00
                          -88.77     168.39     133.58    -534.60     369.95    -146.96     144.19   -1012.70     -47.32

   15   4.1  1.0  0.0     -22.34     -29.24      19.97       0.00       0.00       0.00       0.00       0.00       0.00
                          346.29     -45.76     289.01     -16.86    -395.32    -266.65     120.82     -80.49       0.00

   16   5.1  1.0  0.0     252.20     349.29    -252.45       0.00       0.00       0.00       0.00       0.00       0.00
                         -163.98      19.08    -135.30      26.49     565.15     389.44    -175.89     112.44      -0.00

   17   6.1  1.0  0.0     268.05    -142.78      67.72       0.00       0.00       0.00       0.00       0.00       0.00
                           13.74     397.80      44.98    -271.29     331.91    -463.66     -24.18     -39.33       0.00

   18   7.1  1.0  0.0     -15.20     259.20     342.65       0.00       0.00       0.00       0.00       0.00       0.00
                           68.26     167.75     -55.78    -133.28     198.30    -126.28     439.53     153.12       0.00

   19   8.1  1.0  0.0    -261.38      92.74    -134.43       0.00       0.00       0.00       0.00       0.00       0.00
                         -271.13      10.10     326.58       8.09    -180.10     416.37       9.85    -499.61      -0.00

   20   9.1  1.0  0.0      -0.00     297.50     413.76       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -375.55     -58.99     -43.54     -61.90     111.62     143.70     160.63     128.74

   21  10.1  1.0  0.0    -297.50      -0.00    -300.37       0.00       0.00       0.00       0.00       0.00       0.00
                          375.55      -0.00    -453.22     252.53       2.70     -46.71      -9.88      75.25    -231.29

   22  11.1  1.0  0.0    -413.76     300.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           58.99     453.22       0.00      79.80      87.06      -7.37     188.48    -137.77    -191.70

   23   1.1  1.0 -1.0       0.00       0.00       0.00     -67.19    -655.34    -471.87     218.64    -201.76      -0.28
                          166.31     229.02    -164.63    -644.46     265.89    -437.47     152.57     539.21   -1400.53

   24   2.1  1.0 -1.0       0.00       0.00       0.00    -388.84     330.77     -70.44      85.66    -687.31      33.63
                          -21.66     -20.75      10.49      33.78      17.78     351.20     787.38      50.78     131.71

   25   3.1  1.0 -1.0       0.00       0.00       0.00    -209.63    -526.22     749.21    -239.18    -232.60   -1406.31
                          251.49     -33.35     209.13     -29.05    -681.98    -456.67     229.10    -134.88       3.42

   26   4.1  1.0 -1.0       0.00       0.00       0.00      19.18     -19.24    -212.48    -573.41     -68.43       0.00
                         -229.91     412.13     340.57    -121.34      78.43     -28.92      31.45    -215.90       0.00

   27   5.1  1.0 -1.0       0.00       0.00       0.00       3.80      -2.09     -17.54     -48.05      -5.66      -0.00
                         -157.74     286.17     238.12    -257.90     164.88     -62.72      66.35    -459.00       0.00

   28   6.1  1.0 -1.0       0.00       0.00       0.00    -462.14     -39.81    -131.11      28.53      39.48       0.00
                         -208.78     209.36    -388.97     156.12     275.95     -91.11    -170.50      -3.27      -0.00

   29   7.1  1.0 -1.0       0.00       0.00       0.00    -122.11     257.37     126.08     -58.08     -20.20       0.00
                         -345.17    -376.42     225.77    -331.99    -228.87     311.21    -259.68      22.79       0.00

   30   8.1  1.0 -1.0       0.00       0.00       0.00    -276.41     -12.72      12.26     -59.52     396.55       0.00
                         -394.53     -47.34    -211.83     -75.88     118.46     266.31     112.34      66.59      -0.00

   31   9.1  1.0 -1.0   43652.41       0.00       0.00      47.85     -71.49    -142.03      49.57      57.81     117.35
                            0.00     490.68    -592.03     -95.02     109.42     -48.57     -73.87      89.03    -177.07

   32  10.1  1.0 -1.0       0.00   43652.41       0.00     -28.19     126.37    -111.06      44.37     -68.37     161.65
                         -490.68       0.00    -329.54      13.37      95.33     118.30      84.03      22.59      23.05

   33  11.1  1.0 -1.0       0.00       0.00   43652.41     -71.76    -112.08       5.21      14.40    -124.00    -116.23
                          592.03     329.54      -0.00     -89.45     -32.40     -72.28     127.18      66.41    -146.72

   34   1.1  0.0  0.0      47.85     -28.19     -71.76    5830.19       0.00       0.00       0.00       0.00       0.00
                           95.02     -13.37      89.45       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.1  0.0  0.0     -71.49     126.37    -112.08       0.00    5830.18       0.00       0.00       0.00       0.00
                         -109.42     -95.33      32.40      -0.00       0.00       0.00       0.00       0.00       0.00

   36   3.1  0.0  0.0    -142.03    -111.06       5.21       0.00       0.00    5830.18       0.00       0.00       0.00
                           48.57    -118.30      72.28      -0.00      -0.00       0.00       0.00       0.00       0.00

   37   4.1  0.0  0.0      49.57      44.37      14.40       0.00       0.00       0.00    5830.18       0.00       0.00
                           73.87     -84.03    -127.18      -0.00      -0.00      -0.00       0.00       0.00       0.00

   38   5.1  0.0  0.0      57.81     -68.37    -124.00       0.00       0.00       0.00       0.00    5830.18       0.00
                          -89.03     -22.59     -66.41      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   39   6.1  0.0  0.0     117.35     161.65    -116.23       0.00       0.00       0.00       0.00       0.00   14288.04
                          177.07     -23.05     146.72      -0.00      -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 39)

    The diagonal matrixelements are shifted by  -6174.41915748 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.004       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.003       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42682.851       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42682.848       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42682.902       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42682.903       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42682.903
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       3.062    -117.771     396.100    -186.557      24.301       4.961      23.928

    2    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -3.062       0.000   -1252.289     -36.643      16.396     269.722      55.381     260.722

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                              117.771    1252.289       0.000       0.379       2.073    -224.031    -156.698     265.014

    4    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                             -396.100      36.643      -0.379       0.000      -0.247     262.272    -606.123    -138.486

    5    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              186.557     -16.396      -2.073       0.247       0.000     552.271   -1289.905    -292.416

    6    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                              -24.301    -269.722     224.031    -262.272    -552.271       0.000     155.716    -712.673

    7    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -4.961     -55.381     156.698     606.123    1289.905    -155.716       0.000    -308.781

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -23.928    -260.722    -265.014     138.486     292.416     712.673     308.781       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                              -15.616    -169.308     125.538    -489.728     231.909     -19.429     -96.532     383.438

   10    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                              -21.591    -223.392    -238.143      64.708     -26.986    -562.574    -237.230     -14.278

   11    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               15.454     169.235    -188.906    -408.722     191.345     -63.609      78.891    -461.849

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -29.920    1251.931     -33.185     -24.596     264.137      51.448     266.988

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               29.920       0.000    -117.811    -359.452    -249.579     -29.745       2.100     -21.772

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1251.931     117.811      -0.000      -8.435      -5.766     145.730    -342.597     -79.332

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               33.185     359.452       8.435      -0.000       8.455    -546.668    -376.250     613.654

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.596     249.579       5.766      -8.455      -0.000     786.149     541.817    -883.797

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -264.137      29.745    -145.730     546.668    -786.149       0.000    -537.323    -333.366

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -51.448      -2.100     342.597     376.250    -541.817     537.323       0.000     477.086

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -266.988      21.772      79.332    -613.654     883.797     333.366    -477.086      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              166.307     -21.660     251.492    -229.907    -157.738    -208.779    -345.167    -394.527

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              229.016     -20.754     -33.345     412.133     286.174     209.359    -376.422     -47.338

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -164.629      10.494     209.132     340.572     238.116    -388.971     225.769    -211.828

    1    1  |0 0>             -95.022    -549.900    -296.460      27.121       5.372    -653.569    -172.690    -390.902
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            -926.798     467.776    -744.185     -27.211      -2.961     -56.299     363.971     -17.987
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -667.319     -99.613    1059.538    -300.494     -24.809    -185.419     178.305      17.343
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             309.204     121.146    -338.250    -810.925     -67.956      40.347     -82.134     -84.169
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            -285.333    -972.009    -328.939     -96.780      -8.006      55.839     -28.569     560.813
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.390      47.567   -1988.817       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       3.062    -117.771     396.100    -186.557

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -3.062       0.000   -1252.289     -36.643      16.396

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     117.771    1252.289       0.000       0.379       2.073

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -396.100      36.643      -0.379       0.000      -0.247

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000     186.557     -16.396      -2.073       0.247       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000     -24.301    -269.722     224.031    -262.272    -552.271

    7    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -4.961     -55.381     156.698     606.123    1289.905

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -23.928    -260.722    -265.014     138.486     292.416

    9    1  |1 1>+          43652.406       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000     -15.616    -169.308     125.538    -489.728     231.909

   10    1  |1 1>+              0.000   43652.405       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -21.591    -223.392    -238.143      64.708     -26.986

   11    1  |1 1>+              0.000       0.000   43652.406      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000      15.454     169.235    -188.906    -408.722     191.345

    1    1  |1 0>               0.000      -0.000      -0.000       0.004       0.000       0.000       0.000       0.000
                               15.616      21.591     -15.454       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              169.308     223.392    -169.235      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.003       0.000       0.000
                             -125.538     238.143     188.906      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000   42682.851       0.000
                              489.728     -64.708     408.722      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000   42682.848
                             -231.909      26.986    -191.345      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               19.429     562.574      63.609      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               96.532     237.230     -78.891      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -383.438      14.278     461.849      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -531.111     -83.422      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              531.111       0.000    -640.954      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               83.422     640.954       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000    1257.458      30.075      -1.334      -1.741
                             -166.307    -229.016     164.629      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000   -1257.458       0.000       0.246      -0.907      10.432
                               21.660      20.754     -10.494       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000     -30.075      -0.246       0.000      36.699    -438.005
                             -251.492      33.345    -209.132       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       1.334       0.907     -36.699       0.000      -4.804
                              229.907    -412.133    -340.572      -0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       1.741     -10.432     438.005       4.804       0.000
                              157.738    -286.174    -238.116      -0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000    -215.680     167.293       5.958   -1101.659     -93.757
                              208.779    -209.359     388.971       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000    -189.365    -326.171      -6.659    -212.649     -15.116
                              345.167     376.422    -225.769      -0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000     250.196    -102.586      -2.718   -1110.564     -92.100
                              394.527      47.338     211.828       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000     152.578     238.662       5.678      31.590    -356.665
                               -0.000    -490.680     592.030       0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000    -234.787     -10.849      -0.214      41.348    -493.973
                              490.680      -0.000     329.536      -0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000    -172.492     225.874       5.436     -28.247     357.015
                             -592.030    -329.536       0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |0 0>              67.669     -39.862    -101.486       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -73.189   -1206.524     534.597      16.864     -26.493

    2    1  |0 0>            -101.101     178.714    -158.508       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -72.890    -367.070    -369.946     395.319    -565.153

    3    1  |0 0>            -200.858    -157.062       7.366       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -381.632     434.887     146.962     266.653    -389.438

    4    1  |0 0>              70.102      62.747      20.363       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1152.915    -120.363    -144.187    -120.821     175.892

    5    1  |0 0>              81.757     -96.695    -175.356       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -95.667     434.192    1012.698      80.494    -112.439

    6    1  |0 0>             165.956     228.607    -164.371       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     186.331    1980.074      47.321      -0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               24.301       4.961      23.928      15.616      21.591     -15.454      -0.000     -29.920

    2    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                              269.722      55.381     260.722     169.308     223.392    -169.235      29.920       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                             -224.031    -156.698     265.014    -125.538     238.143     188.906   -1251.931     117.811

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                              262.272    -606.123    -138.486     489.728     -64.708     408.722      33.185     359.452

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                              552.271   -1289.905    -292.416    -231.909      26.986    -191.345      24.596     249.579

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000     155.716    -712.673      19.429     562.574      63.609    -264.137      29.745

    7    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                             -155.716       0.000    -308.781      96.532     237.230     -78.891     -51.448      -2.100

    8    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                              712.673     308.781       0.000    -383.438      14.278     461.849    -266.988      21.772

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                              -19.429     -96.532     383.438       0.000    -531.111     -83.422     166.307     -21.660

   10    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                             -562.574    -237.230     -14.278     531.111       0.000    -640.954     229.016     -20.754

   11    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                              -63.609      78.891    -461.849      83.422     640.954       0.000    -164.629      10.494

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   -1257.458
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000    1257.458       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      30.075       0.246
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -1.334      -0.907
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -1.741      10.432
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>           42682.902       0.000       0.000       0.000       0.000       0.000     215.680    -167.293
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000   42682.903       0.000       0.000       0.000       0.000     189.365     326.171
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000   42682.903       0.000       0.000       0.000    -250.196     102.586
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000   43652.406       0.000       0.000    -152.578    -238.662
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000   43652.405       0.000     234.787      10.849
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000   43652.406     172.492    -225.874
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-            215.680     189.365    -250.196    -152.578     234.787     172.492       0.004       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-           -167.293     326.171     102.586    -238.662      10.849    -225.874       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -5.958       6.659       2.718      -5.678       0.214      -5.436       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-           1101.659     212.649    1110.564     -31.590     -41.348      28.247       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-             93.757      15.116      92.100     356.665     493.973    -357.015       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000     555.871    -102.699     379.081    -201.921      95.769       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-           -555.871       0.000     554.904     -21.490     366.566     484.581       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-            102.699    -554.904       0.000    -369.643     131.148    -190.118       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-           -379.081      21.490     369.643       0.000     420.731     585.150       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>-            201.921    -366.566    -131.148    -420.731       0.000    -424.787       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-            -95.769    -484.581     190.118    -585.150     424.787       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              271.289     133.281      -8.089      43.543    -252.528     -79.802    -911.405      47.765

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -331.909    -198.297     180.104      61.904      -2.705     -87.063     376.019      25.140

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              463.655     126.281    -416.369    -111.623      46.714       7.367    -618.674     496.665

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.176    -439.531      -9.848    -143.701       9.881    -188.480     215.774    1113.523

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               39.330    -153.120     499.611    -160.631     -75.249     137.773     762.561      71.816

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    -128.743     231.295     191.699   -1980.643     186.269

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1251.931     -33.185     -24.596     264.137      51.448     266.988    -166.307    -229.016

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -117.811    -359.452    -249.579     -29.745       2.100     -21.772      21.660      20.754

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -8.435      -5.766     145.730    -342.597     -79.332    -251.492      33.345

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.435      -0.000       8.455    -546.668    -376.250     613.654     229.907    -412.133

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.766      -8.455      -0.000     786.149     541.817    -883.797     157.738    -286.174

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -145.730     546.668    -786.149       0.000    -537.323    -333.366     208.779    -209.359

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              342.597     376.250    -541.817     537.323       0.000     477.086     345.167     376.422

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               79.332    -613.654     883.797     333.366    -477.086      -0.000     394.527      47.338

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              251.492    -229.907    -157.738    -208.779    -345.167    -394.527      -0.000    -490.680

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -33.345     412.133     286.174     209.359    -376.422     -47.338     490.680      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              209.132     340.572     238.116    -388.971     225.769    -211.828    -592.030    -329.536

    1    1  |1 0>             -30.075       1.334       1.741    -215.680    -189.365     250.196     152.578    -234.787
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>              -0.246       0.907     -10.432     167.293    -326.171    -102.586     238.662     -10.849
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000     -36.699     438.005       5.958      -6.659      -2.718       5.678      -0.214
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 0>              36.699       0.000       4.804   -1101.659    -212.649   -1110.564      31.590      41.348
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 0>            -438.005      -4.804       0.000     -93.757     -15.116     -92.100    -356.665    -493.973
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>              -5.958    1101.659      93.757       0.000    -555.871     102.699    -379.081     201.921
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>               6.659     212.649      15.116     555.871       0.000    -554.904      21.490    -366.566
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               2.718    1110.564      92.100    -102.699     554.904       0.000     369.643    -131.148
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 0>              -5.678     -31.590     356.665     379.081     -21.490    -369.643       0.000    -420.731
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 0>               0.214     -41.348     493.973    -201.921     366.566     131.148     420.731       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 0>              -5.436      28.247    -357.015      95.769     484.581    -190.118     585.150    -424.787
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.003       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000   42682.851       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000   42682.848       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000   42682.902       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000   42682.903       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42682.903       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   43652.406       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   43652.405
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -41.086    -171.599    -364.726     220.783    -469.508    -107.308    -134.380      18.909

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -964.460     110.914     233.177     390.255    -323.672     167.524     154.738     134.812

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -645.827     -40.906     -88.697    -128.851     440.114     376.616     -68.689     167.305

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              324.000      44.482      93.833    -241.124    -367.246     158.873    -104.472     118.836

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -190.754    -305.330    -649.124      -4.620      32.227      94.169     125.903      31.949

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.843       0.000       0.000      -0.000       0.000      -0.000    -250.408      32.591

  State Sym Spin    / Nr.       33          34          35          36          37          38          39

    1    1  |1 1>+              0.000     -95.022    -926.798    -667.319     309.204    -285.333      -0.390
                              164.629       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    -549.900     467.776     -99.613     121.146    -972.009      47.567
                              -10.494       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -296.460    -744.185    1059.538    -338.250    -328.939   -1988.817
                             -209.132       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      27.121     -27.211    -300.494    -810.925     -96.780       0.000
                             -340.572       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       5.372      -2.961     -24.809     -67.956      -8.006      -0.000
                             -238.116       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000    -653.569     -56.299    -185.419      40.347      55.839       0.000
                              388.971       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000    -172.690     363.971     178.305     -82.134     -28.569       0.000
                             -225.769       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000    -390.902     -17.987      17.343     -84.169     560.813       0.000
                              211.828       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      67.669    -101.101    -200.858      70.102      81.757     165.956
                              592.030       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000     -39.862     178.714    -157.062      62.747     -96.695     228.607
                              329.536       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000    -101.486    -158.508       7.366      20.363    -175.356    -164.371
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -172.492       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      73.189      72.890     381.632    1152.915      95.667    -186.331

    2    1  |1 0>             225.874       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1206.524     367.070    -434.887     120.363    -434.192   -1980.074

    3    1  |1 0>               5.436       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -534.597     369.946    -146.962     144.187   -1012.698     -47.321

    4    1  |1 0>             -28.247       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -16.864    -395.319    -266.653     120.821     -80.494       0.000

    5    1  |1 0>             357.015       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      26.493     565.153     389.438    -175.892     112.439      -0.000

    6    1  |1 0>             -95.769       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -271.289     331.909    -463.655     -24.176     -39.330       0.000

    7    1  |1 0>            -484.581       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -133.281     198.297    -126.281     439.531     153.120       0.000

    8    1  |1 0>             190.118       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       8.089    -180.104     416.369       9.848    -499.611      -0.000

    9    1  |1 0>            -585.150       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -43.543     -61.904     111.623     143.701     160.631     128.743

   10    1  |1 0>             424.787       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     252.528       2.705     -46.714      -9.881      75.249    -231.295

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      79.802      87.063      -7.367     188.480    -137.773    -191.699

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     911.405    -376.019     618.674    -215.774    -762.561    1980.643

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -47.765     -25.140    -496.665   -1113.523     -71.816    -186.269

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      41.086     964.460     645.827    -324.000     190.754      -4.843

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     171.599    -110.914      40.906     -44.482     305.330      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     364.726    -233.177      88.697     -93.833     649.124      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -220.783    -390.255     128.851     241.124       4.620       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     469.508     323.672    -440.114     367.246     -32.227      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     107.308    -167.524    -376.616    -158.873     -94.169       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     134.380    -154.738      68.689     104.472    -125.903     250.408

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -18.909    -134.812    -167.305    -118.836     -31.949     -32.591

   11    1  |1 1>-          43652.406       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     126.496      45.822     102.217    -179.857     -93.914     207.494

    1    1  |0 0>               0.000    5830.190       0.000       0.000       0.000       0.000       0.000
                             -126.496       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5830.184       0.000       0.000       0.000       0.000
                              -45.822      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5830.183       0.000       0.000       0.000
                             -102.217      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5830.177       0.000       0.000
                              179.857      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5830.182       0.000
                               93.914      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14288.036
                             -207.494      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -6174.43377132    -0.01461385    -3207.37      0.00000000        0.00      0.0000
    2 -6174.42492555    -0.00576808    -1265.95      0.00884577     1941.42      0.2407
    3 -6174.42492555    -0.00576807    -1265.94      0.00884578     1941.42      0.2407
    4 -6174.42492554    -0.00576806    -1265.94      0.00884578     1941.42      0.2407
    5 -6174.41617162     0.00298586      655.32      0.01759970     3862.69      0.4789
    6 -6174.41617162     0.00298586      655.32      0.01759971     3862.69      0.4789
    7 -6174.41617147     0.00298600      655.35      0.01759985     3862.72      0.4789
    8 -6174.41617147     0.00298601      655.35      0.01759985     3862.72      0.4789
    9 -6174.41617147     0.00298601      655.35      0.01759986     3862.72      0.4789
   10 -6174.39006006     0.02909742     6386.14      0.04371126     9593.51      1.1894
   11 -6174.39006004     0.02909744     6386.15      0.04371128     9593.52      1.1894
   12 -6174.39006003     0.02909744     6386.15      0.04371129     9593.52      1.1894
   13 -6174.39005989     0.02909759     6386.18      0.04371144     9593.55      1.1894
   14 -6174.39005986     0.02909761     6386.19      0.04371146     9593.56      1.1894
   15 -6174.35099297     0.06816451    14960.38      0.08277835    18167.75      2.2525
   16 -6174.23653581     0.18262167    40080.82      0.19723551    43288.19      5.3671
   17 -6174.23653581     0.18262167    40080.82      0.19723551    43288.19      5.3671
   18 -6174.23653581     0.18262167    40080.82      0.19723551    43288.19      5.3671
   19 -6174.22986354     0.18929393    41545.22      0.20390778    44752.58      5.5486
   20 -6174.22986354     0.18929394    41545.22      0.20390778    44752.59      5.5486
   21 -6174.22986354     0.18929394    41545.22      0.20390779    44752.59      5.5486
   22 -6174.22986339     0.18929409    41545.25      0.20390793    44752.62      5.5486
   23 -6174.22986339     0.18929409    41545.25      0.20390794    44752.62      5.5486
   24 -6174.22779758     0.19135990    41998.64      0.20597374    45206.01      5.6048
   25 -6174.22300870     0.19614878    43049.68      0.21076262    46257.05      5.7351
   26 -6174.22300870     0.19614878    43049.68      0.21076262    46257.05      5.7351
   27 -6174.22300870     0.19614878    43049.68      0.21076262    46257.05      5.7351
   28 -6174.21746175     0.20169573    44267.10      0.21630957    47474.46      5.8861
   29 -6174.21746175     0.20169573    44267.10      0.21630957    47474.46      5.8861
   30 -6174.21746175     0.20169573    44267.10      0.21630958    47474.46      5.8861
   31 -6174.21746169     0.20169579    44267.11      0.21630963    47474.48      5.8861
   32 -6174.21746169     0.20169579    44267.11      0.21630963    47474.48      5.8861
   33 -6174.21746169     0.20169579    44267.11      0.21630964    47474.48      5.8861
   34 -6174.21746162     0.20169586    44267.13      0.21630971    47474.49      5.8861
   35 -6174.21466451     0.20449297    44881.02      0.21910681    48088.39      5.9622
   36 -6174.21466451     0.20449297    44881.02      0.21910682    48088.39      5.9622
   37 -6174.21466451     0.20449297    44881.02      0.21910682    48088.39      5.9622
   38 -6174.21466449     0.20449298    44881.02      0.21910683    48088.39      5.9622
   39 -6174.21466449     0.20449299    44881.02      0.21910683    48088.39      5.9622

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00011090  0.02193623 -0.01475263  0.70654527 -0.00006835  0.00245694  0.05375637 -0.15777262
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.01354118  0.70649789  0.00107013 -0.02190907 -0.00640545  0.01994737  0.01720873  0.65049177
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.56616802  0.01689316  0.00002848 -0.00066240  0.46346834 -0.61855364 -0.00031970  0.01648810
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000008 -0.00000001 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00002305 -0.00061684 -0.00001410 -0.00006286 -0.00001727 -0.01913186  0.00008387
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00002140  0.00736282  0.00015234  0.00004139  0.00003340 -0.00160381 -0.00003170
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000001 -0.00371087  0.00008539 -0.00269854 -0.01071179 -0.00799163  0.00048321  0.00443144
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00301132 -0.00010067  0.00557883 -0.00206491 -0.00156783 -0.00056932  0.00662551
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000001  0.00425696 -0.00003324  0.00159328 -0.01089927 -0.00818871 -0.00027772 -0.00541245
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00489737 -0.00226174 -0.00008125  0.00379238  0.00128326 -0.00169413 -0.00016962  0.00225120
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00674620  0.00365277  0.00000907 -0.00028249  0.00173264 -0.00235696 -0.00005944 -0.00253336
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00485061  0.00279672 -0.00006941  0.00343605 -0.00127144  0.00165658 -0.00024619 -0.00126014
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.05304404 -0.00074790  0.70377695  0.01470510  0.02976963  0.06649489  0.66420008 -0.00456061

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000001 -0.00000000  0.00000000
                           0.56367980  0.01692966 -0.06619423 -0.00032321  0.30252764  0.70733979 -0.06390218 -0.02147376

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01347126 -0.70544344 -0.00140497 -0.04437808  0.01187376  0.02227681  0.02050345  0.63273160

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00037003 -0.00012434  0.00605669  0.00005228  0.00000783  0.00084871 -0.00356434

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00028304 -0.00008485  0.00420617  0.00009036 -0.00008220 -0.00123272  0.00512534

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00444873  0.00245862  0.00035478 -0.01067896  0.00464147 -0.00345421  0.00643412

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00087365 -0.00575719 -0.00004486 -0.00732318  0.00315463  0.00869099  0.00122533

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00449930 -0.00132467  0.00023067  0.01208573 -0.00509668  0.00218443  0.00635952

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00379922  0.00259449  0.00392564  0.00024539  0.00065448  0.00152706 -0.00270174  0.00173838

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00682551  0.00357908 -0.00051268  0.00021426 -0.00114425 -0.00269614  0.00044644  0.00241484

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00565705 -0.00257591  0.00325500 -0.00009371 -0.00098049 -0.00226567 -0.00234478 -0.00168399

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000013 -0.00000000 -0.00000000 -0.00000000
                          -0.56384025 -0.00006605  0.06620591  0.00152237  0.76417688  0.09153760 -0.06412116 -0.00540107

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.05302629  0.00045092  0.70393119 -0.00215902 -0.07316999 -0.00847751 -0.66269577 -0.00061405

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00137868 -0.04435349  0.00203081  0.70564262 -0.00130296 -0.00230554 -0.06776166  0.21807426

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00667377 -0.00001962 -0.00040923 -0.00005605 -0.00007357 -0.00030387 -0.00776383

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00314285 -0.00002864  0.00017836 -0.00011972 -0.00014986 -0.00062037 -0.01647088

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00027456  0.00377872  0.00453285  0.00088615 -0.00733817  0.00632751 -0.00225878

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00005925  0.00263655  0.00092513 -0.00205578  0.01721230  0.00408000 -0.00060660

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00025815 -0.00444182  0.00440604 -0.00049224  0.00397797 -0.00599552 -0.00215131

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00738956  0.00016503 -0.00196445 -0.00263953 -0.00317730 -0.00038592 -0.00155492  0.00063071

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00096177  0.00022178  0.00370206 -0.00350202  0.00042055  0.00004132  0.00235291  0.00080483

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00612318 -0.00016433  0.00295222  0.00263537 -0.00262944 -0.00030979  0.00225990 -0.00058497

   1    1  |0 0>          -0.00000007  0.00000015  0.00000002 -0.00000001 -0.18168358 -0.21606645  0.01636652  0.13878660
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000007 -0.00000011  0.00000002 -0.00000017  0.10133824 -0.13793096  0.00658098 -0.17180293
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000010  0.00000004  0.00000020 -0.00000012 -0.17211610  0.17350628 -0.09527152 -0.02163433
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000002 -0.00000004  0.00000051  0.00000006  0.03295207 -0.07210456 -0.30452530 -0.00764971
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000028  0.00000004 -0.00000003  0.16944881  0.04108052 -0.02393896  0.23106660
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.19373114  0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000015  0.00000002  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.64851579  0.05193426 -0.10690593 -0.19316879  0.00578447 -0.00395697 -0.00002193 -0.00482056
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.15674951  0.01744868 -0.19515222  0.11290128 -0.00558747 -0.01823153  0.00267802  0.00035452
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00647519 -0.00926288 -0.00057640  0.00608117  0.26080299 -0.02245871 -0.11197007  0.00000942
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00160711  0.01756625  0.00323973  0.00295038  0.00054896 -0.00016224 -0.00000000 -0.03404714
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00012624  0.00147323  0.00024445  0.00026472  0.00004135 -0.00007154  0.00000000  0.40461653
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00543982 -0.00106368  0.00534157  0.00121233  0.00096523  0.01307429 -0.00000001 -0.15337836
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00685741  0.00151430  0.00003391 -0.00880243  0.00039588  0.00269569 -0.00000000  0.34933005
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00394463  0.00117508 -0.00728170  0.00125413  0.00116811  0.01216850 -0.00000001  0.08603198
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00214138 -0.00117164 -0.00036719  0.00657759  0.00435209 -0.00057586 -0.00464028 -0.11125922
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00047841 -0.00058696  0.00469110 -0.00286721  0.00616575 -0.00007224 -0.00639207  0.01251865
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00285802 -0.00134874  0.00587982  0.00242841 -0.00458479  0.00079971  0.00459598 -0.09492088
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.05641059  0.21988264  0.03891468  0.03706565 -0.00359088  0.01976115 -0.01049042 -0.00433043

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00421335 -0.01237531 -0.01829023 -0.00073581 -0.11123311  0.23586866 -0.11147779  0.00040490

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.21688429  0.02167822 -0.20476907  0.09442690 -0.00147518 -0.01341902 -0.00266419  0.00010898

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.01036439 -0.00228599  0.00404542  0.00926648 -0.00031562  0.00007384 -0.00000000  0.37080073

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01491874  0.00330456 -0.00582088 -0.01333885  0.00030080 -0.00017878  0.00000000  0.25765833

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00241677  0.00253235  0.00603756 -0.00183922  0.01002647  0.00515453 -0.00000001  0.14228928

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00033498 -0.00821808 -0.00055804 -0.00166578  0.00657138  0.00338430 -0.00000000 -0.31411099

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00201865 -0.00215073  0.00571823 -0.00330609 -0.01126447 -0.00467549  0.00000000 -0.06862814

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00081852 -0.00520969 -0.00483126  0.00073642 -0.00163796  0.00288434 -0.00359978 -0.10271611

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00080552  0.00105300 -0.00423189  0.00223986  0.00271157 -0.00611829  0.00646721  0.01108062

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00038242 -0.00527663  0.00298249 -0.00249559  0.00203781 -0.00431511  0.00536009 -0.08235240

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00368992 -0.02148806 -0.01911274  0.00488932  0.14847885  0.21356049  0.11150989 -0.00040834

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.07125648 -0.21771280 -0.04143267 -0.04220108 -0.02070040 -0.01774869 -0.01048692 -0.00421368

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.62944876 -0.05531200  0.08720024  0.20195337 -0.00617310  0.00171215 -0.00027266 -0.00493469

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00264040  0.00077881 -0.00695843  0.00324063  0.00003491 -0.00064601  0.00000000 -0.00889269

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00566959  0.00163950 -0.01480780  0.00682622  0.00007990 -0.00137601  0.00000000  0.00126194

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00584994 -0.00643934  0.00103554  0.00483259 -0.00605303  0.00409117 -0.00000000  0.48532063

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00078831 -0.00458933  0.00059669  0.00046040  0.01325764 -0.00926080  0.00000001  0.19918270

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00693308  0.00441851  0.00383083  0.00669101  0.00310738 -0.00213941 -0.00000000  0.03615358

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00160435 -0.00377142  0.00136738  0.00278116 -0.00407192 -0.00548694 -0.00700165  0.12654598

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00259927  0.00408088  0.00301607  0.00571137  0.00053568  0.00071774  0.00091128  0.00917368

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00154036  0.00523900 -0.00035757 -0.00290319 -0.00298611 -0.00468816 -0.00580174 -0.15127708

   1    1  |0 0>           0.05896173 -0.05753901  0.33501476 -0.13572128 -0.12374642  0.86436412  0.00000003  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.20938899 -0.09119913  0.03575168  0.78384898 -0.52113052  0.02854311 -0.00000001  0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.18282779  0.16921146  0.35569266  0.47696474  0.71497828  0.05065508  0.00000002  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.06014804  0.92526968 -0.03649633 -0.01938558 -0.19110253  0.04533532 -0.00000001  0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.13539718 -0.00479568  0.80934876 -0.18893670 -0.24859361 -0.37926520 -0.00000003  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000006 -0.00000010  0.98087514 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00421341  0.00113653  0.00932083 -0.00770861  0.00070617  0.00002769  0.00000906  0.00000151
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00130923  0.00635755  0.00773028  0.00921512 -0.00143411 -0.00005202 -0.00030499 -0.00018387
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00003214  0.00015183  0.00015155  0.00020910 -0.00002502  0.00377492  0.01346793  0.00768782
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.03684462 -0.00758264  0.02452632  0.09912954  0.75785488  0.00033875 -0.00047320 -0.00000017
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.44501098  0.06674246  0.00302249  0.00951508  0.06330044 -0.00221555  0.00059272 -0.00000002
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.09175164  0.33204923 -0.27013285 -0.05823956  0.01746500  0.51398628 -0.14473397  0.00000018
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.34352774  0.17720994  0.13083853 -0.35420843  0.04325712  0.10076534 -0.02829846  0.00000006
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.02246263 -0.36277044  0.23862391  0.12533249 -0.02580812  0.52120130 -0.14536159  0.00000013
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.11132987 -0.06454127  0.06345597 -0.19594226  0.02330245 -0.03803623 -0.13592539  0.29308229
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.03261393  0.13672935  0.10395814  0.13592601 -0.02093071 -0.05192043 -0.18691112  0.40372581
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.06704377  0.12499914  0.20740825 -0.00929157 -0.00521149  0.03847504  0.13482892 -0.29028398
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00475527 -0.00073909  0.00037324  0.00154879  0.01195810  0.00090170 -0.00093913  0.00072026

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00042548  0.00022332 -0.00026300 -0.00034866 -0.00108122  0.00973354 -0.00995852  0.00765402

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00092060 -0.00643423  0.00856680  0.00844873 -0.00139044  0.00027324 -0.00022034  0.00018292

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.33086202 -0.04194853 -0.30961636  0.30811429 -0.03003748 -0.00276257 -0.00205055 -0.00000002

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.23006758 -0.02701166  0.44582769 -0.44329852  0.04362641 -0.00115604 -0.00206490 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.19855771 -0.34003865 -0.18453310 -0.16993638  0.17708247  0.33101687  0.32416718  0.00000055

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.33864856 -0.12497648 -0.04810003 -0.08177723 -0.33582008  0.22792016  0.22252458  0.00000032

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                           0.02678639 -0.37877196 -0.19094884 -0.19881443 -0.04885413 -0.37367740 -0.36482379 -0.00000044

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.12515014  0.08202674 -0.08054264 -0.06161164  0.19640824 -0.07713452  0.07806769  0.22736387

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00484882  0.13898876 -0.12013267 -0.12054933 -0.00471565  0.13691413 -0.14086945 -0.40847213

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.07819918 -0.11260856  0.09007440  0.10403707  0.13796096  0.11414519 -0.11640338 -0.33854554

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00044653 -0.00006931 -0.00009112 -0.00015763 -0.00110495  0.01349579  0.00345122 -0.00765619

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00485734 -0.00075043 -0.00016394 -0.00174964 -0.01193581 -0.00125430 -0.00032241  0.00072003

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00420272  0.00051812 -0.00856203  0.00849868 -0.00112290 -0.00005590 -0.00001318  0.00001872

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.07876085  0.54367999  0.23080527  0.22871920 -0.03545310  0.00117016  0.00017264 -0.00000005

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.03551498 -0.25622912  0.49195903  0.48391565 -0.07631828  0.00242614  0.00062416 -0.00000010

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                           0.00953605  0.00535446 -0.19358172  0.16115810 -0.24899254  0.07290076 -0.28601290 -0.00000018

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                          -0.11269129  0.01914955 -0.04040246  0.01771956 -0.16171430 -0.17094807  0.66883056  0.00000046

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.50805935 -0.07292354 -0.18389753  0.22252909  0.23992674 -0.04014791  0.15358363  0.00000014

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00943902  0.00060155  0.08839026 -0.07415729  0.10271478  0.20637724  0.05277903  0.44222756

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.19435565 -0.02730896  0.11368857 -0.14042736 -0.15721467 -0.02632044 -0.00677000 -0.05755672

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01913606 -0.00501534 -0.09051975  0.06700578 -0.14801930  0.17084199  0.04368300  0.36644093

   1    1  |0 0>           0.00000000 -0.00000001  0.00850206  0.00724725 -0.00045428 -0.01860361  0.01024913 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000001  0.00000001  0.00832062 -0.01842659  0.00139057  0.00342126  0.01239911  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.01082091 -0.00828348 -0.00762921 -0.00729730 -0.01670291 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000001  0.00000001 -0.00679745 -0.00069185 -0.02223405  0.00042297  0.00591029  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000002  0.01647217  0.01072338 -0.00463133  0.01284230  0.00185820  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.01876711
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00050740  0.00378199 -0.00614051 -0.00000000 -0.00000001  0.00000003  0.00000001 -0.00000008
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00720682 -0.00009218  0.00053869 -0.00000001 -0.00000004 -0.00000001 -0.00000009 -0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00017227 -0.00000295  0.00001409 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00012096 -0.01254927 -0.00775337 -0.08450022  0.01590285  0.00086762 -0.11971284 -0.00821811
                           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000000

   5    1  |1 1>+          0.00561552  0.14994946  0.09187026  0.76022108 -0.11813981 -0.01842657 -0.01665038  0.00008440
                          -0.00000000 -0.00000000  0.00000000  0.00000013 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.09105784  0.03471334 -0.05023422 -0.04185237 -0.30114940  0.14255124  0.26961214  0.29343345
                           0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001 -0.00000000

   7    1  |1 1>+         -0.06661769 -0.06912426  0.11717031 -0.03127747 -0.14552481 -0.42048287  0.33953525 -0.45212054
                           0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001 -0.00000000

   8    1  |1 1>+          0.10307218 -0.02034961  0.02746786  0.05061785  0.32374012 -0.05512933 -0.33387604 -0.20178074
                          -0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000001  0.00000000

   9    1  |1 1>+         -0.27950258 -0.26184406  0.44208996 -0.00000017 -0.00000110 -0.00000259  0.00000608 -0.00000720
                           0.00000004  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.48175413  0.01790307 -0.05515714  0.00000035  0.00000247  0.00000054 -0.00000761 -0.00000065
                          -0.00000006 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.38782441 -0.23946870  0.36963935  0.00000032  0.00000234 -0.00000178 -0.00000444 -0.00000808
                          -0.00000005 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00020125 -0.00613372 -0.00376102  0.00000005 -0.00000001 -0.00000000  0.00000001  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00015369  0.00058312  0.00035278 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00722314 -0.00024733  0.00004782  0.00000001  0.00000006  0.00000001 -0.00000008 -0.00000002

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00315280 -0.07564998  0.12366295  0.00430468 -0.07251788  0.63178796  0.07245094 -0.32147200

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00281070 -0.05250288  0.08592795  0.00163765 -0.05242563  0.43907250 -0.11098126  0.46046867

   6    1  |1 0>           0.00000002  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000001  0.00000000
                           0.10814871  0.04595310  0.03177787 -0.11594765  0.31473779  0.04022562  0.44207354  0.09907046

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.01692612 -0.11823127 -0.07133787  0.38706153 -0.00217632 -0.00309032 -0.03148161  0.01227701

   8    1  |1 0>           0.00000001  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000001  0.00000000
                           0.10668881 -0.03054625 -0.01644209  0.13283875  0.27754090  0.03281174  0.37332939  0.09577697

   9    1  |1 0>           0.00000006  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.35916728  0.43077269  0.27365520 -0.00000177  0.00000113  0.00000019  0.00000696  0.00000155

  10    1  |1 0>           0.00000006  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.47267633 -0.07493175 -0.03283903  0.00000054  0.00000119  0.00000019  0.00000724  0.00000184

  11    1  |1 0>          -0.00000003 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.32909406  0.37971173  0.22340615 -0.00000168 -0.00000069 -0.00000013 -0.00000409 -0.00000121

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001903 -0.00057629 -0.00035503  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00020668 -0.00622215 -0.00361257  0.00000005 -0.00000001 -0.00000000 -0.00000002 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00016515  0.00362637 -0.00625208  0.00000000 -0.00000001  0.00000005 -0.00000002  0.00000008

   4    1  |1 1>-         -0.00000002 -0.00000000 -0.00000000 -0.00000002  0.00000001  0.00000000  0.00000001  0.00000000
                          -0.15965666  0.00520868 -0.00091500  0.10997585  0.67653402  0.07844740  0.26214221  0.06424759

   5    1  |1 1>-          0.00000001  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000001  0.00000000
                           0.07514779 -0.00306046 -0.00032149 -0.05468532 -0.34537644 -0.03614365  0.48459668  0.11416797

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00030513  0.02320213  0.13921666 -0.28234663  0.08012381 -0.30488448 -0.15701232  0.38732774

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00124212  0.04319013  0.05090298 -0.19240688  0.03654831 -0.05336122 -0.06485355  0.07432114

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00496145 -0.14473685  0.03749161  0.31125316 -0.01656404 -0.31872637 -0.01308638  0.40184298

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00057800 -0.04793977 -0.43368673  0.00000128 -0.00000028  0.00000084  0.00000191 -0.00000532

  10    1  |1 1>-          0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.02469856  0.65735966 -0.15384006 -0.00000224  0.00000032  0.00000123  0.00000025 -0.00000738

  11    1  |1 1>-          0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00318187  0.16110587  0.49921748 -0.00000176  0.00000031 -0.00000070 -0.00000242  0.00000523

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000001  0.00000002 -0.00000006
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000004
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000001 -0.00000002  0.00000002
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39

   1    1  |1 1>+          0.00000000 -0.00000000  0.00088407  0.00067771  0.00151120  0.00001588 -0.00000109
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000002 -0.00000000 -0.00046849 -0.00154009  0.00096405  0.00006670  0.00001875
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00004861  0.00002185  0.00001598  0.00011904 -0.00216375
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.55982005 -0.00013945  0.23414055 -0.12214237 -0.08219854  0.00062001 -0.00705606
                          -0.00000006 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.07494757 -0.00182675  0.01976539 -0.00974271 -0.00718374  0.00087419 -0.00053484
                          -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.06320475  0.40076469  0.00879385 -0.04793516  0.09416143 -0.18967976 -0.01204251
                          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.06530506  0.08188406 -0.07296418 -0.10080862 -0.05950948 -0.03617823 -0.00326132
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.07488932  0.40744572  0.00380916  0.05630556 -0.07188385 -0.19872787 -0.00909484
                           0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000124  0.00000001  0.31108889  0.41649609  0.23128036 -0.02845849  0.39428691
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001

  10    1  |1 1>+         -0.00000157  0.00000011 -0.11981023 -0.41158699  0.22776879 -0.01169115  0.52757018
                           0.00000000  0.00000000  0.00000000 -0.00000002  0.00000001  0.00000000  0.00000002

  11    1  |1 1>+         -0.00000103  0.00000001  0.12124875 -0.11052154  0.54551748  0.03768141 -0.39161279
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000001

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000006  0.00000000 -0.00157885  0.00082967  0.00055000  0.00016253  0.00015853

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000001  0.00018174 -0.00002030 -0.00012086  0.00180514  0.00117569

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.00000000 -0.00038011 -0.00146995  0.00109878  0.00011387 -0.00000484

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01235422 -0.00121201  0.07796463  0.06892246  0.11943305  0.00132174 -0.00061349

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01584925 -0.00106292 -0.11211080 -0.09912244 -0.17203275 -0.00048713 -0.00129268

   6    1  |1 0>          -0.00000002  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.14012867 -0.34799039  0.02716147 -0.10601761  0.04280099 -0.08785057  0.13754541

   7    1  |1 0>           0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.53865397 -0.24039528 -0.10813784  0.03606716  0.04955286 -0.06266157  0.09924647

   8    1  |1 0>           0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.20555524  0.39300611 -0.04702474 -0.05687161  0.06273976  0.10653040 -0.15885330

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000001 -0.00000003  0.00000001  0.00000000  0.00000000
                          -0.00000634 -0.00000024 -0.36502392  0.48657439 -0.04119435 -0.26786624 -0.14640813

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000001 -0.00000001 -0.00000001
                           0.00000246  0.00000043  0.15735566  0.34011685 -0.30315158  0.43750296  0.30341183

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000001
                          -0.00000740  0.00000012 -0.42053571 -0.06998024  0.31235380  0.38781414  0.25098863

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000000  0.00013536  0.00000294 -0.00010158  0.00192424 -0.00097884

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000008 -0.00000000  0.00160391 -0.00081565 -0.00051518 -0.00017324  0.00004415

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00088611 -0.00083862 -0.00142696 -0.00001380 -0.00000118

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.05307486  0.00132410  0.02475215  0.09241089 -0.06934785 -0.00450164  0.00196035

   5    1  |1 1>-          0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.10132357 -0.00046810  0.05176967  0.19608585 -0.14784707 -0.00952475  0.00425899

   6    1  |1 1>-          0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.31761995 -0.22157378 -0.02491560  0.08139165  0.09809638 -0.04817133 -0.09294962

   7    1  |1 1>-          0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.22586955  0.51915494 -0.03516686  0.03201485  0.02842071  0.11273083  0.22424964

   8    1  |1 1>-         -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.38690122  0.12126390  0.12870573 -0.00017855  0.04548218  0.02683248  0.04891638

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000001  0.00000001
                          -0.00000345  0.00000039 -0.05893197  0.28529881  0.31847628  0.52481288 -0.25842663

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000674 -0.00000013  0.62733724 -0.00842097  0.21265258 -0.06405314  0.02318971

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000001
                           0.00000529  0.00000016  0.16226196 -0.30025656 -0.37851030  0.43425642 -0.23037560

   1    1  |0 0>          -0.00000000  0.00000002  0.00197107  0.00626188 -0.00584361  0.01488888  0.00456257
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000001  0.00000002 -0.00833672 -0.01031758 -0.00735072 -0.00034336  0.00946763
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000002 -0.00000002 -0.00977410  0.00051144 -0.00669038  0.00248379 -0.01315352
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000007  0.00000001 -0.01228086  0.00755617  0.00941879  0.00068643  0.00475828
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000001  0.00000000 -0.00005205  0.01080372 -0.00990381 -0.00955522  0.00369186
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -6174.43377132     -0.01461385    -3207.37      0.00000000        0.00      0.0000
     2   1  -6174.42492555     -0.00576808    -1265.95      0.00884577     1941.42      0.2407
     3   1  -6174.42492555     -0.00576807    -1265.94      0.00884578     1941.42      0.2407
     4   1  -6174.42492554     -0.00576806    -1265.94      0.00884578     1941.42      0.2407
     5   1  -6174.41617162      0.00298586      655.32      0.01759970     3862.69      0.4789
     6   1  -6174.41617162      0.00298586      655.32      0.01759971     3862.69      0.4789
     7   1  -6174.41617147      0.00298600      655.35      0.01759985     3862.72      0.4789
     8   1  -6174.41617147      0.00298601      655.35      0.01759985     3862.72      0.4789
     9   1  -6174.41617147      0.00298601      655.35      0.01759986     3862.72      0.4789
    10   1  -6174.39006006      0.02909742     6386.14      0.04371126     9593.51      1.1894
    11   1  -6174.39006004      0.02909744     6386.15      0.04371128     9593.52      1.1894
    12   1  -6174.39006003      0.02909744     6386.15      0.04371129     9593.52      1.1894
    13   1  -6174.39005989      0.02909759     6386.18      0.04371144     9593.55      1.1894
    14   1  -6174.39005986      0.02909761     6386.19      0.04371146     9593.56      1.1894
    15   1  -6174.35099297      0.06816451    14960.38      0.08277835    18167.75      2.2525
    16   1  -6174.23653581      0.18262167    40080.82      0.19723551    43288.19      5.3671
    17   1  -6174.23653581      0.18262167    40080.82      0.19723551    43288.19      5.3671
    18   1  -6174.23653581      0.18262167    40080.82      0.19723551    43288.19      5.3671
    19   1  -6174.22986354      0.18929393    41545.22      0.20390778    44752.58      5.5486
    20   1  -6174.22986354      0.18929394    41545.22      0.20390778    44752.59      5.5486
    21   1  -6174.22986354      0.18929394    41545.22      0.20390779    44752.59      5.5486
    22   1  -6174.22986339      0.18929409    41545.25      0.20390793    44752.62      5.5486
    23   1  -6174.22986339      0.18929409    41545.25      0.20390794    44752.62      5.5486
    24   1  -6174.22779758      0.19135990    41998.64      0.20597374    45206.01      5.6048
    25   1  -6174.22300870      0.19614878    43049.68      0.21076262    46257.05      5.7351
    26   1  -6174.22300870      0.19614878    43049.68      0.21076262    46257.05      5.7351
    27   1  -6174.22300870      0.19614878    43049.68      0.21076262    46257.05      5.7351
    28   1  -6174.21746175      0.20169573    44267.10      0.21630957    47474.46      5.8861
    29   1  -6174.21746175      0.20169573    44267.10      0.21630957    47474.46      5.8861
    30   1  -6174.21746175      0.20169573    44267.10      0.21630958    47474.46      5.8861
    31   1  -6174.21746169      0.20169579    44267.11      0.21630963    47474.48      5.8861
    32   1  -6174.21746169      0.20169579    44267.11      0.21630963    47474.48      5.8861
    33   1  -6174.21746169      0.20169579    44267.11      0.21630964    47474.48      5.8861
    34   1  -6174.21746162      0.20169586    44267.13      0.21630971    47474.49      5.8861
    35   1  -6174.21466451      0.20449297    44881.02      0.21910681    48088.39      5.9622
    36   1  -6174.21466451      0.20449297    44881.02      0.21910682    48088.39      5.9622
    37   1  -6174.21466451      0.20449297    44881.02      0.21910682    48088.39      5.9622
    38   1  -6174.21466449      0.20449298    44881.02      0.21910683    48088.39      5.9622
    39   1  -6174.21466449      0.20449299    44881.02      0.21910683    48088.39      5.9622

 E0 =  -6174.41915748 is the energy of the lowest zeroth-order state
 E1 =  -6174.43377132 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00011090  0.02193623 -0.01475263  0.70654527 -0.00006835  0.00245694  0.05375637 -0.15777262
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.01354118  0.70649789  0.00107013 -0.02190907 -0.00640545  0.01994737  0.01720873  0.65049177
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.56616802  0.01689316  0.00002848 -0.00066240  0.46346834 -0.61855364 -0.00031970  0.01648810
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000008 -0.00000001 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00002305 -0.00061684 -0.00001410 -0.00006286 -0.00001727 -0.01913186  0.00008387
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000  0.00002140  0.00736282  0.00015234  0.00004139  0.00003340 -0.00160381 -0.00003170
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000001 -0.00371087  0.00008539 -0.00269854 -0.01071179 -0.00799163  0.00048321  0.00443144
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000 -0.00301132 -0.00010067  0.00557883 -0.00206491 -0.00156783 -0.00056932  0.00662551
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000001  0.00425696 -0.00003324  0.00159328 -0.01089927 -0.00818871 -0.00027772 -0.00541245
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00489737 -0.00226174 -0.00008125  0.00379238  0.00128326 -0.00169413 -0.00016962  0.00225120
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00674620  0.00365277  0.00000907 -0.00028249  0.00173264 -0.00235696 -0.00005944 -0.00253336
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00485061  0.00279672 -0.00006941  0.00343605 -0.00127144  0.00165658 -0.00024619 -0.00126014
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.05304404 -0.00074790  0.70377695  0.01470510  0.02976963  0.06649489  0.66420008 -0.00456061

 13  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000001 -0.00000000  0.00000000
                                0.56367980  0.01692966 -0.06619423 -0.00032321  0.30252764  0.70733979 -0.06390218 -0.02147376

 14  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01347126 -0.70544344 -0.00140497 -0.04437808  0.01187376  0.02227681  0.02050345  0.63273160

 15  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00037003 -0.00012434  0.00605669  0.00005228  0.00000783  0.00084871 -0.00356434

 16  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00028304 -0.00008485  0.00420617  0.00009036 -0.00008220 -0.00123272  0.00512534

 17  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00444873  0.00245862  0.00035478 -0.01067896  0.00464147 -0.00345421  0.00643412

 18  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00087365 -0.00575719 -0.00004486 -0.00732318  0.00315463  0.00869099  0.00122533

 19  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00449930 -0.00132467  0.00023067  0.01208573 -0.00509668  0.00218443  0.00635952

 20  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00379922  0.00259449  0.00392564  0.00024539  0.00065448  0.00152706 -0.00270174  0.00173838

 21  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00682551  0.00357908 -0.00051268  0.00021426 -0.00114425 -0.00269614  0.00044644  0.00241484

 22  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00565705 -0.00257591  0.00325500 -0.00009371 -0.00098049 -0.00226567 -0.00234478 -0.00168399

 23  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000013 -0.00000000 -0.00000000 -0.00000000
                               -0.56384025 -0.00006605  0.06620591  0.00152237  0.76417688  0.09153760 -0.06412116 -0.00540107

 24  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.05302629  0.00045092  0.70393119 -0.00215902 -0.07316999 -0.00847751 -0.66269577 -0.00061405

 25  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00137868 -0.04435349  0.00203081  0.70564262 -0.00130296 -0.00230554 -0.06776166  0.21807426

 26  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00667377 -0.00001962 -0.00040923 -0.00005605 -0.00007357 -0.00030387 -0.00776383

 27  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00314285 -0.00002864  0.00017836 -0.00011972 -0.00014986 -0.00062037 -0.01647088

 28  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00027456  0.00377872  0.00453285  0.00088615 -0.00733817  0.00632751 -0.00225878

 29  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00005925  0.00263655  0.00092513 -0.00205578  0.01721230  0.00408000 -0.00060660

 30  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00025815 -0.00444182  0.00440604 -0.00049224  0.00397797 -0.00599552 -0.00215131

 31  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00738956  0.00016503 -0.00196445 -0.00263953 -0.00317730 -0.00038592 -0.00155492  0.00063071

 32  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00096177  0.00022178  0.00370206 -0.00350202  0.00042055  0.00004132  0.00235291  0.00080483

 33  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00612318 -0.00016433  0.00295222  0.00263537 -0.00262944 -0.00030979  0.00225990 -0.00058497

 34  1     1    1  |0 0>       -0.00000007  0.00000015  0.00000002 -0.00000001 -0.18168358 -0.21606645  0.01636652  0.13878660
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000

 35  1     2    1  |0 0>       -0.00000007 -0.00000011  0.00000002 -0.00000017  0.10133824 -0.13793096  0.00658098 -0.17180293
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

 36  1     3    1  |0 0>        0.00000010  0.00000004  0.00000020 -0.00000012 -0.17211610  0.17350628 -0.09527152 -0.02163433
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000  0.00000000

 37  1     4    1  |0 0>       -0.00000002 -0.00000004  0.00000051  0.00000006  0.03295207 -0.07210456 -0.30452530 -0.00764971
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000

 38  1     5    1  |0 0>       -0.00000000  0.00000028  0.00000004 -0.00000003  0.16944881  0.04108052 -0.02393896  0.23106660
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000

 39  1     6    1  |0 0>        0.19373114  0.00000000  0.00000000 -0.00000000 -0.00000018 -0.00000015  0.00000002  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.64851579  0.05193426 -0.10690593 -0.19316879  0.00578447 -0.00395697 -0.00002193 -0.00482056
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.15674951  0.01744868 -0.19515222  0.11290128 -0.00558747 -0.01823153  0.00267802  0.00035452
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00647519 -0.00926288 -0.00057640  0.00608117  0.26080299 -0.02245871 -0.11197007  0.00000942
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00160711  0.01756625  0.00323973  0.00295038  0.00054896 -0.00016224 -0.00000000 -0.03404714
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00012624  0.00147323  0.00024445  0.00026472  0.00004135 -0.00007154  0.00000000  0.40461653
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00543982 -0.00106368  0.00534157  0.00121233  0.00096523  0.01307429 -0.00000001 -0.15337836
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00685741  0.00151430  0.00003391 -0.00880243  0.00039588  0.00269569 -0.00000000  0.34933005
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.00394463  0.00117508 -0.00728170  0.00125413  0.00116811  0.01216850 -0.00000001  0.08603198
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00214138 -0.00117164 -0.00036719  0.00657759  0.00435209 -0.00057586 -0.00464028 -0.11125922
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00047841 -0.00058696  0.00469110 -0.00286721  0.00616575 -0.00007224 -0.00639207  0.01251865
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00285802 -0.00134874  0.00587982  0.00242841 -0.00458479  0.00079971  0.00459598 -0.09492088
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.05641059  0.21988264  0.03891468  0.03706565 -0.00359088  0.01976115 -0.01049042 -0.00433043

 13  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00421335 -0.01237531 -0.01829023 -0.00073581 -0.11123311  0.23586866 -0.11147779  0.00040490

 14  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.21688429  0.02167822 -0.20476907  0.09442690 -0.00147518 -0.01341902 -0.00266419  0.00010898

 15  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.01036439 -0.00228599  0.00404542  0.00926648 -0.00031562  0.00007384 -0.00000000  0.37080073

 16  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01491874  0.00330456 -0.00582088 -0.01333885  0.00030080 -0.00017878  0.00000000  0.25765833

 17  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00241677  0.00253235  0.00603756 -0.00183922  0.01002647  0.00515453 -0.00000001  0.14228928

 18  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00033498 -0.00821808 -0.00055804 -0.00166578  0.00657138  0.00338430 -0.00000000 -0.31411099

 19  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00201865 -0.00215073  0.00571823 -0.00330609 -0.01126447 -0.00467549  0.00000000 -0.06862814

 20  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00081852 -0.00520969 -0.00483126  0.00073642 -0.00163796  0.00288434 -0.00359978 -0.10271611

 21  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00080552  0.00105300 -0.00423189  0.00223986  0.00271157 -0.00611829  0.00646721  0.01108062

 22  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00038242 -0.00527663  0.00298249 -0.00249559  0.00203781 -0.00431511  0.00536009 -0.08235240

 23  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00368992 -0.02148806 -0.01911274  0.00488932  0.14847885  0.21356049  0.11150989 -0.00040834

 24  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.07125648 -0.21771280 -0.04143267 -0.04220108 -0.02070040 -0.01774869 -0.01048692 -0.00421368

 25  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.62944876 -0.05531200  0.08720024  0.20195337 -0.00617310  0.00171215 -0.00027266 -0.00493469

 26  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00264040  0.00077881 -0.00695843  0.00324063  0.00003491 -0.00064601  0.00000000 -0.00889269

 27  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00566959  0.00163950 -0.01480780  0.00682622  0.00007990 -0.00137601  0.00000000  0.00126194

 28  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00584994 -0.00643934  0.00103554  0.00483259 -0.00605303  0.00409117 -0.00000000  0.48532063

 29  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00078831 -0.00458933  0.00059669  0.00046040  0.01325764 -0.00926080  0.00000001  0.19918270

 30  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00693308  0.00441851  0.00383083  0.00669101  0.00310738 -0.00213941 -0.00000000  0.03615358

 31  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00160435 -0.00377142  0.00136738  0.00278116 -0.00407192 -0.00548694 -0.00700165  0.12654598

 32  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00259927  0.00408088  0.00301607  0.00571137  0.00053568  0.00071774  0.00091128  0.00917368

 33  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00154036  0.00523900 -0.00035757 -0.00290319 -0.00298611 -0.00468816 -0.00580174 -0.15127708

 34  1     1    1  |0 0>        0.05896173 -0.05753901  0.33501476 -0.13572128 -0.12374642  0.86436412  0.00000003  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 35  1     2    1  |0 0>        0.20938899 -0.09119913  0.03575168  0.78384898 -0.52113052  0.02854311 -0.00000001  0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     3    1  |0 0>        0.18282779  0.16921146  0.35569266  0.47696474  0.71497828  0.05065508  0.00000002  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 37  1     4    1  |0 0>       -0.06014804  0.92526968 -0.03649633 -0.01938558 -0.19110253  0.04533532 -0.00000001  0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     5    1  |0 0>        0.13539718 -0.00479568  0.80934876 -0.18893670 -0.24859361 -0.37926520 -0.00000003  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000006 -0.00000010  0.98087514 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00421341  0.00113653  0.00932083 -0.00770861  0.00070617  0.00002769  0.00000906  0.00000151
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00130923  0.00635755  0.00773028  0.00921512 -0.00143411 -0.00005202 -0.00030499 -0.00018387
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00003214  0.00015183  0.00015155  0.00020910 -0.00002502  0.00377492  0.01346793  0.00768782
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.03684462 -0.00758264  0.02452632  0.09912954  0.75785488  0.00033875 -0.00047320 -0.00000017
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.44501098  0.06674246  0.00302249  0.00951508  0.06330044 -0.00221555  0.00059272 -0.00000002
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.09175164  0.33204923 -0.27013285 -0.05823956  0.01746500  0.51398628 -0.14473397  0.00000018
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.34352774  0.17720994  0.13083853 -0.35420843  0.04325712  0.10076534 -0.02829846  0.00000006
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.02246263 -0.36277044  0.23862391  0.12533249 -0.02580812  0.52120130 -0.14536159  0.00000013
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.11132987 -0.06454127  0.06345597 -0.19594226  0.02330245 -0.03803623 -0.13592539  0.29308229
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.03261393  0.13672935  0.10395814  0.13592601 -0.02093071 -0.05192043 -0.18691112  0.40372581
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.06704377  0.12499914  0.20740825 -0.00929157 -0.00521149  0.03847504  0.13482892 -0.29028398
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00475527 -0.00073909  0.00037324  0.00154879  0.01195810  0.00090170 -0.00093913  0.00072026

 13  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00042548  0.00022332 -0.00026300 -0.00034866 -0.00108122  0.00973354 -0.00995852  0.00765402

 14  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00092060 -0.00643423  0.00856680  0.00844873 -0.00139044  0.00027324 -0.00022034  0.00018292

 15  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.33086202 -0.04194853 -0.30961636  0.30811429 -0.03003748 -0.00276257 -0.00205055 -0.00000002

 16  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.23006758 -0.02701166  0.44582769 -0.44329852  0.04362641 -0.00115604 -0.00206490 -0.00000000

 17  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.19855771 -0.34003865 -0.18453310 -0.16993638  0.17708247  0.33101687  0.32416718  0.00000055

 18  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.33864856 -0.12497648 -0.04810003 -0.08177723 -0.33582008  0.22792016  0.22252458  0.00000032

 19  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                                0.02678639 -0.37877196 -0.19094884 -0.19881443 -0.04885413 -0.37367740 -0.36482379 -0.00000044

 20  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.12515014  0.08202674 -0.08054264 -0.06161164  0.19640824 -0.07713452  0.07806769  0.22736387

 21  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00484882  0.13898876 -0.12013267 -0.12054933 -0.00471565  0.13691413 -0.14086945 -0.40847213

 22  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.07819918 -0.11260856  0.09007440  0.10403707  0.13796096  0.11414519 -0.11640338 -0.33854554

 23  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00044653 -0.00006931 -0.00009112 -0.00015763 -0.00110495  0.01349579  0.00345122 -0.00765619

 24  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00485734 -0.00075043 -0.00016394 -0.00174964 -0.01193581 -0.00125430 -0.00032241  0.00072003

 25  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00420272  0.00051812 -0.00856203  0.00849868 -0.00112290 -0.00005590 -0.00001318  0.00001872

 26  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.07876085  0.54367999  0.23080527  0.22871920 -0.03545310  0.00117016  0.00017264 -0.00000005

 27  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.03551498 -0.25622912  0.49195903  0.48391565 -0.07631828  0.00242614  0.00062416 -0.00000010

 28  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                                0.00953605  0.00535446 -0.19358172  0.16115810 -0.24899254  0.07290076 -0.28601290 -0.00000018

 29  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                               -0.11269129  0.01914955 -0.04040246  0.01771956 -0.16171430 -0.17094807  0.66883056  0.00000046

 30  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.50805935 -0.07292354 -0.18389753  0.22252909  0.23992674 -0.04014791  0.15358363  0.00000014

 31  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00943902  0.00060155  0.08839026 -0.07415729  0.10271478  0.20637724  0.05277903  0.44222756

 32  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.19435565 -0.02730896  0.11368857 -0.14042736 -0.15721467 -0.02632044 -0.00677000 -0.05755672

 33  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01913606 -0.00501534 -0.09051975  0.06700578 -0.14801930  0.17084199  0.04368300  0.36644093

 34  1     1    1  |0 0>        0.00000000 -0.00000001  0.00850206  0.00724725 -0.00045428 -0.01860361  0.01024913 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 35  1     2    1  |0 0>        0.00000001  0.00000001  0.00832062 -0.01842659  0.00139057  0.00342126  0.01239911  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 36  1     3    1  |0 0>        0.00000000 -0.00000000  0.01082091 -0.00828348 -0.00762921 -0.00729730 -0.01670291 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 37  1     4    1  |0 0>       -0.00000001  0.00000001 -0.00679745 -0.00069185 -0.02223405  0.00042297  0.00591029  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     5    1  |0 0>       -0.00000000 -0.00000002  0.01647217  0.01072338 -0.00463133  0.01284230  0.00185820  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 39  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.01876711
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00050740  0.00378199 -0.00614051 -0.00000000 -0.00000001  0.00000003  0.00000001 -0.00000008
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00720682 -0.00009218  0.00053869 -0.00000001 -0.00000004 -0.00000001 -0.00000009 -0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00017227 -0.00000295  0.00001409 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00012096 -0.01254927 -0.00775337 -0.08450022  0.01590285  0.00086762 -0.11971284 -0.00821811
                                0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000000

  5  1     5    1  |1 1>+       0.00561552  0.14994946  0.09187026  0.76022108 -0.11813981 -0.01842657 -0.01665038  0.00008440
                               -0.00000000 -0.00000000  0.00000000  0.00000013 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.09105784  0.03471334 -0.05023422 -0.04185237 -0.30114940  0.14255124  0.26961214  0.29343345
                                0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001 -0.00000000

  7  1     7    1  |1 1>+      -0.06661769 -0.06912426  0.11717031 -0.03127747 -0.14552481 -0.42048287  0.33953525 -0.45212054
                                0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000001 -0.00000000

  8  1     8    1  |1 1>+       0.10307218 -0.02034961  0.02746786  0.05061785  0.32374012 -0.05512933 -0.33387604 -0.20178074
                               -0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000001  0.00000000

  9  1     9    1  |1 1>+      -0.27950258 -0.26184406  0.44208996 -0.00000017 -0.00000110 -0.00000259  0.00000608 -0.00000720
                                0.00000004  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.48175413  0.01790307 -0.05515714  0.00000035  0.00000247  0.00000054 -0.00000761 -0.00000065
                               -0.00000006 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.38782441 -0.23946870  0.36963935  0.00000032  0.00000234 -0.00000178 -0.00000444 -0.00000808
                               -0.00000005 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00020125 -0.00613372 -0.00376102  0.00000005 -0.00000001 -0.00000000  0.00000001  0.00000000

 13  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00015369  0.00058312  0.00035278 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00722314 -0.00024733  0.00004782  0.00000001  0.00000006  0.00000001 -0.00000008 -0.00000002

 15  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00315280 -0.07564998  0.12366295  0.00430468 -0.07251788  0.63178796  0.07245094 -0.32147200

 16  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00281070 -0.05250288  0.08592795  0.00163765 -0.05242563  0.43907250 -0.11098126  0.46046867

 17  1     6    1  |1 0>        0.00000002  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000001  0.00000000
                                0.10814871  0.04595310  0.03177787 -0.11594765  0.31473779  0.04022562  0.44207354  0.09907046

 18  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.01692612 -0.11823127 -0.07133787  0.38706153 -0.00217632 -0.00309032 -0.03148161  0.01227701

 19  1     8    1  |1 0>        0.00000001  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000001  0.00000000
                                0.10668881 -0.03054625 -0.01644209  0.13283875  0.27754090  0.03281174  0.37332939  0.09577697

 20  1     9    1  |1 0>        0.00000006  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.35916728  0.43077269  0.27365520 -0.00000177  0.00000113  0.00000019  0.00000696  0.00000155

 21  1    10    1  |1 0>        0.00000006  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.47267633 -0.07493175 -0.03283903  0.00000054  0.00000119  0.00000019  0.00000724  0.00000184

 22  1    11    1  |1 0>       -0.00000003 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.32909406  0.37971173  0.22340615 -0.00000168 -0.00000069 -0.00000013 -0.00000409 -0.00000121

 23  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001903 -0.00057629 -0.00035503  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00020668 -0.00622215 -0.00361257  0.00000005 -0.00000001 -0.00000000 -0.00000002 -0.00000000

 25  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00016515  0.00362637 -0.00625208  0.00000000 -0.00000001  0.00000005 -0.00000002  0.00000008

 26  1     4    1  |1 1>-      -0.00000002 -0.00000000 -0.00000000 -0.00000002  0.00000001  0.00000000  0.00000001  0.00000000
                               -0.15965666  0.00520868 -0.00091500  0.10997585  0.67653402  0.07844740  0.26214221  0.06424759

 27  1     5    1  |1 1>-       0.00000001  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000001  0.00000000
                                0.07514779 -0.00306046 -0.00032149 -0.05468532 -0.34537644 -0.03614365  0.48459668  0.11416797

 28  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00030513  0.02320213  0.13921666 -0.28234663  0.08012381 -0.30488448 -0.15701232  0.38732774

 29  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00124212  0.04319013  0.05090298 -0.19240688  0.03654831 -0.05336122 -0.06485355  0.07432114

 30  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00496145 -0.14473685  0.03749161  0.31125316 -0.01656404 -0.31872637 -0.01308638  0.40184298

 31  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00057800 -0.04793977 -0.43368673  0.00000128 -0.00000028  0.00000084  0.00000191 -0.00000532

 32  1    10    1  |1 1>-       0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.02469856  0.65735966 -0.15384006 -0.00000224  0.00000032  0.00000123  0.00000025 -0.00000738

 33  1    11    1  |1 1>-       0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00318187  0.16110587  0.49921748 -0.00000176  0.00000031 -0.00000070 -0.00000242  0.00000523

 34  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 35  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000001  0.00000002 -0.00000006
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 36  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000004
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 37  1     4    1  |0 0>        0.00000000  0.00000000  0.00000001 -0.00000002  0.00000000 -0.00000001 -0.00000002  0.00000002
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00088407  0.00067771  0.00151120  0.00001588 -0.00000109
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000002 -0.00000000 -0.00046849 -0.00154009  0.00096405  0.00006670  0.00001875
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00004861  0.00002185  0.00001598  0.00011904 -0.00216375
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.55982005 -0.00013945  0.23414055 -0.12214237 -0.08219854  0.00062001 -0.00705606
                               -0.00000006 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.07494757 -0.00182675  0.01976539 -0.00974271 -0.00718374  0.00087419 -0.00053484
                               -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.06320475  0.40076469  0.00879385 -0.04793516  0.09416143 -0.18967976 -0.01204251
                               -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.06530506  0.08188406 -0.07296418 -0.10080862 -0.05950948 -0.03617823 -0.00326132
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.07488932  0.40744572  0.00380916  0.05630556 -0.07188385 -0.19872787 -0.00909484
                                0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000124  0.00000001  0.31108889  0.41649609  0.23128036 -0.02845849  0.39428691
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000001

 10  1    10    1  |1 1>+      -0.00000157  0.00000011 -0.11981023 -0.41158699  0.22776879 -0.01169115  0.52757018
                                0.00000000  0.00000000  0.00000000 -0.00000002  0.00000001  0.00000000  0.00000002

 11  1    11    1  |1 1>+      -0.00000103  0.00000001  0.12124875 -0.11052154  0.54551748  0.03768141 -0.39161279
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000001

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000006  0.00000000 -0.00157885  0.00082967  0.00055000  0.00016253  0.00015853

 13  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000001  0.00018174 -0.00002030 -0.00012086  0.00180514  0.00117569

 14  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.00000000 -0.00038011 -0.00146995  0.00109878  0.00011387 -0.00000484

 15  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01235422 -0.00121201  0.07796463  0.06892246  0.11943305  0.00132174 -0.00061349

 16  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01584925 -0.00106292 -0.11211080 -0.09912244 -0.17203275 -0.00048713 -0.00129268

 17  1     6    1  |1 0>       -0.00000002  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.14012867 -0.34799039  0.02716147 -0.10601761  0.04280099 -0.08785057  0.13754541

 18  1     7    1  |1 0>        0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.53865397 -0.24039528 -0.10813784  0.03606716  0.04955286 -0.06266157  0.09924647

 19  1     8    1  |1 0>        0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.20555524  0.39300611 -0.04702474 -0.05687161  0.06273976  0.10653040 -0.15885330

 20  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000001 -0.00000003  0.00000001  0.00000000  0.00000000
                               -0.00000634 -0.00000024 -0.36502392  0.48657439 -0.04119435 -0.26786624 -0.14640813

 21  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000001 -0.00000001 -0.00000001
                                0.00000246  0.00000043  0.15735566  0.34011685 -0.30315158  0.43750296  0.30341183

 22  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000001
                               -0.00000740  0.00000012 -0.42053571 -0.06998024  0.31235380  0.38781414  0.25098863

 23  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000000  0.00013536  0.00000294 -0.00010158  0.00192424 -0.00097884

 24  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000008 -0.00000000  0.00160391 -0.00081565 -0.00051518 -0.00017324  0.00004415

 25  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00088611 -0.00083862 -0.00142696 -0.00001380 -0.00000118

 26  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.05307486  0.00132410  0.02475215  0.09241089 -0.06934785 -0.00450164  0.00196035

 27  1     5    1  |1 1>-       0.00000001  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.10132357 -0.00046810  0.05176967  0.19608585 -0.14784707 -0.00952475  0.00425899

 28  1     6    1  |1 1>-       0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.31761995 -0.22157378 -0.02491560  0.08139165  0.09809638 -0.04817133 -0.09294962

 29  1     7    1  |1 1>-       0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.22586955  0.51915494 -0.03516686  0.03201485  0.02842071  0.11273083  0.22424964

 30  1     8    1  |1 1>-      -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.38690122  0.12126390  0.12870573 -0.00017855  0.04548218  0.02683248  0.04891638

 31  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000001  0.00000001
                               -0.00000345  0.00000039 -0.05893197  0.28529881  0.31847628  0.52481288 -0.25842663

 32  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000674 -0.00000013  0.62733724 -0.00842097  0.21265258 -0.06405314  0.02318971

 33  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000001
                                0.00000529  0.00000016  0.16226196 -0.30025656 -0.37851030  0.43425642 -0.23037560

 34  1     1    1  |0 0>       -0.00000000  0.00000002  0.00197107  0.00626188 -0.00584361  0.01488888  0.00456257
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 35  1     2    1  |0 0>        0.00000001  0.00000002 -0.00833672 -0.01031758 -0.00735072 -0.00034336  0.00946763
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 36  1     3    1  |0 0>        0.00000002 -0.00000002 -0.00977410  0.00051144 -0.00669038  0.00248379 -0.01315352
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1     4    1  |0 0>        0.00000007  0.00000001 -0.01228086  0.00755617  0.00941879  0.00068643  0.00475828
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     5    1  |0 0>        0.00000001  0.00000000 -0.00005205  0.01080372 -0.00990381 -0.00955522  0.00369186
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.05%    0.02%   49.92%    0.00%    0.00%    0.29%    2.49%
  2  1     2    1  |1 1>+         0.02%   49.91%    0.00%    0.05%    0.00%    0.04%    0.03%   42.31%
  3  1     3    1  |1 1>+        32.05%    0.03%    0.00%    0.00%   21.48%   38.26%    0.00%    0.03%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.28%    0.00%   49.53%    0.02%    0.09%    0.44%   44.12%    0.00%
 13  1     2    1  |1 0>         31.77%    0.03%    0.44%    0.00%    9.15%   50.03%    0.41%    0.05%
 14  1     3    1  |1 0>          0.02%   49.77%    0.00%    0.20%    0.01%    0.05%    0.04%   40.03%
 15  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 18  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%    0.00%
 19  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 20  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     1    1  |1 1>-        31.79%    0.00%    0.44%    0.00%   58.40%    0.84%    0.41%    0.00%
 24  1     2    1  |1 1>-         0.28%    0.00%   49.55%    0.00%    0.54%    0.01%   43.92%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.20%    0.00%   49.79%    0.00%    0.00%    0.46%    4.76%
 26  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 27  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 29  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 30  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     9    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.30%    4.67%    0.03%    1.93%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.03%    1.90%    0.00%    2.95%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.96%    3.01%    0.91%    0.05%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.11%    0.52%    9.27%    0.01%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.87%    0.17%    0.06%    5.34%
 39  1     6    1  |0 0>          3.75%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        42.06%    0.27%    1.14%    3.73%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         2.46%    0.03%    3.81%    1.27%    0.00%    0.03%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    6.80%    0.05%    1.25%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.12%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.37%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    2.35%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   12.20%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.74%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.24%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.90%
 12  1     1    1  |1 0>          0.32%    4.83%    0.15%    0.14%    0.00%    0.04%    0.01%    0.00%
 13  1     2    1  |1 0>          0.00%    0.02%    0.03%    0.00%    1.24%    5.56%    1.24%    0.00%
 14  1     3    1  |1 0>          4.70%    0.05%    4.19%    0.89%    0.00%    0.02%    0.00%    0.00%
 15  1     4    1  |1 0>          0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   13.75%
 16  1     5    1  |1 0>          0.02%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    6.64%
 17  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    2.02%
 18  1     7    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    9.87%
 19  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.47%
 20  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.06%
 21  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 22  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.68%
 23  1     1    1  |1 1>-         0.00%    0.05%    0.04%    0.00%    2.20%    4.56%    1.24%    0.00%
 24  1     2    1  |1 1>-         0.51%    4.74%    0.17%    0.18%    0.04%    0.03%    0.01%    0.00%
 25  1     3    1  |1 1>-        39.62%    0.31%    0.76%    4.08%    0.00%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 27  1     5    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.55%
 29  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    3.97%
 30  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%
 31  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.60%
 32  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 33  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.29%
 34  1     1    1  |0 0>          0.35%    0.33%   11.22%    1.84%    1.53%   74.71%    0.00%    0.00%
 35  1     2    1  |0 0>          4.38%    0.83%    0.13%   61.44%   27.16%    0.08%    0.00%    0.00%
 36  1     3    1  |0 0>          3.34%    2.86%   12.65%   22.75%   51.12%    0.26%    0.00%    0.00%
 37  1     4    1  |0 0>          0.36%   85.61%    0.13%    0.04%    3.65%    0.21%    0.00%    0.00%
 38  1     5    1  |0 0>          1.83%    0.00%   65.50%    3.57%    6.18%   14.38%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.21%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%
  4  1     4    1  |1 1>+         0.14%    0.01%    0.06%    0.98%   57.43%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+        19.80%    0.45%    0.00%    0.01%    0.40%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.84%   11.03%    7.30%    0.34%    0.03%   26.42%    2.09%    0.00%
  7  1     7    1  |1 1>+        11.80%    3.14%    1.71%   12.55%    0.19%    1.02%    0.08%    0.00%
  8  1     8    1  |1 1>+         0.05%   13.16%    5.69%    1.57%    0.07%   27.17%    2.11%    0.00%
  9  1     9    1  |1 1>+         1.24%    0.42%    0.40%    3.84%    0.05%    0.14%    1.85%    8.59%
 10  1    10    1  |1 1>+         0.11%    1.87%    1.08%    1.85%    0.04%    0.27%    3.49%   16.30%
 11  1    11    1  |1 1>+         0.45%    1.56%    4.30%    0.01%    0.00%    0.15%    1.82%    8.43%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.01%
 14  1     3    1  |1 0>          0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>         10.95%    0.18%    9.59%    9.49%    0.09%    0.00%    0.00%    0.00%
 16  1     5    1  |1 0>          5.29%    0.07%   19.88%   19.65%    0.19%    0.00%    0.00%    0.00%
 17  1     6    1  |1 0>          3.94%   11.56%    3.41%    2.89%    3.14%   10.96%   10.51%    0.00%
 18  1     7    1  |1 0>         11.47%    1.56%    0.23%    0.67%   11.28%    5.19%    4.95%    0.00%
 19  1     8    1  |1 0>          0.07%   14.35%    3.65%    3.95%    0.24%   13.96%   13.31%    0.00%
 20  1     9    1  |1 0>          1.57%    0.67%    0.65%    0.38%    3.86%    0.59%    0.61%    5.17%
 21  1    10    1  |1 0>          0.00%    1.93%    1.44%    1.45%    0.00%    1.87%    1.98%   16.68%
 22  1    11    1  |1 0>          0.61%    1.27%    0.81%    1.08%    1.90%    1.30%    1.35%   11.46%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.01%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         0.62%   29.56%    5.33%    5.23%    0.13%    0.00%    0.00%    0.00%
 27  1     5    1  |1 1>-         0.13%    6.57%   24.20%   23.42%    0.58%    0.00%    0.00%    0.00%
 28  1     6    1  |1 1>-         0.01%    0.00%    3.75%    2.60%    6.20%    0.53%    8.18%    0.00%
 29  1     7    1  |1 1>-         1.27%    0.04%    0.16%    0.03%    2.62%    2.92%   44.73%    0.00%
 30  1     8    1  |1 1>-        25.81%    0.53%    3.38%    4.95%    5.76%    0.16%    2.36%    0.00%
 31  1     9    1  |1 1>-         0.01%    0.00%    0.78%    0.55%    1.06%    4.26%    0.28%   19.56%
 32  1    10    1  |1 1>-         3.78%    0.07%    1.29%    1.97%    2.47%    0.07%    0.00%    0.33%
 33  1    11    1  |1 1>-         0.04%    0.00%    0.82%    0.45%    2.19%    2.92%    0.19%   13.43%
 34  1     1    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.00%    0.03%    0.01%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.01%    0.03%    0.00%    0.00%    0.02%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.01%    0.01%    0.03%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.03%    0.01%    0.00%    0.02%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.02%    0.01%    0.71%    0.03%    0.00%    1.43%    0.01%
  5  1     5    1  |1 1>+         0.00%    2.25%    0.84%   57.79%    1.40%    0.03%    0.03%    0.00%
  6  1     6    1  |1 1>+         0.83%    0.12%    0.25%    0.18%    9.07%    2.03%    7.27%    8.61%
  7  1     7    1  |1 1>+         0.44%    0.48%    1.37%    0.10%    2.12%   17.68%   11.53%   20.44%
  8  1     8    1  |1 1>+         1.06%    0.04%    0.08%    0.26%   10.48%    0.30%   11.15%    4.07%
  9  1     9    1  |1 1>+         7.81%    6.86%   19.54%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+        23.21%    0.03%    0.30%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+        15.04%    5.73%   13.66%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     3    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>          0.00%    0.57%    1.53%    0.00%    0.53%   39.92%    0.52%   10.33%
 16  1     5    1  |1 0>          0.00%    0.28%    0.74%    0.00%    0.27%   19.28%    1.23%   21.20%
 17  1     6    1  |1 0>          1.17%    0.21%    0.10%    1.34%    9.91%    0.16%   19.54%    0.98%
 18  1     7    1  |1 0>          0.03%    1.40%    0.51%   14.98%    0.00%    0.00%    0.10%    0.02%
 19  1     8    1  |1 0>          1.14%    0.09%    0.03%    1.76%    7.70%    0.11%   13.94%    0.92%
 20  1     9    1  |1 0>         12.90%   18.56%    7.49%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    10    1  |1 0>         22.34%    0.56%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    11    1  |1 0>         10.83%   14.42%    4.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         2.55%    0.00%    0.00%    1.21%   45.77%    0.62%    6.87%    0.41%
 27  1     5    1  |1 1>-         0.56%    0.00%    0.00%    0.30%   11.93%    0.13%   23.48%    1.30%
 28  1     6    1  |1 1>-         0.00%    0.05%    1.94%    7.97%    0.64%    9.30%    2.47%   15.00%
 29  1     7    1  |1 1>-         0.00%    0.19%    0.26%    3.70%    0.13%    0.28%    0.42%    0.55%
 30  1     8    1  |1 1>-         0.00%    2.09%    0.14%    9.69%    0.03%   10.16%    0.02%   16.15%
 31  1     9    1  |1 1>-         0.00%    0.23%   18.81%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1    10    1  |1 1>-         0.06%   43.21%    2.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    11    1  |1 1>-         0.00%    2.60%   24.92%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        31.34%    0.00%    5.48%    1.49%    0.68%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.56%    0.00%    0.04%    0.01%    0.01%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.40%   16.06%    0.01%    0.23%    0.89%    3.60%    0.01%
  7  1     7    1  |1 1>+         0.43%    0.67%    0.53%    1.02%    0.35%    0.13%    0.00%
  8  1     8    1  |1 1>+         0.56%   16.60%    0.00%    0.32%    0.52%    3.95%    0.01%
  9  1     9    1  |1 1>+         0.00%    0.00%    9.68%   17.35%    5.35%    0.08%   15.55%
 10  1    10    1  |1 1>+         0.00%    0.00%    1.44%   16.94%    5.19%    0.01%   27.83%
 11  1    11    1  |1 1>+         0.00%    0.00%    1.47%    1.22%   29.76%    0.14%   15.34%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     4    1  |1 0>          0.02%    0.00%    0.61%    0.48%    1.43%    0.00%    0.00%
 16  1     5    1  |1 0>          0.03%    0.00%    1.26%    0.98%    2.96%    0.00%    0.00%
 17  1     6    1  |1 0>          1.96%   12.11%    0.07%    1.12%    0.18%    0.77%    1.89%
 18  1     7    1  |1 0>         29.01%    5.78%    1.17%    0.13%    0.25%    0.39%    0.98%
 19  1     8    1  |1 0>          4.23%   15.45%    0.22%    0.32%    0.39%    1.13%    2.52%
 20  1     9    1  |1 0>          0.00%    0.00%   13.32%   23.68%    0.17%    7.18%    2.14%
 21  1    10    1  |1 0>          0.00%    0.00%    2.48%   11.57%    9.19%   19.14%    9.21%
 22  1    11    1  |1 0>          0.00%    0.00%   17.69%    0.49%    9.76%   15.04%    6.30%
 23  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     4    1  |1 1>-         0.28%    0.00%    0.06%    0.85%    0.48%    0.00%    0.00%
 27  1     5    1  |1 1>-         1.03%    0.00%    0.27%    3.84%    2.19%    0.01%    0.00%
 28  1     6    1  |1 1>-        10.09%    4.91%    0.06%    0.66%    0.96%    0.23%    0.86%
 29  1     7    1  |1 1>-         5.10%   26.95%    0.12%    0.10%    0.08%    1.27%    5.03%
 30  1     8    1  |1 1>-        14.97%    1.47%    1.66%    0.00%    0.21%    0.07%    0.24%
 31  1     9    1  |1 1>-         0.00%    0.00%    0.35%    8.14%   10.14%   27.54%    6.68%
 32  1    10    1  |1 1>-         0.00%    0.00%   39.36%    0.01%    4.52%    0.41%    0.05%
 33  1    11    1  |1 1>-         0.00%    0.00%    2.63%    9.02%   14.33%   18.86%    5.31%
 34  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 35  1     2    1  |0 0>          0.00%    0.00%    0.01%    0.01%    0.01%    0.00%    0.01%
 36  1     3    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.02%
 37  1     4    1  |0 0>          0.00%    0.00%    0.02%    0.01%    0.01%    0.00%    0.00%
 38  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.01%    0.01%    0.00%
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

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     67613.59  63874.41    627.02   3106.82      3.14      0.35      1.64
 REAL TIME  *     68239.26 SEC
 DISK USED  *       872.17 MB (local),       10.91 GB (total)
 SF USED    *         6.48 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK3 energy=  -6174.214664490839

              CI              CI           MULTI         RHF-SCF
  -6174.30078860  -6174.17029830  -6173.66599467  -6172.96982975
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
