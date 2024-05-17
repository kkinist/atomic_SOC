
 Working directory              : /wrk/irikura/molpro.YcMnrC8gzY/
 Global scratch directory       : /wrk/irikura/molpro.YcMnrC8gzY/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.YcMnrC8gzY/

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
 
 NTRIP=8
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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-May-24          TIME: 11:42:00  
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

     22.020 MB (compressed) written to integral file ( 14.7%)

     Node minimum: 0.786 MB, node maximum: 3.408 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     760824.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     760824      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    18047686. AND WROTE      147789. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.09 SEC
 SORT2 READ     1830907. AND WROTE     9150625. INTEGRALS IN     48 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         1.81      1.60
 REAL TIME  *         2.42 SEC
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
   2    -6119.20717228     -34.60212959     0.54D+00     0.14D+01     1     0       0.00      0.02    diag
   3    -6169.62511977     -50.41794750     0.47D+00     0.21D+00     2     0       0.01      0.03    diag
   4    -6172.72282130      -3.09770152     0.11D+00     0.18D+00     3     0       0.00      0.03    diag
   5    -6172.96793599      -0.24511469     0.32D-01     0.27D-01     4     0       0.01      0.04    diag
   6    -6172.96981377      -0.00187778     0.24D-02     0.53D-02     5     0       0.00      0.04    diag
   7    -6172.96982923      -0.00001547     0.16D-03     0.23D-03     6     0       0.01      0.05    diag
   8    -6172.96982972      -0.00000049     0.41D-04     0.31D-04     7     0       0.00      0.05    fixocc
   9    -6172.96982975      -0.00000004     0.46D-05     0.18D-04     8     0       0.00      0.05    diag
  10    -6172.96982975      -0.00000000     0.27D-06     0.63D-06     9     0       0.01      0.06    diag/orth
  11    -6172.96982975      -0.00000000     0.11D-07     0.41D-07     0     0       0.00      0.06    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -6172.969829754500
  RHF One-electron energy           -8458.981645824219
  RHF Two-electron energy            2286.011816069718
  RHF Kinetic energy                 7123.758090709101
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
    5.1     2.00000   -19.53200     1  1  d1+  0.99603
    6.1     2.00000   -19.53200     1  1  d1-  0.99604
    7.1     2.00000   -19.53200     1  1  d2-  0.99511
    8.1     2.00000   -19.53200     1  1  d2+  0.99511
    9.1     2.00000    -6.52363     1  4  s    1.09168
   10.1     2.00000    -1.94645     1  2  d1+  1.00246
   11.1     2.00000    -1.94645     1  2  d1-  1.00247
   12.1     2.00000    -1.94645     1  2  d0   1.00448
   13.1     2.00000    -1.94645     1  2  d2-  0.99961
   14.1     2.00000    -1.94645     1  2  d2+  0.99961
   15.1     2.00000    -1.05761     1  5  s    1.09341
    1.2     2.00000  -149.69231     1  1  pz   0.99999
    2.2     2.00000  -149.69231     1  1  px   0.99824
    3.2     2.00000  -149.69231     1  1  py   0.99824
    4.2     2.00000   -28.42265     1  2  pz   1.00016
    5.2     2.00000   -28.42265     1  2  px   0.99525
    6.2     2.00000   -28.42265     1  2  py   0.99525
    7.2     2.00000    -4.68852     1  3  pz   0.99711
    8.2     2.00000    -4.68852     1  3  px   0.98832
    9.2     2.00000    -4.68852     1  3  py   0.98832


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
 CPU TIMES  *         2.07      0.27      1.60
 REAL TIME  *         3.44 SEC
 DISK USED  *        30.26 MB (local),      421.70 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         8.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             8
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.248D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.840D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.828D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.910D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.911D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.620D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.610D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.207D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.910D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.911D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 1 4   6 2 3 5 1 1 2 4 6 3   5 1 2 4 6 3 5 1 2 4   6 3 5 2 4 6 3 5 1 7
                                        91112 814151310 2 4   6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.952D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.564D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.562D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.123D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.912D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.907D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.118D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.119D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.118D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.110D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.110D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.113D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.107D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.115D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.114D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 2   1 3 3 1 2 3 1 2 6 4   5 810 7 9 6 4 510 8   7 9 3 1 2 6 4 5 810
                                        7 9 3 1 2 6 4 5 810   9 7 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.07143   0.07143   0.07143   0.07143   0.07143   0.07143   0.07143   0.07143
 Weight factors for state symmetry  2:    0.07143   0.07143   0.07143   0.07143   0.07143   0.07143
 
 Number of orbital rotations:  1253  ( 68 closed/active, 906 closed/virtual, 0 active/active, 279 active/virtual )
 Total number of variables:    3899
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -6173.63353143   -6173.64946852   -0.01593708    0.18518126 0.00015666 0.00000000  0.29E+00      0.77
   2    7   12    0  -6173.64979850   -6173.64982172   -0.00002322    0.00575762 0.00000689 0.00000000  0.21E-01      1.80
   3    5   10    0  -6173.64982174   -6173.64982174   -0.00000000    0.00001098 0.00000001 0.00000000  0.45E-04      2.59

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.19E-07)
                       Final energy:  -6173.64982174
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -6173.731087150464
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.87478504
 One electron energy                         -8491.62611099
 Two electron energy                          2317.89502384
 Virial ratio                                    1.86650380
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -6173.731087150254
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.87478505
 One electron energy                         -8491.62611106
 Two electron energy                          2317.89502391
 Virial ratio                                    1.86650380
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -6173.731087150210
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.87478504
 One electron energy                         -8491.62611098
 Two electron energy                          2317.89502383
 Virial ratio                                    1.86650380
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -6173.550626594190
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84698272
 One electron energy                         -8481.15927117
 Two electron energy                          2307.60864457
 Virial ratio                                    1.86660349
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -6173.550626594040
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84698273
 One electron energy                         -8481.15927124
 Two electron energy                          2307.60864465
 Virial ratio                                    1.86660349
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -6173.550626593594
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84698273
 One electron energy                         -8481.15927129
 Two electron energy                          2307.60864470
 Virial ratio                                    1.86660349
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -6173.550626592794
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84698278
 One electron energy                         -8481.15927158
 Two electron energy                          2307.60864499
 Virial ratio                                    1.86660349
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -6173.550626592732
 Nuclear energy                                  0.00000000
 Kinetic energy                               7123.84698278
 One electron energy                         -8481.15927158
 Two electron energy                          2307.60864499
 Virial ratio                                    1.86660349
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -6173.696729257726
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.74781534
 One electron energy                         -8490.85505146
 Two electron energy                          2317.15832220
 Virial ratio                                    1.86651442
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -6173.696729257717
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.74781535
 One electron energy                         -8490.85505150
 Two electron energy                          2317.15832224
 Virial ratio                                    1.86651442
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -6173.696729257602
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.74781535
 One electron energy                         -8490.85505144
 Two electron energy                          2317.15832219
 Virial ratio                                    1.86651442
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -6173.696729257429
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.74781537
 One electron energy                         -8490.85505157
 Two electron energy                          2317.15832231
 Virial ratio                                    1.86651442
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -6173.696729257392
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.74781537
 One electron energy                         -8490.85505155
 Two electron energy                          2317.15832229
 Virial ratio                                    1.86651442
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -6173.667463713669
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.57741247
 One electron energy                         -8489.91481086
 Two electron energy                          2316.24734714
 Virial ratio                                    1.86653104
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999338
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000801
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999924
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.548111417397
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999998895
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000000326
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000007
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.451885268197
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.165230441675
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999924085
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999999132
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999997900
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.834777328033
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999998674
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999924
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000001406
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.129352627046
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999999135
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000271
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999999999900
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.870645521187
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.228026063695
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000136732
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999986417
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999996153
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.771954582342
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000001988
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999275
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999998669
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.322535955556
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000001969
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999999403
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000092
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.677469210616
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.606743494630
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999939183
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000014451
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000005947
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.393268089625
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 6 3 5 1 4   2 6 5 3 1 1 4 2 6 3   5 1 4 2 6 3 5 1 4 2   6 3 5 4 2 6 3 5 1 9
                                        712 81114151013 2 4   6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 2   1 3 2 1 3 1 3 2 4 6   810 5 7 9 3 1 2 4 6   810 5 7 9 4 6 810 5
                                        9 7 3 1 2 4 6 810 5   9 7 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1078.45481     1  1  s    0.98900
    2.1     2.00000  -166.28275     1  2  s    1.07350
    3.1     2.00000   -33.60868     1  3  s    0.84456
    4.1     2.00000   -18.95168     1  1  d1+  0.99998
    5.1     2.00000   -18.95168     1  1  d0   0.99998
    6.1     2.00000   -18.95168     1  1  d1-  0.99998
    7.1     2.00000   -18.95168     1  1  d2-  0.99998
    8.1     2.00000   -18.95168     1  1  d2+  0.99998
    9.1     2.00000    -5.94502     1  4  s    1.09179
   10.1     2.00000    -1.37039     1  2  d1+  1.00061
   11.1     2.00000    -1.37039     1  2  d0   1.00061
   12.1     2.00000    -1.37039     1  2  d1-  1.00061
   13.1     2.00000    -1.37039     1  2  d2+  1.00061
   14.1     2.00000    -1.37039     1  2  d2-  1.00061
   15.1     1.95634    -0.54983     1  5  s    1.06082
    1.2     2.00000  -149.11032     1  1  pz   0.99999
    2.2     2.00000  -149.11032     1  1  px   0.99999
    3.2     2.00000  -149.11032     1  1  py   0.99999
    4.2     2.00000   -27.84322     1  2  pz   1.00022
    5.2     2.00000   -27.84322     1  2  px   1.00022
    6.2     2.00000   -27.84322     1  2  py   1.00022
    7.2     2.00000    -4.11214     1  3  pz   0.99935
    8.2     2.00000    -4.11214     1  3  px   0.99935
    9.2     2.00000    -4.11214     1  3  py   0.99935
   10.2     0.55988    -0.09612     1  4  py   1.02236
   11.2     0.55988    -0.09612     1  4  px   1.02236
   12.2     0.55988    -0.09612     1  4  pz   1.02236
   13.2     0.12134     0.06019     1  4  py  -0.64694    1  9  py   1.11936
   14.2     0.12134     0.06019     1  4  px  -0.64694    1  9  px   1.11936
   15.2     0.12133     0.06019     1  4  pz  -0.64694    1  9  pz   1.11936
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 0aa000      -0.00003608     -0.00000866      0.99104138      0.00000000     -0.00000000     -0.00000000      0.00000000
 2 a0a000      -0.00002550      0.99104138      0.00000866      0.00000000     -0.00000005     -0.00000000      0.00000000
 2 aa0000       0.99104137      0.00002550      0.00003608      0.00000000      0.00000000     -0.00000005      0.00000000
 2 a00a00       0.00000000     -0.00000000     -0.00000000      0.79292607      0.00002542      0.00000030      0.00000030
 2 0a00a0      -0.00000000      0.00000000      0.00000000     -0.27092958     -0.00001187      0.00000521     -0.00000888
 2 0a0a00       0.02500837      0.00000064      0.00000091     -0.00000122     -0.00000708      0.69807420     -0.00000390
 2 00aa00      -0.00000064      0.02500837      0.00000022     -0.00002181      0.69807416      0.00000708     -0.00000103
 2 0a000a       0.00000091      0.00000022     -0.02500831      0.00000131      0.00000103      0.00000390      0.69807407
 2 00a0a0      -0.00000091     -0.00000022      0.02500831      0.00000131      0.00000103      0.00000390      0.69807400
 2 a0000a       0.00000064     -0.02500831     -0.00000022     -0.00002181      0.69807390      0.00000708     -0.00000103
 2 a000a0      -0.02500831     -0.00000064     -0.00000091     -0.00000122     -0.00000708      0.69807387     -0.00000390
 2 00a00a      -0.00000000      0.00000000     -0.00000000     -0.52199628     -0.00001355     -0.00000551      0.00000858
 0 aa2000      -0.11231206     -0.00000289     -0.00000409     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 a2a000       0.00000289     -0.11231206     -0.00000098     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 2aa000       0.00000409      0.00000098     -0.11231206     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 a20a00      -0.00000000      0.00000000      0.00000000     -0.08372957     -0.00000268     -0.00000004     -0.00000002
 0 a02a00      -0.00000000      0.00000000      0.00000000     -0.08344621     -0.00000268     -0.00000003     -0.00000004
 0 2a00a0       0.00000000      0.00000000     -0.00000000      0.02781857      0.00000123     -0.00000055      0.00000094
 0 0a20a0       0.00000000      0.00000000     -0.00000000      0.02930260      0.00000127     -0.00000055      0.00000093
 0 0a2a00      -0.00492185     -0.00000013     -0.00000018      0.00000013      0.00000075     -0.07398281      0.00000041
 0 02aa00       0.00000013     -0.00492185     -0.00000004      0.00000231     -0.07398281     -0.00000075      0.00000011
 0 2a000a      -0.00000018     -0.00000004      0.00492185     -0.00000014     -0.00000011     -0.00000041     -0.07398280
 0 20a0a0       0.00000018      0.00000004     -0.00492185     -0.00000014     -0.00000011     -0.00000041     -0.07398279
 0 a2000a      -0.00000013      0.00492185      0.00000004      0.00000231     -0.07398278     -0.00000075      0.00000011
 0 a020a0       0.00492185      0.00000013      0.00000018      0.00000013      0.00000075     -0.07398278      0.00000041
 0 2a0a00       0.02564086      0.00000066      0.00000093      0.00000013      0.00000074     -0.07319496      0.00000041
 0 20aa00      -0.00000066      0.02564086      0.00000022      0.00000229     -0.07319496     -0.00000074      0.00000011
 0 0a200a       0.00000093      0.00000022     -0.02564086     -0.00000014     -0.00000011     -0.00000041     -0.07319495
 0 02a0a0      -0.00000093     -0.00000022      0.02564086     -0.00000014     -0.00000011     -0.00000041     -0.07319494
 0 a0200a       0.00000066     -0.02564086     -0.00000022      0.00000229     -0.07319493     -0.00000074      0.00000011
 0 a200a0      -0.02564086     -0.00000066     -0.00000093      0.00000013      0.00000074     -0.07319493      0.00000041
 0 20a00a       0.00000000     -0.00000000      0.00000000      0.05442694      0.00000141      0.00000058     -0.00000091
 0 02a00a       0.00000000     -0.00000000      0.00000000      0.05562762      0.00000145      0.00000058     -0.00000090
 
 Energy:    -6173.73108715  -6173.73108715  -6173.73108715  -6173.55062659  -6173.55062659  -6173.55062659  -6173.55062659

 State:              8
 2 0aa000       0.00000000
 2 a0a000      -0.00000000
 2 aa0000       0.00000000
 2 a00a00      -0.14495347
 2 0a00a0       0.75917073
 2 0a0a00      -0.00000523
 2 00aa00       0.00000313
 2 0a000a       0.00000863
 2 00a0a0       0.00000863
 2 a0000a       0.00000313
 2 a000a0      -0.00000523
 2 00a00a      -0.61421739
 0 aa2000      -0.00000000
 0 a2a000       0.00000000
 0 2aa000       0.00000000
 0 a20a00       0.01450555
 0 a02a00       0.01605557
 0 2a00a0      -0.08029431
 0 0a20a0      -0.07976469
 0 0a2a00       0.00000055
 0 02aa00      -0.00000033
 0 2a000a      -0.00000091
 0 20a0a0      -0.00000091
 0 a2000a      -0.00000033
 0 a020a0       0.00000055
 0 2a0a00       0.00000055
 0 20aa00      -0.00000033
 0 0a200a      -0.00000091
 0 02a0a0      -0.00000091
 0 a0200a      -0.00000033
 0 a200a0       0.00000055
 0 20a00a       0.06525915
 0 02a00a       0.06423876
 
 Energy:    -6173.55062659
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000       0.79182474      0.00014939      0.00002847      0.00002039     -0.16436314      0.56034661
 2 002000      -0.25356971     -0.00005909     -0.00002368      0.00003478      0.76792192      0.56034662
 2 b0a000       0.00002643      0.00000649      0.00000128     -0.70035795      0.00004045      0.00000000
 2 a0b000      -0.00002643     -0.00000649     -0.00000128      0.70035795     -0.00004045     -0.00000000
 2 0ab000      -0.00002223      0.00005120      0.70035795      0.00000128      0.00001426      0.00000000
 2 0ba000       0.00002223     -0.00005120     -0.70035795     -0.00000128     -0.00001426     -0.00000000
 2 ba0000       0.00012984     -0.70035794      0.00005121     -0.00000649     -0.00001102     -0.00000000
 2 ab0000      -0.00012984      0.70035794     -0.00005121      0.00000649      0.00001102      0.00000000
 2 200000      -0.53825502     -0.00009029     -0.00000479     -0.00005517     -0.60355879      0.56034662
 0 022000      -0.06082222     -0.00001020     -0.00000054     -0.00000623     -0.06820147     -0.12200424
 0 202000       0.08947532      0.00001688      0.00000322      0.00000230     -0.01857285     -0.12200424
 0 220000      -0.02865310     -0.00000668     -0.00000268      0.00000393      0.08677432     -0.12200424
 0 a2b000       0.00000299      0.00000073      0.00000015     -0.07913967      0.00000457      0.00000000
 0 b2a000      -0.00000299     -0.00000073     -0.00000015      0.07913967     -0.00000457     -0.00000000
 0 ab2000       0.00001467     -0.07913967      0.00000579     -0.00000073     -0.00000125     -0.00000000
 0 ba2000      -0.00001467      0.07913967     -0.00000579      0.00000073      0.00000125      0.00000000
 0 2ba000      -0.00000251      0.00000579      0.07913967      0.00000015      0.00000161      0.00000000
 0 2ab000       0.00000251     -0.00000579     -0.07913967     -0.00000015     -0.00000161     -0.00000000
 
 Energy:    -6173.69672926  -6173.69672926  -6173.69672926  -6173.69672926  -6173.69672926  -6173.66746371
 


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
 CPU TIMES  *         4.46      2.39      0.27      1.60
 REAL TIME  *         6.58 SEC
 DISK USED  *        62.13 MB (local),      804.08 MB (total)
 SF USED    *        77.59 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -6173.731087   2.0
    -6173.731087   2.0
    -6173.731087   2.0
    -6173.550627   6.0
    -6173.550627   6.0
    -6173.550627   6.0
    -6173.550627   6.0
    -6173.550627   6.0
    -6173.696729   6.0
    -6173.696729   6.0
    -6173.696729   6.0
    -6173.696729   6.0
    -6173.696729   6.0
    -6173.667464  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

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
     1     -6173.73108715
     2     -6173.73108715
     3     -6173.73108715
     4     -6173.55062659
     5     -6173.55062659
     6     -6173.55062659
     7     -6173.55062659
     8     -6173.55062659

 Number of blocks in overlap matrix:   748   Smallest eigenvalue:  0.67D-06
 Number of N-2 electron functions:    1719
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3497694
 Number of doubly external configurations:       2684052
 Total number of contracted configurations:      6220152
 Total number of uncontracted configurations:   75813963

 Diagonal Coupling coefficients finished.               Storage:  19954107 words, CPU-Time:     36.60 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1150450 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.73108715     0.00000000    -0.78475477  0.48D-01  0.97D-01    46.45
    1     2     2     1.00000000     0.00000000 -6173.73108715     0.00000000    -0.78450301  0.48D-01  0.97D-01    46.45
    1     3     3     1.00000000     0.00000000 -6173.73108715     0.00000000    -0.78477160  0.48D-01  0.97D-01    46.45
    1     4     4     1.00000000     0.00000000 -6173.55062659     0.00000000    -0.75610856  0.42D-01  0.89D-01    46.45
    1     5     5     1.00000000     0.00000000 -6173.55062659     0.00000000    -0.75589762  0.41D-01  0.89D-01    46.45
    1     6     6     1.00000000     0.00000000 -6173.55062659     0.00000000    -0.75589569  0.42D-01  0.89D-01    46.45
    1     7     7     1.00000000     0.00000000 -6173.55062659     0.00000000    -0.75571523  0.41D-01  0.89D-01    46.45
    1     8     8     1.00000000     0.00000000 -6173.55062659     0.00000000    -0.75603903  0.41D-01  0.89D-01    46.45
    2     1     1     1.08981394    -0.62005746 -6174.35114461    -0.62005746    -0.01593501  0.31D-02  0.12D-02   242.01
    2     2     2     1.08977460    -0.61991418 -6174.35100133    -0.61991418    -0.01608941  0.31D-02  0.12D-02   242.01
    2     3     3     1.08998775    -0.61981645 -6174.35090360    -0.61981645    -0.01619284  0.32D-02  0.12D-02   242.01
    2     4     4     1.08416272    -0.61005909 -6174.16068568    -0.61005909    -0.01361629  0.25D-02  0.92D-03   242.01
    2     5     5     1.08404606    -0.61003855 -6174.16066514    -0.61003855    -0.01364142  0.25D-02  0.93D-03   242.01
    2     6     6     1.08412275    -0.61003406 -6174.16066066    -0.61003406    -0.01364815  0.25D-02  0.92D-03   242.01
    2     7     7     1.08414798    -0.61000972 -6174.16063632    -0.61000972    -0.01367369  0.25D-02  0.92D-03   242.01
    2     8     8     1.08425858    -0.60999830 -6174.16062489    -0.60999830    -0.01368457  0.25D-02  0.92D-03   242.01
    3     1     1     1.08064663    -0.63527605 -6174.36636320    -0.01521859    -0.00039115  0.54D-04  0.46D-04   436.16
    3     2     2     1.08072104    -0.63527385 -6174.36636100    -0.01535967    -0.00039259  0.54D-04  0.48D-04   436.16
    3     3     3     1.08065926    -0.63527079 -6174.36635794    -0.01545434    -0.00039594  0.55D-04  0.47D-04   436.16
    3     4     4     1.07786829    -0.62320903 -6174.17383562    -0.01314994    -0.00030295  0.37D-04  0.34D-04   436.16
    3     5     5     1.07788229    -0.62320754 -6174.17383414    -0.01316900    -0.00030429  0.37D-04  0.35D-04   436.16
    3     6     6     1.07789895    -0.62320731 -6174.17383391    -0.01317325    -0.00030495  0.37D-04  0.35D-04   436.16
    3     7     7     1.07787802    -0.62320662 -6174.17383321    -0.01319689    -0.00030519  0.37D-04  0.35D-04   436.16
    3     8     8     1.07789653    -0.62320493 -6174.17383153    -0.01320663    -0.00030725  0.37D-04  0.36D-04   436.16
    4     1     1     1.08077970    -0.63568770 -6174.36677485    -0.00041166    -0.00001908  0.30D-05  0.28D-05   631.02
    4     2     2     1.08077875    -0.63568748 -6174.36677464    -0.00041363    -0.00001926  0.30D-05  0.28D-05   631.02
    4     3     3     1.08078031    -0.63568729 -6174.36677444    -0.00041650    -0.00001944  0.31D-05  0.28D-05   631.02
    4     4     4     1.07841653    -0.62352866 -6174.17415526    -0.00031963    -0.00001574  0.29D-05  0.23D-05   631.02
    4     5     5     1.07841265    -0.62352864 -6174.17415523    -0.00032109    -0.00001596  0.29D-05  0.24D-05   631.02
    4     6     6     1.07841274    -0.62352856 -6174.17415516    -0.00032125    -0.00001601  0.29D-05  0.24D-05   631.02
    4     7     7     1.07841580    -0.62352856 -6174.17415515    -0.00032194    -0.00001584  0.29D-05  0.24D-05   631.02
    4     8     8     1.07841518    -0.62352853 -6174.17415512    -0.00032359    -0.00001586  0.29D-05  0.24D-05   631.02
    5     1     1     1.08086500    -0.63570951 -6174.36679666    -0.00002180    -0.00000113  0.70D-07  0.24D-06   824.35
    5     2     2     1.08086231    -0.63570950 -6174.36679665    -0.00002202    -0.00000113  0.72D-07  0.24D-06   824.35
    5     3     3     1.08086399    -0.63570950 -6174.36679665    -0.00002221    -0.00000113  0.70D-07  0.24D-06   824.35
    5     4     4     1.07857218    -0.62354779 -6174.17417438    -0.00001912    -0.00000122  0.86D-07  0.29D-06   824.35
    5     5     5     1.07857219    -0.62354778 -6174.17417438    -0.00001914    -0.00000122  0.85D-07  0.29D-06   824.35
    5     6     6     1.07857206    -0.62354757 -6174.17417417    -0.00001901    -0.00000121  0.86D-07  0.28D-06   824.35
    5     7     7     1.07857212    -0.62354757 -6174.17417416    -0.00001901    -0.00000121  0.86D-07  0.29D-06   824.35
    5     8     8     1.07857250    -0.62354757 -6174.17417416    -0.00001904    -0.00000121  0.87D-07  0.29D-06   824.35
    6     1     1     1.08086049    -0.63571090 -6174.36679805    -0.00000139    -0.00000012  0.13D-07  0.23D-07  1017.44
    6     2     2     1.08086035    -0.63571090 -6174.36679805    -0.00000139    -0.00000012  0.13D-07  0.23D-07  1017.44
    6     3     3     1.08086023    -0.63571090 -6174.36679805    -0.00000140    -0.00000012  0.13D-07  0.24D-07  1017.44
    6     4     4     1.07857950    -0.62354942 -6174.17417602    -0.00000164    -0.00000016  0.22D-07  0.29D-07  1017.44
    6     5     5     1.07857938    -0.62354942 -6174.17417602    -0.00000164    -0.00000016  0.22D-07  0.29D-07  1017.44
    6     6     6     1.07857953    -0.62354920 -6174.17417579    -0.00000162    -0.00000016  0.22D-07  0.28D-07  1017.44
    6     7     7     1.07857950    -0.62354920 -6174.17417579    -0.00000163    -0.00000015  0.22D-07  0.29D-07  1017.44
    6     8     8     1.07857955    -0.62354920 -6174.17417579    -0.00000163    -0.00000016  0.22D-07  0.29D-07  1017.44
    7     1     1     1.08087484    -0.63571104 -6174.36679819    -0.00000015    -0.00000001  0.10D-08  0.21D-08  1210.60
    7     2     2     1.08087483    -0.63571104 -6174.36679819    -0.00000015    -0.00000001  0.10D-08  0.21D-08  1210.60
    7     3     3     1.08087477    -0.63571104 -6174.36679819    -0.00000015    -0.00000001  0.10D-08  0.21D-08  1210.60
    7     4     4     1.07858807    -0.62354962 -6174.17417621    -0.00000019    -0.00000002  0.17D-08  0.32D-08  1210.60
    7     5     5     1.07858810    -0.62354962 -6174.17417621    -0.00000019    -0.00000002  0.18D-08  0.32D-08  1210.60
    7     6     6     1.07858783    -0.62354939 -6174.17417598    -0.00000019    -0.00000002  0.17D-08  0.32D-08  1210.60
    7     7     7     1.07858790    -0.62354939 -6174.17417598    -0.00000019    -0.00000002  0.17D-08  0.32D-08  1210.60
    7     8     8     1.07858790    -0.62354939 -6174.17417598    -0.00000019    -0.00000002  0.17D-08  0.32D-08  1210.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.2%
 S   1.2%  15.5%
 P   0.5%  51.3%  19.8%

 Initialization:   3.1%
 Other:            6.4%

 Total CPU:     1210.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.0001874  -0.0173872   0.9539814   0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000001
 2222222222//0000           0.8916768   0.3394984   0.0060125   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 22222222220//000          -0.3395516   0.8915276   0.0163156  -0.0000000   0.0000000   0.0000001   0.0000000  -0.0000000
 2222222222/00/00           0.0000000  -0.0000000  -0.0000000  -0.0736997   0.7743559  -0.0006457  -0.0004229  -0.0001911
 22222222220/00/0          -0.0000000   0.0000000   0.0000000   0.7074646  -0.3233609   0.0010642   0.0008094   0.0004154
 22222222220/000/           0.0115569  -0.0303439  -0.0005553  -0.0008159   0.0005007   0.6578031   0.1015760  -0.1038208
 222222222200/0/0          -0.0115569   0.0303439   0.0005553  -0.0008159   0.0005007   0.6578016   0.1015758  -0.1038206
 222222222200/00/           0.0000000  -0.0000000   0.0000000  -0.6337683  -0.4510125  -0.0004185  -0.0003865  -0.0002243
 222222222200//00           0.0000064  -0.0005918   0.0324698  -0.0006841   0.0003142  -0.0007856   0.4839965   0.4685608
 2222222222/0000/          -0.0000064   0.0005918  -0.0324696  -0.0006841   0.0003142  -0.0007856   0.4839946   0.4685590
 22222222220/0/00           0.0303492   0.0115552   0.0002046   0.0000228  -0.0000098   0.1452441  -0.4574184   0.4727306
 2222222222/000/0          -0.0303491  -0.0115552  -0.0002046   0.0000228  -0.0000098   0.1452440  -0.4574180   0.4727302
 2222220222/2/000          -0.0000189   0.0017574  -0.0964207   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220222//2000          -0.0901234  -0.0343137  -0.0006077  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 22222202222//000           0.0343191  -0.0901083  -0.0016490  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 2222220222/20/00          -0.0000000   0.0000000  -0.0000000   0.0060418  -0.0722899   0.0000593   0.0000387   0.0000174
 2222220222/02/00           0.0000000  -0.0000000  -0.0000000   0.0077037  -0.0721317   0.0000611   0.0000402   0.0000182
 22222202222/00/0          -0.0000000   0.0000000   0.0000000  -0.0663200   0.0293951  -0.0000991  -0.0000755  -0.0000388
 22222202220/20/0          -0.0000000   0.0000000   0.0000000  -0.0656261   0.0309138  -0.0000994  -0.0000755  -0.0000387
 22222202222/000/          -0.0018350   0.0048181   0.0000882   0.0000766  -0.0000470  -0.0617496  -0.0095352   0.0097459
 222222022220/0/0           0.0018350  -0.0048181  -0.0000882   0.0000766  -0.0000470  -0.0617494  -0.0095352   0.0097459
 22222202220/200/           0.0072779  -0.0191089  -0.0003497   0.0000756  -0.0000464  -0.0609346  -0.0094093   0.0096173
 222222022202/0/0          -0.0072779   0.0191088   0.0003497   0.0000756  -0.0000464  -0.0609345  -0.0094093   0.0096173
 222222022220/00/           0.0000000  -0.0000000   0.0000000   0.0595846   0.0413782   0.0000401   0.0000368   0.0000213
 222222022202/00/           0.0000000  -0.0000000  -0.0000000   0.0586168   0.0427385   0.0000380   0.0000353   0.0000205

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.898413    0.000189   -0.342117   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.342063   -0.017519    0.898263   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.006058    0.961188    0.016439   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.082390   -0.000977    0.000033   -0.001165    0.958659
 5           0.000000    0.000000    0.000000    0.958660    0.000449   -0.000014    0.000715   -0.082389
 6          -0.000000    0.000000    0.000000   -0.000596   -0.001122    0.207457    0.939562    0.001185
 7           0.000000   -0.000000    0.000000   -0.000361    0.691308   -0.653346    0.145084    0.000934
 8          -0.000000   -0.000000   -0.000000   -0.000150    0.669261    0.675217   -0.148291    0.000492

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961348   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.961348   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.961348    0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.962195    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.962195   -0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.962195    0.000000   -0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.962195   -0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.962195


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.89841303 (fixed)   0.96152975 (relaxed)   0.96134795 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106754   -0.00161529   -0.53532126
 Singles      0.01790614   -0.05715671   -0.06333907
 Pairs        0.06305504    0.00000000   -0.03705071
 Total        1.08202872   -0.05877200   -0.63571104
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.73108715
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.84369604
 One electron energy                -8490.11173517
 Two electron energy                 2315.74493698
 Virial quotient                       -0.86659681
 Correlation energy                    -0.63571104
 !MRCI STATE 1.1 Energy             -6174.366798194343

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41894475 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41868468 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41894475 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41699142 (Pople, fixed reference)
 Cluster corrected energies         -6174.41672396 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41699142 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.89826265 (fixed)   0.96152975 (relaxed)   0.96134796 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106754   -0.00161529   -0.53532132
 Singles      0.01790603   -0.05715666   -0.06333904
 Pairs        0.06305513   -0.00000000   -0.03705069
 Total        1.08202870   -0.05877195   -0.63571104
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.73108715
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.84373308
 One electron energy                -8490.11178260
 Two electron energy                 2315.74498440
 Virial quotient                       -0.86659680
 Correlation energy                    -0.63571104
 !MRCI STATE 2.1 Energy             -6174.366798194260

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41894474 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41868467 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41894474 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41699141 (Pople, fixed reference)
 Cluster corrected energies         -6174.41672396 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41699141 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96118834 (fixed)   0.96152978 (relaxed)   0.96134799 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00106754   -0.00161529   -0.53532137
 Singles      0.01790603   -0.05715663   -0.06333901
 Pairs        0.06305508    0.00000000   -0.03705066
 Total        1.08202864   -0.05877192   -0.63571104
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.73108715
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.84368741
 One electron energy                -8490.11172161
 Two electron energy                 2315.74492341
 Virial quotient                       -0.86659681
 Correlation energy                    -0.63571104
 !MRCI STATE 3.1 Energy             -6174.366798193922

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41894471 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41868463 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41894471 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41699137 (Pople, fixed reference)
 Cluster corrected energies         -6174.41672392 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41699137 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95865943 (fixed)   0.96235264 (relaxed)   0.96219457 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142536   -0.00248855   -0.00503679
 Singles      0.01933670   -0.05954387   -0.06628435
 Pairs        0.05936338   -0.55945416   -0.55222848
 Total        1.08012545   -0.62148658   -0.62354962
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55062659
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41424393
 One electron energy                -8481.18460016
 Two electron energy                 2307.01042395
 Virial quotient                       -0.86662201
 Correlation energy                    -0.62354962
 !MRCI STATE 4.1 Energy             -6174.174176212078

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22413840 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22391716 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22413840 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22219028 (Pople, fixed reference)
 Cluster corrected energies         -6174.22196347 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22219028 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95866035 (fixed)   0.96235263 (relaxed)   0.96219455 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142536   -0.00248855   -0.56750366
 Singles      0.01933673   -0.05954387   -0.06628434
 Pairs        0.05936339    0.04808063    0.01023838
 Total        1.08012548   -0.01395179   -0.62354962
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55062659
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41424020
 One electron energy                -8481.18459489
 Two electron energy                 2307.01041869
 Virial quotient                       -0.86662201
 Correlation energy                    -0.62354962
 !MRCI STATE 5.1 Energy             -6174.174176209382

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22413842 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22391718 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22413842 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22219030 (Pople, fixed reference)
 Cluster corrected energies         -6174.22196349 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22219030 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.93956218 (fixed)   0.96235275 (relaxed)   0.96219468 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142535   -0.00248852   -0.52234966
 Singles      0.01933652   -0.05954352   -0.06628407
 Pairs        0.05936332   -0.00069161   -0.03491566
 Total        1.08012520   -0.06272365   -0.62354939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55062659
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41421657
 One electron energy                -8481.18455755
 Two electron energy                 2307.01038156
 Virial quotient                       -0.86662201
 Correlation energy                    -0.62354939
 !MRCI STATE 6.1 Energy             -6174.174175983100

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22413800 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22391677 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22413800 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22218987 (Pople, fixed reference)
 Cluster corrected energies         -6174.22196307 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22218987 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.69130780 (fixed)   0.96235272 (relaxed)   0.96219465 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142535   -0.00248852   -0.52248517
 Singles      0.01933656   -0.05954356   -0.06628408
 Pairs        0.05936336   -0.00054517   -0.03478013
 Total        1.08012527   -0.06257725   -0.62354939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55062659
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41421255
 One electron energy                -8481.18455317
 Two electron energy                 2307.01037718
 Virial quotient                       -0.86662201
 Correlation energy                    -0.62354939
 !MRCI STATE 7.1 Energy             -6174.174175981806

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22413804 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22391681 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22413804 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22218992 (Pople, fixed reference)
 Cluster corrected energies         -6174.22196311 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22218992 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.67521737 (fixed)   0.96235272 (relaxed)   0.96219465 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00142535   -0.00248852   -0.52272413
 Singles      0.01933656   -0.05954356   -0.06628408
 Pairs        0.05936336   -0.00028707   -0.03454118
 Total        1.08012526   -0.06231915   -0.62354939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.55062659
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.41421254
 One electron energy                -8481.18455312
 Two electron energy                 2307.01037714
 Virial quotient                       -0.86662201
 Correlation energy                    -0.62354939
 !MRCI STATE 8.1 Energy             -6174.174175981730

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.22413804 (Davidson, fixed reference)
 Cluster corrected energies         -6174.22391681 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.22413804 (Davidson, rotated reference)

 Cluster corrected energies         -6174.22218992 (Pople, fixed reference)
 Cluster corrected energies         -6174.22196311 (Pople, relaxed reference)
 Cluster corrected energies         -6174.22218992 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      390.08       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1525.15   1520.68      2.39      0.27      1.60
 REAL TIME  *      1565.90 SEC
 DISK USED  *       451.39 MB (local),        5.35 GB (total)
 SF USED    *         4.10 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -6174.41894475  AU                              
 SETTING HLSDIAG(2)     =     -6174.41894474  AU                              
 SETTING HLSDIAG(3)     =     -6174.41894471  AU                              
 SETTING HLSDIAG(4)     =     -6174.22413840  AU                              
 SETTING HLSDIAG(5)     =     -6174.22413842  AU                              
 SETTING HLSDIAG(6)     =     -6174.22413800  AU                              
 SETTING HLSDIAG(7)     =     -6174.22413804  AU                              
 SETTING HLSDIAG(8)     =     -6174.22413804  AU                              


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
     1     -6173.69672926
     2     -6173.69672926
     3     -6173.69672926
     4     -6173.69672926
     5     -6173.69672926
     6     -6173.66746371

 Number of blocks in overlap matrix:   585   Smallest eigenvalue:  0.18D-06
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2035246
 Number of doubly external configurations:       2016667
 Total number of contracted configurations:      4076063
 Total number of uncontracted configurations:   44346143

 Diagonal Coupling coefficients finished.               Storage:  12993805 words, CPU-Time:     12.35 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    969481 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.69672926     0.00000000    -0.78814223  0.53D-01  0.96D-01    17.70
    1     2     2     1.00000000     0.00000000 -6173.69672926     0.00000000    -0.78887700  0.54D-01  0.96D-01    17.70
    1     3     3     1.00000000     0.00000000 -6173.69672926     0.00000000    -0.78935717  0.54D-01  0.96D-01    17.70
    1     4     4     1.00000000     0.00000000 -6173.69672926     0.00000000    -0.78911584  0.54D-01  0.96D-01    17.70
    1     5     5     1.00000000     0.00000000 -6173.69672926     0.00000000    -0.78821054  0.53D-01  0.96D-01    17.70
    1     6     6     1.00000000     0.00000000 -6173.66746371     0.00000000    -0.76457612  0.25D-01  0.10D+00    17.70
    2     1     1     1.09277773    -0.62434306 -6174.32107232    -0.62434306    -0.01671959  0.32D-02  0.13D-02   101.18
    2     2     2     1.09276839    -0.62433137 -6174.32106063    -0.62433137    -0.01672571  0.32D-02  0.13D-02   101.18
    2     3     3     1.09315044    -0.62419117 -6174.32092042    -0.62419117    -0.01688715  0.33D-02  0.13D-02   101.18
    2     4     4     1.09334421    -0.62407120 -6174.32080045    -0.62407120    -0.01702483  0.34D-02  0.14D-02   101.18
    2     5     5     1.09347161    -0.62405967 -6174.32078892    -0.62405967    -0.01703997  0.34D-02  0.13D-02   101.18
    2     6     6     1.08167424    -0.61989808 -6174.28736179    -0.61989808    -0.01374390  0.23D-02  0.12D-02   101.18
    3     1     1     1.08425218    -0.64011879 -6174.33684805    -0.01577573    -0.00046441  0.63D-04  0.64D-04   184.39
    3     2     2     1.08424722    -0.64011731 -6174.33684657    -0.01578594    -0.00046490  0.63D-04  0.64D-04   184.39
    3     3     3     1.08430572    -0.64010994 -6174.33683920    -0.01591878    -0.00047227  0.64D-04  0.65D-04   184.39
    3     4     4     1.08431027    -0.64010334 -6174.33683260    -0.01603214    -0.00047871  0.65D-04  0.66D-04   184.39
    3     5     5     1.08434105    -0.64010032 -6174.33682958    -0.01604065    -0.00048167  0.66D-04  0.67D-04   184.39
    3     6     6     1.07976614    -0.63335498 -6174.30081869    -0.01345690    -0.00041384  0.34D-04  0.77D-04   184.39
    4     1     1     1.08459544    -0.64061406 -6174.33734332    -0.00049527    -0.00002825  0.36D-05  0.51D-05   267.26
    4     2     2     1.08459309    -0.64061384 -6174.33734309    -0.00049652    -0.00002842  0.36D-05  0.51D-05   267.26
    4     3     3     1.08459161    -0.64061347 -6174.33734273    -0.00050353    -0.00002872  0.37D-05  0.52D-05   267.26
    4     4     4     1.08458932    -0.64061305 -6174.33734231    -0.00050971    -0.00002904  0.38D-05  0.52D-05   267.26
    4     5     5     1.08459022    -0.64061291 -6174.33734216    -0.00051259    -0.00002918  0.38D-05  0.52D-05   267.26
    4     6     6     1.08138052    -0.63381958 -6174.30128329    -0.00046460    -0.00003334  0.25D-05  0.73D-05   267.26
    5     1     1     1.08471755    -0.64064859 -6174.33737784    -0.00003453    -0.00000201  0.11D-06  0.46D-06   349.75
    5     2     2     1.08471696    -0.64064857 -6174.33737783    -0.00003474    -0.00000202  0.11D-06  0.46D-06   349.75
    5     3     3     1.08471313    -0.64064854 -6174.33737780    -0.00003507    -0.00000205  0.11D-06  0.46D-06   349.75
    5     4     4     1.08471182    -0.64064850 -6174.33737776    -0.00003545    -0.00000207  0.12D-06  0.47D-06   349.75
    5     5     5     1.08471127    -0.64064850 -6174.33737776    -0.00003560    -0.00000207  0.12D-06  0.47D-06   349.75
    5     6     6     1.08194136    -0.63386139 -6174.30132510    -0.00004181    -0.00000288  0.18D-06  0.62D-06   349.75
    6     1     1     1.08472341    -0.64065115 -6174.33738041    -0.00000256    -0.00000022  0.27D-07  0.42D-07   432.54
    6     2     2     1.08472315    -0.64065115 -6174.33738041    -0.00000258    -0.00000022  0.27D-07  0.43D-07   432.54
    6     3     3     1.08472279    -0.64065114 -6174.33738040    -0.00000260    -0.00000023  0.29D-07  0.44D-07   432.54
    6     4     4     1.08472241    -0.64065114 -6174.33738040    -0.00000263    -0.00000023  0.30D-07  0.44D-07   432.54
    6     5     5     1.08472238    -0.64065114 -6174.33738039    -0.00000263    -0.00000023  0.30D-07  0.45D-07   432.54
    6     6     6     1.08198299    -0.63386515 -6174.30132886    -0.00000376    -0.00000029  0.29D-07  0.50D-07   432.54
    7     1     1     1.08474927    -0.64065142 -6174.33738068    -0.00000027    -0.00000002  0.24D-08  0.44D-08   515.11
    7     2     2     1.08474932    -0.64065142 -6174.33738068    -0.00000027    -0.00000002  0.25D-08  0.44D-08   515.11
    7     3     3     1.08474943    -0.64065142 -6174.33738068    -0.00000028    -0.00000002  0.25D-08  0.44D-08   515.11
    7     4     4     1.08474915    -0.64065142 -6174.33738068    -0.00000028    -0.00000002  0.24D-08  0.42D-08   515.11
    7     5     5     1.08474916    -0.64065142 -6174.33738067    -0.00000028    -0.00000002  0.24D-08  0.42D-08   515.11
    7     6     6     1.08200371    -0.63386547 -6174.30132919    -0.00000033    -0.00000003  0.35D-08  0.51D-08   515.11


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.8%
 S   1.5%  17.9%
 P   0.6%  47.5%  19.2%

 Initialization:   2.5%
 Other:            8.0%

 Total CPU:      515.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000           0.0147479   0.9496431  -0.0293842   0.0445814   0.0528642  -0.0000000
 22222222220/\000          -0.1100786   0.0295157   0.9456725   0.0135745   0.0146928  -0.0000000
 2222222222/\0000           0.9429752  -0.0146763   0.1092935  -0.0188743   0.0772415  -0.0000000
 2222222222200000           0.0162434  -0.0367419  -0.0080496   0.7768065  -0.0040767   0.5416202
 2222222222002000          -0.0617518  -0.0187204  -0.0115141  -0.3856792   0.6723680   0.5416203
 2222222222020000           0.0455084   0.0554623   0.0195638  -0.3911272  -0.6682912   0.5416202
 2222220222022000           0.0016393  -0.0037081  -0.0008124   0.0783972  -0.0004115  -0.1059338
 2222220222220000          -0.0062321  -0.0018893  -0.0011620  -0.0389235   0.0678571  -0.1059338
 2222220222202000           0.0045928   0.0055974   0.0019744  -0.0394734  -0.0674456  -0.1059338
 2222220222/2\000          -0.0014884  -0.0958399   0.0029655  -0.0044992  -0.0053352   0.0000000
 22222202222/\000           0.0111094  -0.0029788  -0.0954392  -0.0013700  -0.0014828   0.0000000
 2222220222/\2000          -0.0951670   0.0014812  -0.0110301   0.0019048  -0.0077954   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.043680    0.949623   -0.110855    0.014852   -0.065781    0.000000
 2           0.069587   -0.014780    0.029724    0.956338   -0.001327    0.000000
 3           0.023126    0.110064    0.952339   -0.029591   -0.007316    0.000000
 4          -0.640468   -0.019007    0.013670    0.044896   -0.712576    0.000000
 5          -0.709255    0.077786    0.014796    0.053237    0.639047    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.960646

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959442    0.000000    0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.959442   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.959441   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.959442    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.959442    0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.960646


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94962286 (fixed)   0.95969901 (relaxed)   0.95944153 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00146000   -0.00210203   -0.53394775
 Singles      0.02088236   -0.06154170   -0.06895986
 Pairs        0.06399064   -0.00000001   -0.03774381
 Total        1.08633301   -0.06364374   -0.64065142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69672926
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.78813240
 One electron energy                -8489.54371874
 Two electron energy                 2315.20633806
 Virial quotient                       -0.86659944
 Correlation energy                    -0.64065142
 !MRCI STATE 1.1 Energy             -6174.337380676470

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39269004 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39231665 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39269004 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39144500 (Pople, fixed reference)
 Cluster corrected energies         -6174.39105303 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39144500 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95633780 (fixed)   0.95969898 (relaxed)   0.95944150 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00146001   -0.00210203   -0.53394765
 Singles      0.02088247   -0.06154178   -0.06895992
 Pairs        0.06399059   -0.00000000   -0.03774385
 Total        1.08633307   -0.06364382   -0.64065142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69672926
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.78816025
 One electron energy                -8489.54375628
 Two electron energy                 2315.20637561
 Virial quotient                       -0.86659943
 Correlation energy                    -0.64065142
 !MRCI STATE 2.1 Energy             -6174.337380676186

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39269008 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39231669 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39269008 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39144504 (Pople, fixed reference)
 Cluster corrected energies         -6174.39105307 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39144504 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95233915 (fixed)   0.95969894 (relaxed)   0.95944145 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00146001   -0.00210203   -0.53394758
 Singles      0.02088253   -0.06154180   -0.06895994
 Pairs        0.06399063   -0.00000000   -0.03774389
 Total        1.08633317   -0.06364384   -0.64065142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69672926
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.78818050
 One electron energy                -8489.54378357
 Two electron energy                 2315.20640290
 Virial quotient                       -0.86659943
 Correlation energy                    -0.64065142
 !MRCI STATE 3.1 Energy             -6174.337380675936

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39269015 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39231675 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39269015 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39144511 (Pople, fixed reference)
 Cluster corrected energies         -6174.39105314 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39144511 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.71257596 (fixed)   0.95969906 (relaxed)   0.95944159 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00145999   -0.00210203   -0.53394793
 Singles      0.02088214   -0.06154149   -0.06895976
 Pairs        0.06399075   -0.00000008   -0.03774372
 Total        1.08633288   -0.06364360   -0.64065142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69672926
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.78823710
 One electron energy                -8489.54389145
 Two electron energy                 2315.20651078
 Virial quotient                       -0.86659942
 Correlation energy                    -0.64065142
 !MRCI STATE 4.1 Energy             -6174.337380675055

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39268996 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39231657 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39268996 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39144491 (Pople, fixed reference)
 Cluster corrected energies         -6174.39105295 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39144491 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.70925540 (fixed)   0.95969906 (relaxed)   0.95944158 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00145999   -0.00210203   -0.53394808
 Singles      0.02088214   -0.06154149   -0.06895974
 Pairs        0.06399075    0.00000009   -0.03774359
 Total        1.08633288   -0.06364343   -0.64065142
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69672926
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.78824101
 One electron energy                -8489.54389638
 Two electron energy                 2315.20651571
 Virial quotient                       -0.86659942
 Correlation energy                    -0.64065142
 !MRCI STATE 5.1 Energy             -6174.337380674996

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39268996 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39231658 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39268996 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39144492 (Pople, fixed reference)
 Cluster corrected energies         -6174.39105295 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39144492 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96064613 (fixed)   0.96096273 (relaxed)   0.96064613 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00148482   -0.00189065   -0.00261332
 Singles      0.01165791   -0.04514059   -0.04847337
 Pairs        0.07046756   -0.58683424   -0.58277878
 Total        1.08361029   -0.63386548   -0.63386547
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.66746371
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.71167303
 One electron energy                -8488.81981984
 Two electron energy                 2314.51849065
 Virial quotient                       -0.86660368
 Correlation energy                    -0.63386547
 !MRCI STATE 6.1 Energy             -6174.301329188138

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.35432686 (Davidson, fixed reference)
 Cluster corrected energies         -6174.35387435 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.35432686 (Davidson, rotated reference)

 Cluster corrected energies         -6174.35301243 (Pople, fixed reference)
 Cluster corrected energies         -6174.35253966 (Pople, relaxed reference)
 Cluster corrected energies         -6174.35301243 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      581.41       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2108.31    583.15   1520.68      2.39      0.27      1.60
 REAL TIME  *      2167.01 SEC
 DISK USED  *       642.72 MB (local),        7.59 GB (total)
 SF USED    *         4.10 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(9)     =     -6174.39269004  AU                              
 SETTING HLSDIAG(10)    =     -6174.39269008  AU                              
 SETTING HLSDIAG(11)    =     -6174.39269015  AU                              
 SETTING HLSDIAG(12)    =     -6174.39268996  AU                              
 SETTING HLSDIAG(13)    =     -6174.39268996  AU                              
 SETTING HLSDIAG(14)    =     -6174.35432686  AU                              


         HLSDIAG
    -6174.418945
    -6174.418945
    -6174.418945
    -6174.224138
    -6174.224138
    -6174.224138
    -6174.224138
    -6174.224138
    -6174.392690
    -6174.392690
    -6174.392690
    -6174.392690
    -6174.392690
    -6174.354327
                                                  

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

 Time for Seward_LS:      13.84 sec

       10316388. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2701 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.84 sec, REAL time:     13.96 sec


 SORTLS1 read    11044077. and wrote    11044077. SO integrals in    72 records. CPU time:      0.11 sec, REAL time:      0.16 sec
 SORTLS2 read    11044077. and wrote    53911550. SO integrals in    36 records. CPU time:      0.05 sec, REAL time:      0.09 sec

 FILE SIZES: FILE 1:   241.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   241.3 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      230.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      581.41       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2122.78     14.46    583.15   1520.68      2.39      0.27      1.60
 REAL TIME  *      2181.73 SEC
 DISK USED  *       642.79 MB (local),        8.23 GB (total)
 SF USED    *         4.10 GB
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
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   8

 Original energies:  -6174.366798  -6174.366798  -6174.366798  -6174.174176  -6174.174176  -6174.174176  -6174.174176  -6174.174176
 Replaced energies:  -6174.418945  -6174.418945  -6174.418945  -6174.224138  -6174.224138  -6174.224138  -6174.224138  -6174.224138

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -6174.337381  -6174.337381  -6174.337381  -6174.337381  -6174.337381  -6174.301329
 Replaced energies:  -6174.392690  -6174.392690  -6174.392690  -6174.392690  -6174.392690  -6174.354327



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -6174.41894475

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -14.88
                            0.00      -7.75     437.75     383.40     273.01       0.16     111.79     108.11       0.00     869.79

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      14.88       0.00
                            7.75      -0.00   -1149.74     146.46     103.72      -7.19    -293.97    -282.25    -869.79      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00    -812.85    -309.59
                         -437.75    1149.74      -0.00       2.07       2.16     425.92      60.41     -72.41     -15.85      -0.17

    4   4.1  1.0  1.0       0.00       0.00       0.00   42755.05       0.00       0.00       0.00       0.00      11.72     -31.64
                         -383.40    -146.46      -2.07       0.00      -0.03    -203.38     638.55    -658.51      -0.42       5.78

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   42755.05       0.00       0.00       0.00    -126.06     331.38
                         -273.01    -103.72      -2.16       0.03      -0.00     285.03    -896.86     926.02       0.24      -2.62

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   42755.14       0.00       0.00      -0.24       0.81
                           -0.16       7.19    -425.92     203.38    -285.03       0.00    -566.86    -551.44     257.83     169.33

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   42755.13       0.00     207.23      74.86
                         -111.79     293.97     -60.41    -638.55     896.86     566.86       0.00    -176.23     118.01    -179.16

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42755.13     200.50      80.21
                         -108.11     282.25      72.41     658.51    -926.02     551.44     176.23      -0.00    -121.46     185.35

    9   1.1  1.0  0.0      -0.00      14.88    -812.85      11.72    -126.06      -0.24     207.23     200.50       0.00       0.00
                           -0.00     869.79      15.85       0.42      -0.24    -257.83    -118.01     121.46       0.00       0.00

   10   2.1  1.0  0.0     -14.88       0.00    -309.59     -31.64     331.38       0.81      74.86      80.21       0.00       0.00
                         -869.79       0.00       0.17      -5.78       2.62    -169.33     179.16    -185.35      -0.00       0.00

   11   3.1  1.0  0.0     812.85     309.59       0.00      -0.59       6.07     -66.51     210.82    -215.08       0.00       0.00
                          -15.85      -0.17       0.00     323.91    -148.04      -2.55       3.66      -3.21      -0.00      -0.00

   12   4.1  1.0  0.0     -11.72      31.64       0.59      -0.00      -0.98   -1113.97    -171.62     175.38       0.00       0.00
                           -0.42       5.78    -323.91      -0.00      -1.28       0.39    -341.75    -331.79      -0.00      -0.00

   13   5.1  1.0  0.0     126.06    -331.38      -6.07       0.98      -0.00    -105.95     -16.54      16.93       0.00       0.00
                            0.24      -2.62     148.04       1.28       0.00       1.32    -749.03    -724.57      -0.00      -0.00

   14   6.1  1.0  0.0       0.24      -0.81      66.51    1113.97     105.95       0.00     -87.49     -85.66       0.00       0.00
                          257.83     169.33       2.55      -0.39      -1.32       0.00    -398.35     411.76      -0.00      -0.00

   15   7.1  1.0  0.0    -207.23     -74.86    -210.82     171.62      16.54      87.49      -0.00     559.68       0.00       0.00
                          118.01    -179.16      -3.66     341.75     749.03     398.35      -0.00       0.71      -0.00      -0.00

   16   8.1  1.0  0.0    -200.50     -80.21     215.08    -175.38     -16.93      85.66    -559.68      -0.00       0.00       0.00
                         -121.46     185.35       3.21     331.79     724.57    -411.76      -0.71      -0.00      -0.00      -0.00

   17   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      14.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     869.79

   18   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -14.88       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -869.79       0.00

   19   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     812.85     309.59
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -15.85      -0.17

   20   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -11.72      31.64
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.42       5.78

   21   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     126.06    -331.38
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.24      -2.62

   22   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.24      -0.81
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     257.83     169.33

   23   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -207.23     -74.86
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     118.01    -179.16

   24   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -200.50     -80.21
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -121.46     185.35

   25   1.1  0.0  0.0       4.84      39.19    -841.29      76.91       7.55      50.82     250.65     219.50       0.00       0.00
                          391.45    -752.70      43.67      -4.77      -9.20     333.13      51.74       3.05    -109.65     -24.37

   26   2.1  0.0  0.0     808.83     258.08      17.65     -20.78      -1.94     -36.11     229.30    -244.38       0.00       0.00
                          -29.27       1.59      70.07    -278.48    -609.33      -7.18      -0.15     -12.78    -457.93    1109.10

   27   3.1  0.0  0.0     -20.92     -17.05     -97.90    -664.21     -63.18      16.59      22.41      31.38       0.00       0.00
                         -754.27    -392.03      17.71       8.56      18.89     -34.28     233.56    -238.83      -6.25     -20.22

   28   4.1  0.0  0.0    -311.84     930.30      33.87      -9.52      -0.91      -6.05       5.48     -15.25       0.00       0.00
                          -17.42      20.43    -493.55     -13.66     -28.34      -8.20     418.90     401.03    -663.62    -192.13

   29   5.1  0.0  0.0      45.92      13.24     -68.74      -9.54      -1.47    -657.13     -68.62     108.93       0.00       0.00
                           12.12     -53.72    -844.92     -15.19     -34.06      25.89    -234.82    -242.55    1098.23     489.89

   30   6.1  0.0  0.0     493.70   -1296.26     -23.72       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.27      25.28   -1387.07       0.00      -0.00      -0.00      -0.00      -0.00   -1833.50    -698.09


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0     812.85     -11.72     126.06       0.24    -207.23    -200.50       0.00       0.00       0.00       0.00
                           15.85       0.42      -0.24    -257.83    -118.01     121.46       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0     309.59      31.64    -331.38      -0.81     -74.86     -80.21       0.00       0.00       0.00       0.00
                            0.17      -5.78       2.62    -169.33     179.16    -185.35       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.59      -6.07      66.51    -210.82     215.08       0.00       0.00       0.00       0.00
                           -0.00     323.91    -148.04      -2.55       3.66      -3.21       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.59      -0.00       0.98    1113.97     171.62    -175.38       0.00       0.00       0.00       0.00
                         -323.91       0.00      -1.28       0.39    -341.75    -331.79       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       6.07      -0.98      -0.00     105.95      16.54     -16.93       0.00       0.00       0.00       0.00
                          148.04       1.28      -0.00       1.32    -749.03    -724.57       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0     -66.51   -1113.97    -105.95       0.00      87.49      85.66       0.00       0.00       0.00       0.00
                            2.55      -0.39      -1.32      -0.00    -398.35     411.76       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0     210.82    -171.62     -16.54     -87.49      -0.00    -559.68       0.00       0.00       0.00       0.00
                           -3.66     341.75     749.03     398.35       0.00       0.71       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0    -215.08     175.38      16.93     -85.66     559.68      -0.00       0.00       0.00       0.00       0.00
                            3.21     331.79     724.57    -411.76      -0.71       0.00       0.00       0.00       0.00       0.00

    9   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -14.88     812.85     -11.72
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     869.79      15.85       0.42

   10   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      14.88       0.00     309.59      31.64
                            0.00       0.00       0.00       0.00       0.00       0.00    -869.79      -0.00       0.17      -5.78

   11   3.1  1.0  0.0       0.01       0.00       0.00       0.00       0.00       0.00    -812.85    -309.59       0.00       0.59
                            0.00       0.00       0.00       0.00       0.00       0.00     -15.85      -0.17      -0.00     323.91

   12   4.1  1.0  0.0       0.00   42755.05       0.00       0.00       0.00       0.00      11.72     -31.64      -0.59      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.42       5.78    -323.91       0.00

   13   5.1  1.0  0.0       0.00       0.00   42755.05       0.00       0.00       0.00    -126.06     331.38       6.07      -0.98
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.24      -2.62     148.04       1.28

   14   6.1  1.0  0.0       0.00       0.00       0.00   42755.14       0.00       0.00      -0.24       0.81     -66.51   -1113.97
                           -0.00      -0.00      -0.00       0.00       0.00       0.00     257.83     169.33       2.55      -0.39

   15   7.1  1.0  0.0       0.00       0.00       0.00       0.00   42755.13       0.00     207.23      74.86     210.82    -171.62
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00     118.01    -179.16      -3.66     341.75

   16   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   42755.13     200.50      80.21    -215.08     175.38
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -121.46     185.35       3.21     331.79

   17   1.1  1.0 -1.0    -812.85      11.72    -126.06      -0.24     207.23     200.50       0.00       0.00       0.00       0.00
                           15.85       0.42      -0.24    -257.83    -118.01     121.46      -0.00       7.75    -437.75    -383.40

   18   2.1  1.0 -1.0    -309.59     -31.64     331.38       0.81      74.86      80.21       0.00       0.00       0.00       0.00
                            0.17      -5.78       2.62    -169.33     179.16    -185.35      -7.75       0.00    1149.74    -146.46

   19   3.1  1.0 -1.0       0.00      -0.59       6.07     -66.51     210.82    -215.08       0.00       0.00       0.01       0.00
                            0.00     323.91    -148.04      -2.55       3.66      -3.21     437.75   -1149.74       0.00      -2.07

   20   4.1  1.0 -1.0       0.59      -0.00      -0.98   -1113.97    -171.62     175.38       0.00       0.00       0.00   42755.05
                         -323.91      -0.00      -1.28       0.39    -341.75    -331.79     383.40     146.46       2.07      -0.00

   21   5.1  1.0 -1.0      -6.07       0.98      -0.00    -105.95     -16.54      16.93       0.00       0.00       0.00       0.00
                          148.04       1.28       0.00       1.32    -749.03    -724.57     273.01     103.72       2.16      -0.03

   22   6.1  1.0 -1.0      66.51    1113.97     105.95       0.00     -87.49     -85.66       0.00       0.00       0.00       0.00
                            2.55      -0.39      -1.32       0.00    -398.35     411.76       0.16      -7.19     425.92    -203.38

   23   7.1  1.0 -1.0    -210.82     171.62      16.54      87.49      -0.00     559.68       0.00       0.00       0.00       0.00
                           -3.66     341.75     749.03     398.35      -0.00       0.71     111.79    -293.97      60.41     638.55

   24   8.1  1.0 -1.0     215.08    -175.38     -16.93      85.66    -559.68      -0.00       0.00       0.00       0.00       0.00
                            3.21     331.79     724.57    -411.76      -0.71      -0.00     108.11    -282.25     -72.41    -658.51

   25   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       4.84      39.19    -841.29      76.91
                          138.58     545.41    -766.49       3.86      55.44      23.00    -391.45     752.70     -43.67       4.77

   26   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     808.83     258.08      17.65     -20.78
                          -16.97      -9.05      12.28     448.56     105.01    -128.91      29.27      -1.59     -70.07     278.48

   27   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     -20.92     -17.05     -97.90    -664.21
                        -1194.55      63.72     -89.07     -17.83    -327.82    -339.49     754.27     392.03     -17.71      -8.56

   28   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00    -311.84     930.30      33.87      -9.52
                          -20.51     -10.91      15.34     199.35    -561.01     570.07      17.42     -20.43     493.55      13.66

   29   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      45.92      13.24     -68.74      -9.54
                           -9.84      44.67     -62.78     126.89    -319.40     319.71     -12.12      53.72     844.92      15.19

   30   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     493.70   -1296.26     -23.72       0.00
                          -12.36      -0.00       0.00      -0.00       0.00      -0.00       0.27     -25.28    1387.07      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       4.84     808.83     -20.92    -311.84      45.92     493.70
                            0.00       0.00       0.00       0.00    -391.45      29.27     754.27      17.42     -12.12       0.27

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00      39.19     258.08     -17.05     930.30      13.24   -1296.26
                            0.00       0.00       0.00       0.00     752.70      -1.59     392.03     -20.43      53.72     -25.28

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00    -841.29      17.65     -97.90      33.87     -68.74     -23.72
                            0.00       0.00       0.00       0.00     -43.67     -70.07     -17.71     493.55     844.92    1387.07

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00      76.91     -20.78    -664.21      -9.52      -9.54       0.00
                            0.00       0.00       0.00       0.00       4.77     278.48      -8.56      13.66      15.19      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       7.55      -1.94     -63.18      -0.91      -1.47       0.00
                            0.00       0.00       0.00       0.00       9.20     609.33     -18.89      28.34      34.06       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00      50.82     -36.11      16.59      -6.05    -657.13       0.00
                            0.00       0.00       0.00       0.00    -333.13       7.18      34.28       8.20     -25.89       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00     250.65     229.30      22.41       5.48     -68.62       0.00
                            0.00       0.00       0.00       0.00     -51.74       0.15    -233.56    -418.90     234.82       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00     219.50    -244.38      31.38     -15.25     108.93      -0.00
                            0.00       0.00       0.00       0.00      -3.05      12.78     238.83    -401.03     242.55       0.00

    9   1.1  1.0  0.0     126.06       0.24    -207.23    -200.50       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.24    -257.83    -118.01     121.46     109.65     457.93       6.25     663.62   -1098.23    1833.50

   10   2.1  1.0  0.0    -331.38      -0.81     -74.86     -80.21       0.00       0.00       0.00       0.00       0.00       0.00
                            2.62    -169.33     179.16    -185.35      24.37   -1109.10      20.22     192.13    -489.89     698.09

   11   3.1  1.0  0.0      -6.07      66.51    -210.82     215.08       0.00       0.00       0.00       0.00       0.00       0.00
                         -148.04      -2.55       3.66      -3.21    -138.58      16.97    1194.55      20.51       9.84      12.36

   12   4.1  1.0  0.0       0.98    1113.97     171.62    -175.38       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.28       0.39    -341.75    -331.79    -545.41       9.05     -63.72      10.91     -44.67       0.00

   13   5.1  1.0  0.0      -0.00     105.95      16.54     -16.93       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.32    -749.03    -724.57     766.49     -12.28      89.07     -15.34      62.78      -0.00

   14   6.1  1.0  0.0    -105.95       0.00      87.49      85.66       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.32      -0.00    -398.35     411.76      -3.86    -448.56      17.83    -199.35    -126.89       0.00

   15   7.1  1.0  0.0     -16.54     -87.49      -0.00    -559.68       0.00       0.00       0.00       0.00       0.00       0.00
                          749.03     398.35       0.00       0.71     -55.44    -105.01     327.82     561.01     319.40      -0.00

   16   8.1  1.0  0.0      16.93     -85.66     559.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          724.57    -411.76      -0.71       0.00     -23.00     128.91     339.49    -570.07    -319.71       0.00

   17   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       4.84     808.83     -20.92    -311.84      45.92     493.70
                         -273.01      -0.16    -111.79    -108.11     391.45     -29.27    -754.27     -17.42      12.12      -0.27

   18   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      39.19     258.08     -17.05     930.30      13.24   -1296.26
                         -103.72       7.19     293.97     282.25    -752.70       1.59    -392.03      20.43     -53.72      25.28

   19   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    -841.29      17.65     -97.90      33.87     -68.74     -23.72
                           -2.16    -425.92     -60.41      72.41      43.67      70.07      17.71    -493.55    -844.92   -1387.07

   20   4.1  1.0 -1.0       0.00       0.00       0.00       0.00      76.91     -20.78    -664.21      -9.52      -9.54       0.00
                            0.03     203.38    -638.55     658.51      -4.77    -278.48       8.56     -13.66     -15.19       0.00

   21   5.1  1.0 -1.0   42755.05       0.00       0.00       0.00       7.55      -1.94     -63.18      -0.91      -1.47       0.00
                            0.00    -285.03     896.86    -926.02      -9.20    -609.33      18.89     -28.34     -34.06      -0.00

   22   6.1  1.0 -1.0       0.00   42755.14       0.00       0.00      50.82     -36.11      16.59      -6.05    -657.13       0.00
                          285.03      -0.00     566.86     551.44     333.13      -7.18     -34.28      -8.20      25.89      -0.00

   23   7.1  1.0 -1.0       0.00       0.00   42755.13       0.00     250.65     229.30      22.41       5.48     -68.62       0.00
                         -896.86    -566.86      -0.00     176.23      51.74      -0.15     233.56     418.90    -234.82      -0.00

   24   8.1  1.0 -1.0       0.00       0.00       0.00   42755.13     219.50    -244.38      31.38     -15.25     108.93      -0.00
                          926.02    -551.44    -176.23       0.00       3.05     -12.78    -238.83     401.03    -242.55      -0.00

   25   1.1  0.0  0.0       7.55      50.82     250.65     219.50    5762.24       0.00       0.00       0.00       0.00       0.00
                            9.20    -333.13     -51.74      -3.05       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.1  0.0  0.0      -1.94     -36.11     229.30    -244.38       0.00    5762.24       0.00       0.00       0.00       0.00
                          609.33       7.18       0.15      12.78      -0.00       0.00       0.00       0.00       0.00       0.00

   27   3.1  0.0  0.0     -63.18      16.59      22.41      31.38       0.00       0.00    5762.22       0.00       0.00       0.00
                          -18.89      34.28    -233.56     238.83      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   4.1  0.0  0.0      -0.91      -6.05       5.48     -15.25       0.00       0.00       0.00    5762.26       0.00       0.00
                           28.34       8.20    -418.90    -401.03      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   5.1  0.0  0.0      -1.47    -657.13     -68.62     108.93       0.00       0.00       0.00       0.00    5762.26       0.00
                           34.06     -25.89     234.82     242.55      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   6.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   14181.99
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 30)

    The diagonal matrixelements are shifted by  -6174.41894475 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.010       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   42755.052       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   42755.048       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   42755.140       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   42755.131       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42755.132
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000    1230.070      22.419       0.589      -0.346    -364.625    -166.889     171.776

    2    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                            -1230.070       0.000       0.242      -8.175       3.706    -239.471     253.365    -262.128

    3    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              -22.419      -0.242       0.000     458.078    -209.362      -3.604       5.175      -4.542

    4    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.589       8.175    -458.078       0.000      -1.811       0.548    -483.312    -469.223

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.346      -3.706     209.362       1.811       0.000       1.860   -1059.291   -1024.693

    6    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                              364.625     239.471       3.604      -0.548      -1.860       0.000    -563.359     582.311

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              166.889    -253.365      -5.175     483.312    1059.291     563.359       0.000       1.003

    8    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                             -171.776     262.128       4.542     469.223    1024.693    -582.311      -1.003       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -7.753     437.752     383.396     273.013       0.156     111.788     108.106

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.753      -0.000   -1149.735     146.458     103.724      -7.191    -293.972    -282.245

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -437.752    1149.735      -0.000       2.066       2.161     425.925      60.410     -72.410

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -383.396    -146.458      -2.066       0.000      -0.031    -203.378     638.546    -658.512

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -273.013    -103.724      -2.161       0.031      -0.000     285.032    -896.864     926.021

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.156       7.191    -425.925     203.378    -285.032       0.000    -566.856    -551.441

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -111.788     293.972     -60.410    -638.546     896.864     566.856       0.000    -176.226

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -108.106     282.245      72.410     658.512    -926.021     551.441     176.226      -0.000

    1    1  |0 0>               6.846      55.422   -1189.765     108.761      10.681      71.877     354.474     310.420
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            1143.854     364.983      24.960     -29.387      -2.748     -51.060     324.277    -345.612
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>             -29.583     -24.116    -138.448    -939.332     -89.351      23.468      31.687      44.382
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            -441.012    1315.641      47.900     -13.469      -1.290      -8.553       7.745     -21.570
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              64.947      18.724     -97.211     -13.488      -2.074    -929.316     -97.037     154.055
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>             698.198   -1833.191     -33.549       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000    1230.070      22.419       0.589      -0.346    -364.625    -166.889     171.776

    2    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                            -1230.070       0.000       0.242      -8.175       3.706    -239.471     253.365    -262.128

    3    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                              -22.419      -0.242       0.000     458.078    -209.362      -3.604       5.175      -4.542

    4    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.589       8.175    -458.078       0.000      -1.811       0.548    -483.312    -469.223

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.346      -3.706     209.362       1.811       0.000       1.860   -1059.291   -1024.693

    6    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                              364.625     239.471       3.604      -0.548      -1.860       0.000    -563.359     582.311

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              166.889    -253.365      -5.175     483.312    1059.291     563.359       0.000       1.003

    8    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                             -171.776     262.128       4.542     469.223    1024.693    -582.311      -1.003       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.010       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   42755.052       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   42755.048       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   42755.140       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   42755.131       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   42755.132
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000     -21.037    1149.542     -16.570     178.272       0.345    -293.066    -283.553
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-             21.037       0.000     437.820      44.751    -468.644      -1.142    -105.869    -113.429
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-          -1149.542    -437.820       0.000       0.834      -8.583      94.053    -298.140     304.174
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-             16.570     -44.751      -0.834       0.000       1.385    1575.398     242.703    -248.019
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-           -178.272     468.644       8.583      -1.385       0.000     149.839      23.398     -23.936
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>-             -0.345       1.142     -94.053   -1575.398    -149.839       0.000     123.733     121.145
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-            293.066     105.869     298.140    -242.703     -23.398    -123.733       0.000    -791.505
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-            283.553     113.429    -304.174     248.019      23.936    -121.145     791.505       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -109.645     -24.368     138.583     545.414    -766.494       3.862      55.442      22.996

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -457.934    1109.099     -16.968      -9.051      12.276     448.561     105.009    -128.906

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.246     -20.223   -1194.547      63.719     -89.073     -17.825    -327.821    -339.491

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -663.621    -192.134     -20.513     -10.910      15.344     199.353    -561.012     570.066

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1098.231     489.890      -9.841      44.673     -62.779     126.890    -319.402     319.707

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1833.498    -698.089     -12.363      -0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -7.753     437.752     383.396     273.013       0.156     111.788     108.106

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.753      -0.000   -1149.735     146.458     103.724      -7.191    -293.972    -282.245

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -437.752    1149.735      -0.000       2.066       2.161     425.925      60.410     -72.410

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -383.396    -146.458      -2.066       0.000      -0.031    -203.378     638.546    -658.512

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -273.013    -103.724      -2.161       0.031      -0.000     285.032    -896.864     926.021

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.156       7.191    -425.925     203.378    -285.032       0.000    -566.856    -551.441

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -111.788     293.972     -60.410    -638.546     896.864     566.856       0.000    -176.226

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -108.106     282.245      72.410     658.512    -926.021     551.441     176.226      -0.000

    1    1  |1 0>               0.000      21.037   -1149.542      16.570    -178.272      -0.345     293.066     283.553
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>             -21.037       0.000    -437.820     -44.751     468.644       1.142     105.869     113.429
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>            1149.542     437.820       0.000      -0.834       8.583     -94.053     298.140    -304.174
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>             -16.570      44.751       0.834       0.000      -1.385   -1575.398    -242.703     248.019
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 0>             178.272    -468.644      -8.583       1.385       0.000    -149.839     -23.398      23.936
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.345      -1.142      94.053    1575.398     149.839       0.000    -123.733    -121.145
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>            -293.066    -105.869    -298.140     242.703      23.398     123.733       0.000     791.505
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>            -283.553    -113.429     304.174    -248.019     -23.936     121.145    -791.505       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.010       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   42755.052       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   42755.048       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   42755.140       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   42755.131       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   42755.132
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              553.592   -1064.476      61.764      -6.740     -13.008     471.119      73.177       4.310

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -41.401       2.250      99.099    -393.835    -861.726     -10.149      -0.215     -18.071

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1066.705    -554.411      25.044      12.102      26.712     -48.482     330.303    -337.752

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -24.635      28.895    -697.984     -19.311     -40.078     -11.603     592.409     567.135

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               17.135     -75.979   -1194.892     -21.487     -48.163      36.611    -332.081    -343.018

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.385      35.752   -1961.612       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30

    1    1  |1 1>+              6.846    1143.854     -29.583    -441.012      64.947     698.198
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             55.422     364.983     -24.116    1315.641      18.724   -1833.191
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+          -1189.765      24.960    -138.448      47.900     -97.211     -33.549
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+            108.761     -29.387    -939.332     -13.469     -13.488       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             10.681      -2.748     -89.351      -1.290      -2.074       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             71.877     -51.060      23.468      -8.553    -929.316       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            354.474     324.277      31.687       7.745     -97.037       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            310.420    -345.612      44.382     -21.570     154.055      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              109.645     457.934       6.246     663.621   -1098.231    1833.498

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               24.368   -1109.099      20.223     192.134    -489.890     698.089

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                             -138.583      16.968    1194.547      20.513       9.841      12.363

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                             -545.414       9.051     -63.719      10.910     -44.673       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              766.494     -12.276      89.073     -15.344      62.779      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -3.862    -448.561      17.825    -199.353    -126.890       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              -55.442    -105.009     327.821     561.012     319.402      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              -22.996     128.906     339.491    -570.066    -319.707       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                             -553.592      41.401    1066.705      24.635     -17.135       0.385

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                             1064.476      -2.250     554.411     -28.895      75.979     -35.752

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                              -61.764     -99.099     -25.044     697.984    1194.892    1961.612

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                6.740     393.835     -12.102      19.311      21.487      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                               13.008     861.726     -26.712      40.078      48.163       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                             -471.119      10.149      48.482      11.603     -36.611       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                              -73.177       0.215    -330.303    -592.409     332.081       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                               -4.310      18.071     337.752    -567.135     343.018       0.000

    1    1  |0 0>            5762.244       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000    5762.235       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000    5762.221       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000    5762.262       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000    5762.262       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   14181.988
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -6174.43319544    -0.01425069    -3127.66      0.00000000        0.00      0.0000
    2 -6174.42458506    -0.00564031    -1237.90      0.00861038     1889.76      0.2343
    3 -6174.42458505    -0.00564029    -1237.90      0.00861039     1889.76      0.2343
    4 -6174.42458505    -0.00564029    -1237.90      0.00861040     1889.76      0.2343
    5 -6174.41605530     0.00288945      634.16      0.01714014     3761.83      0.4664
    6 -6174.41605527     0.00288948      634.17      0.01714017     3761.83      0.4664
    7 -6174.41605517     0.00288959      634.19      0.01714028     3761.86      0.4664
    8 -6174.41605515     0.00288960      634.19      0.01714029     3761.86      0.4664
    9 -6174.41605513     0.00288962      634.20      0.01714031     3761.86      0.4664
   10 -6174.39019963     0.02874512     6308.82      0.04299581     9436.49      1.1700
   11 -6174.39019958     0.02874518     6308.84      0.04299586     9436.50      1.1700
   12 -6174.39019954     0.02874521     6308.85      0.04299590     9436.51      1.1700
   13 -6174.39019932     0.02874543     6308.89      0.04299612     9436.56      1.1700
   14 -6174.39019932     0.02874544     6308.89      0.04299613     9436.56      1.1700
   15 -6174.35128725     0.06765751    14849.11      0.08190819    17976.77      2.2288
   16 -6174.23517840     0.18376635    40332.05      0.19801704    43459.72      5.3883
   17 -6174.23517839     0.18376637    40332.06      0.19801705    43459.72      5.3883
   18 -6174.23517838     0.18376637    40332.06      0.19801706    43459.72      5.3883
   19 -6174.22760450     0.19134025    41994.33      0.20559094    45122.00      5.5944
   20 -6174.22760449     0.19134026    41994.33      0.20559095    45122.00      5.5944
   21 -6174.22760449     0.19134027    41994.33      0.20559096    45122.00      5.5944
   22 -6174.22760424     0.19134051    41994.39      0.20559120    45122.05      5.5944
   23 -6174.22760421     0.19134055    41994.40      0.20559124    45122.06      5.5944
   24 -6174.21675495     0.20218981    44375.53      0.21644050    47503.20      5.8896
   25 -6174.21675494     0.20218982    44375.54      0.21644051    47503.20      5.8896
   26 -6174.21675492     0.20218984    44375.54      0.21644052    47503.20      5.8896
   27 -6174.21675484     0.20218991    44375.56      0.21644060    47503.22      5.8896
   28 -6174.21675483     0.20218992    44375.56      0.21644061    47503.22      5.8896
   29 -6174.21675483     0.20218993    44375.56      0.21644061    47503.22      5.8896
   30 -6174.21675472     0.20219003    44375.58      0.21644072    47503.25      5.8897

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.20161453  0.66054645 -0.01621170 -0.00367493 -0.22080115 -0.17928628 -0.62163358 -0.00369171
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.52935935  0.25162439  0.00148487 -0.01182615  0.58161223  0.42275694 -0.24855384  0.00089458
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00968765 -0.00249666 -0.41852422  0.56972905  0.00728240  0.01062176 -0.00504766  0.01168843
                           0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00001905  0.00065856  0.00047452 -0.00000386  0.00011620  0.00009491 -0.02140835
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00019691 -0.00687475 -0.00504678  0.00001063 -0.00000383  0.00000924 -0.00203767
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000001  0.00159982 -0.00002821 -0.00001193  0.01246891 -0.01683403  0.00276079 -0.00007683
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00508988 -0.00302914  0.00432901  0.00197160 -0.00282779 -0.00722419 -0.00019696
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00515549 -0.00318068  0.00413172 -0.00193806  0.00282638  0.00748170 -0.00009600
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.52944822 -0.25154058  0.00603024  0.00135983  0.66252239 -0.29493527 -0.23022399 -0.00176497

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.20158281  0.66073365 -0.00574644  0.00384051  0.25156527 -0.09398906  0.62858277 -0.00965088

   3    1  |1 0>           0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                           0.00357001 -0.00421960 -0.56983029 -0.41852286  0.00409012 -0.00463254  0.00852702  0.66945704

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00005984 -0.00413881  0.00562272 -0.00006286  0.00005270 -0.00002487  0.00020634

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00005429 -0.00293806  0.00400680  0.00008807 -0.00007492  0.00002470 -0.00030033

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00724466  0.00016719  0.00004012 -0.00186494 -0.00398143  0.01060458  0.00001663

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00099572  0.00432050  0.00316602  0.00583504  0.01338885  0.00125111  0.00779384

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00126243  0.00412932  0.00305095 -0.00603896 -0.01390520 -0.00134327  0.00740893

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                           0.00011128  0.01771512  0.68126945  0.18833205 -0.00155385 -0.00160595 -0.00301099  0.62984072

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.01032394 -0.00069270 -0.18834049  0.68137479  0.00458756 -0.01774802 -0.00010229  0.22726321

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.56644150 -0.00001611 -0.00356651  0.01238163 -0.08647045  0.76790448 -0.01967335  0.00723322

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00779147 -0.00018513 -0.00005206  0.00003040 -0.00022539 -0.00893831 -0.00004067

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00356145  0.00008379  0.00002493  0.00000887 -0.00049943 -0.01955595 -0.00008937

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00009644 -0.00557857  0.00489335 -0.00002905  0.00003777 -0.00001675  0.00250141

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00011415  0.00339725  0.00388467 -0.01536046 -0.00169023  0.00006085 -0.00729011

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00010430 -0.00351885 -0.00400453 -0.01486234 -0.00171522 -0.00000402  0.00750017

   1    1  |0 0>          -0.00000000  0.00000001  0.00000040 -0.00000031 -0.02212678  0.01785536  0.00404581  0.04258361
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000004 -0.00000024 -0.00000002 -0.00000000  0.00142258  0.03130495  0.31845013 -0.00844516
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000064 -0.00000048 -0.00172085  0.00922503 -0.00869729 -0.31708229
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

   4    1  |0 0>           0.00000004  0.00000007 -0.00000003  0.00000001 -0.25643792 -0.19044025  0.01962111 -0.00557794
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000008 -0.00000006  0.00000002 -0.00000002  0.19035167 -0.25463255  0.02444496 -0.00536791
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.19263969  0.00000000  0.00000000 -0.00000000  0.00000007 -0.00000026 -0.00000003 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.00073484 -0.00694310  0.21358301  0.00361092 -0.06847401 -0.05696990  0.03958026 -0.00001914
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.01135734 -0.00368131  0.07553967  0.00761135  0.17888789  0.16921982 -0.10392206 -0.00002760
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.66942387 -0.02638938  0.00515715 -0.22505211  0.00864790 -0.00027635 -0.00190185  0.00110952
                           0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00038363  0.01946908  0.00072463 -0.00225713 -0.00001627  0.00021920 -0.00000000 -0.05945018
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00003058  0.00185212  0.00006849 -0.00022077 -0.00001294  0.00003314 -0.00000000  0.62529097
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005

   6    1  |1 1>+          0.00015155 -0.00028640  0.00167462 -0.00045095 -0.01310646  0.01413504 -0.00000002 -0.00019209
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00770950 -0.00060531 -0.00662976 -0.00724369 -0.00184732  0.00186201 -0.00000000 -0.04672568
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00749470 -0.00099159  0.00709063 -0.00658169  0.00222173 -0.00210987  0.00000000 -0.04344963
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00440567 -0.00086844  0.08304446  0.00812684  0.23381909 -0.06916942  0.10393942  0.00000550

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00243591  0.00407154 -0.21087321 -0.00141651  0.08933712 -0.03384171  0.03957406  0.00015405

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01161941  0.22522589  0.00451267 -0.02625410  0.00120888  0.00213181  0.00070085 -0.00951497

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.01246901  0.00133597 -0.00020405  0.01133898 -0.00027044  0.00017019 -0.00000000 -0.05913215

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01752163 -0.00186763  0.00027764 -0.01593519  0.00038022 -0.00023871  0.00000000 -0.04272880

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00004491 -0.00036936  0.00948284  0.00019354  0.00123301  0.00435518 -0.00000000 -0.00056144

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003
                          -0.00014329 -0.00693078  0.00161361  0.00095431 -0.00391385 -0.01282274  0.00000001 -0.39104761

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003
                          -0.00009121 -0.00689597 -0.00217409  0.00067933  0.00406752  0.01308210 -0.00000001 -0.37820673

   1    1  |1 1>-         -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.22736357  0.20100991  0.00918142 -0.10463205  0.00155171  0.00140594  0.00002185  0.00849822

   2    1  |1 1>-          0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.62966142  0.10475472 -0.00044766  0.20113737 -0.00408477 -0.00052487 -0.00202676  0.00442300

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01533579 -0.00160734 -0.00795297 -0.00126121 -0.05872706  0.25508658  0.11120221  0.00007894

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001973  0.00028588 -0.00817943 -0.00018065 -0.00000890 -0.00025634 -0.00000000  0.00133901

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000693  0.00063029 -0.01789658 -0.00036111  0.00003135 -0.00054845 -0.00000000 -0.00062360

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01045943 -0.00099205 -0.00023703  0.00979478 -0.00024680  0.00011233  0.00000000  0.05534004

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003
                           0.00167918  0.00683157  0.00013710  0.00097910  0.01374619  0.00327692 -0.00000001 -0.37893612

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                          -0.00185569 -0.00701856 -0.00031262 -0.00043895  0.01339987  0.00296700 -0.00000001  0.39151446

   1    1  |0 0>           0.31598551  0.00046475 -0.00384152  0.94540318  0.04376614 -0.02859351 -0.00000000  0.00000000
                           0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00460855 -0.00484230  0.94601558  0.00256604  0.00188526 -0.03944696 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.04220103  0.94677811  0.00439969 -0.00093563  0.00362045 -0.01059581 -0.00000000  0.00000005
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00669506  0.00448380  0.02570474 -0.01222707  0.68972198  0.64806220  0.00000002  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.02812707  0.01009186  0.02991358  0.05090290 -0.64721162  0.68852055  0.00000004  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000001  0.00000000  0.00000001  0.00000000  0.00000004 -0.00000010  0.98126956  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+         -0.00894379 -0.00041941 -0.01141932 -0.00020216 -0.00001549 -0.00487196 -0.00055241  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00341334  0.00001426 -0.00420880 -0.00029613 -0.00004474  0.01302678  0.00196526 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00038101 -0.00950740 -0.00029200  0.01190017  0.00254614  0.00024036  0.00003419  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00049634 -0.00747811  0.00211300 -0.17030092  0.79425818 -0.00042686 -0.00014675 -0.01898482
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000073

   5    1  |1 1>+         -0.00477138  0.07303768  0.00021401 -0.01598359  0.07564143 -0.00014205  0.00067901  0.76793954
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00002959

   6    1  |1 1>+          0.11798615  0.00481214 -0.07685866 -0.00172422 -0.00015225 -0.11473959  0.78963525  0.00006973
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.38959562  0.37303179  0.27341513  0.29150616  0.06221698 -0.01966661  0.11751829  0.03851917
                          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000148

   8    1  |1 1>+          0.36635742  0.39586681 -0.29302654  0.27212937  0.05952645  0.02021692 -0.12014995  0.03716487
                          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000143

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00340586  0.00015878 -0.00443053 -0.00008646  0.00001243  0.00817642 -0.01024142  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00894370 -0.00039729  0.01133441  0.00024831 -0.00019776  0.00302379 -0.00409561 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00009135 -0.00111510  0.00023943 -0.00254227  0.01190402  0.00004496 -0.00006018  0.00000017

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000267
                          -0.02307921  0.51133172  0.00894735 -0.46264609 -0.09855197 -0.00005897  0.00007752 -0.06939396

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000205
                          -0.01729712  0.36376259 -0.01218070  0.65004830  0.13887126  0.00010095 -0.00009779 -0.05321549

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.53422193 -0.02452754 -0.39565358 -0.00824508 -0.00023376  0.14075439  0.11506523 -0.00026400

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00001376
                          -0.07953474 -0.04903047 -0.07041078  0.05933302 -0.28682490 -0.43403384 -0.34286545  0.35713478

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00001328
                           0.08717978 -0.03992339  0.07054787  0.06026447 -0.27753946  0.44897948  0.35375366  0.34459243

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00022465  0.00441811 -0.00004748  0.00185653  0.01203243 -0.00000626  0.00001358 -0.00000018

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00038670 -0.00848826  0.00021037 -0.01202878  0.00185690 -0.00009951 -0.00023198 -0.00000007

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000709 -0.00015557  0.00023610 -0.00021239  0.00002246  0.00519153  0.01306005 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                           0.57457685  0.02616642  0.33909311  0.00659643  0.00048895 -0.00310055 -0.00479927  0.00049834

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.26262218 -0.01185650  0.74192311  0.01307022  0.00081765 -0.00474435 -0.01131081  0.00003253

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000147
                          -0.02466429  0.54430525  0.00674750 -0.37110939 -0.16934564 -0.00088642  0.00032043 -0.03816702

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00001046
                          -0.00034019  0.03897341  0.00229084 -0.11832051  0.25859489  0.54457956 -0.21627998  0.27136682

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00001076
                           0.00132533 -0.03929849 -0.00138407  0.12112799 -0.26626502  0.52762041 -0.20996754 -0.27930250

   1    1  |0 0>          -0.00000000  0.00000001 -0.00003083  0.02954503  0.01001445 -0.00100828  0.00236284 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000005 -0.00000000  0.03123442  0.00029437 -0.00101339  0.00099964  0.00144844  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00109793  0.00999216 -0.02963340  0.00024499  0.00074343  0.00000006
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000002 -0.00000000  0.00119181 -0.00048391 -0.00058008 -0.03091958 -0.00466901  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00125857  0.00259339  0.00009322  0.00465992 -0.03081850  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30

   1    1  |1 1>+          0.00000000 -0.00000002 -0.00000000  0.00000023 -0.00000002 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000008  0.00000000  0.00000004 -0.00000001 -0.00000020  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00888556  0.00012207  0.56698537  0.00790734  0.11720988  0.00016014
                          -0.00000000 -0.00000000 -0.00000026 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.08522406 -0.00048273 -0.01616507 -0.00163434 -0.01836027 -0.00055551
                           0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00044473 -0.10297261 -0.00018419  0.11088071 -0.00708367  0.56540674
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.40302794  0.36438068  0.07454759 -0.35944303 -0.30122895  0.08132777
                           0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.39036065 -0.37430460  0.07255591  0.32888516 -0.33816151 -0.08333982
                           0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00000001 -0.00000000 -0.00000003

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000003  0.00000000 -0.00000003  0.00000000 -0.00000001

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000002  0.00000000 -0.00000011 -0.00000000 -0.00000003 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000
                           0.53713832  0.00054817  0.08382698 -0.03103648 -0.45718511  0.00017422

   5    1  |1 0>           0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000
                           0.53922762 -0.00100911 -0.08171436  0.02337277  0.34948967  0.00018776

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00058992  0.33998047 -0.00070519  0.62327105 -0.04109027 -0.13529848

   7    1  |1 0>           0.00000000 -0.00000000  0.00000017  0.00000000  0.00000000 -0.00000000
                           0.04697618  0.06096893  0.37502399  0.10315737  0.06312780  0.39036895

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000017  0.00000000  0.00000000  0.00000000
                           0.04543311 -0.06267599  0.36425612 -0.09648908  0.07427418 -0.40324146

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000011 -0.00000000 -0.00000005  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000003  0.00000000 -0.00000006  0.00000000  0.00000007 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000002

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00087708  0.65785445 -0.00042320  0.34696139 -0.02195208 -0.01639752

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00033194 -0.40043158  0.00007921  0.46694360 -0.03136248  0.00589739

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.30514275 -0.00045868  0.00516249  0.04377454  0.66093455 -0.00049662

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000020 -0.00000000 -0.00000000 -0.00000000
                          -0.02419821  0.00895632 -0.42957360  0.00285007  0.00823605  0.41374415

   8    1  |1 1>-          0.00000000  0.00000000  0.00000020  0.00000000  0.00000000 -0.00000000
                           0.02430926  0.00934318  0.44255397  0.00217655 -0.00795210  0.40245458

   1    1  |0 0>          -0.00000010  0.00000000  0.00000005 -0.00000005 -0.00000057  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000008  0.00000001 -0.00000054  0.00000005  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000055  0.00000002  0.00000005  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000002 -0.00000002
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000001  0.00000001  0.00000002 -0.00000005 -0.00000004 -0.00000004
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -6174.43319544     -0.01425069    -3127.66      0.00000000        0.00      0.0000
     2   1  -6174.42458506     -0.00564031    -1237.90      0.00861038     1889.76      0.2343
     3   1  -6174.42458505     -0.00564029    -1237.90      0.00861039     1889.76      0.2343
     4   1  -6174.42458505     -0.00564029    -1237.90      0.00861040     1889.76      0.2343
     5   1  -6174.41605530      0.00288945      634.16      0.01714014     3761.83      0.4664
     6   1  -6174.41605527      0.00288948      634.17      0.01714017     3761.83      0.4664
     7   1  -6174.41605517      0.00288959      634.19      0.01714028     3761.86      0.4664
     8   1  -6174.41605515      0.00288960      634.19      0.01714029     3761.86      0.4664
     9   1  -6174.41605513      0.00288962      634.20      0.01714031     3761.86      0.4664
    10   1  -6174.39019963      0.02874512     6308.82      0.04299581     9436.49      1.1700
    11   1  -6174.39019958      0.02874518     6308.84      0.04299586     9436.50      1.1700
    12   1  -6174.39019954      0.02874521     6308.85      0.04299590     9436.51      1.1700
    13   1  -6174.39019932      0.02874543     6308.89      0.04299612     9436.56      1.1700
    14   1  -6174.39019932      0.02874544     6308.89      0.04299613     9436.56      1.1700
    15   1  -6174.35128725      0.06765751    14849.11      0.08190819    17976.77      2.2288
    16   1  -6174.23517840      0.18376635    40332.05      0.19801704    43459.72      5.3883
    17   1  -6174.23517839      0.18376637    40332.06      0.19801705    43459.72      5.3883
    18   1  -6174.23517838      0.18376637    40332.06      0.19801706    43459.72      5.3883
    19   1  -6174.22760450      0.19134025    41994.33      0.20559094    45122.00      5.5944
    20   1  -6174.22760449      0.19134026    41994.33      0.20559095    45122.00      5.5944
    21   1  -6174.22760449      0.19134027    41994.33      0.20559096    45122.00      5.5944
    22   1  -6174.22760424      0.19134051    41994.39      0.20559120    45122.05      5.5944
    23   1  -6174.22760421      0.19134055    41994.40      0.20559124    45122.06      5.5944
    24   1  -6174.21675495      0.20218981    44375.53      0.21644050    47503.20      5.8896
    25   1  -6174.21675494      0.20218982    44375.54      0.21644051    47503.20      5.8896
    26   1  -6174.21675492      0.20218984    44375.54      0.21644052    47503.20      5.8896
    27   1  -6174.21675484      0.20218991    44375.56      0.21644060    47503.22      5.8896
    28   1  -6174.21675483      0.20218992    44375.56      0.21644061    47503.22      5.8896
    29   1  -6174.21675483      0.20218993    44375.56      0.21644061    47503.22      5.8896
    30   1  -6174.21675472      0.20219003    44375.58      0.21644072    47503.25      5.8897

 E0 =  -6174.41894475 is the energy of the lowest zeroth-order state
 E1 =  -6174.43319544 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.20161453  0.66054645 -0.01621170 -0.00367493 -0.22080115 -0.17928628 -0.62163358 -0.00369171
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.52935935  0.25162439  0.00148487 -0.01182615  0.58161223  0.42275694 -0.24855384  0.00089458
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00968765 -0.00249666 -0.41852422  0.56972905  0.00728240  0.01062176 -0.00504766  0.01168843
                                0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00001905  0.00065856  0.00047452 -0.00000386  0.00011620  0.00009491 -0.02140835
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000 -0.00019691 -0.00687475 -0.00504678  0.00001063 -0.00000383  0.00000924 -0.00203767
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000001  0.00159982 -0.00002821 -0.00001193  0.01246891 -0.01683403  0.00276079 -0.00007683
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00508988 -0.00302914  0.00432901  0.00197160 -0.00282779 -0.00722419 -0.00019696
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000000  0.00515549 -0.00318068  0.00413172 -0.00193806  0.00282638  0.00748170 -0.00009600
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.52944822 -0.25154058  0.00603024  0.00135983  0.66252239 -0.29493527 -0.23022399 -0.00176497

 10  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.20158281  0.66073365 -0.00574644  0.00384051  0.25156527 -0.09398906  0.62858277 -0.00965088

 11  1     3    1  |1 0>        0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                                0.00357001 -0.00421960 -0.56983029 -0.41852286  0.00409012 -0.00463254  0.00852702  0.66945704

 12  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00005984 -0.00413881  0.00562272 -0.00006286  0.00005270 -0.00002487  0.00020634

 13  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00005429 -0.00293806  0.00400680  0.00008807 -0.00007492  0.00002470 -0.00030033

 14  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00724466  0.00016719  0.00004012 -0.00186494 -0.00398143  0.01060458  0.00001663

 15  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00099572  0.00432050  0.00316602  0.00583504  0.01338885  0.00125111  0.00779384

 16  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00126243  0.00412932  0.00305095 -0.00603896 -0.01390520 -0.00134327  0.00740893

 17  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                                0.00011128  0.01771512  0.68126945  0.18833205 -0.00155385 -0.00160595 -0.00301099  0.62984072

 18  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.01032394 -0.00069270 -0.18834049  0.68137479  0.00458756 -0.01774802 -0.00010229  0.22726321

 19  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.56644150 -0.00001611 -0.00356651  0.01238163 -0.08647045  0.76790448 -0.01967335  0.00723322

 20  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00779147 -0.00018513 -0.00005206  0.00003040 -0.00022539 -0.00893831 -0.00004067

 21  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00356145  0.00008379  0.00002493  0.00000887 -0.00049943 -0.01955595 -0.00008937

 22  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00009644 -0.00557857  0.00489335 -0.00002905  0.00003777 -0.00001675  0.00250141

 23  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00011415  0.00339725  0.00388467 -0.01536046 -0.00169023  0.00006085 -0.00729011

 24  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00010430 -0.00351885 -0.00400453 -0.01486234 -0.00171522 -0.00000402  0.00750017

 25  1     1    1  |0 0>       -0.00000000  0.00000001  0.00000040 -0.00000031 -0.02212678  0.01785536  0.00404581  0.04258361
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1     2    1  |0 0>       -0.00000004 -0.00000024 -0.00000002 -0.00000000  0.00142258  0.03130495  0.31845013 -0.00844516
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000064 -0.00000048 -0.00172085  0.00922503 -0.00869729 -0.31708229
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

 28  1     4    1  |0 0>        0.00000004  0.00000007 -0.00000003  0.00000001 -0.25643792 -0.19044025  0.01962111 -0.00557794
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     5    1  |0 0>        0.00000008 -0.00000006  0.00000002 -0.00000002  0.19035167 -0.25463255  0.02444496 -0.00536791
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     6    1  |0 0>       -0.19263969  0.00000000  0.00000000 -0.00000000  0.00000007 -0.00000026 -0.00000003 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.00073484 -0.00694310  0.21358301  0.00361092 -0.06847401 -0.05696990  0.03958026 -0.00001914
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.01135734 -0.00368131  0.07553967  0.00761135  0.17888789  0.16921982 -0.10392206 -0.00002760
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.66942387 -0.02638938  0.00515715 -0.22505211  0.00864790 -0.00027635 -0.00190185  0.00110952
                                0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00038363  0.01946908  0.00072463 -0.00225713 -0.00001627  0.00021920 -0.00000000 -0.05945018
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00003058  0.00185212  0.00006849 -0.00022077 -0.00001294  0.00003314 -0.00000000  0.62529097
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005

  6  1     6    1  |1 1>+       0.00015155 -0.00028640  0.00167462 -0.00045095 -0.01310646  0.01413504 -0.00000002 -0.00019209
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00770950 -0.00060531 -0.00662976 -0.00724369 -0.00184732  0.00186201 -0.00000000 -0.04672568
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00749470 -0.00099159  0.00709063 -0.00658169  0.00222173 -0.00210987  0.00000000 -0.04344963
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00440567 -0.00086844  0.08304446  0.00812684  0.23381909 -0.06916942  0.10393942  0.00000550

 10  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00243591  0.00407154 -0.21087321 -0.00141651  0.08933712 -0.03384171  0.03957406  0.00015405

 11  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01161941  0.22522589  0.00451267 -0.02625410  0.00120888  0.00213181  0.00070085 -0.00951497

 12  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.01246901  0.00133597 -0.00020405  0.01133898 -0.00027044  0.00017019 -0.00000000 -0.05913215

 13  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01752163 -0.00186763  0.00027764 -0.01593519  0.00038022 -0.00023871  0.00000000 -0.04272880

 14  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00004491 -0.00036936  0.00948284  0.00019354  0.00123301  0.00435518 -0.00000000 -0.00056144

 15  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003
                               -0.00014329 -0.00693078  0.00161361  0.00095431 -0.00391385 -0.01282274  0.00000001 -0.39104761

 16  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003
                               -0.00009121 -0.00689597 -0.00217409  0.00067933  0.00406752  0.01308210 -0.00000001 -0.37820673

 17  1     1    1  |1 1>-      -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.22736357  0.20100991  0.00918142 -0.10463205  0.00155171  0.00140594  0.00002185  0.00849822

 18  1     2    1  |1 1>-       0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.62966142  0.10475472 -0.00044766  0.20113737 -0.00408477 -0.00052487 -0.00202676  0.00442300

 19  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01533579 -0.00160734 -0.00795297 -0.00126121 -0.05872706  0.25508658  0.11120221  0.00007894

 20  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001973  0.00028588 -0.00817943 -0.00018065 -0.00000890 -0.00025634 -0.00000000  0.00133901

 21  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000693  0.00063029 -0.01789658 -0.00036111  0.00003135 -0.00054845 -0.00000000 -0.00062360

 22  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01045943 -0.00099205 -0.00023703  0.00979478 -0.00024680  0.00011233  0.00000000  0.05534004

 23  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003
                                0.00167918  0.00683157  0.00013710  0.00097910  0.01374619  0.00327692 -0.00000001 -0.37893612

 24  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003
                               -0.00185569 -0.00701856 -0.00031262 -0.00043895  0.01339987  0.00296700 -0.00000001  0.39151446

 25  1     1    1  |0 0>        0.31598551  0.00046475 -0.00384152  0.94540318  0.04376614 -0.02859351 -0.00000000  0.00000000
                                0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 26  1     2    1  |0 0>       -0.00460855 -0.00484230  0.94601558  0.00256604  0.00188526 -0.03944696 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1     3    1  |0 0>        0.04220103  0.94677811  0.00439969 -0.00093563  0.00362045 -0.01059581 -0.00000000  0.00000005
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1     4    1  |0 0>       -0.00669506  0.00448380  0.02570474 -0.01222707  0.68972198  0.64806220  0.00000002  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     5    1  |0 0>        0.02812707  0.01009186  0.02991358  0.05090290 -0.64721162  0.68852055  0.00000004  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     6    1  |0 0>        0.00000001  0.00000000  0.00000001  0.00000000  0.00000004 -0.00000010  0.98126956  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+      -0.00894379 -0.00041941 -0.01141932 -0.00020216 -0.00001549 -0.00487196 -0.00055241  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00341334  0.00001426 -0.00420880 -0.00029613 -0.00004474  0.01302678  0.00196526 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00038101 -0.00950740 -0.00029200  0.01190017  0.00254614  0.00024036  0.00003419  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00049634 -0.00747811  0.00211300 -0.17030092  0.79425818 -0.00042686 -0.00014675 -0.01898482
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000073

  5  1     5    1  |1 1>+      -0.00477138  0.07303768  0.00021401 -0.01598359  0.07564143 -0.00014205  0.00067901  0.76793954
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00002959

  6  1     6    1  |1 1>+       0.11798615  0.00481214 -0.07685866 -0.00172422 -0.00015225 -0.11473959  0.78963525  0.00006973
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.38959562  0.37303179  0.27341513  0.29150616  0.06221698 -0.01966661  0.11751829  0.03851917
                               -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000148

  8  1     8    1  |1 1>+       0.36635742  0.39586681 -0.29302654  0.27212937  0.05952645  0.02021692 -0.12014995  0.03716487
                               -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000143

  9  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00340586  0.00015878 -0.00443053 -0.00008646  0.00001243  0.00817642 -0.01024142  0.00000000

 10  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00894370 -0.00039729  0.01133441  0.00024831 -0.00019776  0.00302379 -0.00409561 -0.00000000

 11  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00009135 -0.00111510  0.00023943 -0.00254227  0.01190402  0.00004496 -0.00006018  0.00000017

 12  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000267
                               -0.02307921  0.51133172  0.00894735 -0.46264609 -0.09855197 -0.00005897  0.00007752 -0.06939396

 13  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000205
                               -0.01729712  0.36376259 -0.01218070  0.65004830  0.13887126  0.00010095 -0.00009779 -0.05321549

 14  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.53422193 -0.02452754 -0.39565358 -0.00824508 -0.00023376  0.14075439  0.11506523 -0.00026400

 15  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00001376
                               -0.07953474 -0.04903047 -0.07041078  0.05933302 -0.28682490 -0.43403384 -0.34286545  0.35713478

 16  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00001328
                                0.08717978 -0.03992339  0.07054787  0.06026447 -0.27753946  0.44897948  0.35375366  0.34459243

 17  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00022465  0.00441811 -0.00004748  0.00185653  0.01203243 -0.00000626  0.00001358 -0.00000018

 18  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00038670 -0.00848826  0.00021037 -0.01202878  0.00185690 -0.00009951 -0.00023198 -0.00000007

 19  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000709 -0.00015557  0.00023610 -0.00021239  0.00002246  0.00519153  0.01306005 -0.00000000

 20  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                                0.57457685  0.02616642  0.33909311  0.00659643  0.00048895 -0.00310055 -0.00479927  0.00049834

 21  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.26262218 -0.01185650  0.74192311  0.01307022  0.00081765 -0.00474435 -0.01131081  0.00003253

 22  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000147
                               -0.02466429  0.54430525  0.00674750 -0.37110939 -0.16934564 -0.00088642  0.00032043 -0.03816702

 23  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00001046
                               -0.00034019  0.03897341  0.00229084 -0.11832051  0.25859489  0.54457956 -0.21627998  0.27136682

 24  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00001076
                                0.00132533 -0.03929849 -0.00138407  0.12112799 -0.26626502  0.52762041 -0.20996754 -0.27930250

 25  1     1    1  |0 0>       -0.00000000  0.00000001 -0.00003083  0.02954503  0.01001445 -0.00100828  0.00236284 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1     2    1  |0 0>       -0.00000005 -0.00000000  0.03123442  0.00029437 -0.00101339  0.00099964  0.00144844  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00109793  0.00999216 -0.02963340  0.00024499  0.00074343  0.00000006
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1     4    1  |0 0>       -0.00000002 -0.00000000  0.00119181 -0.00048391 -0.00058008 -0.03091958 -0.00466901  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     5    1  |0 0>        0.00000000  0.00000000  0.00125857  0.00259339  0.00009322  0.00465992 -0.03081850  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30

  1  1     1    1  |1 1>+       0.00000000 -0.00000002 -0.00000000  0.00000023 -0.00000002 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000008  0.00000000  0.00000004 -0.00000001 -0.00000020  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00888556  0.00012207  0.56698537  0.00790734  0.11720988  0.00016014
                               -0.00000000 -0.00000000 -0.00000026 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.08522406 -0.00048273 -0.01616507 -0.00163434 -0.01836027 -0.00055551
                                0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00044473 -0.10297261 -0.00018419  0.11088071 -0.00708367  0.56540674
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.40302794  0.36438068  0.07454759 -0.35944303 -0.30122895  0.08132777
                                0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.39036065 -0.37430460  0.07255591  0.32888516 -0.33816151 -0.08333982
                                0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000

  9  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00000001 -0.00000000 -0.00000003

 10  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000003  0.00000000 -0.00000003  0.00000000 -0.00000001

 11  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000002  0.00000000 -0.00000011 -0.00000000 -0.00000003 -0.00000000

 12  1     4    1  |1 0>        0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000
                                0.53713832  0.00054817  0.08382698 -0.03103648 -0.45718511  0.00017422

 13  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000  0.00000000
                                0.53922762 -0.00100911 -0.08171436  0.02337277  0.34948967  0.00018776

 14  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00058992  0.33998047 -0.00070519  0.62327105 -0.04109027 -0.13529848

 15  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000017  0.00000000  0.00000000 -0.00000000
                                0.04697618  0.06096893  0.37502399  0.10315737  0.06312780  0.39036895

 16  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000017  0.00000000  0.00000000  0.00000000
                                0.04543311 -0.06267599  0.36425612 -0.09648908  0.07427418 -0.40324146

 17  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000011 -0.00000000 -0.00000005  0.00000000

 18  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000003  0.00000000 -0.00000006  0.00000000  0.00000007 -0.00000000

 19  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000002

 20  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00087708  0.65785445 -0.00042320  0.34696139 -0.02195208 -0.01639752

 21  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00033194 -0.40043158  0.00007921  0.46694360 -0.03136248  0.00589739

 22  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.30514275 -0.00045868  0.00516249  0.04377454  0.66093455 -0.00049662

 23  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000020 -0.00000000 -0.00000000 -0.00000000
                               -0.02419821  0.00895632 -0.42957360  0.00285007  0.00823605  0.41374415

 24  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000020  0.00000000  0.00000000 -0.00000000
                                0.02430926  0.00934318  0.44255397  0.00217655 -0.00795210  0.40245458

 25  1     1    1  |0 0>       -0.00000010  0.00000000  0.00000005 -0.00000005 -0.00000057  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 26  1     2    1  |0 0>        0.00000000  0.00000008  0.00000001 -0.00000054  0.00000005  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000055  0.00000002  0.00000005  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000002 -0.00000002
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     5    1  |0 0>       -0.00000001  0.00000001  0.00000002 -0.00000005 -0.00000004 -0.00000004
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         4.06%   43.63%    0.03%    0.00%    4.88%    3.21%   38.64%    0.00%
  2  1     2    1  |1 1>+        28.02%    6.33%    0.00%    0.01%   33.83%   17.87%    6.18%    0.00%
  3  1     3    1  |1 1>+         0.01%    0.00%   17.52%   32.46%    0.01%    0.01%    0.00%    0.01%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.03%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  9  1     1    1  |1 0>         28.03%    6.33%    0.00%    0.00%   43.89%    8.70%    5.30%    0.00%
 10  1     2    1  |1 0>          4.06%   43.66%    0.00%    0.00%    6.33%    0.88%   39.51%    0.01%
 11  1     3    1  |1 0>          0.00%    0.00%   32.47%   17.52%    0.00%    0.00%    0.01%   44.82%
 12  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     6    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 15  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.01%
 16  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.01%
 17  1     1    1  |1 1>-         0.00%    0.03%   46.41%    3.55%    0.00%    0.00%    0.00%   39.67%
 18  1     2    1  |1 1>-         0.01%    0.00%    3.55%   46.43%    0.00%    0.03%    0.00%    5.16%
 19  1     3    1  |1 1>-        32.09%    0.00%    0.00%    0.02%    0.75%   58.97%    0.04%    0.01%
 20  1     4    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 21  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
 22  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%
 24  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%
 25  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.03%    0.00%    0.18%
 26  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.10%   10.14%    0.01%
 27  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%   10.05%
 28  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.58%    3.63%    0.04%    0.00%
 29  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.62%    6.48%    0.06%    0.00%
 30  1     6    1  |0 0>          3.71%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%    0.00%    4.56%    0.00%    0.47%    0.32%    0.16%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.00%    0.57%    0.01%    3.20%    2.86%    1.08%    0.00%
  3  1     3    1  |1 1>+        44.81%    0.07%    0.00%    5.06%    0.01%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.35%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.10%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.02%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.22%
  8  1     8    1  |1 1>+         0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.19%
  9  1     1    1  |1 0>          0.00%    0.00%    0.69%    0.01%    5.47%    0.48%    1.08%    0.00%
 10  1     2    1  |1 0>          0.00%    0.00%    4.45%    0.00%    0.80%    0.11%    0.16%    0.00%
 11  1     3    1  |1 0>          0.01%    5.07%    0.00%    0.07%    0.00%    0.00%    0.00%    0.01%
 12  1     4    1  |1 0>          0.02%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.35%
 13  1     5    1  |1 0>          0.03%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.18%
 14  1     6    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%   15.29%
 16  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%   14.30%
 17  1     1    1  |1 1>-         5.17%    4.04%    0.01%    1.09%    0.00%    0.00%    0.00%    0.01%
 18  1     2    1  |1 1>-        39.65%    1.10%    0.00%    4.05%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 1>-         0.02%    0.00%    0.01%    0.00%    0.34%    6.51%    1.24%    0.00%
 20  1     4    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 1>-         0.01%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.31%
 23  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%   14.36%
 24  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%   15.33%
 25  1     1    1  |0 0>          9.98%    0.00%    0.00%   89.38%    0.19%    0.08%    0.00%    0.00%
 26  1     2    1  |0 0>          0.00%    0.00%   89.49%    0.00%    0.00%    0.16%    0.00%    0.00%
 27  1     3    1  |0 0>          0.18%   89.64%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 28  1     4    1  |0 0>          0.00%    0.00%    0.07%    0.01%   47.57%   42.00%    0.00%    0.00%
 29  1     5    1  |0 0>          0.08%    0.01%    0.09%    0.26%   41.89%   47.41%    0.00%    0.00%
 30  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.29%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.01%    0.00%    2.90%   63.08%    0.00%    0.00%    0.04%
  5  1     5    1  |1 1>+         0.00%    0.53%    0.00%    0.03%    0.57%    0.00%    0.00%   58.97%
  6  1     6    1  |1 1>+         1.39%    0.00%    0.59%    0.00%    0.00%    1.32%   62.35%    0.00%
  7  1     7    1  |1 1>+        15.18%   13.92%    7.48%    8.50%    0.39%    0.04%    1.38%    0.15%
  8  1     8    1  |1 1>+        13.42%   15.67%    8.59%    7.41%    0.35%    0.04%    1.44%    0.14%
  9  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%
 10  1     2    1  |1 0>          0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 12  1     4    1  |1 0>          0.05%   26.15%    0.01%   21.40%    0.97%    0.00%    0.00%    0.48%
 13  1     5    1  |1 0>          0.03%   13.23%    0.01%   42.26%    1.93%    0.00%    0.00%    0.28%
 14  1     6    1  |1 0>         28.54%    0.06%   15.65%    0.01%    0.00%    1.98%    1.32%    0.00%
 15  1     7    1  |1 0>          0.63%    0.24%    0.50%    0.35%    8.23%   18.84%   11.76%   12.75%
 16  1     8    1  |1 0>          0.76%    0.16%    0.50%    0.36%    7.70%   20.16%   12.51%   11.87%
 17  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 18  1     2    1  |1 1>-         0.00%    0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 20  1     4    1  |1 1>-        33.01%    0.07%   11.50%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 1>-         6.90%    0.01%   55.04%    0.02%    0.00%    0.00%    0.01%    0.00%
 22  1     6    1  |1 1>-         0.06%   29.63%    0.00%   13.77%    2.87%    0.00%    0.00%    0.15%
 23  1     7    1  |1 1>-         0.00%    0.15%    0.00%    1.40%    6.69%   29.66%    4.68%    7.36%
 24  1     8    1  |1 1>-         0.00%    0.15%    0.00%    1.47%    7.09%   27.84%    4.41%    7.80%
 25  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.09%    0.01%    0.00%    0.00%    0.00%
 26  1     2    1  |0 0>          0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.09%    0.00%    0.00%    0.00%
 28  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
 29  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%
 30  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.01%    0.00%   32.15%    0.01%    1.37%    0.00%
  5  1     5    1  |1 1>+         0.73%    0.00%    0.03%    0.00%    0.03%    0.00%
  6  1     6    1  |1 1>+         0.00%    1.06%    0.00%    1.23%    0.01%   31.97%
  7  1     7    1  |1 1>+        16.24%   13.28%    0.56%   12.92%    9.07%    0.66%
  8  1     8    1  |1 1>+        15.24%   14.01%    0.53%   10.82%   11.44%    0.69%
  9  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     4    1  |1 0>         28.85%    0.00%    0.70%    0.10%   20.90%    0.00%
 13  1     5    1  |1 0>         29.08%    0.00%    0.67%    0.05%   12.21%    0.00%
 14  1     6    1  |1 0>          0.00%   11.56%    0.00%   38.85%    0.17%    1.83%
 15  1     7    1  |1 0>          0.22%    0.37%   14.06%    1.06%    0.40%   15.24%
 16  1     8    1  |1 0>          0.21%    0.39%   13.27%    0.93%    0.55%   16.26%
 17  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 1>-         0.00%   43.28%    0.00%   12.04%    0.05%    0.03%
 21  1     5    1  |1 1>-         0.00%   16.03%    0.00%   21.80%    0.10%    0.00%
 22  1     6    1  |1 1>-         9.31%    0.00%    0.00%    0.19%   43.68%    0.00%
 23  1     7    1  |1 1>-         0.06%    0.01%   18.45%    0.00%    0.01%   17.12%
 24  1     8    1  |1 1>-         0.06%    0.01%   19.59%    0.00%    0.01%   16.20%
 25  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%


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

              2       7      581.41       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     24315.70  22192.92     14.46    583.15   1520.68      2.39      0.27      1.60
 REAL TIME  *     24593.79 SEC
 DISK USED  *       642.79 MB (local),        8.23 GB (total)
 SF USED    *         4.10 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK3 energy=  -6174.216754723103

              CI              CI           MULTI         RHF-SCF
  -6174.30132919  -6174.17417598  -6173.66746371  -6172.96982975
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
