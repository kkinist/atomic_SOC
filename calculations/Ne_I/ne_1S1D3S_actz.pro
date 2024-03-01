
 Working directory              : /wrk/irikura/molpro.gqVhYrb3nd/
 Global scratch directory       : /wrk/irikura/molpro.gqVhYrb3nd/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.gqVhYrb3nd/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Ne SO-CI
                                                                                 ! active space (8/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Ne};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=9,sym=1,spin=1}
 
 {multi
     closed,1,0
     occ,3,6
     wf,nelec=10,sym=1,spin=0;state,6;
     wf,nelec=10,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;option,nstati=9;wf,sym=1,spin=0;state,6; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; save,5202.2}
 hlsdiag(7) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ne SO-CI                                                                                                                                                      
  (24 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 17:10:23  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry NE     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  NE     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     3.146 MB (compressed) written to integral file ( 18.8%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.534E-02 0.201E-01 0.645E-01 0.199E+00 0.230E+00 0.230E+00 0.230E+00 0.230E+00
         2 0.205E-01 0.205E-01 0.205E-01 0.205E+00 0.205E+00 0.205E+00 0.328E+00 0.328E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.69      0.49
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.03 MB (local),      166.31 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   1   3

 NELEC=    9   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -126.73389323    -126.73389323     0.00D+00     0.14D+00     0     0       0.01      0.01    start
   2     -126.83718126      -0.10328803     0.39D-01     0.35D-01     1     0       0.00      0.01    diag2
   3     -126.85007146      -0.01289020     0.18D-01     0.11D-01     2     0       0.00      0.01    diag2
   4     -126.85019505      -0.00012359     0.16D-02     0.13D-02     3     0       0.00      0.01    diag2
   5     -126.85019651      -0.00000147     0.91D-04     0.66D-04     4     0       0.01      0.02    diag2
   6     -126.85019653      -0.00000001     0.85D-05     0.80D-05     5     0       0.00      0.02    diag2
   7     -126.85019653      -0.00000000     0.36D-06     0.41D-06     6     0       0.00      0.02    diag2
   8     -126.85019653      -0.00000000     0.30D-07     0.24D-07     0     0       0.00      0.02    fixocc

 Final alpha occupancy:   2   3
 Final beta  occupancy:   1   3

 !RHF STATE 1.1 Energy               -126.850196528281
  RHF One-electron energy            -174.298876456677
  RHF Two-electron energy              47.448679928396
  RHF Kinetic energy                  127.691690331717
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.993409956425

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -33.66208     1  1  s    0.99902
    2.1     1.00000    -2.76199     1  2  s    1.10854
    1.2     2.00000    -1.55256     1  1  pz   1.07598
    2.2     2.00000    -1.55256     1  1  px   1.07606
    3.2     2.00000    -1.55256     1  1  py   1.07599


 HOMO      3.2    -1.552563 =     -42.2474eV
 LUMO      3.1    -0.113278 =      -3.0824eV
 LUMO-HOMO         1.439285 =      39.1649eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.71      0.02      0.49
 REAL TIME  *         1.72 SEC
 DISK USED  *        29.43 MB (local),      168.30 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      50 (   24   26)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 2   6 4 3 5 1 2 6 4 5 3   1 4 6 3 5 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.143D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.321D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.714D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.589D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.945D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 2 1 8  10 5 4 7 9 6 3 1 210   8 7 9 5 4 6 3 1 2 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 Weight factors for state symmetry  2:    0.14286
 
 Number of orbital rotations:  230  ( 2 closed/active, 24 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    16806
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
 Number of P-space configurations found with P-space parameter  0.50E+00: 1
 New P-space parameter:  0.10E+01
   1    7   34    0   -128.08037576    -128.08952526   -0.00914950    0.12496115 0.00039994 0.00021195  0.83E+00      0.33
   2    8   34    0   -128.08945357    -128.08945722   -0.00000365    0.00216368 0.00000314 0.00000152  0.16E-01      0.77
   3    5   16    0   -128.08945722    -128.08945722   -0.00000000    0.00000105 0.00000000 0.00000014  0.68E-05      1.02

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.27E-08)
                       Final energy:   -128.08945722
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -128.654143467178
 Nuclear energy                                  0.00000000
 Kinetic energy                                130.50391396
 One electron energy                          -183.24205630
 Two electron energy                            54.58791284
 Virial ratio                                    1.98582594
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -127.991204644099
 Nuclear energy                                  0.00000000
 Kinetic energy                                128.96522920
 One electron energy                          -177.88600793
 Two electron energy                            49.89480329
 Virial ratio                                    1.99244739
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -127.991204644099
 Nuclear energy                                  0.00000000
 Kinetic energy                                128.96522920
 One electron energy                          -177.88600793
 Two electron energy                            49.89480329
 Virial ratio                                    1.99244739
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -127.991204644032
 Nuclear energy                                  0.00000000
 Kinetic energy                                128.96522920
 One electron energy                          -177.88600793
 Two electron energy                            49.89480329
 Virial ratio                                    1.99244739
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -127.991204644032
 Nuclear energy                                  0.00000000
 Kinetic energy                                128.96522920
 One electron energy                          -177.88600793
 Two electron energy                            49.89480329
 Virial ratio                                    1.99244739
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -127.991204644032
 Nuclear energy                                  0.00000000
 Kinetic energy                                128.96522920
 One electron energy                          -177.88600793
 Two electron energy                            49.89480329
 Virial ratio                                    1.99244739
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -128.016033851124
 Nuclear energy                                  0.00000000
 Kinetic energy                                128.87416837
 One electron energy                          -177.79424784
 Two electron energy                            49.77821399
 Virial ratio                                    1.99334130
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.981101837910
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.018897555370
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.267698852381
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.467011608802
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.265290145537
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.246987495968
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     2.753012716205
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.656026485871
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.642838872820
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.701134429136
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.771910666123
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.228089728425
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.076274661748
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.890149518378
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     2.033575425326
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 3 4 5 6 2   3 5 4 6 1 2 5 3 4 6   1 3 4 5 6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 3 210   8 4 5 7 9 6 1 2 310   8 7 9 4 5 6 1 3 2 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -33.27396     1  1  s    0.99934
    2.1     1.99761    -2.28344     1  2  s    1.06785
    3.1     0.00286     1.84353     1  2  s   -0.72124    1  3  s   -0.87741    1  4  s    1.46006
    1.2     1.71052    -1.10139     1  1  pz   1.06868
    2.2     1.71052    -1.10139     1  1  py   1.06868
    3.2     1.71052    -1.10139     1  1  px   1.06868
    4.2     0.28933     0.16376     1  1  pz  -0.30285    1  6  pz   1.08555
    5.2     0.28933     0.16376     1  1  py  -0.30285    1  6  py   1.08555
    6.2     0.28933     0.16376     1  1  px  -0.30285    1  6  px   1.08555
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 222000      0.96990512     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 20 22a00b      0.09286117     -0.03959604      0.57471502      0.00000554      0.00004880     -0.00015932
 20 22b00a     -0.09286117      0.03959604     -0.57471502     -0.00000554     -0.00004880      0.00015932
 20 a22b00      0.09286117      0.51751576     -0.25306626      0.00001561     -0.00021562      0.00029807
 20 b22a00     -0.09286117     -0.51751576      0.25306626     -0.00001561      0.00021562     -0.00029807
 20 2a20b0      0.09286117     -0.47791972     -0.32164876     -0.00002116      0.00016681     -0.00013875
 20 2b20a0     -0.09286117      0.47791972      0.32164876      0.00002116     -0.00016681      0.00013875
 20 2b2a00      0.00000000      0.00015969     -0.00004266     -0.43375408      0.19684053     -0.14835802
 20 2a2b00     -0.00000000     -0.00015969      0.00004266      0.43375408     -0.19684053      0.14835802
 20 b220a0     -0.00000000      0.00015969     -0.00004266     -0.43375408      0.19684053     -0.14835802
 20 a220b0      0.00000000     -0.00015969      0.00004266      0.43375408     -0.19684053      0.14835802
 20 22b0a0     -0.00000000     -0.00001739     -0.00004798     -0.07955015     -0.39600345     -0.29283435
 20 22a0b0      0.00000000      0.00001739      0.00004798      0.07955015      0.39600345      0.29283435
 20 2b200a      0.00000000     -0.00001739     -0.00004798     -0.07955015     -0.39600345     -0.29283435
 20 2a200b     -0.00000000      0.00001739      0.00004798      0.07955015      0.39600345      0.29283435
 20 22ab00      0.00000000     -0.00025245      0.00010861     -0.23329830     -0.23094146      0.37568177
 20 22ba00     -0.00000000      0.00025245     -0.00010861      0.23329830      0.23094146     -0.37568177
 20 a2200b      0.00000000     -0.00025245      0.00010861     -0.23329830     -0.23094146      0.37568177
 20 b2200a     -0.00000000      0.00025245     -0.00010861      0.23329830      0.23094146     -0.37568177
 
 Energy:     -128.65414347   -127.99120464   -127.99120464   -127.99120464   -127.99120464   -127.99120464
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 20 2a20a0      0.57649920
 20 22a00a      0.57649920
 20 a22a00      0.57649920
 
 Energy:     -128.01603385
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.69      0.98      0.02      0.49
 REAL TIME  *         2.91 SEC
 DISK USED  *        30.35 MB (local),      172.92 MB (total)
 SF USED    *         3.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -128.6541435  -0.0
    -127.9912046   6.0
    -127.9912046   6.0
    -127.9912046   6.0
    -127.9912046   6.0
    -127.9912046   6.0
    -128.0160339  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Program parameters:       NSTATE=  6    NSTATI=  9    NSTATR=  6    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT = 30    MAXITI= 50    MAXDAV= 18    MAXVI = 27    NOSING=  0    NOPAIR=  0
                           MXSHRF=  7    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  0    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  1    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0    OVBK  =  0

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:      603 conf      924 CSFs
 N elec internal:     1107 conf     1764 CSFs
 N-1 el internal:     1016 conf     2352 CSFs
 N-2 el internal:      784 conf     2688 CSFs

 Number of electrons in valence space:                      8
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -128.65414347
     2      -127.99120464
     3      -127.99120464
     4      -127.99120464
     5      -127.99120464
     6      -127.99120464
     7      -127.98769308
     8      -127.98769308
     9      -127.98769308

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1017D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3936D-06

 Number of blocks in overlap matrix:    11   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:     369
 Number of N-1 electron functions:    2352

 Number of internal configurations:                  924
 Number of singly external configurations:         58856
 Number of doubly external configurations:        231831
 Total number of contracted configurations:       291611
 Total number of uncontracted configurations:    1736612

 Diagonal Coupling coefficients finished.               Storage:    903348 words, CPU-Time:      0.46 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    248944 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -128.65414347     0.00000000    -0.28892480  0.42D-01  0.12D-01     0.78
    1     2     2     1.00000000     0.00000000  -127.99120464     0.00000000    -0.21925565  0.13D-01  0.12D-01     0.78
    1     3     3     1.00000000     0.00000000  -127.99120464     0.00000000    -0.22243807  0.13D-01  0.13D-01     0.78
    1     4     4     1.00000000     0.00000000  -127.99120464     0.00000000    -0.21700163  0.14D-01  0.12D-01     0.78
    1     5     5     1.00000000     0.00000000  -127.99120464     0.00000000    -0.21722180  0.14D-01  0.12D-01     0.78
    1     6     6     1.00000000     0.00000000  -127.99120464     0.00000000    -0.21721752  0.14D-01  0.12D-01     0.78
    2     1     1     1.04645972    -0.27002976  -128.92417322    -0.27002976    -0.01964925  0.16D-02  0.12D-02     4.45
    2     2     2     1.02431527    -0.21417203  -128.20537667    -0.21417203    -0.00684310  0.34D-03  0.49D-03     4.45
    2     3     3     1.02433097    -0.21416054  -128.20536519    -0.21416054    -0.00684996  0.35D-03  0.47D-03     4.45
    2     4     4     1.02456614    -0.21403075  -128.20523539    -0.21403075    -0.00700206  0.40D-03  0.45D-03     4.45
    2     5     5     1.02456185    -0.21402742  -128.20523206    -0.21402742    -0.00700265  0.40D-03  0.45D-03     4.45
    2     6     6     1.02455234    -0.21398188  -128.20518653    -0.21398188    -0.00704413  0.40D-03  0.45D-03     4.45
    3     1     1     1.04558040    -0.29108455  -128.94522802    -0.02105479    -0.00140137  0.28D-04  0.11D-03     8.03
    3     2     2     1.02565157    -0.22114837  -128.21235302    -0.00697634    -0.00048069  0.22D-04  0.38D-04     8.03
    3     3     3     1.02565045    -0.22114662  -128.21235126    -0.00698608    -0.00048121  0.22D-04  0.38D-04     8.03
    3     4     4     1.02564258    -0.22113946  -128.21234410    -0.00710871    -0.00048429  0.22D-04  0.38D-04     8.03
    3     5     5     1.02559888    -0.22113130  -128.21233595    -0.00710388    -0.00049566  0.23D-04  0.40D-04     8.03
    3     6     6     1.02556761    -0.22111891  -128.21232356    -0.00713703    -0.00051841  0.25D-04  0.43D-04     8.03
    4     1     1     1.04697186    -0.29284647  -128.94698993    -0.00176192    -0.00015691  0.55D-05  0.11D-04    11.44
    4     2     2     1.02655996    -0.22178586  -128.21299050    -0.00063749    -0.00007771  0.44D-05  0.62D-05    11.44
    4     3     3     1.02656017    -0.22178515  -128.21298979    -0.00063853    -0.00007796  0.44D-05  0.62D-05    11.44
    4     4     4     1.02655698    -0.22178238  -128.21298702    -0.00064292    -0.00007932  0.44D-05  0.64D-05    11.44
    4     5     5     1.02656001    -0.22178199  -128.21298664    -0.00065069    -0.00008039  0.46D-05  0.68D-05    11.44
    4     6     6     1.02655913    -0.22177944  -128.21298408    -0.00066053    -0.00008138  0.47D-05  0.69D-05    11.44
    5     1     1     1.04775294    -0.29303894  -128.94718241    -0.00019247    -0.00001772  0.87D-06  0.11D-05    14.85
    5     2     2     1.02670783    -0.22189589  -128.21310053    -0.00011003    -0.00001874  0.12D-05  0.14D-05    14.85
    5     3     3     1.02670769    -0.22189564  -128.21310029    -0.00011050    -0.00001887  0.12D-05  0.14D-05    14.85
    5     4     4     1.02670494    -0.22189476  -128.21309940    -0.00011238    -0.00001944  0.12D-05  0.15D-05    14.85
    5     5     5     1.02670756    -0.22189458  -128.21309923    -0.00011259    -0.00001937  0.12D-05  0.14D-05    14.85
    5     6     6     1.02670627    -0.22189378  -128.21309842    -0.00011434    -0.00001981  0.12D-05  0.15D-05    14.85
    6     1     1     1.04771822    -0.29305977  -128.94720323    -0.00002083    -0.00000195  0.47D-07  0.16D-06    18.28
    6     2     2     1.02669094    -0.22192216  -128.21312680    -0.00002627    -0.00000446  0.21D-06  0.30D-06    18.28
    6     3     3     1.02669059    -0.22192210  -128.21312674    -0.00002646    -0.00000449  0.21D-06  0.30D-06    18.28
    6     4     4     1.02669300    -0.22192204  -128.21312668    -0.00002728    -0.00000462  0.23D-06  0.31D-06    18.28
    6     5     5     1.02668924    -0.22192179  -128.21312643    -0.00002720    -0.00000468  0.22D-06  0.32D-06    18.28
    6     6     6     1.02669137    -0.22192165  -128.21312629    -0.00002787    -0.00000476  0.22D-06  0.32D-06    18.28
    7     1     1     1.04773311    -0.29306207  -128.94720554    -0.00000231    -0.00000028  0.73D-08  0.21D-07    21.71
    7     2     2     1.02672305    -0.22192761  -128.21313226    -0.00000545    -0.00000113  0.89D-07  0.88D-07    21.71
    7     3     3     1.02672117    -0.22192758  -128.21313223    -0.00000548    -0.00000109  0.79D-07  0.77D-07    21.71
    7     4     4     1.02672101    -0.22192757  -128.21313221    -0.00000553    -0.00000110  0.80D-07  0.78D-07    21.71
    7     5     5     1.02671996    -0.22192747  -128.21313211    -0.00000568    -0.00000115  0.84D-07  0.82D-07    21.71
    7     6     6     1.02672060    -0.22192745  -128.21313209    -0.00000580    -0.00000118  0.88D-07  0.87D-07    21.71
    8     1     1     1.04774362    -0.29306240  -128.94720587    -0.00000033    -0.00000005  0.16D-08  0.31D-08    25.13
    8     2     2     1.02673328    -0.22192903  -128.21313367    -0.00000142    -0.00000039  0.25D-07  0.32D-07    25.13
    8     3     3     1.02673489    -0.22192902  -128.21313366    -0.00000143    -0.00000039  0.26D-07  0.28D-07    25.13
    8     4     4     1.02673480    -0.22192901  -128.21313365    -0.00000145    -0.00000040  0.26D-07  0.28D-07    25.13
    8     5     5     1.02673421    -0.22192897  -128.21313361    -0.00000150    -0.00000041  0.26D-07  0.30D-07    25.13
    8     6     6     1.02673311    -0.22192896  -128.21313360    -0.00000151    -0.00000042  0.26D-07  0.33D-07    25.13
    9     1     1     1.04774363    -0.29306240  -128.94720587    -0.00000000    -0.00000005  0.16D-08  0.31D-08    28.21
    9     2     2     1.02675438    -0.22192971  -128.21313435    -0.00000068    -0.00000008  0.33D-08  0.59D-08    28.21
    9     3     3     1.02674388    -0.22192957  -128.21313421    -0.00000055    -0.00000014  0.70D-08  0.97D-08    28.21
    9     4     4     1.02674406    -0.22192955  -128.21313420    -0.00000054    -0.00000015  0.74D-08  0.10D-07    28.21
    9     5     5     1.02674400    -0.22192955  -128.21313419    -0.00000058    -0.00000015  0.74D-08  0.10D-07    28.21
    9     6     6     1.02674369    -0.22192954  -128.21313418    -0.00000058    -0.00000016  0.76D-08  0.11D-07    28.21
   10     1     1     1.04774363    -0.29306240  -128.94720587    -0.00000000    -0.00000005  0.16D-08  0.31D-08    30.87
   10     2     2     1.02675176    -0.22192980  -128.21313444    -0.00000009    -0.00000002  0.75D-09  0.14D-08    30.87
   10     3     3     1.02675177    -0.22192980  -128.21313444    -0.00000023    -0.00000002  0.73D-09  0.15D-08    30.87
   10     4     4     1.02674748    -0.22192974  -128.21313438    -0.00000018    -0.00000004  0.32D-08  0.33D-08    30.87
   10     5     5     1.02674709    -0.22192973  -128.21313437    -0.00000018    -0.00000005  0.29D-08  0.34D-08    30.87
   10     6     6     1.02675437    -0.22192971  -128.21313435    -0.00000017    -0.00000008  0.33D-08  0.59D-08    30.87


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.4%
 S   0.5%   2.4%
 P   3.9%  20.4%  52.4%

 Initialization:   1.8%
 Other:           17.2%

 Total CPU:       30.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20222000           0.9626024   0.0000000  -0.0000000   0.0000040  -0.0000000   0.0000003
 202/20\0           0.0852185  -0.0000098   0.0000000  -0.1095400   0.0000032   0.7965055
 2022/00\           0.0852185   0.0000046  -0.0000000   0.7445395  -0.0000220  -0.3034069
 2022/\00          -0.0000000  -0.0000000  -0.0000078   0.0000206   0.6963243   0.0000000
 2022/0\0           0.0000000   0.6963100  -0.0000000  -0.0000009   0.0000000   0.0000085
 20/220\0          -0.0000000   0.0000000   0.6962908   0.0000000   0.0000078  -0.0000000
 202/2\00           0.0000000  -0.0000000   0.6962817   0.0000000   0.0000078  -0.0000000
 202/200\          -0.0000000   0.6962625   0.0000000  -0.0000009   0.0000000   0.0000085
 20/2200\           0.0000000  -0.0000000  -0.0000078   0.0000206   0.6962513   0.0000000
 20/22\00           0.0852185   0.0000052  -0.0000000  -0.6350551   0.0000188  -0.4931027
 /\222000           0.0572517  -0.0000000   0.0000000   0.0000009  -0.0000000   0.0000002

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2022\000   7.2     0.0785825  -0.0000001   0.0000000  -0.0206258   0.0000006   0.0084036
 20\22000   8.2     0.0785814  -0.0000001  -0.0000000   0.0175987  -0.0000005   0.0136591
 202\2000   9.2     0.0785810   0.0000003  -0.0000000   0.0030383  -0.0000001  -0.0220617

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.973896    0.000000    0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.000011    0.000006   -0.000000   -0.000000    0.986860
 3           0.000000   -0.000000   -0.000000    0.986860   -0.000011    0.000000
 4          -0.000003   -0.373047    0.913637    0.000000    0.000029   -0.000001
 5           0.000000    0.000011   -0.000027    0.000011    0.986862    0.000000
 6          -0.000000   -0.913634   -0.373046   -0.000000    0.000000    0.000012

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.973896   -0.000000   -0.000000   -0.000002    0.000000   -0.000000
 2          -0.000000    0.986860    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.986860    0.000000    0.000000    0.000000
 4          -0.000002   -0.000000    0.000000    0.986862    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.986862    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.986859


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97389630 (fixed)   0.97695033 (relaxed)   0.97389630 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00628161    0.00000000   -0.18171491
 Singles      0.02817809   -0.10331670   -0.10582710
 Pairs        0.01986545    0.00000000   -0.00552039
 Total        1.05432515   -0.10331670   -0.29306240
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -128.65414347
 Nuclear energy                         0.00000000
 Kinetic energy                       129.87287077
 One electron energy                 -182.43335104
 Two electron energy                   53.48614517
 Virial quotient                       -0.99287253
 Correlation energy                    -0.29306240
 !MRCI STATE 1.1 Energy              -128.947205869098

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.96312653 (Davidson, fixed reference)
 Cluster corrected energies          -128.96119773 (Davidson, relaxed reference)
 Cluster corrected energies          -128.96312653 (Davidson, rotated reference)

 Cluster corrected energies          -128.95947258 (Pople, fixed reference)
 Cluster corrected energies          -128.95795158 (Pople, relaxed reference)
 Cluster corrected energies          -128.95947258 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98685971 (fixed)   0.98688664 (relaxed)   0.98685971 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005459    0.00000000   -0.00001180
 Singles      0.01136990   -0.06746960   -0.06816538
 Pairs        0.01538332   -0.15446020   -0.15375262
 Total        1.02680781   -0.22192980   -0.22192980
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99120464
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33800416
 One electron energy                 -177.76563957
 Two electron energy                   49.55250513
 Virial quotient                       -0.99130287
 Correlation energy                    -0.22192980
 !MRCI STATE 2.1 Energy              -128.213134444113

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21908390 (Davidson, fixed reference)
 Cluster corrected energies          -128.21907146 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21908390 (Davidson, rotated reference)

 Cluster corrected energies          -128.21765653 (Pople, fixed reference)
 Cluster corrected energies          -128.21764695 (Pople, relaxed reference)
 Cluster corrected energies          -128.21765653 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.98685971 (fixed)   0.98688664 (relaxed)   0.98685971 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005458    0.00000000   -0.15043911
 Singles      0.01136993   -0.06746985   -0.06816538
 Pairs        0.01538329   -0.00000000   -0.00332531
 Total        1.02680781   -0.06746985   -0.22192980
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99120464
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33800686
 One electron energy                 -177.76564025
 Two electron energy                   49.55250581
 Virial quotient                       -0.99130285
 Correlation energy                    -0.22192980
 !MRCI STATE 3.1 Energy              -128.213134441403

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21908389 (Davidson, fixed reference)
 Cluster corrected energies          -128.21907146 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21908389 (Davidson, rotated reference)

 Cluster corrected energies          -128.21765653 (Pople, fixed reference)
 Cluster corrected energies          -128.21764695 (Pople, relaxed reference)
 Cluster corrected energies          -128.21765653 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.91363681 (fixed)   0.98688870 (relaxed)   0.98686188 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005437    0.00000000   -0.15044049
 Singles      0.01136914   -0.06746920   -0.06816347
 Pairs        0.01537979    0.00000019   -0.00332578
 Total        1.02680330   -0.06746901   -0.22192974
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99120464
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33820772
 One electron energy                 -177.76588443
 Two electron energy                   49.55275005
 Virial quotient                       -0.99130131
 Correlation energy                    -0.22192974
 !MRCI STATE 4.1 Energy              -128.213134381460

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21908283 (Davidson, fixed reference)
 Cluster corrected energies          -128.21907044 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21908283 (Davidson, rotated reference)

 Cluster corrected energies          -128.21765569 (Pople, fixed reference)
 Cluster corrected energies          -128.21764615 (Pople, relaxed reference)
 Cluster corrected energies          -128.21765569 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.98686207 (fixed)   0.98688889 (relaxed)   0.98686207 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005435    0.00000000   -0.15044066
 Singles      0.01136897   -0.06746888   -0.06816349
 Pairs        0.01537958   -0.00000000   -0.00332557
 Total        1.02680290   -0.06746888   -0.22192973
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99120464
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33817160
 One electron energy                 -177.76585086
 Two electron energy                   49.55271648
 Virial quotient                       -0.99130158
 Correlation energy                    -0.22192973
 !MRCI STATE 5.1 Energy              -128.213134373358

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21908273 (Davidson, fixed reference)
 Cluster corrected energies          -128.21907035 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21908273 (Davidson, rotated reference)

 Cluster corrected energies          -128.21765562 (Pople, fixed reference)
 Cluster corrected energies          -128.21764608 (Pople, relaxed reference)
 Cluster corrected energies          -128.21765562 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.91363366 (fixed)   0.98688539 (relaxed)   0.98685854 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005441    0.00000000   -0.15042912
 Singles      0.01137246   -0.06747774   -0.06816524
 Pairs        0.01538337   -0.00000188   -0.00333534
 Total        1.02681023   -0.06747962   -0.22192971
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99120464
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33763719
 One electron energy                 -177.76555763
 Two electron energy                   49.55242327
 Virial quotient                       -0.99130568
 Correlation energy                    -0.22192971
 !MRCI STATE 6.1 Energy              -128.213134352379

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21908434 (Davidson, fixed reference)
 Cluster corrected energies          -128.21907194 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21908434 (Davidson, rotated reference)

 Cluster corrected energies          -128.21765685 (Pople, fixed reference)
 Cluster corrected energies          -128.21764730 (Pople, relaxed reference)
 Cluster corrected energies          -128.21765685 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       14.72       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        34.40     32.70      0.98      0.02      0.49
 REAL TIME  *        36.95 SEC
 DISK USED  *        44.48 MB (local),      243.55 MB (total)
 SF USED    *       145.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -128.96312653  AU                              
 SETTING HLSDIAG(2)     =      -128.21908390  AU                              
 SETTING HLSDIAG(3)     =      -128.21908389  AU                              
 SETTING HLSDIAG(4)     =      -128.21908283  AU                              
 SETTING HLSDIAG(5)     =      -128.21908273  AU                              
 SETTING HLSDIAG(6)     =      -128.21908434  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:      533 conf     1176 CSFs
 N elec internal:     1037 conf     2352 CSFs
 N-1 el internal:     1016 conf     3696 CSFs
 N-2 el internal:      784 conf     4620 CSFs

 Number of electrons in valence space:                      8
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -128.01603385

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.32D-03
 Number of N-2 electron functions:      64
 Number of N-1 electron functions:    3696

 Number of internal configurations:                 1176
 Number of singly external configurations:         92424
 Number of doubly external configurations:         40216
 Total number of contracted configurations:       133816
 Total number of uncontracted configurations:    2960688

 Diagonal Coupling coefficients finished.               Storage:    446364 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    225198 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -128.01603385    -0.00000000    -0.23141168  0.14D-01  0.15D-01     0.06
    2     1     1     1.02538568    -0.21582511  -128.23185896    -0.21582511    -0.00529156  0.35D-03  0.37D-03     0.25
    3     1     1     1.02613307    -0.22094603  -128.23697988    -0.00512092    -0.00027481  0.24D-04  0.20D-04     0.43
    4     1     1     1.02674899    -0.22124488  -128.23727873    -0.00029885    -0.00001706  0.17D-05  0.13D-05     0.61
    5     1     1     1.02685878    -0.22126187  -128.23729572    -0.00001699    -0.00000119  0.81D-07  0.12D-06     0.79
    6     1     1     1.02688282    -0.22126308  -128.23729693    -0.00000121    -0.00000008  0.70D-08  0.64D-08     0.98
    7     1     1     1.02688506    -0.22126317  -128.23729702    -0.00000009    -0.00000001  0.51D-09  0.57D-09     1.15


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.5%
 S   4.3%  14.8%
 P   4.3%  42.6%  17.4%

 Initialization:   3.5%
 Other:            9.6%

 Total CPU:        1.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/22/00           0.5687411
 202/20/0           0.5687411
 2022/00/           0.5687408


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98671458 (fixed)   0.98682259 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00021893    0.00000000   -0.00004715
 Singles      0.01207694   -0.06921548   -0.06999205
 Pairs        0.01481400   -0.15204770   -0.15122396
 Total        1.02710988   -0.22126318   -0.22126317
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -128.01603385
 Nuclear energy                         0.00000000
 Kinetic energy                       129.28423486
 One electron energy                 -177.76124990
 Two electron energy                   49.52395288
 Virial quotient                       -0.99190205
 Correlation energy                    -0.22126317
 !MRCI STATE 1.1 Energy              -128.237297018974

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.24329544 (Davidson, fixed reference)
 Cluster corrected energies          -128.24324569 (Davidson, relaxed reference)

 Cluster corrected energies          -128.24133176 (Pople, fixed reference)
 Cluster corrected energies          -128.24129801 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       15.80       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        35.63      1.23     32.70      0.98      0.02      0.49
 REAL TIME  *        38.26 SEC
 DISK USED  *        45.56 MB (local),      248.99 MB (total)
 SF USED    *       145.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =      -128.24324569  AU                              


         HLSDIAG
    -128.9631265
    -128.2190839
    -128.2190839
    -128.2190828
    -128.2190827
    -128.2190843
    -128.2432457
                                                  

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

 Time for Seward_LS:       0.18 sec

         895620. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.18 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.00 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       15.80       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        37.80      2.10      1.23     32.70      0.98      0.02      0.49
 REAL TIME  *        40.66 SEC
 DISK USED  *        45.58 MB (local),      325.01 MB (total)
 SF USED    *       145.66 MB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -128.947206   -128.213134   -128.213134   -128.213134   -128.213134   -128.213134
 Replaced energies:   -128.963127   -128.219084   -128.219084   -128.219083   -128.219083   -128.219084

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -128.237297
 Replaced energies:   -128.243246



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -128.96312653

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00  163298.48       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00

    3   3.1  0.0  0.0       0.00       0.00  163298.48       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00  163298.72       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00  163298.74       0.00      -0.01       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00  163298.38       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

    7   1.1  1.0  1.0       0.00      -0.00       0.00      -0.00      -0.01       0.00  157995.58      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    8   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00  157995.58      -0.00
                           -0.00      -0.01       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

    9   1.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.01       0.00       0.00      -0.00  157995.58
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -128.96312653 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000  163298.482       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.008

    3    1  |0 0>               0.000       0.000  163298.483       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000  163298.716       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000  163298.737       0.000      -0.011       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000  163298.385       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.011       0.000  157995.581      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000  157995.581
                               -0.000      -0.008       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.002       0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9

    1    1  |0 0>               0.000
                               -0.000

    2    1  |0 0>               0.000
                                0.000

    3    1  |0 0>               0.000
                                0.002

    4    1  |0 0>               0.000
                               -0.000

    5    1  |0 0>               0.000
                                0.000

    6    1  |0 0>               0.000
                                0.000

    1    1  |1 1>+              0.000
                                0.000

    1    1  |1 0>               0.000
                               -0.000

    1    1  |1 1>-         157995.581
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -128.96312653     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -128.24324569     0.71988083   157995.58      0.71988083   157995.58     19.5890
    3  -128.24324569     0.71988083   157995.58      0.71988083   157995.58     19.5890
    4  -128.24324569     0.71988083   157995.58      0.71988083   157995.58     19.5890
    5  -128.21908434     0.74404219   163298.38      0.74404219   163298.38     20.2464
    6  -128.21908390     0.74404263   163298.48      0.74404263   163298.48     20.2464
    7  -128.21908389     0.74404263   163298.48      0.74404263   163298.48     20.2464
    8  -128.21908283     0.74404370   163298.72      0.74404370   163298.72     20.2465
    9  -128.21908273     0.74404379   163298.74      0.74404379   163298.74     20.2465

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000154  0.00000000 -0.00000000  1.00000000  0.00000010  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000039  0.00000000 -0.00000010  1.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  1.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000205 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  1.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.99999912 -0.00128182  0.00034171  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00128170  0.99999912  0.00034613 -0.00000000 -0.00000154  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00034215 -0.00034569  0.99999988 -0.00000000 -0.00000000 -0.00000039  0.00000000

 State Sym Spin     / Nr.      9

   1    1  |0 0>          -0.00000000
                           0.00000000

   2    1  |0 0>           0.00000000
                          -0.00000000

   3    1  |0 0>          -0.00000000
                          -0.00000000

   4    1  |0 0>           0.00000000
                           0.00000000

   5    1  |0 0>           1.00000000
                          -0.00000000

   6    1  |0 0>           0.00000000
                           0.00000000

   1    1  |1 1>+         -0.00000205
                          -0.00000000

   1    1  |1 0>           0.00000000
                          -0.00000000

   1    1  |1 1>-          0.00000000
                          -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -128.96312653      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -128.24324569      0.71988083   157995.58      0.71988083   157995.58     19.5890
     3   1   -128.24324569      0.71988083   157995.58      0.71988083   157995.58     19.5890
     4   1   -128.24324569      0.71988083   157995.58      0.71988083   157995.58     19.5890
     5   1   -128.21908434      0.74404219   163298.38      0.74404219   163298.38     20.2464
     6   1   -128.21908390      0.74404263   163298.48      0.74404263   163298.48     20.2464
     7   1   -128.21908389      0.74404263   163298.48      0.74404263   163298.48     20.2464
     8   1   -128.21908283      0.74404370   163298.72      0.74404370   163298.72     20.2465
     9   1   -128.21908273      0.74404379   163298.74      0.74404379   163298.74     20.2465

 E0 =   -128.96312653 is the energy of the lowest zeroth-order state
 E1 =   -128.96312653 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000154  0.00000000 -0.00000000  1.00000000  0.00000010  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000039  0.00000000 -0.00000010  1.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  1.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000205 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  1.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>+      -0.00000000  0.99999912 -0.00128182  0.00034171  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00128170  0.99999912  0.00034613 -0.00000000 -0.00000154  0.00000000  0.00000000

  9  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00034215 -0.00034569  0.99999988 -0.00000000 -0.00000000 -0.00000039  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |0 0>       -0.00000000
                                0.00000000

  2  1     2    1  |0 0>        0.00000000
                               -0.00000000

  3  1     3    1  |0 0>       -0.00000000
                               -0.00000000

  4  1     4    1  |0 0>        0.00000000
                                0.00000000

  5  1     5    1  |0 0>        1.00000000
                               -0.00000000

  6  1     6    1  |0 0>        0.00000000
                                0.00000000

  7  1     1    1  |1 1>+      -0.00000205
                               -0.00000000

  8  1     1    1  |1 0>        0.00000000
                               -0.00000000

  9  1     1    1  |1 1>-       0.00000000
                               -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>+         0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     1    1  |1 1>-         0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |0 0>          0.00%
  2  1     2    1  |0 0>          0.00%
  3  1     3    1  |0 0>          0.00%
  4  1     4    1  |0 0>          0.00%
  5  1     5    1  |0 0>        100.00%
  6  1     6    1  |0 0>          0.00%
  7  1     1    1  |1 1>+         0.00%
  8  1     1    1  |1 0>          0.00%
  9  1     1    1  |1 1>-         0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       15.80       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        49.00     11.20      2.10      1.23     32.70      0.98      0.02      0.49
 REAL TIME  *        52.26 SEC
 DISK USED  *        45.58 MB (local),      325.01 MB (total)
 SF USED    *       145.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -128.219082732765

              CI              CI           MULTI         RHF-SCF
   -128.23729702   -128.21313435   -128.01603385   -126.85019653
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
