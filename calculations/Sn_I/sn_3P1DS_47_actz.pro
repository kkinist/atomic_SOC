
 Working directory              : /wrk/irikura/molpro.GaI89zuL9T/
 Global scratch directory       : /wrk/irikura/molpro.GaI89zuL9T/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.GaI89zuL9T/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-May-24          TIME: 10:37:49  
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

     21.758 MB (compressed) written to integral file ( 14.8%)

     Node minimum: 0.786 MB, node maximum: 3.408 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     760824.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     760824      RECORD LENGTH: 524288

 Memory used in sort:       1.32 MW

 SORT1 READ    18047686. AND WROTE      147789. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.12 SEC
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
 CPU TIMES  *         1.86      1.64
 REAL TIME  *         2.50 SEC
 DISK USED  *        29.63 MB (local),      414.05 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:  14  10

 NELEC=   48   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -6084.60505380   -6084.60505380     0.00D+00     0.14D+01     0     0       0.00      0.01    start
   2    -6119.20741065     -34.60235685     0.54D+00     0.14D+01     1     0       0.01      0.02    diag
   3    -6169.62499794     -50.41758729     0.47D+00     0.21D+00     2     0       0.00      0.02    diag
   4    -6172.72281972      -3.09782179     0.11D+00     0.18D+00     3     0       0.01      0.03    diag
   5    -6172.96793578      -0.24511605     0.32D-01     0.27D-01     4     0       0.00      0.03    diag
   6    -6172.96981376      -0.00187799     0.24D-02     0.53D-02     5     0       0.01      0.04    diag
   7    -6172.96982923      -0.00001547     0.16D-03     0.23D-03     6     0       0.00      0.04    diag
   8    -6172.96982972      -0.00000049     0.41D-04     0.31D-04     7     0       0.01      0.05    fixocc
   9    -6172.96982975      -0.00000004     0.46D-05     0.18D-04     8     0       0.00      0.05    diag
  10    -6172.96982975      -0.00000000     0.27D-06     0.63D-06     9     0       0.00      0.05    diag/orth
  11    -6172.96982975       0.00000000     0.11D-07     0.41D-07     0     0       0.01      0.06    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -6172.969829754518
  RHF One-electron energy           -8458.981645823664
  RHF Two-electron energy            2286.011816069145
  RHF Kinetic energy                 7123.758090708332
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
    5.1     2.00000   -19.53200     1  1  d1+  0.34434    1  1  d1-  0.93879
    6.1     2.00000   -19.53200     1  1  d1+  0.93880    1  1  d1- -0.34435
    7.1     2.00000   -19.53200     1  1  d2-  0.96978
    8.1     2.00000   -19.53200     1  1  d2+  0.96978
    9.1     2.00000    -6.52363     1  4  s    1.09168
   10.1     2.00000    -1.94645     1  2  d1-  0.98979
   11.1     2.00000    -1.94645     1  2  d1+  0.98979
   12.1     2.00000    -1.94645     1  2  d0   1.00444
   13.1     2.00000    -1.94645     1  2  d2-  0.97417
   14.1     2.00000    -1.94645     1  2  d2+  0.97417
   15.1     2.00000    -1.05761     1  5  s    1.09341
    1.2     2.00000  -149.69231     1  1  pz   0.99999
    2.2     2.00000  -149.69231     1  1  px   0.87834    1  1  py   0.47800
    3.2     2.00000  -149.69231     1  1  px  -0.47800    1  1  py   0.87834
    4.2     2.00000   -28.42265     1  2  pz   1.00016
    5.2     2.00000   -28.42265     1  2  px   0.35468    1  2  py   0.93516
    6.2     2.00000   -28.42265     1  2  px   0.93516    1  2  py  -0.35468
    7.2     2.00000    -4.68852     1  3  pz   0.99711
    8.2     2.00000    -4.68852     1  3  px   0.32296    1  3  py   0.94336
    9.2     2.00000    -4.68852     1  3  px   0.94336    1  3  py  -0.32296


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
 CPU TIMES  *         2.08      0.21      1.64
 REAL TIME  *         3.79 SEC
 DISK USED  *        30.26 MB (local),      421.70 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.271D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.269D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.204D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.201D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.155D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.153D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.204D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.201D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 6   4 2 3 5 1 1 2 6 4 3   5 1 2 6 4 3 5 1 2 6   4 3 5 2 6 4 3 5 1 7
                                       11 912 815141310 2 6   4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.190D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.353D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.353D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.276D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.275D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.123D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.256D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.255D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.230D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.230D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.705D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.101D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.239D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.239D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 1   2 3 3 2 1 3 2 1 6 5   4 810 9 7 6 5 410 8   9 7 3 2 1 6 5 4 810
                                        9 7 3 2 1 6 5 4 810   7 9 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1253  ( 68 closed/active, 906 closed/virtual, 0 active/active, 279 active/virtual )
 Total number of variables:    3224
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0  -6173.68666666   -6173.71157203   -0.02490537    0.20950692 0.00166377 0.00000000  0.11E+01      0.86
   2    7   12    0  -6173.71180667   -6173.71182778   -0.00002111    0.00646557 0.00001258 0.00000000  0.28E-01      1.89
   3   21   42    0  -6173.71182779   -6173.71182779   -0.00000000    0.00000646 0.00000009 0.00000000  0.49E-05      3.52

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.15E-07)
                       Final energy:  -6173.71182779
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -6173.737030652624
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.57272048
 One electron energy                         -8490.51168063
 Two electron energy                          2316.77464998
 Virial ratio                                    1.86654137
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -6173.737030652602
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.57272048
 One electron energy                         -8490.51168063
 Two electron energy                          2316.77464998
 Virial ratio                                    1.86654137
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -6173.737030652601
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.57272049
 One electron energy                         -8490.51168063
 Two electron energy                          2316.77464998
 Virial ratio                                    1.86654137
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -6173.704126789002
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.46490764
 One electron energy                         -8490.01765352
 Two electron energy                          2316.31352673
 Virial ratio                                    1.86654987
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -6173.704126789000
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.46490764
 One electron energy                         -8490.01765353
 Two electron energy                          2316.31352674
 Virial ratio                                    1.86654987
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -6173.704126788990
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.46490764
 One electron energy                         -8490.01765352
 Two electron energy                          2316.31352674
 Virial ratio                                    1.86654987
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -6173.704126788977
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.46490764
 One electron energy                         -8490.01765353
 Two electron energy                          2316.31352674
 Virial ratio                                    1.86654987
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -6173.704126788959
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.46490764
 One electron energy                         -8490.01765353
 Two electron energy                          2316.31352674
 Virial ratio                                    1.86654987
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -6173.674724210951
 Nuclear energy                                  0.00000000
 Kinetic energy                               7124.40576565
 One electron energy                         -8489.74075827
 Two electron energy                          2316.06603406
 Virial ratio                                    1.86655293
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000340
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999857
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999810
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000153972
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999000711
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     2.865672563696
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000001147
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.134315713978
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999999807
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999896607128
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000104267950
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.999999665508
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000001723418
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.128559187746
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000176293
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.871450764504
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999853
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000103393015
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999895732240
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000000180520
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.999999275871
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.005768248558
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999822561
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.994233521518
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 3 5 4 1 6   2 5 3 4 1 1 6 2 3 5   4 1 6 2 3 5 4 1 6 2   3 5 4 6 2 3 5 4 111
                                        7 81214151013 9 2 6   3 5 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 1   3 2 1 3 2 2 3 1 5 6   810 9 7 4 2 3 1 5 6  10 8 9 7 4 5 610 8 7
                                        9 4 2 3 1 5 6 810 9   7 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1078.40035     1  1  s    0.98900
    2.1     2.00000  -166.22867     1  2  s    1.07350
    3.1     2.00000   -33.55471     1  3  s    0.84455
    4.1     2.00000   -18.89774     1  1  d1-  0.99998
    5.1     2.00000   -18.89774     1  1  d0   0.99998
    6.1     2.00000   -18.89774     1  1  d2-  0.99998
    7.1     2.00000   -18.89774     1  1  d2+  0.99998
    8.1     2.00000   -18.89774     1  1  d1+  0.99998
    9.1     2.00000    -5.89117     1  4  s    1.09182
   10.1     2.00000    -1.31673     1  2  d1-  1.00017
   11.1     2.00000    -1.31673     1  2  d0   1.00017
   12.1     2.00000    -1.31673     1  2  d2+  1.00017
   13.1     2.00000    -1.31673     1  2  d2-  1.00017
   14.1     2.00000    -1.31673     1  2  d1+  1.00017
   15.1     1.95567    -0.50791     1  5  s    1.02481
    1.2     2.00000  -149.05626     1  1  py   0.99999
    2.2     2.00000  -149.05626     1  1  pz   0.99999
    3.2     2.00000  -149.05626     1  1  px   0.99999
    4.2     2.00000   -27.78937     1  2  py   1.00023
    5.2     2.00000   -27.78937     1  2  pz   1.00023
    6.2     2.00000   -27.78937     1  2  px   1.00023
    7.2     2.00000    -4.05848     1  3  py   0.99962
    8.2     2.00000    -4.05848     1  3  pz   0.99962
    9.2     2.00000    -4.05848     1  3  px   0.99962
   10.2     0.67688    -0.07325     1  4  px   0.93337
   11.2     0.67688    -0.07325     1  4  pz   0.93337
   12.2     0.67688    -0.07325     1  4  py   0.93337
   13.2     0.00457     0.35480     1  4  px  -0.51822    1  7  px  -0.90390    1  8  px   1.15667
   14.2     0.00457     0.35480     1  4  pz  -0.51822    1  7  pz  -0.90390    1  8  pz   1.15667
   15.2     0.00457     0.35480     1  4  py  -0.51822    1  7  py  -0.90390    1  8  py   1.15667
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 0aa000       0.98996858     -0.00001214      0.00001364
 2 a0a000       0.00001200      0.98991740      0.01006623
 2 aa0000      -0.00001377     -0.01006623      0.98991740
 0 2aa000      -0.10895101      0.00000134     -0.00000150
 0 aa2000       0.00000152      0.00110784     -0.10894538
 0 a2a000      -0.00000132     -0.10894538     -0.00110784
 
 Energy:    -6173.73703065  -6173.73703065  -6173.73703065
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000       0.00004683     -0.00069060      0.80681173     -0.00000414     -0.03065850      0.56140394
 2 002000      -0.00002430      0.00031052     -0.37685485      0.00001969      0.71404896      0.56140394
 2 b0a000       0.00017311      0.00000329     -0.00000292     -0.69922398      0.00001775     -0.00000000
 2 a0b000      -0.00017311     -0.00000329      0.00000292      0.69922398     -0.00001775      0.00000000
 2 ba0000      -0.69922396     -0.00015481      0.00004036     -0.00017311     -0.00000243      0.00000000
 2 ab0000       0.69922396      0.00015481     -0.00004036      0.00017311      0.00000243     -0.00000000
 2 0ba000       0.00015477     -0.69922372     -0.00059898     -0.00000325     -0.00001204     -0.00000000
 2 0ab000      -0.00015477      0.69922372      0.00059898      0.00000325      0.00001204      0.00000000
 2 200000      -0.00002253      0.00038008     -0.42995689     -0.00001555     -0.68339047      0.56140394
 0 022000      -0.00000248      0.00004176     -0.04724345     -0.00000171     -0.07509061     -0.11932161
 0 202000       0.00000515     -0.00007588      0.08865208     -0.00000045     -0.00336874     -0.11932161
 0 220000      -0.00000267      0.00003412     -0.04140863      0.00000216      0.07845935     -0.11932161
 0 a2b000       0.00001902      0.00000036     -0.00000032     -0.07683039      0.00000195      0.00000000
 0 b2a000      -0.00001902     -0.00000036      0.00000032      0.07683039     -0.00000195     -0.00000000
 0 ab2000      -0.07683039     -0.00001701      0.00000443     -0.00001902     -0.00000027      0.00000000
 0 ba2000       0.07683039      0.00001701     -0.00000443      0.00001902      0.00000027     -0.00000000
 0 2ba000      -0.00001701      0.07683036      0.00006582      0.00000036      0.00000132      0.00000000
 0 2ab000       0.00001701     -0.07683036     -0.00006582     -0.00000036     -0.00000132     -0.00000000
 
 Energy:    -6173.70412679  -6173.70412679  -6173.70412679  -6173.70412679  -6173.70412679  -6173.67472421
 


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
 CPU TIMES  *         5.36      3.27      0.21      1.64
 REAL TIME  *         7.83 SEC
 DISK USED  *        62.13 MB (local),      804.08 MB (total)
 SF USED    *        77.58 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -6173.737031   2.0
    -6173.737031   2.0
    -6173.737031   2.0
    -6173.704127   6.0
    -6173.704127   6.0
    -6173.704127   6.0
    -6173.704127   6.0
    -6173.704127   6.0
    -6173.674724  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

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


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -6173.73703065
     2     -6173.73703065
     3     -6173.73703065

 Number of blocks in overlap matrix:   380   Smallest eigenvalue:  0.54D-05
 Number of N-2 electron functions:     683
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3497694
 Number of doubly external configurations:       1065921
 Total number of contracted configurations:      4602021
 Total number of uncontracted configurations:   75813963

 Diagonal Coupling coefficients finished.               Storage:  13037350 words, CPU-Time:      5.69 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    916314 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.73703065    -0.00000000    -0.77596975  0.52D-01  0.87D-01     9.51
    1     2     2     1.00000000     0.00000000 -6173.73703065     0.00000000    -0.77611647  0.53D-01  0.87D-01     9.51
    1     3     3     1.00000000     0.00000000 -6173.73703065     0.00000000    -0.77619783  0.53D-01  0.87D-01     9.51
    2     1     1     1.08620905    -0.61643352 -6174.35346418    -0.61643352    -0.01545461  0.27D-02  0.99D-03    61.45
    2     2     2     1.08635475    -0.61634839 -6174.35337904    -0.61634839    -0.01554546  0.28D-02  0.99D-03    61.45
    2     3     3     1.08642068    -0.61630661 -6174.35333727    -0.61630661    -0.01559161  0.28D-02  0.99D-03    61.45
    3     1     1     1.07868056    -0.63094022 -6174.36797087    -0.01450670    -0.00031206  0.40D-04  0.32D-04   112.95
    3     2     2     1.07868107    -0.63093736 -6174.36796801    -0.01458897    -0.00031465  0.41D-04  0.33D-04   112.95
    3     3     3     1.07868060    -0.63093565 -6174.36796630    -0.01462903    -0.00031628  0.41D-04  0.33D-04   112.95
    4     1     1     1.07883511    -0.63126151 -6174.36829216    -0.00032129    -0.00001484  0.26D-05  0.23D-05   164.07
    4     2     2     1.07883469    -0.63126143 -6174.36829208    -0.00032407    -0.00001490  0.26D-05  0.23D-05   164.07
    4     3     3     1.07883404    -0.63126133 -6174.36829198    -0.00032568    -0.00001497  0.26D-05  0.23D-05   164.07
    5     1     1     1.07893414    -0.63127979 -6174.36831044    -0.00001828    -0.00000123  0.87D-07  0.26D-06   214.72
    5     2     2     1.07893365    -0.63127978 -6174.36831043    -0.00001835    -0.00000123  0.87D-07  0.26D-06   214.72
    5     3     3     1.07893342    -0.63127977 -6174.36831042    -0.00001844    -0.00000124  0.88D-07  0.27D-06   214.72
    6     1     1     1.07893110    -0.63128140 -6174.36831205    -0.00000162    -0.00000013  0.19D-07  0.20D-07   265.79
    6     2     2     1.07893105    -0.63128140 -6174.36831205    -0.00000162    -0.00000013  0.19D-07  0.20D-07   265.79
    6     3     3     1.07893100    -0.63128140 -6174.36831205    -0.00000163    -0.00000013  0.19D-07  0.21D-07   265.79
    7     1     1     1.07894420    -0.63128155 -6174.36831220    -0.00000015    -0.00000001  0.11D-08  0.20D-08   316.74
    7     2     2     1.07894427    -0.63128155 -6174.36831220    -0.00000015    -0.00000001  0.11D-08  0.20D-08   316.74
    7     3     3     1.07894429    -0.63128155 -6174.36831220    -0.00000015    -0.00000001  0.11D-08  0.20D-08   316.74


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.4%
 S   1.9%  22.6%
 P   0.7%  56.7%   9.2%

 Initialization:   1.9%
 Other:            3.6%

 Total CPU:      316.7 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0000          -0.0157191  -0.0000115   0.9538619
 2222222222/0/000          -0.1103916   0.9475811  -0.0018078
 22222222220//000           0.9474525   0.1104064   0.0156148
 2222220222//2000           0.0015483   0.0000011  -0.0939511
 2222220222/2/000           0.0108731  -0.0933325   0.0001781
 22222202222//000          -0.0933199  -0.0108745  -0.0015380

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955024   -0.111274   -0.015845
 2           0.111289    0.955153   -0.000012
 3           0.015740   -0.001822    0.961484

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961615    0.000000    0.000000
 2           0.000000    0.961615    0.000000
 3           0.000000    0.000000    0.961615


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95502384 (fixed)   0.96193980 (relaxed)   0.96161502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00230188   -0.00494477   -0.51301268
 Singles      0.02222998   -0.08683794   -0.09327083
 Pairs        0.05689594    0.00888942   -0.02499805
 Total        1.08142779   -0.08289328   -0.63128155
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.73703065
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.74225659
 One electron energy                -8489.59901531
 Two electron energy                 2315.23070311
 Virial quotient                       -0.86660936
 Correlation energy                    -0.63128155
 !MRCI STATE 1.1 Energy             -6174.368312204876

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41971607 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41925515 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41971607 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41776564 (Pople, fixed reference)
 Cluster corrected energies         -6174.41729225 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41776564 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95515349 (fixed)   0.96193977 (relaxed)   0.96161498 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00230188   -0.00494477   -0.50479852
 Singles      0.02223007   -0.08683799   -0.09327087
 Pairs        0.05689592    0.00000649   -0.03321216
 Total        1.08142787   -0.09177626   -0.63128155
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.73703065
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.74225140
 One electron energy                -8489.59900860
 Two electron energy                 2315.23069640
 Virial quotient                       -0.86660936
 Correlation energy                    -0.63128155
 !MRCI STATE 2.1 Energy             -6174.368312204811

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41971612 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41925520 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41971612 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41776569 (Pople, fixed reference)
 Cluster corrected energies         -6174.41729230 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41776569 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96148443 (fixed)   0.96193976 (relaxed)   0.96161498 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00230188   -0.00494476   -0.00598389
 Singles      0.02223010   -0.08683798   -0.09327088
 Pairs        0.05689590   -0.53942556   -0.53202678
 Total        1.08142788   -0.63120830   -0.63128155
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.73703065
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.74226158
 One electron energy                -8489.59901995
 Two electron energy                 2315.23070775
 Virial quotient                       -0.86660936
 Correlation energy                    -0.63128155
 !MRCI STATE 3.1 Energy             -6174.368312204690

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.41971612 (Davidson, fixed reference)
 Cluster corrected energies         -6174.41925521 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.41971612 (Davidson, rotated reference)

 Cluster corrected energies         -6174.41776570 (Pople, fixed reference)
 Cluster corrected energies         -6174.41729231 (Pople, relaxed reference)
 Cluster corrected energies         -6174.41776570 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      108.94       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       335.82    330.45      3.27      0.21      1.64
 REAL TIME  *       345.89 SEC
 DISK USED  *       170.26 MB (local),        2.05 GB (total)
 SF USED    *         1.18 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -6174.41971607  AU                              
 SETTING HLSDIAG(2)     =     -6174.41971612  AU                              
 SETTING HLSDIAG(3)     =     -6174.41971612  AU                              


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


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -6173.70412679
     2     -6173.70412679
     3     -6173.70412679
     4     -6173.70412679
     5     -6173.70412679
     6     -6173.67472421

 Number of blocks in overlap matrix:   582   Smallest eigenvalue:  0.36D-05
 Number of N-2 electron functions:    1291
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2035246
 Number of doubly external configurations:       2016667
 Total number of contracted configurations:      4076063
 Total number of uncontracted configurations:   44346143

 Diagonal Coupling coefficients finished.               Storage:  12993933 words, CPU-Time:     12.35 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    969481 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -6173.70412679     0.00000000    -0.77705920  0.57D-01  0.85D-01    17.82
    1     2     2     1.00000000     0.00000000 -6173.70412679    -0.00000000    -0.77727638  0.58D-01  0.85D-01    17.82
    1     3     3     1.00000000     0.00000000 -6173.70412679    -0.00000000    -0.77622832  0.56D-01  0.85D-01    17.82
    1     4     4     1.00000000     0.00000000 -6173.70412679    -0.00000000    -0.77694695  0.57D-01  0.85D-01    17.82
    1     5     5     1.00000000     0.00000000 -6173.70412679    -0.00000000    -0.77621524  0.56D-01  0.85D-01    17.82
    1     6     6     1.00000000     0.00000000 -6173.67472421    -0.00000000    -0.75520372  0.28D-01  0.89D-01    17.82
    2     1     1     1.08867199    -0.62040601 -6174.32453280    -0.62040601    -0.01618284  0.28D-02  0.12D-02   102.49
    2     2     2     1.08868632    -0.62039248 -6174.32451927    -0.62039248    -0.01619103  0.28D-02  0.12D-02   102.49
    2     3     3     1.08896455    -0.62022743 -6174.32435421    -0.62022743    -0.01640617  0.29D-02  0.12D-02   102.49
    2     4     4     1.08905125    -0.62020181 -6174.32432860    -0.62020181    -0.01644019  0.30D-02  0.12D-02   102.49
    2     5     5     1.08924443    -0.62008256 -6174.32420935    -0.62008256    -0.01657227  0.30D-02  0.12D-02   102.49
    2     6     6     1.07705000    -0.61625542 -6174.29097963    -0.61625542    -0.01363382  0.18D-02  0.12D-02   102.49
    3     1     1     1.08182992    -0.63550087 -6174.33962766    -0.01509486    -0.00040564  0.45D-04  0.53D-04   186.66
    3     2     2     1.08182560    -0.63549878 -6174.33962557    -0.01510630    -0.00040691  0.45D-04  0.54D-04   186.66
    3     3     3     1.08186619    -0.63549161 -6174.33961840    -0.01526419    -0.00041411  0.46D-04  0.54D-04   186.66
    3     4     4     1.08188419    -0.63548701 -6174.33961380    -0.01528520    -0.00041803  0.47D-04  0.55D-04   186.66
    3     5     5     1.08188292    -0.63548332 -6174.33961011    -0.01540076    -0.00042196  0.48D-04  0.56D-04   186.66
    3     6     6     1.07696016    -0.62932407 -6174.30404828    -0.01306865    -0.00040413  0.24D-04  0.76D-04   186.66
    4     1     1     1.08239207    -0.63592895 -6174.34005573    -0.00042807    -0.00002556  0.33D-05  0.48D-05   269.69
    4     2     2     1.08239022    -0.63592860 -6174.34005539    -0.00042982    -0.00002577  0.34D-05  0.49D-05   269.69
    4     3     3     1.08238978    -0.63592795 -6174.34005474    -0.00043633    -0.00002624  0.35D-05  0.49D-05   269.69
    4     4     4     1.08239082    -0.63592742 -6174.34005421    -0.00044041    -0.00002662  0.35D-05  0.50D-05   269.69
    4     5     5     1.08238960    -0.63592740 -6174.34005419    -0.00044407    -0.00002661  0.35D-05  0.50D-05   269.69
    4     6     6     1.07888387    -0.62978001 -6174.30450423    -0.00045595    -0.00003673  0.29D-05  0.81D-05   269.69
    5     1     1     1.08259500    -0.63596185 -6174.34008864    -0.00003290    -0.00000219  0.15D-06  0.45D-06   352.66
    5     2     2     1.08259464    -0.63596182 -6174.34008861    -0.00003322    -0.00000221  0.15D-06  0.46D-06   352.66
    5     3     3     1.08259259    -0.63596177 -6174.34008856    -0.00003383    -0.00000226  0.16D-06  0.46D-06   352.66
    5     4     4     1.08259053    -0.63596174 -6174.34008852    -0.00003431    -0.00000228  0.16D-06  0.47D-06   352.66
    5     5     5     1.08259040    -0.63596173 -6174.34008852    -0.00003433    -0.00000229  0.17D-06  0.47D-06   352.66
    5     6     6     1.07957566    -0.62982825 -6174.30455246    -0.00004824    -0.00000300  0.23D-06  0.56D-06   352.66
    6     1     1     1.08259886    -0.63596462 -6174.34009140    -0.00000277    -0.00000022  0.28D-07  0.37D-07   435.97
    6     2     2     1.08259863    -0.63596461 -6174.34009140    -0.00000279    -0.00000022  0.28D-07  0.37D-07   435.97
    6     3     3     1.08259803    -0.63596461 -6174.34009140    -0.00000283    -0.00000022  0.29D-07  0.38D-07   435.97
    6     4     4     1.08259745    -0.63596460 -6174.34009139    -0.00000287    -0.00000023  0.30D-07  0.38D-07   435.97
    6     5     5     1.08259741    -0.63596460 -6174.34009139    -0.00000287    -0.00000023  0.30D-07  0.39D-07   435.97
    6     6     6     1.07958361    -0.62983198 -6174.30455619    -0.00000373    -0.00000026  0.29D-07  0.45D-07   435.97
    7     1     1     1.08261992    -0.63596486 -6174.34009165    -0.00000025    -0.00000002  0.21D-08  0.40D-08   518.97
    7     2     2     1.08261995    -0.63596486 -6174.34009165    -0.00000025    -0.00000002  0.21D-08  0.40D-08   518.97
    7     3     3     1.08261987    -0.63596486 -6174.34009165    -0.00000026    -0.00000002  0.22D-08  0.41D-08   518.97
    7     4     4     1.08261990    -0.63596486 -6174.34009165    -0.00000026    -0.00000002  0.22D-08  0.42D-08   518.97
    7     5     5     1.08261988    -0.63596486 -6174.34009165    -0.00000026    -0.00000002  0.22D-08  0.42D-08   518.97
    7     6     6     1.07959808    -0.62983228 -6174.30455649    -0.00000030    -0.00000003  0.30D-08  0.53D-08   518.97


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.1%
 S   1.5%  17.7%
 P   0.6%  47.2%  19.6%

 Initialization:   2.4%
 Other:            7.9%

 Total CPU:      519.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000          -0.2960006   0.1142595   0.8672463   0.1803004   0.1433692   0.0000000
 22222222220/\000          -0.1090353  -0.0727338  -0.1488877   0.8622158  -0.3508391  -0.0000000
 2222222222/\0000           0.3121450  -0.2193611  -0.0669307   0.3357238   0.8019394  -0.0000000
 2222222222020000          -0.0444079   0.7349781  -0.1591982   0.0959776   0.1648629   0.5424414
 2222222222200000           0.6163222  -0.2468724   0.2906336  -0.0067683  -0.2803348   0.5424412
 2222222222002000          -0.5719143  -0.4881055  -0.1314355  -0.0892093   0.1154719   0.5424412
 2222220222202000          -0.0043733   0.0723831  -0.0156783   0.0094522   0.0162362  -0.1038925
 2222220222022000           0.0606976  -0.0243126   0.0286226  -0.0006665  -0.0276083  -0.1038924
 2222220222220000          -0.0563240  -0.0480703  -0.0129442  -0.0087856   0.0113720  -0.1038924
 2222220222/2\000           0.0291511  -0.0112527  -0.0854093  -0.0177566  -0.0141195   0.0000000
 22222202222/\000           0.0107381   0.0071631   0.0146629  -0.0849138   0.0345518   0.0000000
 2222220222/\2000          -0.0307410   0.0216033   0.0065915  -0.0330631  -0.0789774   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.314810   -0.109966   -0.084230   -0.298528   -0.844969    0.000000
 2          -0.221234   -0.073355    0.901328    0.115235   -0.203439    0.000000
 3          -0.067502   -0.150159   -0.206970    0.874650   -0.293990   -0.000000
 4           0.338590    0.869577    0.116440    0.181840   -0.062871    0.000000
 5           0.808785   -0.353834    0.213313    0.144593    0.275029    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.961342

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959887   -0.000000   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.959887    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.959887    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.959887    0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.959887    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.961342


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.84496867 (fixed)   0.96018980 (relaxed)   0.95988701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00249857   -0.00543701   -0.50388167
 Singles      0.02491009   -0.09067849   -0.09814071
 Pairs        0.05791626   -0.00000005   -0.03394249
 Total        1.08532492   -0.09611555   -0.63596486
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.70412679
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70026041
 One electron energy                -8489.23881144
 Two electron energy                 2314.89871979
 Virial quotient                       -0.86661051
 Correlation energy                    -0.63596486
 !MRCI STATE 1.1 Energy             -6174.340091652499

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39435530 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39392004 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39435530 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39308771 (Pople, fixed reference)
 Cluster corrected energies         -6174.39263161 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39308771 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.90132757 (fixed)   0.96018979 (relaxed)   0.95988699 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00249857   -0.00543701   -0.50388180
 Singles      0.02491007   -0.09067847   -0.09814068
 Pairs        0.05791631    0.00000009   -0.03394238
 Total        1.08532495   -0.09611538   -0.63596486
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.70412679
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70027754
 One electron energy                -8489.23883684
 Two electron energy                 2314.89874519
 Virial quotient                       -0.86661050
 Correlation energy                    -0.63596486
 !MRCI STATE 2.1 Energy             -6174.340091652074

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39435532 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39392006 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39435532 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39308773 (Pople, fixed reference)
 Cluster corrected energies         -6174.39263163 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39308773 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.87464994 (fixed)   0.96018982 (relaxed)   0.95988702 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00249859   -0.00543702   -0.50388154
 Singles      0.02491026   -0.09067867   -0.09814077
 Pairs        0.05791604   -0.00000003   -0.03394255
 Total        1.08532490   -0.09611571   -0.63596486
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.70412679
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70018575
 One electron energy                -8489.23871226
 Two electron energy                 2314.89862061
 Virial quotient                       -0.86661051
 Correlation energy                    -0.63596486
 !MRCI STATE 3.1 Energy             -6174.340091651446

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39435529 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39392001 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39435529 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39308770 (Pople, fixed reference)
 Cluster corrected energies         -6174.39263159 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39308770 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.86957652 (fixed)   0.96018981 (relaxed)   0.95988700 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00249860   -0.00543701   -0.50388154
 Singles      0.02491036   -0.09067868   -0.09814079
 Pairs        0.05791597   -0.00000001   -0.03394252
 Total        1.08532493   -0.09611570   -0.63596486
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.70412679
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70020203
 One electron energy                -8489.23873064
 Two electron energy                 2314.89863899
 Virial quotient                       -0.86661051
 Correlation energy                    -0.63596486
 !MRCI STATE 4.1 Energy             -6174.340091650942

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39435531 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39392003 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39435531 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39308772 (Pople, fixed reference)
 Cluster corrected energies         -6174.39263160 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39308772 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.80878548 (fixed)   0.96018982 (relaxed)   0.95988701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00249860   -0.00543701   -0.50388159
 Singles      0.02491029   -0.09067867   -0.09814078
 Pairs        0.05791602    0.00000003   -0.03394249
 Total        1.08532491   -0.09611565   -0.63596486
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.70412679
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.70020743
 One electron energy                -8489.23874179
 Two electron energy                 2314.89865014
 Virial quotient                       -0.86661051
 Correlation energy                    -0.63596486
 !MRCI STATE 5.1 Energy             -6174.340091650485

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.39435530 (Davidson, fixed reference)
 Cluster corrected energies         -6174.39392001 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.39435530 (Davidson, rotated reference)

 Cluster corrected energies         -6174.39308770 (Pople, fixed reference)
 Cluster corrected energies         -6174.39263159 (Pople, relaxed reference)
 Cluster corrected energies         -6174.39308770 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96134152 (fixed)   0.96159270 (relaxed)   0.96134152 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00226486   -0.00509366   -0.00602574
 Singles      0.01527542   -0.07398683   -0.07726335
 Pairs        0.06450294   -0.55075182   -0.54654319
 Total        1.08204321   -0.62983231   -0.62983228
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -6173.67472421
 Nuclear energy                         0.00000000
 Kinetic energy                      7124.66604428
 One electron energy                -8488.91083694
 Two electron energy                 2314.60628045
 Virial quotient                       -0.86660968
 Correlation energy                    -0.62983228
 !MRCI STATE 6.1 Energy             -6174.304556490139

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -6174.35622995 (Davidson, fixed reference)
 Cluster corrected energies         -6174.35587396 (Davidson, relaxed reference)
 Cluster corrected energies         -6174.35622995 (Davidson, rotated reference)

 Cluster corrected energies         -6174.35488043 (Pople, fixed reference)
 Cluster corrected energies         -6174.35450944 (Pople, relaxed reference)
 Cluster corrected energies         -6174.35488043 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       61.22       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      300.28       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       923.14    587.32    330.45      3.27      0.21      1.64
 REAL TIME  *       951.11 SEC
 DISK USED  *       361.59 MB (local),        4.29 GB (total)
 SF USED    *         2.03 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -6174.39435530  AU                              
 SETTING HLSDIAG(5)     =     -6174.39435532  AU                              
 SETTING HLSDIAG(6)     =     -6174.39435529  AU                              
 SETTING HLSDIAG(7)     =     -6174.39435531  AU                              
 SETTING HLSDIAG(8)     =     -6174.39435530  AU                              
 SETTING HLSDIAG(9)     =     -6174.35622995  AU                              


         HLSDIAG
    -6174.419716
    -6174.419716
    -6174.419716
    -6174.394355
    -6174.394355
    -6174.394355
    -6174.394355
    -6174.394355
    -6174.356230
                                                  

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

 Time for Seward_LS:      13.94 sec

       10316388. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2701 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.94 sec, REAL time:     14.05 sec


 SORTLS1 read    11044077. and wrote    11044077. SO integrals in    72 records. CPU time:      0.09 sec, REAL time:      0.16 sec
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

              2       7      300.28       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       937.63     14.48    587.32    330.45      3.27      0.21      1.64
 REAL TIME  *       966.13 SEC
 DISK USED  *       361.66 MB (local),        4.93 GB (total)
 SF USED    *         2.03 GB
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

 Original energies:  -6174.368312  -6174.368312  -6174.368312
 Replaced energies:  -6174.419716  -6174.419716  -6174.419716

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -6174.340092  -6174.340092  -6174.340092  -6174.340092  -6174.340092  -6174.304556
 Replaced energies:  -6174.394355  -6174.394355  -6174.394355  -6174.394355  -6174.394355  -6174.356230



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -6174.41971612

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00      -0.00    -835.70      -0.01       0.00       0.00       0.00    -252.85
                            0.00      -2.24   -1174.08       0.00     -13.68      96.73       0.00       0.00       0.00     781.72

    2   2.1  1.0  1.0       0.00       0.00       0.00     835.70      -0.00      13.77       0.00       0.00       0.00      63.85
                            2.24      -0.00    -136.78      13.68      -0.00    -830.08       0.00       0.00       0.00    -180.35

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.01     -13.77       0.00       0.00       0.00       0.00    -701.64
                         1174.08     136.78       0.00     -96.73     830.08       0.00       0.00       0.00       0.00    -242.37

    4   1.1  1.0  0.0      -0.00     835.70       0.01       0.01       0.00       0.00      -0.00    -835.70      -0.01       0.00
                           -0.00     -13.68      96.73       0.00       0.00       0.00       0.00     -13.68      96.73    -371.33

    5   2.1  1.0  0.0    -835.70      -0.00     -13.77       0.00       0.00       0.00     835.70      -0.00      13.77       0.00
                           13.68       0.00    -830.08      -0.00       0.00       0.00      13.68      -0.00    -830.08    -120.11

    6   3.1  1.0  0.0      -0.01      13.77       0.00       0.00       0.00       0.00       0.01     -13.77       0.00       0.00
                          -96.73     830.08      -0.00      -0.00      -0.00       0.00     -96.73     830.08       0.00     126.85

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00     835.70       0.01       0.01       0.00       0.00    -252.85
                           -0.00      -0.00      -0.00      -0.00     -13.68      96.73      -0.00       2.24    1174.08    -781.72

    8   2.1  1.0 -1.0       0.00       0.00       0.00    -835.70      -0.00     -13.77       0.00       0.00       0.00      63.85
                           -0.00      -0.00      -0.00      13.68       0.00    -830.08      -2.24       0.00     136.78     180.35

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.01      13.77       0.00       0.00       0.00       0.00    -701.64
                           -0.00      -0.00      -0.00     -96.73     830.08      -0.00   -1174.08    -136.78      -0.00     242.37

   10   1.1  0.0  0.0    -252.85      63.85    -701.64       0.00       0.00       0.00    -252.85      63.85    -701.64    5566.06
                         -781.72     180.35     242.37     371.33     120.11    -126.85     781.72    -180.35    -242.37       0.00

   11   2.1  0.0  0.0     100.39      73.70    -593.61       0.00       0.00       0.00     100.39      73.70    -593.61       0.00
                          322.47    -153.02     -93.22    -117.52   -1289.87     -90.65    -322.47     153.02      93.22      -0.00

   12   3.1  0.0  0.0     730.40     214.05    -148.25       0.00       0.00       0.00     730.40     214.05    -148.25       0.00
                         -332.96     -98.32    -753.33    -109.83     263.24    -183.38     332.96      98.32     753.33      -0.00

   13   4.1  0.0  0.0     242.21    -720.42    -104.81       0.00       0.00       0.00     242.21    -720.42    -104.81       0.00
                          -22.74     288.47    -155.85     408.38    -117.03    1058.20      22.74    -288.47     155.85      -0.00

   14   5.1  0.0  0.0      85.44     314.77     142.23       0.00       0.00       0.00      85.44     314.77     142.23       0.00
                          261.52     726.35    -119.31    1011.08    -169.22    -411.19    -261.52    -726.35     119.31      -0.00

   15   6.1  0.0  0.0      22.42       0.02   -1360.70       0.00       0.00       0.00      22.42       0.02   -1360.70       0.00
                         1351.56     157.50      22.27    -222.70    1911.65      -3.65   -1351.56    -157.50     -22.27      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0     100.39     730.40     242.21      85.44      22.42
                         -322.47     332.96      22.74    -261.52   -1351.56

    2   2.1  1.0  1.0      73.70     214.05    -720.42     314.77       0.02
                          153.02      98.32    -288.47    -726.35    -157.50

    3   3.1  1.0  1.0    -593.61    -148.25    -104.81     142.23   -1360.70
                           93.22     753.33     155.85     119.31     -22.27

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          117.52     109.83    -408.38   -1011.08     222.70

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         1289.87    -263.24     117.03     169.22   -1911.65

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           90.65     183.38   -1058.20     411.19       3.65

    7   1.1  1.0 -1.0     100.39     730.40     242.21      85.44      22.42
                          322.47    -332.96     -22.74     261.52    1351.56

    8   2.1  1.0 -1.0      73.70     214.05    -720.42     314.77       0.02
                         -153.02     -98.32     288.47     726.35     157.50

    9   3.1  1.0 -1.0    -593.61    -148.25    -104.81     142.23   -1360.70
                          -93.22    -753.33    -155.85    -119.31      22.27

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5566.05       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5566.06       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5566.06       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5566.06       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   13933.60
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -6174.41971612 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.013       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -19.347     136.796       0.000      -2.240

    2    1  |1 1>+              0.000       0.002       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      19.347       0.000   -1173.917       2.240      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -136.796    1173.917       0.000    1174.076     136.778

    1    1  |1 0>              -0.000       0.000       0.000       0.013       0.000       0.000       0.000    1181.858
                                0.000     -19.347     136.796       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.002       0.000   -1181.858       0.000
                               19.347       0.000   -1173.917      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.014      19.476
                             -136.796    1173.917       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   -1181.858      -0.014       0.013       0.000
                                0.000      -2.240   -1174.076       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    1181.858       0.000      19.476       0.000       0.002
                                2.240      -0.000    -136.778      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.014     -19.476       0.000       0.000       0.000
                             1174.076     136.778       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>            -357.585      90.299    -992.264       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     371.330     120.115    -126.848   -1105.519     255.047

    2    1  |0 0>             141.973     104.225    -839.488       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -117.519   -1289.866     -90.651     456.047    -216.407

    3    1  |0 0>            1032.946     302.709    -209.659       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -109.827     263.241    -183.376    -470.879    -139.052

    4    1  |0 0>             342.531   -1018.823    -148.226       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     408.383    -117.033    1058.202     -32.155     407.963

    5    1  |0 0>             120.834     445.146     201.149       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1011.077    -169.216    -411.189     369.839    1027.212

    6    1  |0 0>              31.712       0.023   -1924.325       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -222.704    1911.648      -3.647    1911.391     222.734

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000    -357.585     141.973    1032.946     342.531     120.834      31.712
                            -1174.076       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      90.299     104.225     302.709   -1018.823     445.146       0.023
                             -136.778       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    -992.264    -839.488    -209.659    -148.226     201.149   -1924.325
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.014       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -371.330     117.519     109.827    -408.383   -1011.077     222.704

    2    1  |1 0>             -19.476       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -120.115    1289.866    -263.241     117.033     169.216   -1911.648

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     126.848      90.651     183.376   -1058.202     411.189       3.647

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1105.519    -456.047     470.879      32.155    -369.839   -1911.391

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -255.047     216.407     139.052    -407.963   -1027.212    -222.734

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -342.758     131.827    1065.371     220.402     168.732     -31.501

    1    1  |0 0>               0.000    5566.057       0.000       0.000       0.000       0.000       0.000
                              342.758       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5566.052       0.000       0.000       0.000       0.000
                             -131.827      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5566.060       0.000       0.000       0.000
                            -1065.371      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5566.056       0.000       0.000
                             -220.402      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5566.059       0.000
                             -168.732      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   13933.604
                               31.501      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -6174.43347394    -0.01375782    -3019.49      0.00000000        0.00      0.0000
    2 -6174.42510180    -0.00538567    -1182.02      0.00837215     1837.47      0.2278
    3 -6174.42510177    -0.00538565    -1182.01      0.00837217     1837.48      0.2278
    4 -6174.42510176    -0.00538564    -1182.01      0.00837218     1837.48      0.2278
    5 -6174.41681983     0.00289630      635.66      0.01665412     3655.16      0.4532
    6 -6174.41681979     0.00289633      635.67      0.01665415     3655.16      0.4532
    7 -6174.41681971     0.00289642      635.69      0.01665423     3655.18      0.4532
    8 -6174.41681969     0.00289644      635.69      0.01665425     3655.19      0.4532
    9 -6174.41681968     0.00289645      635.70      0.01665426     3655.19      0.4532
   10 -6174.39186605     0.02785008     6112.39      0.04160790     9131.88      1.1322
   11 -6174.39186604     0.02785009     6112.39      0.04160790     9131.88      1.1322
   12 -6174.39186603     0.02785010     6112.39      0.04160792     9131.88      1.1322
   13 -6174.39186595     0.02785018     6112.41      0.04160800     9131.90      1.1322
   14 -6174.39186592     0.02785021     6112.41      0.04160802     9131.91      1.1322
   15 -6174.35324346     0.06647266    14589.06      0.08023048    17608.55      2.1832

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00933436 -0.00396719  0.70699745  0.00010818 -0.01111590  0.00238633 -0.00353459  0.67079320
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000681  0.70701318  0.00396547  0.01078299 -0.00040649 -0.00025807  0.67062206  0.00375263
                           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.56642688 -0.00005687  0.01165103  0.00000191  0.73505857 -0.24383959  0.00076712  0.00917839
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000093 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.06555301  0.00087060 -0.00145100  0.70235280  0.05311088  0.06197231  0.00836049 -0.00661967

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000001 -0.00000000  0.00000000
                           0.56269634 -0.00123938 -0.00002046  0.08182504 -0.57648215 -0.51113903  0.00140448 -0.00118839

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00107351 -0.70280324  0.07788100  0.00087595  0.00035782  0.00094471  0.66675129 -0.07402982

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000000  0.00000001  0.00000000 -0.00000000
                           0.56261859  0.00003562  0.01156066  0.08183584 -0.15371657  0.75327348 -0.00344510 -0.00793470

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000093  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.06556200  0.01071066  0.00017600 -0.70227562 -0.03196961  0.09019941  0.01925004 -0.00762949

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00927245 -0.07789236 -0.70271039 -0.00001541 -0.00158874  0.01076325  0.07406747  0.66673519

   1    1  |0 0>           0.00000049 -0.00000001 -0.00000018 -0.00000014  0.16978459 -0.22019449 -0.02195711  0.09954215
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000033 -0.00000001  0.00000008  0.00000004  0.26225725  0.15607510 -0.02991398 -0.03422870
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000010 -0.00000002  0.00000058  0.00000009  0.01756132 -0.11637061 -0.08152933 -0.28063599
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000009  0.00000011  0.00000018 -0.00000023  0.03937496  0.01198866  0.28091566 -0.09234482
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000006 -0.00000005  0.00000007 -0.00000060 -0.01716947  0.11501439 -0.11321571 -0.03729833
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.19293496 -0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000035 -0.00000001 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00778982  0.04286630 -0.04583588  0.21389708 -0.00907004  0.01047506  0.00183542
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.01934758 -0.18488327  0.10972221  0.06039773 -0.00287757  0.00090364  0.00000134
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.01627222  0.00470088  0.00430697  0.00238871 -0.15279885 -0.20762440 -0.11137614
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.66735214 -0.11261973 -0.18759204 -0.01958061 -0.04249895  0.00607211  0.01288966

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.06747431 -0.02173764 -0.03597578  0.01124328  0.25223795 -0.02767880 -0.11064232

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00915421 -0.19049166  0.11120421  0.03491838 -0.00221666  0.00017863  0.00021109

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.08359129  0.01741804  0.03148364 -0.01372930 -0.10042654  0.23390265 -0.11062759

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.66523871 -0.11620579 -0.18631923 -0.01887364 -0.02486567  0.03011941 -0.01289140

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00439486  0.02154114 -0.03224071  0.21926277 -0.01349874  0.01096536 -0.00182323

   1    1  |0 0>           0.10979684  0.04592379  0.37246116 -0.27194299  0.07275185  0.82471774  0.00000005
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.06748435 -0.19388038 -0.21229642  0.14845270  0.88858185  0.07723875  0.00000012
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.02240296 -0.07185909 -0.09372914  0.85026629 -0.21013233  0.34523437 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.10305444  0.91536580 -0.18941947  0.07197664  0.13843676  0.04609597  0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.26837248  0.13224106  0.81962347  0.27589833  0.20506102 -0.30463733  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000006  0.00000001  0.00000002 -0.00000001 -0.00000027 -0.00000008  0.98121155
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -6174.43347394     -0.01375782    -3019.49      0.00000000        0.00      0.0000
     2   1  -6174.42510180     -0.00538567    -1182.02      0.00837215     1837.47      0.2278
     3   1  -6174.42510177     -0.00538565    -1182.01      0.00837217     1837.48      0.2278
     4   1  -6174.42510176     -0.00538564    -1182.01      0.00837218     1837.48      0.2278
     5   1  -6174.41681983      0.00289630      635.66      0.01665412     3655.16      0.4532
     6   1  -6174.41681979      0.00289633      635.67      0.01665415     3655.16      0.4532
     7   1  -6174.41681971      0.00289642      635.69      0.01665423     3655.18      0.4532
     8   1  -6174.41681969      0.00289644      635.69      0.01665425     3655.19      0.4532
     9   1  -6174.41681968      0.00289645      635.70      0.01665426     3655.19      0.4532
    10   1  -6174.39186605      0.02785008     6112.39      0.04160790     9131.88      1.1322
    11   1  -6174.39186604      0.02785009     6112.39      0.04160790     9131.88      1.1322
    12   1  -6174.39186603      0.02785010     6112.39      0.04160792     9131.88      1.1322
    13   1  -6174.39186595      0.02785018     6112.41      0.04160800     9131.90      1.1322
    14   1  -6174.39186592      0.02785021     6112.41      0.04160802     9131.91      1.1322
    15   1  -6174.35324346      0.06647266    14589.06      0.08023048    17608.55      2.1832

 E0 =  -6174.41971612 is the energy of the lowest zeroth-order state
 E1 =  -6174.43347394 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00933436 -0.00396719  0.70699745  0.00010818 -0.01111590  0.00238633 -0.00353459  0.67079320
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000681  0.70701318  0.00396547  0.01078299 -0.00040649 -0.00025807  0.67062206  0.00375263
                                0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.56642688 -0.00005687  0.01165103  0.00000191  0.73505857 -0.24383959  0.00076712  0.00917839
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000093 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.06555301  0.00087060 -0.00145100  0.70235280  0.05311088  0.06197231  0.00836049 -0.00661967

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000001 -0.00000000  0.00000000
                                0.56269634 -0.00123938 -0.00002046  0.08182504 -0.57648215 -0.51113903  0.00140448 -0.00118839

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00107351 -0.70280324  0.07788100  0.00087595  0.00035782  0.00094471  0.66675129 -0.07402982

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000011  0.00000000  0.00000001  0.00000000 -0.00000000
                                0.56261859  0.00003562  0.01156066  0.08183584 -0.15371657  0.75327348 -0.00344510 -0.00793470

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000093  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.06556200  0.01071066  0.00017600 -0.70227562 -0.03196961  0.09019941  0.01925004 -0.00762949

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00927245 -0.07789236 -0.70271039 -0.00001541 -0.00158874  0.01076325  0.07406747  0.66673519

 10  1     1    1  |0 0>        0.00000049 -0.00000001 -0.00000018 -0.00000014  0.16978459 -0.22019449 -0.02195711  0.09954215
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000033 -0.00000001  0.00000008  0.00000004  0.26225725  0.15607510 -0.02991398 -0.03422870
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000010 -0.00000002  0.00000058  0.00000009  0.01756132 -0.11637061 -0.08152933 -0.28063599
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000009  0.00000011  0.00000018 -0.00000023  0.03937496  0.01198866  0.28091566 -0.09234482
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000006 -0.00000005  0.00000007 -0.00000060 -0.01716947  0.11501439 -0.11321571 -0.03729833
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.19293496 -0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000035 -0.00000001 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00778982  0.04286630 -0.04583588  0.21389708 -0.00907004  0.01047506  0.00183542
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.01934758 -0.18488327  0.10972221  0.06039773 -0.00287757  0.00090364  0.00000134
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.01627222  0.00470088  0.00430697  0.00238871 -0.15279885 -0.20762440 -0.11137614
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.66735214 -0.11261973 -0.18759204 -0.01958061 -0.04249895  0.00607211  0.01288966

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.06747431 -0.02173764 -0.03597578  0.01124328  0.25223795 -0.02767880 -0.11064232

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00915421 -0.19049166  0.11120421  0.03491838 -0.00221666  0.00017863  0.00021109

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.08359129  0.01741804  0.03148364 -0.01372930 -0.10042654  0.23390265 -0.11062759

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.66523871 -0.11620579 -0.18631923 -0.01887364 -0.02486567  0.03011941 -0.01289140

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00439486  0.02154114 -0.03224071  0.21926277 -0.01349874  0.01096536 -0.00182323

 10  1     1    1  |0 0>        0.10979684  0.04592379  0.37246116 -0.27194299  0.07275185  0.82471774  0.00000005
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.06748435 -0.19388038 -0.21229642  0.14845270  0.88858185  0.07723875  0.00000012
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.02240296 -0.07185909 -0.09372914  0.85026629 -0.21013233  0.34523437 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.10305444  0.91536580 -0.18941947  0.07197664  0.13843676  0.04609597  0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.26837248  0.13224106  0.81962347  0.27589833  0.20506102 -0.30463733  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.00000006  0.00000001  0.00000002 -0.00000001 -0.00000027 -0.00000008  0.98121155
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.01%    0.00%   49.98%    0.00%    0.01%    0.00%    0.00%   45.00%
  2  1     2    1  |1 1>+         0.00%   49.99%    0.00%    0.01%    0.00%    0.00%   44.97%    0.00%
  3  1     3    1  |1 1>+        32.08%    0.00%    0.01%    0.00%   54.03%    5.95%    0.00%    0.01%
  4  1     1    1  |1 0>          0.43%    0.00%    0.00%   49.33%    0.28%    0.38%    0.01%    0.00%
  5  1     2    1  |1 0>         31.66%    0.00%    0.00%    0.67%   33.23%   26.13%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   49.39%    0.61%    0.00%    0.00%    0.00%   44.46%    0.55%
  7  1     1    1  |1 1>-        31.65%    0.00%    0.01%    0.67%    2.36%   56.74%    0.00%    0.01%
  8  1     2    1  |1 1>-         0.43%    0.01%    0.00%   49.32%    0.10%    0.81%    0.04%    0.01%
  9  1     3    1  |1 1>-         0.01%    0.61%   49.38%    0.00%    0.00%    0.01%    0.55%   44.45%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.88%    4.85%    0.05%    0.99%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.88%    2.44%    0.09%    0.12%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    1.35%    0.66%    7.88%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.16%    0.01%    7.89%    0.85%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    1.32%    1.28%    0.14%
 15  1     6    1  |0 0>          3.72%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.01%    0.18%    0.21%    4.58%    0.01%    0.01%    0.00%
  2  1     2    1  |1 1>+         0.04%    3.42%    1.20%    0.36%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.03%    0.00%    0.00%    0.00%    2.33%    4.31%    1.24%
  4  1     1    1  |1 0>         44.54%    1.27%    3.52%    0.04%    0.18%    0.00%    0.02%
  5  1     2    1  |1 0>          0.46%    0.05%    0.13%    0.01%    6.36%    0.08%    1.22%
  6  1     3    1  |1 0>          0.01%    3.63%    1.24%    0.12%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.70%    0.03%    0.10%    0.02%    1.01%    5.47%    1.22%
  8  1     2    1  |1 1>-        44.25%    1.35%    3.47%    0.04%    0.06%    0.09%    0.02%
  9  1     3    1  |1 1>-         0.00%    0.05%    0.10%    4.81%    0.02%    0.01%    0.00%
 10  1     1    1  |0 0>          1.21%    0.21%   13.87%    7.40%    0.53%   68.02%    0.00%
 11  1     2    1  |0 0>          0.46%    3.76%    4.51%    2.20%   78.96%    0.60%    0.00%
 12  1     3    1  |0 0>          0.05%    0.52%    0.88%   72.30%    4.42%   11.92%    0.00%
 13  1     4    1  |0 0>          1.06%   83.79%    3.59%    0.52%    1.92%    0.21%    0.00%
 14  1     5    1  |0 0>          7.20%    1.75%   67.18%    7.61%    4.21%    9.28%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.28%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      230.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      300.28       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2344.27   1406.63     14.48    587.32    330.45      3.27      0.21      1.64
 REAL TIME  *      2393.92 SEC
 DISK USED  *       361.66 MB (local),        4.93 GB (total)
 SF USED    *         2.03 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK3 energy=  -6174.353243462051

              CI              CI           MULTI         RHF-SCF
  -6174.30455649  -6174.36831220  -6173.67472421  -6172.96982975
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
