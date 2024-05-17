
 Working directory              : /wrk/irikura/molpro.XbCEffnZZs/
 Global scratch directory       : /wrk/irikura/molpro.XbCEffnZZs/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.XbCEffnZZs/

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
 
 NTRIP=3
 NSING=6
 
 {multi
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-May-24          TIME: 10:21:03  
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

     Node minimum: 1.049 MB, node maximum: 3.408 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     760824.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     760824      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    18047686. AND WROTE      147789. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1830907. AND WROTE     9150625. INTEGRALS IN     48 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

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
 CPU TIMES  *         1.85      1.65
 REAL TIME  *         2.49 SEC
 DISK USED  *        29.63 MB (local),      414.05 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  14  10

 NELEC=   48   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -6084.60505383   -6084.60505383     0.00D+00     0.14D+01     0     0       0.00      0.01    start
   2    -6119.20741328     -34.60235945     0.54D+00     0.14D+01     1     0       0.01      0.02    diag
   3    -6169.62499606     -50.41758278     0.47D+00     0.21D+00     2     0       0.00      0.02    diag
   4    -6172.72281971      -3.09782364     0.11D+00     0.18D+00     3     0       0.01      0.03    diag
   5    -6172.96793577      -0.24511607     0.32D-01     0.27D-01     4     0       0.00      0.03    diag
   6    -6172.96981376      -0.00187799     0.24D-02     0.53D-02     5     0       0.01      0.04    diag
   7    -6172.96982923      -0.00001547     0.16D-03     0.23D-03     6     0       0.00      0.04    diag
   8    -6172.96982972      -0.00000049     0.41D-04     0.31D-04     7     0       0.01      0.05    fixocc
   9    -6172.96982975      -0.00000004     0.46D-05     0.18D-04     8     0       0.00      0.05    diag
  10    -6172.96982975      -0.00000000     0.27D-06     0.63D-06     9     0       0.01      0.06    diag/orth
  11    -6172.96982975      -0.00000000     0.11D-07     0.41D-07     0     0       0.00      0.06    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -6172.969829754520
  RHF One-electron energy           -8458.981645823558
  RHF Two-electron energy            2286.011816069038
  RHF Kinetic energy                 7123.758090708178
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
    5.1     2.00000   -19.53200     1  1  d1+  0.34007    1  1  d1-  0.94035
    6.1     2.00000   -19.53200     1  1  d1+  0.94035    1  1  d1- -0.34007
    7.1     2.00000   -19.53200     1  1  d2-  0.97113
    8.1     2.00000   -19.53200     1  1  d2+  0.97113
    9.1     2.00000    -6.52363     1  4  s    1.09168
   10.1     2.00000    -1.94645     1  2  d1-  0.99072
   11.1     2.00000    -1.94645     1  2  d1+  0.99071
   12.1     2.00000    -1.94645     1  2  d0   1.00444
   13.1     2.00000    -1.94645     1  2  d2-  0.97552
   14.1     2.00000    -1.94645     1  2  d2+  0.97553
   15.1     2.00000    -1.05761     1  5  s    1.09341
    1.2     2.00000  -149.69231     1  1  pz   0.99999
    2.2     2.00000  -149.69231     1  1  px   0.87868    1  1  py   0.47738
    3.2     2.00000  -149.69231     1  1  px  -0.47738    1  1  py   0.87868
    4.2     2.00000   -28.42265     1  2  pz   1.00016
    5.2     2.00000   -28.42265     1  2  px   0.34850    1  2  py   0.93748
    6.2     2.00000   -28.42265     1  2  px   0.93748    1  2  py  -0.34850
    7.2     2.00000    -4.68852     1  3  pz   0.99711
    8.2     2.00000    -4.68852     1  3  px   0.31917    1  3  py   0.94465
    9.2     2.00000    -4.68852     1  3  px   0.94465    1  3  py  -0.31917


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
 CPU TIMES  *         1.95      0.09      1.65
 REAL TIME  *         3.44 SEC
 DISK USED  *        30.26 MB (local),      421.70 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.213D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.268D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.266D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.200D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.151D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.149D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.200D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.198D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 6   4 2 3 5 1 1 2 6 4 3   5 1 2 6 4 3 5 1 2 6   4 3 5 2 6 4 3 5 1 7
                                       11 912 815141310 2 6   4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.186D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.353D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.352D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.217D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.272D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.271D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.123D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.253D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.253D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.699D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 1   2 3 3 2 1 3 2 1 6 5   4 810 9 7 6 5 410 8   9 7 3 2 1 6 5 4 810
                                        9 7 3 2 1 6 5 4 810   7 9 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1142  ( 41 closed/active, 933 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    1268
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -6173.66827843   -6173.70165219   -0.03337376    0.25826146 0.00000722 0.00000000  0.23E+00      0.55
   2    6   10    0  -6173.70284255   -6173.70297780   -0.00013525    0.01327310 0.00000087 0.00000000  0.18E-01      1.20
   3    4    8    0  -6173.70297821   -6173.70297821   -0.00000000    0.00005902 0.00000001 0.00000000  0.86E-04      1.73
   4    2    4    0  -6173.70297821   -6173.70297821   -0.00000000    0.00000000 0.00000000 0.00000000  0.66E-08      2.06

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.49E-08)
                       Final energy:  -6173.70297821
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -6173.729825249184
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.49092906
 One electron energy                         -8490.41803717
 Two electron energy                          2316.68821192
 Virial ratio                                    1.86655031
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -6173.729825249133
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.49092907
 One electron energy                         -8490.41803722
 Two electron energy                          2316.68821198
 Virial ratio                                    1.86655031
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -6173.729825249004
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.49092909
 One electron energy                         -8490.41803733
 Two electron energy                          2316.68821208
 Virial ratio                                    1.86655031
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -6173.694765543448
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.49092905
 One electron energy                         -8490.41803715
 Two electron energy                          2316.72327160
 Virial ratio                                    1.86654539
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -6173.694765543406
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.49092906
 One electron energy                         -8490.41803717
 Two electron energy                          2316.72327163
 Virial ratio                                    1.86654539
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -6173.694765543279
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.49092907
 One electron energy                         -8490.41803722
 Two electron energy                          2316.72327168
 Virial ratio                                    1.86654539
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -6173.694765542997
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.49092909
 One electron energy                         -8490.41803733
 Two electron energy                          2316.72327179
 Virial ratio                                    1.86654539
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -6173.694765542964
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.49092909
 One electron energy                         -8490.41803734
 Two electron energy                          2316.72327180
 Virial ratio                                    1.86654539
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -6173.663500423108
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.41435813
 One electron energy                         -8490.07854633
 Two electron energy                          2316.41504590
 Virial ratio                                    1.86655031
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999641
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000323
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999996
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.426491757926
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000029
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999986
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000212
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.573510062720
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000001798
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999681
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999998982
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.478965272712
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999999057
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000217
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000723
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.521033472887
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999998562
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999996
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000001022
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.094542969363
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000914
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.999999999798
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999999065
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.905456464393
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 3 5 2 6 1 4   5 3 2 6 1 1 4 3 5 2   6 1 4 5 3 2 6 1 4 3   5 2 6 4 3 5 2 6 1 9
                                       10131415 812 711 2 3   5 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 2   3 1 1 2 3 1 2 3 4 9   7 810 6 5 3 1 2 4 9   710 8 6 5 4 9 710 8
                                        6 5 1 2 3 4 9 7 810   6 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1078.39581     1  1  s    0.98900
    2.1     2.00000  -166.22411     1  2  s    1.07350
    3.1     2.00000   -33.55012     1  3  s    0.84455
    4.1     2.00000   -18.89320     1  1  d1+  0.99998
    5.1     2.00000   -18.89320     1  1  d2-  0.99998
    6.1     2.00000   -18.89320     1  1  d2+  0.99998
    7.1     2.00000   -18.89320     1  1  d0   0.99998
    8.1     2.00000   -18.89320     1  1  d1-  0.99998
    9.1     2.00000    -5.88646     1  4  s    1.09184
   10.1     2.00000    -1.31207     1  2  d1+  1.00017
   11.1     2.00000    -1.31207     1  2  d2+  1.00017
   12.1     2.00000    -1.31207     1  2  d2-  1.00017
   13.1     2.00000    -1.31207     1  2  d0   1.00017
   14.1     2.00000    -1.31207     1  2  d1-  1.00017
   15.1     1.96727    -0.50529     1  5  s    1.00995
    1.2     2.00000  -149.05173     1  1  px   0.99999
    2.2     2.00000  -149.05173     1  1  pz   0.99999
    3.2     2.00000  -149.05173     1  1  py   0.99999
    4.2     2.00000   -27.78483     1  2  px   1.00023
    5.2     2.00000   -27.78483     1  2  pz   1.00023
    6.2     2.00000   -27.78483     1  2  py   1.00023
    7.2     2.00000    -4.05387     1  3  px   0.99974
    8.2     2.00000    -4.05387     1  3  pz   0.99974
    9.2     2.00000    -4.05387     1  3  py   0.99974
   10.2     0.67758    -0.06973     1  4  py   0.98188
   11.2     0.67758    -0.06973     1  4  pz   0.98188
   12.2     0.67758    -0.06973     1  4  px   0.98188
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0         -0.00001884      0.99362888     -0.00000203
 2 a0a         -0.00003768      0.00000203      0.99362888
 2 0aa          0.99362888      0.00001884      0.00003768
 0 2aa         -0.11270155     -0.00000214     -0.00000427
 0 aa2          0.00000214     -0.11270155      0.00000023
 0 a2a          0.00000427     -0.00000023     -0.11270155
 
 Energy:    -6173.72982525  -6173.72982525  -6173.72982525
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.80164948     -0.00000189      0.00002443      0.00000248     -0.12472778      0.56400724
 2 200         -0.29280731     -0.00000106     -0.00002462     -0.00001416      0.75661270      0.56400726
 2 0ab          0.00000193      0.70260172      0.00000009      0.00001221      0.00000173     -0.00000000
 2 0ba         -0.00000193     -0.70260172     -0.00000009     -0.00001221     -0.00000173      0.00000000
 2 a0b         -0.00000014     -0.00001221      0.00000079      0.70260172      0.00001309      0.00000000
 2 b0a          0.00000014      0.00001221     -0.00000079     -0.70260172     -0.00001309     -0.00000000
 2 ba0          0.00001900      0.00000009     -0.70260172      0.00000079     -0.00001551     -0.00000000
 2 ab0         -0.00001900     -0.00000009      0.70260172     -0.00000079      0.00001551      0.00000000
 2 002         -0.50884216      0.00000295      0.00000019      0.00001168     -0.63188493      0.56400725
 0 202          0.09092644     -0.00000021      0.00000277      0.00000028     -0.01414715     -0.12340647
 0 220         -0.05771501      0.00000033      0.00000002      0.00000132     -0.07167103     -0.12340647
 0 022         -0.03321143     -0.00000012     -0.00000279     -0.00000161      0.08581818     -0.12340646
 0 2ba          0.00000022      0.07969203      0.00000001      0.00000138      0.00000020     -0.00000000
 0 2ab         -0.00000022     -0.07969203     -0.00000001     -0.00000138     -0.00000020      0.00000000
 0 ba2         -0.00000215     -0.00000001      0.07969203     -0.00000009      0.00000176      0.00000000
 0 ab2          0.00000215      0.00000001     -0.07969203      0.00000009     -0.00000176     -0.00000000
 0 a2b          0.00000002      0.00000138     -0.00000009     -0.07969203     -0.00000149      0.00000000
 0 b2a         -0.00000002     -0.00000138      0.00000009      0.07969203      0.00000149     -0.00000000
 
 Energy:    -6173.69476554  -6173.69476554  -6173.69476554  -6173.69476554  -6173.69476554  -6173.66350042
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.28       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.80      1.84      0.09      1.65
 REAL TIME  *         5.91 SEC
 DISK USED  *        56.19 MB (local),      732.88 MB (total)
 SF USED    *        62.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -6173.729825   2.0
    -6173.729825   2.0
    -6173.729825   2.0
    -6173.694766   6.0
    -6173.694766   6.0
    -6173.694766   6.0
    -6173.694766   6.0
    -6173.694766   6.0
    -6173.663500  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 50
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.05 sec, npass=  1  Memory used:   0.74 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -6173.72982525
     2     -6173.72982525
     3     -6173.72982525

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        120612
 Number of doubly external configurations:        802686
 Total number of contracted configurations:       923835
 Total number of uncontracted configurations:    4632525

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    451690 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.72982525    -0.00000000    -0.78542804  0.41D-01  0.10D+00     0.16
    1     2     2     1.00000000     0.00000000 -6173.72982525    -0.00000000    -0.78570134  0.42D-01  0.10D+00     0.16
    1     3     3     1.00000000     0.00000000 -6173.72982525     0.00000000    -0.78560144  0.42D-01  0.10D+00     0.16
    2     1     1     1.09028401    -0.62092807 -6174.35075331    -0.62092807    -0.01522756  0.27D-02  0.12D-02     2.62
    2     2     2     1.09044877    -0.62082778 -6174.35065303    -0.62082778    -0.01533331  0.28D-02  0.12D-02     2.62
    2     3     3     1.09052741    -0.62077691 -6174.35060216    -0.62077691    -0.01538921  0.28D-02  0.12D-02     2.62
    3     1     1     1.08194950    -0.63547455 -6174.36529980    -0.01454649    -0.00031367  0.41D-04  0.35D-04     5.11
    3     2     2     1.08194693    -0.63547130 -6174.36529654    -0.01464352    -0.00031672  0.41D-04  0.36D-04     5.11
    3     3     3     1.08194668    -0.63546871 -6174.36529396    -0.01469181    -0.00031938  0.42D-04  0.36D-04     5.11
    4     1     1     1.08207515    -0.63579563 -6174.36562087    -0.00032107    -0.00001153  0.25D-05  0.12D-05     7.57
    4     2     2     1.08207396    -0.63579558 -6174.36562083    -0.00032428    -0.00001157  0.25D-05  0.12D-05     7.57
    4     3     3     1.08207242    -0.63579545 -6174.36562070    -0.00032673    -0.00001170  0.25D-05  0.12D-05     7.57
    5     1     1     1.08214011    -0.63580794 -6174.36563319    -0.00001232    -0.00000039  0.56D-07  0.52D-07    10.08
    5     2     2     1.08213963    -0.63580794 -6174.36563319    -0.00001236    -0.00000039  0.55D-07  0.52D-07    10.08
    5     3     3     1.08213936    -0.63580794 -6174.36563319    -0.00001249    -0.00000039  0.56D-07  0.53D-07    10.08
    6     1     1     1.08214268    -0.63580835 -6174.36563360    -0.00000041    -0.00000002  0.17D-08  0.29D-08    12.60
    6     2     2     1.08214258    -0.63580835 -6174.36563360    -0.00000041    -0.00000002  0.17D-08  0.29D-08    12.60
    6     3     3     1.08214245    -0.63580835 -6174.36563360    -0.00000041    -0.00000002  0.17D-08  0.30D-08    12.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.3%   3.8%
 P   0.4%  24.8%  22.7%

 Initialization:   1.2%
 Other:           46.3%

 Total CPU:       12.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.0000000   0.9561789
 2222222222/0/           0.0000000   0.9561788  -0.0000000
 22222222220//           0.9561788  -0.0000000   0.0000000
 2222220222//2           0.0000000  -0.0000000  -0.0970774
 2222220222/2/          -0.0000000  -0.0970773   0.0000000
 22222202222//          -0.0970773   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.961028   -0.000000    0.000000
 2          -0.000000    0.000000    0.961028
 3           0.000000    0.961028   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961028   -0.000000    0.000000
 2          -0.000000    0.961028   -0.000000
 3           0.000000   -0.000000    0.961028


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96102761 (fixed)   0.96109409 (relaxed)   0.96102761 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056139   -0.00092354   -0.54449591
 Singles      0.01625379   -0.04661224   -0.05259921
 Pairs        0.06593501   -0.00000000   -0.03871323
 Total        1.08275019   -0.04753579   -0.63580835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72982525
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70897821
 One electron energy                -8489.62736391
 Two electron energy                 2315.26173031
 Virial quotient                       -0.86661303
 Correlation energy                    -0.63580835
 !MRCI STATE 1.1 Energy             -6174.365633600664

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41824686 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41815163 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41824686 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41630668 (Pople, fixed reference)
 Cluster corrected energies         -6174.41620861 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41630668 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96102766 (fixed)   0.96109414 (relaxed)   0.96102766 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056139   -0.00092354   -0.00118262
 Singles      0.01625366   -0.04661216   -0.05259915
 Pairs        0.06593504   -0.58827265   -0.58202659
 Total        1.08275009   -0.63580835   -0.63580835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72982525
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70899420
 One electron energy                -8489.62738456
 Two electron energy                 2315.26175096
 Virial quotient                       -0.86661303
 Correlation energy                    -0.63580835
 !MRCI STATE 2.1 Energy             -6174.365633600632

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41824680 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41815156 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41824680 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41630662 (Pople, fixed reference)
 Cluster corrected energies         -6174.41620854 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41630662 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96102772 (fixed)   0.96109419 (relaxed)   0.96102772 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00056139   -0.00092354   -0.54449614
 Singles      0.01625357   -0.04661211   -0.05259909
 Pairs        0.06593500    0.00000000   -0.03871312
 Total        1.08274995   -0.04753565   -0.63580835
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.72982525
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70896146
 One electron energy                -8489.62734224
 Two electron energy                 2315.26170864
 Virial quotient                       -0.86661303
 Correlation energy                    -0.63580835
 !MRCI STATE 3.1 Energy             -6174.365633600421

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41824671 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41815148 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41824671 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41630653 (Pople, fixed reference)
 Cluster corrected energies         -6174.41620846 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41630653 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.28       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.58       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.87     13.06      1.84      0.09      1.65
 REAL TIME  *        20.65 SEC
 DISK USED  *        77.96 MB (local),      994.09 MB (total)
 SF USED    *       241.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -6174.41824686  AU                              
 SETTING HLSDIAG(2)     =     -6174.41824680  AU                              
 SETTING HLSDIAG(3)     =     -6174.41824671  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 50
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -6173.69476554
     2     -6173.69476554
     3     -6173.69476554
     4     -6173.69476554
     5     -6173.69476554
     6     -6173.66350042

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.26D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         86093
 Number of doubly external configurations:       1360738
 Total number of contracted configurations:      1447281
 Total number of uncontracted configurations:    3590838

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    506062 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.69476554    -0.00000000    -0.79323663  0.46D-01  0.11D+00     0.22
    1     2     2     1.00000000     0.00000000 -6173.69476554    -0.00000000    -0.79422394  0.48D-01  0.11D+00     0.22
    1     3     3     1.00000000     0.00000000 -6173.69476554     0.00000000    -0.79384507  0.47D-01  0.11D+00     0.22
    1     4     4     1.00000000     0.00000000 -6173.69476554    -0.00000000    -0.79365869  0.47D-01  0.11D+00     0.22
    1     5     5     1.00000000     0.00000000 -6173.69476554    -0.00000000    -0.79301238  0.46D-01  0.11D+00     0.22
    1     6     6     1.00000000     0.00000000 -6173.66350042    -0.00000000    -0.77725769  0.19D-01  0.12D+00     0.22
    2     1     1     1.09511566    -0.62618263 -6174.32094817    -0.62618263    -0.01637412  0.30D-02  0.15D-02     8.49
    2     2     2     1.09506177    -0.62614781 -6174.32091335    -0.62614781    -0.01642276  0.30D-02  0.15D-02     8.49
    2     3     3     1.09538278    -0.62594773 -6174.32071328    -0.62594773    -0.01666136  0.31D-02  0.15D-02     8.49
    2     4     4     1.09546049    -0.62587985 -6174.32064539    -0.62587985    -0.01674212  0.32D-02  0.15D-02     8.49
    2     5     5     1.09573036    -0.62577431 -6174.32053986    -0.62577431    -0.01685844  0.32D-02  0.15D-02     8.49
    2     6     6     1.09008775    -0.62247879 -6174.28597922    -0.62247879    -0.01377268  0.23D-02  0.15D-02     8.49
    3     1     1     1.08616849    -0.64154791 -6174.33631345    -0.01536528    -0.00040595  0.51D-04  0.52D-04    16.87
    3     2     2     1.08614674    -0.64154704 -6174.33631259    -0.01539924    -0.00040619  0.52D-04  0.52D-04    16.87
    3     3     3     1.08618057    -0.64153972 -6174.33630526    -0.01559198    -0.00041515  0.53D-04  0.53D-04    16.87
    3     4     4     1.08617879    -0.64153841 -6174.33630395    -0.01565856    -0.00041613  0.53D-04  0.53D-04    16.87
    3     5     5     1.08620933    -0.64153168 -6174.33629723    -0.01575737    -0.00042338  0.54D-04  0.55D-04    16.87
    3     6     6     1.08375599    -0.63575243 -6174.29925286    -0.01327364    -0.00033472  0.37D-04  0.53D-04    16.87
    4     1     1     1.08622277    -0.64195913 -6174.33672468    -0.00041122    -0.00001715  0.38D-05  0.18D-05    25.16
    4     2     2     1.08622260    -0.64195912 -6174.33672466    -0.00041208    -0.00001709  0.38D-05  0.18D-05    25.16
    4     3     3     1.08622532    -0.64195908 -6174.33672462    -0.00041936    -0.00001721  0.38D-05  0.19D-05    25.16
    4     4     4     1.08622427    -0.64195902 -6174.33672456    -0.00042061    -0.00001721  0.38D-05  0.18D-05    25.16
    4     5     5     1.08622596    -0.64195880 -6174.33672434    -0.00042712    -0.00001747  0.38D-05  0.19D-05    25.16
    4     6     6     1.08379900    -0.63609521 -6174.29959563    -0.00034278    -0.00001613  0.39D-05  0.20D-05    25.16
    5     1     1     1.08623750    -0.64197809 -6174.33674363    -0.00001896    -0.00000058  0.97D-07  0.73D-07    33.54
    5     2     2     1.08623823    -0.64197809 -6174.33674363    -0.00001897    -0.00000058  0.97D-07  0.73D-07    33.54
    5     3     3     1.08623890    -0.64197808 -6174.33674362    -0.00001900    -0.00000058  0.94D-07  0.73D-07    33.54
    5     4     4     1.08623734    -0.64197808 -6174.33674362    -0.00001906    -0.00000059  0.10D-06  0.74D-07    33.54
    5     5     5     1.08623905    -0.64197807 -6174.33674361    -0.00001927    -0.00000059  0.97D-07  0.75D-07    33.54
    5     6     6     1.08384723    -0.63611300 -6174.29961343    -0.00001779    -0.00000060  0.98D-07  0.87D-07    33.54
    6     1     1     1.08622526    -0.64197870 -6174.33674424    -0.00000061    -0.00000002  0.22D-08  0.30D-08    41.86
    6     2     2     1.08622545    -0.64197870 -6174.33674424    -0.00000061    -0.00000002  0.22D-08  0.30D-08    41.86
    6     3     3     1.08622506    -0.64197870 -6174.33674424    -0.00000062    -0.00000002  0.22D-08  0.30D-08    41.86
    6     4     4     1.08622542    -0.64197870 -6174.33674424    -0.00000062    -0.00000002  0.25D-08  0.29D-08    41.86
    6     5     5     1.08622557    -0.64197870 -6174.33674424    -0.00000063    -0.00000002  0.25D-08  0.30D-08    41.86
    6     6     6     1.08382668    -0.63611365 -6174.29961408    -0.00000065    -0.00000002  0.43D-08  0.36D-08    41.86


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%   1.6%
 P   0.3%  16.1%  29.0%

 Initialization:   0.4%
 Other:           52.2%

 Total CPU:       41.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\          -0.0000000   0.0000000   0.9542907  -0.0000000   0.0000000   0.0000000
 2222222222/\0           0.9542906   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 2222222222/0\          -0.0000000   0.9542906  -0.0000000  -0.0000000   0.0000000   0.0000000
 2222222222020          -0.0000000  -0.0000000   0.0000000   0.7595623  -0.1737210   0.5439985
 2222222222002           0.0000000  -0.0000000  -0.0000000  -0.2293341   0.7446607   0.5439984
 2222222222200          -0.0000000  -0.0000000   0.0000000  -0.5302279  -0.5709395   0.5439983
 2222220222022           0.0000000   0.0000000   0.0000000  -0.0537841  -0.0579135  -0.1070625
 2222220222202           0.0000000   0.0000000   0.0000000   0.0770465  -0.0176212  -0.1070624
 2222220222220           0.0000000   0.0000000  -0.0000000  -0.0232624   0.0755351  -0.1070622
 2222220222/\2          -0.0967996  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220222/2\           0.0000000  -0.0967994   0.0000000   0.0000000  -0.0000000  -0.0000000
 22222202222/\           0.0000000  -0.0000000  -0.0967993   0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.959120   -0.000000   -0.000000   -0.000000
 2           0.000000    0.000000    0.000000    0.959120    0.000000   -0.000000
 3           0.000000    0.959120    0.000000   -0.000000    0.000000   -0.000000
 4           0.891023   -0.000000    0.000000   -0.000000   -0.354949    0.000000
 5          -0.354949    0.000000   -0.000000    0.000000   -0.891023    0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.960094

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959120   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.959120    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.959120   -0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.959120   -0.000000    0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.959120    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.960094


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95912019 (fixed)   0.95918754 (relaxed)   0.95912019 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076945   -0.00134087   -0.54458227
 Singles      0.01887080   -0.05047850   -0.05758521
 Pairs        0.06742080    0.00000000   -0.03981122
 Total        1.08706105   -0.05181937   -0.64197870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69476554
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70780510
 One electron energy                -8489.53448874
 Two electron energy                 2315.19774450
 Virial quotient                       -0.86660912
 Correlation energy                    -0.64197870
 !MRCI STATE 1.1 Energy             -6174.336744240249

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39263558 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39253757 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39263558 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39141177 (Pople, fixed reference)
 Cluster corrected energies         -6174.39130872 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39141177 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95912010 (fixed)   0.95918746 (relaxed)   0.95912010 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076945   -0.00134087   -0.54458223
 Singles      0.01887087   -0.05047844   -0.05758523
 Pairs        0.06742092    0.00000000   -0.03981124
 Total        1.08706125   -0.05181931   -0.64197870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69476554
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70780211
 One electron energy                -8489.53449134
 Two electron energy                 2315.19774710
 Virial quotient                       -0.86660912
 Correlation energy                    -0.64197870
 !MRCI STATE 2.1 Energy             -6174.336744240103

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39263571 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39253769 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39263571 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39141190 (Pople, fixed reference)
 Cluster corrected energies         -6174.39130885 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39141190 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95912027 (fixed)   0.95918763 (relaxed)   0.95912027 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076946   -0.00134087   -0.54458257
 Singles      0.01887060   -0.05047827   -0.05758509
 Pairs        0.06742080    0.00000000   -0.03981103
 Total        1.08706086   -0.05181915   -0.64197870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69476554
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70774201
 One electron energy                -8489.53441233
 Two electron energy                 2315.19766810
 Virial quotient                       -0.86660913
 Correlation energy                    -0.64197870
 !MRCI STATE 3.1 Energy             -6174.336744239930

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39263546 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39253744 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39263546 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39141164 (Pople, fixed reference)
 Cluster corrected energies         -6174.39130858 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39141164 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.89102344 (fixed)   0.95918747 (relaxed)   0.95912010 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076947   -0.00134088   -0.54458223
 Singles      0.01887092   -0.05047835   -0.05758515
 Pairs        0.06742085   -0.00000010   -0.03981133
 Total        1.08706124   -0.05181933   -0.64197870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69476554
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70762757
 One electron energy                -8489.53416486
 Two electron energy                 2315.19742062
 Virial quotient                       -0.86660914
 Correlation energy                    -0.64197870
 !MRCI STATE 4.1 Energy             -6174.336744239781

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39263570 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39253768 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39263570 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39141190 (Pople, fixed reference)
 Cluster corrected energies         -6174.39130883 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39141190 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.89102338 (fixed)   0.95918740 (relaxed)   0.95912004 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00076947   -0.00134088   -0.54458212
 Singles      0.01887099   -0.05047840   -0.05758518
 Pairs        0.06742093   -0.00000009   -0.03981140
 Total        1.08706139   -0.05181936   -0.64197870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.69476554
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70759590
 One electron energy                -8489.53413233
 Two electron energy                 2315.19738809
 Virial quotient                       -0.86660914
 Correlation energy                    -0.64197870
 !MRCI STATE 5.1 Energy             -6174.336744239169

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39263580 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39253778 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39263580 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39141200 (Pople, fixed reference)
 Cluster corrected energies         -6174.39130893 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39141200 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96009368 (fixed)   0.96030714 (relaxed)   0.96009368 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00095129   -0.00107781   -0.00155129
 Singles      0.00894410   -0.03263929   -0.03533101
 Pairs        0.07496233   -0.60239656   -0.59923135
 Total        1.08485771   -0.63611365   -0.63611365
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.66350042
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.66889285
 One electron energy                -8489.21352997
 Two electron energy                 2314.91391589
 Virial quotient                       -0.86660864
 Correlation energy                    -0.63611365
 !MRCI STATE 6.1 Energy             -6174.299614076153

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.35359322 (Davidson, fixed reference)
 Cluster corrected energies         -6174.35328646 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.35359322 (Davidson, rotated reference)

 Cluster corrected energies         -6174.35231105 (Pople, fixed reference)
 Cluster corrected energies         -6174.35198980 (Pople, relaxed reference)
 Cluster corrected energies         -6174.35231105 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.28       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.67       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        61.12     44.24     13.06      1.84      0.09      1.65
 REAL TIME  *        70.69 SEC
 DISK USED  *       145.05 MB (local),        1.76 GB (total)
 SF USED    *       709.14 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -6174.39263558  AU                              
 SETTING HLSDIAG(5)     =     -6174.39263571  AU                              
 SETTING HLSDIAG(6)     =     -6174.39263546  AU                              
 SETTING HLSDIAG(7)     =     -6174.39263570  AU                              
 SETTING HLSDIAG(8)     =     -6174.39263580  AU                              
 SETTING HLSDIAG(9)     =     -6174.35359322  AU                              


         HLSDIAG
    -6174.418247
    -6174.418247
    -6174.418247
    -6174.392636
    -6174.392636
    -6174.392635
    -6174.392636
    -6174.392636
    -6174.353593
                                                  

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

 Time for Seward_LS:      14.35 sec

       10316388. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2701 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     14.36 sec, REAL time:     14.49 sec


 SORTLS1 read    11044077. and wrote    11044077. SO integrals in    72 records. CPU time:      0.11 sec, REAL time:      0.18 sec
 SORTLS2 read    11044077. and wrote    53911550. SO integrals in    36 records. CPU time:      0.06 sec, REAL time:      0.09 sec

 FILE SIZES: FILE 1:   235.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   235.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      224.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.67       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        76.27     15.13     44.24     13.06      1.84      0.09      1.65
 REAL TIME  *        86.11 SEC
 DISK USED  *       145.12 MB (local),        2.39 GB (total)
 SF USED    *       709.14 MB
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
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:  -6174.365634  -6174.365634  -6174.365634
 Replaced energies:  -6174.418247  -6174.418247  -6174.418247

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -6174.336744  -6174.336744  -6174.336744  -6174.336744  -6174.336744  -6174.299614
 Replaced energies:  -6174.392636  -6174.392636  -6174.392635  -6174.392636  -6174.392636  -6174.353593



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -6174.41824686

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00    1208.01      -0.00     854.19      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00      -0.00     854.19       0.00       0.00       0.00     850.22
                           -0.00       0.00      -0.00    -854.19       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.03      -0.00    -854.19       0.00       0.00       0.00       0.00       0.00
                        -1208.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00     854.19      -0.00       0.00       0.00       0.00      -0.00     854.19      -0.00    1202.39

    5   2.1  1.0  0.0       0.00      -0.00    -854.19       0.00       0.01       0.00      -0.00      -0.00     854.19       0.00
                         -854.19      -0.00      -0.00      -0.00       0.00       0.00    -854.19       0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00     854.19       0.00       0.00       0.00       0.03      -0.00    -854.19       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     854.19      -0.00       0.00      -0.00   -1208.01      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00    -854.19       0.00       0.01       0.00     850.22
                           -0.00      -0.00      -0.00    -854.19      -0.00      -0.00       0.00      -0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00     854.19       0.00       0.00       0.00       0.03       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00    1208.01      -0.00       0.00       0.00

   10   1.1  0.0  0.0      -0.00     850.22       0.00       0.00       0.00       0.00      -0.00     850.22       0.00    5621.03
                           -0.00       0.00       0.00   -1202.39       0.00       0.00       0.00      -0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00       0.00    -850.22       0.00       0.00       0.00      -0.00       0.00    -850.22       0.00
                          850.21      -0.00       0.00      -0.00       0.00      -0.00    -850.21       0.00      -0.00      -0.00

   12   3.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00    -850.21      -0.00      -0.00       0.00   -1202.39       0.00     850.21       0.00      -0.00

   13   4.1  0.0  0.0     668.09       0.00       0.00       0.00       0.00       0.00     668.09       0.00       0.00       0.00
                            0.00       0.00    -288.96      -0.00    1353.46       0.00      -0.00      -0.00     288.96      -0.00

   14   5.1  0.0  0.0     719.38      -0.00      -0.00       0.00       0.00       0.00     719.38      -0.00      -0.00       0.00
                            0.00      -0.00     938.27       0.00    -309.55      -0.00      -0.00       0.00    -938.27      -0.00

   15   6.1  0.0  0.0    1410.90       0.00      -0.00       0.00       0.00       0.00    1410.90       0.00      -0.00       0.00
                            0.00      -0.00   -1410.90      -0.00   -1995.31      -0.00      -0.00       0.00    1410.90      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00      -0.00     668.09     719.38    1410.90
                         -850.21       0.00      -0.00      -0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00
                            0.00     850.21      -0.00       0.00       0.00

    3   3.1  1.0  1.0    -850.22       0.00       0.00      -0.00      -0.00
                           -0.00       0.00     288.96    -938.27    1410.90

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1353.46     309.55    1995.31

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00    1202.39      -0.00       0.00       0.00

    7   1.1  1.0 -1.0      -0.00      -0.00     668.09     719.38    1410.90
                          850.21      -0.00       0.00       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00
                           -0.00    -850.21       0.00      -0.00      -0.00

    9   3.1  1.0 -1.0    -850.22       0.00       0.00      -0.00      -0.00
                            0.00      -0.00    -288.96     938.27   -1410.90

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5621.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5621.05       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5621.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5620.98       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   14189.83
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -6174.41824686 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1208.005      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.014       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000   -1208.005       0.000      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.033       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   -1208.006       0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000    1208.005      -0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.014       0.000       0.000       0.000
                            -1208.005       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.033       0.000    1208.007
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    1208.006      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    1208.007       0.000       0.014
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000   -1208.007       0.000       0.000       0.000
                            -1208.006       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000    1202.388       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1202.386       0.000       0.000      -0.000       0.000

    2    1  |0 0>              -0.000       0.000   -1202.389       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000    1202.385      -0.000

    3    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000   -1202.386      -0.000   -1202.381

    4    1  |0 0>             944.820       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    1353.465       0.000       0.000       0.000

    5    1  |0 0>            1017.358      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -309.550      -0.000       0.000      -0.000

    6    1  |0 0>            1995.313       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1995.306      -0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000     944.820    1017.358    1995.313
                             1208.006       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    1202.388       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000   -1202.389       0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1202.386       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>           -1208.007       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000   -1353.465     309.550    1995.306

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    1202.386      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -1202.385       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    1202.381      -0.000       0.000       0.000

    3    1  |1 1>-              0.033       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     408.650   -1326.915    1995.308

    1    1  |0 0>               0.000    5621.026       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5620.999       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5621.053       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5621.000       0.000       0.000
                             -408.650      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5620.979       0.000
                             1326.915      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14189.834
                            -1995.308      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -6174.43240127    -0.01415441    -3106.53      0.00000000        0.00      0.0000
    2 -6174.42375091    -0.00550404    -1208.00      0.00865036     1898.53      0.2354
    3 -6174.42375087    -0.00550401    -1207.99      0.00865040     1898.54      0.2354
    4 -6174.42375084    -0.00550398    -1207.98      0.00865043     1898.55      0.2354
    5 -6174.41538185     0.00286501      628.80      0.01701941     3735.33      0.4631
    6 -6174.41538177     0.00286510      628.82      0.01701950     3735.35      0.4631
    7 -6174.41538176     0.00286511      628.82      0.01701951     3735.35      0.4631
    8 -6174.41538173     0.00286513      628.82      0.01701953     3735.36      0.4631
    9 -6174.41538166     0.00286520      628.84      0.01701960     3735.37      0.4631
   10 -6174.38999670     0.02825016     6200.19      0.04240457     9306.73      1.1539
   11 -6174.38999668     0.02825018     6200.20      0.04240459     9306.73      1.1539
   12 -6174.38999661     0.02825025     6200.21      0.04240466     9306.75      1.1539
   13 -6174.38999657     0.02825029     6200.22      0.04240470     9306.76      1.1539
   14 -6174.38999647     0.02825040     6200.25      0.04240480     9306.78      1.1539
   15 -6174.35044691     0.06779995    14880.37      0.08195436    17986.90      2.2301

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.56616157 -0.00000000  0.00000000 -0.00000000  0.75120972  0.00000001 -0.18176913 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.70710393 -0.00000000 -0.00000000 -0.00000000  0.66934537  0.00000005 -0.00000000
                          -0.00000000 -0.00076926 -0.00000000  0.00000000 -0.00000000 -0.00084910 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.70710121 -0.00000001  0.00000000  0.00000000 -0.00000000  0.66934564
                           0.00000000 -0.00000000 -0.00002673  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00199555

   1    1  |1 0>          -0.00000000 -0.00076927 -0.00000000  0.00000000  0.00000000  0.00084909  0.00000000 -0.00000000
                          -0.00000000  0.70710879  0.00000000  0.00000000 -0.00000000  0.66934045  0.00000005 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.56615912 -0.00000000  0.00000000 -0.00000000 -0.53302494  0.00000004 -0.55968167  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000279  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.70710381 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00002673  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00199552
                           0.00000000 -0.00000000  0.70711235  0.00000001  0.00000000  0.00000000 -0.00000000  0.66933440

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000279  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000001  0.70710975 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.56615710  0.00000000  0.00000000 -0.00000000 -0.21818904 -0.00000005  0.74145400  0.00000000

   1    1  |0 0>           0.00000000 -0.00000069 -0.00000000 -0.00000000  0.00000000 -0.32242602 -0.00000002  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00040901  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000154  0.00000000  0.00000000  0.00000000 -0.00000000  0.32242671
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00096126

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000052  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000053 -0.00000000 -0.00000000  0.00000000 -0.26882419  0.00000001 -0.17803153  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000020 -0.00000000  0.00000000 -0.00000000 -0.17803221 -0.00000002  0.26882550  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.19593639  0.00000000  0.00000000 -0.00000000  0.00000024 -0.00000000 -0.00000048  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.18461469 -0.00000000  0.18768423 -0.00000000  0.00000000  0.11312412
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.22798345  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00174490 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.22799169  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00030171  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00174489  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.22798281  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.07023197 -0.00000000 -0.25372267  0.00000000 -0.00000000  0.11312368

   3    1  |1 0>           0.00558055  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00063640 -0.00000000
                           0.66932339 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.22798873  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00030171 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.22799016  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00558050  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00063640 -0.00000000
                           0.66931752 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.22798751  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.25484801  0.00000000  0.06603868 -0.00000000 -0.00000000  0.11312398

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000001  0.94656686  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00724465 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000001  0.94659311 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00125267 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.32241394 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.94659128 -0.00000000
                           0.00268816 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00264229  0.00000000

   4    1  |0 0>          -0.00000000 -0.04277088  0.00000000  0.94562624 -0.00000001  0.00000000  0.00000013
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.94562573 -0.00000001  0.04277091  0.00000000  0.00000000 -0.00000007
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000023  0.00000000 -0.00000025  0.00000000  0.00000000  0.98061661
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -6174.43240127     -0.01415441    -3106.53      0.00000000        0.00      0.0000
     2   1  -6174.42375091     -0.00550404    -1208.00      0.00865036     1898.53      0.2354
     3   1  -6174.42375087     -0.00550401    -1207.99      0.00865040     1898.54      0.2354
     4   1  -6174.42375084     -0.00550398    -1207.98      0.00865043     1898.55      0.2354
     5   1  -6174.41538185      0.00286501      628.80      0.01701941     3735.33      0.4631
     6   1  -6174.41538177      0.00286510      628.82      0.01701950     3735.35      0.4631
     7   1  -6174.41538176      0.00286511      628.82      0.01701951     3735.35      0.4631
     8   1  -6174.41538173      0.00286513      628.82      0.01701953     3735.36      0.4631
     9   1  -6174.41538166      0.00286520      628.84      0.01701960     3735.37      0.4631
    10   1  -6174.38999670      0.02825016     6200.19      0.04240457     9306.73      1.1539
    11   1  -6174.38999668      0.02825018     6200.20      0.04240459     9306.73      1.1539
    12   1  -6174.38999661      0.02825025     6200.21      0.04240466     9306.75      1.1539
    13   1  -6174.38999657      0.02825029     6200.22      0.04240470     9306.76      1.1539
    14   1  -6174.38999647      0.02825040     6200.25      0.04240480     9306.78      1.1539
    15   1  -6174.35044691      0.06779995    14880.37      0.08195436    17986.90      2.2301

 E0 =  -6174.41824686 is the energy of the lowest zeroth-order state
 E1 =  -6174.43240127 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.56616157 -0.00000000  0.00000000 -0.00000000  0.75120972  0.00000001 -0.18176913 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.70710393 -0.00000000 -0.00000000 -0.00000000  0.66934537  0.00000005 -0.00000000
                               -0.00000000 -0.00076926 -0.00000000  0.00000000 -0.00000000 -0.00084910 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.70710121 -0.00000001  0.00000000  0.00000000 -0.00000000  0.66934564
                                0.00000000 -0.00000000 -0.00002673  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00199555

  4  1     1    1  |1 0>       -0.00000000 -0.00076927 -0.00000000  0.00000000  0.00000000  0.00084909  0.00000000 -0.00000000
                               -0.00000000  0.70710879  0.00000000  0.00000000 -0.00000000  0.66934045  0.00000005 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.56615912 -0.00000000  0.00000000 -0.00000000 -0.53302494  0.00000004 -0.55968167  0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000279  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.70710381 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00002673  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00199552
                                0.00000000 -0.00000000  0.70711235  0.00000001  0.00000000  0.00000000 -0.00000000  0.66933440

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000279  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000001  0.70710975 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.56615710  0.00000000  0.00000000 -0.00000000 -0.21818904 -0.00000005  0.74145400  0.00000000

 10  1     1    1  |0 0>        0.00000000 -0.00000069 -0.00000000 -0.00000000  0.00000000 -0.32242602 -0.00000002  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00040901  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000154  0.00000000  0.00000000  0.00000000 -0.00000000  0.32242671
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00096126

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000052  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000053 -0.00000000 -0.00000000  0.00000000 -0.26882419  0.00000001 -0.17803153  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000020 -0.00000000  0.00000000 -0.00000000 -0.17803221 -0.00000002  0.26882550  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.19593639  0.00000000  0.00000000 -0.00000000  0.00000024 -0.00000000 -0.00000048  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.18461469 -0.00000000  0.18768423 -0.00000000  0.00000000  0.11312412
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.22798345  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00174490 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.22799169  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00030171  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00174489  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.22798281  0.00000000  0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.07023197 -0.00000000 -0.25372267  0.00000000 -0.00000000  0.11312368

  6  1     3    1  |1 0>        0.00558055  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00063640 -0.00000000
                                0.66932339 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.22798873  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00030171 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.22799016  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00558050  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00063640 -0.00000000
                                0.66931752 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.22798751  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.25484801  0.00000000  0.06603868 -0.00000000 -0.00000000  0.11312398

 10  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000001  0.94656686  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00724465 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000001  0.94659311 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00125267 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.32241394 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.94659128 -0.00000000
                                0.00268816 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00264229  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.04277088  0.00000000  0.94562624 -0.00000001  0.00000000  0.00000013
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.94562573 -0.00000001  0.04277091  0.00000000  0.00000000 -0.00000007
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000000  0.00000023  0.00000000 -0.00000025  0.00000000  0.00000000  0.98061661
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        32.05%    0.00%    0.00%    0.00%   56.43%    0.00%    3.30%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   44.80%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   44.80%
  4  1     1    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   44.80%    0.00%    0.00%
  5  1     2    1  |1 0>         32.05%    0.00%    0.00%    0.00%   28.41%    0.00%   31.32%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   44.80%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        32.05%    0.00%    0.00%    0.00%    4.76%    0.00%   54.98%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   10.40%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.40%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    7.23%    0.00%    3.17%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.17%    0.00%    7.23%    0.00%
 15  1     6    1  |0 0>          3.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    3.41%    0.00%    3.52%    0.00%    0.00%    1.28%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    5.20%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    5.20%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    5.20%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.49%    0.00%    6.44%    0.00%    0.00%    1.28%
  6  1     3    1  |1 0>         44.80%    0.00%    0.00%    0.00%    0.00%    5.20%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    5.20%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        44.80%    0.00%    0.00%    0.00%    0.00%    5.20%    0.00%
  9  1     3    1  |1 1>-         0.00%    6.49%    0.00%    0.44%    0.00%    0.00%    1.28%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   89.60%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   89.60%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>         10.40%    0.00%    0.00%    0.00%    0.00%   89.60%    0.00%
 13  1     4    1  |0 0>          0.00%    0.18%    0.00%   89.42%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%   89.42%    0.00%    0.18%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.16%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      224.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.67       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       114.75     38.48     15.13     44.24     13.06      1.84      0.09      1.65
 REAL TIME  *       128.91 SEC
 DISK USED  *       145.12 MB (local),        2.39 GB (total)
 SF USED    *       709.14 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK3 energy=  -6174.350446907407

              CI              CI           MULTI         RHF-SCF
  -6174.29961408  -6174.36563360  -6173.66350042  -6172.96982975
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
