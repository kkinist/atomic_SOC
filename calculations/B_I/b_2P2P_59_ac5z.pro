
 Working directory              : /wrk/irikura/molpro.CLaXjuZjPp/
 Global scratch directory       : /wrk/irikura/molpro.CLaXjuZjPp/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CLaXjuZjPp/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,B SO-CI
                                                                                 ! Active space (5,8) (add 3p virtuals)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={B};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=5,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
                                                                                 ! add second 2P
 {multi,wmk_old
     closed,0,0
     occ,3,6
     wf,sym=2,spin=1;state,6;
         weight,3[99],3[1]
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;option,nstati=6;wf,sym=2,spin=1;state,6; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   B SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 11:11:25  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry B      S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry B      H aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  B       5.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    5
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          198
 NUMBER OF CONTRACTIONS:          181   (   87Ag  +   94Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     110.887 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 19.661 MB, node maximum: 27.001 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   13716042.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   13716042      RECORD LENGTH: 524288

 Memory used in sort:      14.27 MW

 SORT1 READ   116167465. AND WROTE     2446238. INTEGRALS IN      7 RECORDS. CPU TIME:     0.66 SEC, REAL TIME:     0.71 SEC
 SORT2 READ    12140186. AND WROTE    68575111. INTEGRALS IN    375 RECORDS. CPU TIME:     0.33 SEC, REAL TIME:     0.36 SEC

 Node minimum:    13713236.  Node maximum:    13716554. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       19202111121314151617  18192021

 Eigenvalues of metric

         1 0.336E-05 0.502E-03 0.517E-02 0.996E-02 0.431E-01 0.431E-01 0.431E-01 0.431E-01
         2 0.195E-03 0.195E-03 0.195E-03 0.233E-01 0.233E-01 0.233E-01 0.457E-01 0.457E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.06      2.83
 REAL TIME  *         4.32 SEC
 DISK USED  *        30.07 MB (local),      378.02 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   1
 Initial beta  occupancy:   2   0

 NELEC=    5   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.50821889     -24.50821889     0.00D+00     0.30D-01     0     0       0.08      0.15    start
   2      -24.53175593      -0.02353704     0.40D-02     0.53D-02     1     0       0.09      0.24    diag2
   3      -24.53486599      -0.00311006     0.11D-02     0.13D-02     2     0       0.08      0.32    diag2
   4      -24.53581969      -0.00095370     0.59D-03     0.12D-02     3     0       0.08      0.40    diag2
   5      -24.53586346      -0.00004377     0.14D-03     0.35D-03     4     0       0.09      0.49    diag2
   6      -24.53586411      -0.00000065     0.21D-04     0.51D-04     5     0       0.08      0.57    diag2
   7      -24.53586411      -0.00000000     0.17D-05     0.49D-05     6     0       0.07      0.64    diag2
   8      -24.53586411      -0.00000000     0.18D-06     0.57D-06     7     0       0.09      0.73    fixocc
   9      -24.53586411      -0.00000000     0.14D-07     0.17D-07     0     0       0.08      0.81    diag

 Final alpha occupancy:   2   1
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -24.535864111306
  RHF One-electron energy             -32.377729328245
  RHF Two-electron energy               7.841865216939
  RHF Kinetic energy                   24.584902589169
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.998005341787

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.69709     1  1  s    0.99718
    2.1     2.00000    -0.49496     1  2  s    1.00461
    1.2     1.00000    -0.30990     1  1  px   0.99824


 HOMO      1.2    -0.309896 =      -8.4327eV
 LUMO      2.2     0.020023 =       0.5449eV
 LUMO-HOMO         0.329920 =       8.9776eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.91       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.87      0.80      2.83
 REAL TIME  *         5.15 SEC
 DISK USED  *        32.74 MB (local),      391.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)

 Number of active  orbitals:        9 (    3    6)
 Number of external orbitals:     172 (   84   88)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:             954   (1512 determinants, 3024 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.149D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.145D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 1 5   4 3 2 611 714 81015  13 912 1 3 4 5 2 611   714 8151013 912 2 6
                                        3 4 5 1 71114 81510  13 912 2 6 3 4 5 1 2   6 3 4 511 7 8141015  13 912 1 2 6 4 3 5 1
                                        2 6 3 4 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.313D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.503D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.503D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.469D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.571D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.582D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 3 2 5   6 4 8 910 7 1 2 3 6   5 4 8 910 7 1 2 312  19142117161520131811
                                        6 5 4 810 9 7 2 3 1  19121421171620151318  11 6 5 4 8 910 7 2 3   1 6 5 8 410 9 7 2 3
                                        1 2 3 1 5 6 8 410 9   7 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-01 (gradient)  0.10E-05 (energy)  0.10E-02 (step length)

 Weight factors for state symmetry  1:    0.33000   0.33000   0.33000   0.00333   0.00333   0.00333

 Number of orbital rotations:      780   (     0 Core/Active      0 Core/Virtual   0 Active/Active    780 Active/Virtual)
 Total number of variables:       9852


 ITER. MIC  NCI  NEG     ENERGY(VAR)     ENERGY(PROJ)   ENERGY CHANGE     GRAD(0)  GRAD(ORB)   GRAD(CI)     STEP       TIME

   1  172   17    0     -24.52690048     -24.57729055   -0.05039007    0.07502137 0.00022177 0.00751401  0.18D+01      0.61
   2  120   23    0     -24.57649322     -24.57665040   -0.00015718    0.00650259 0.00000430 0.00020611  0.17D+00      1.33
   3   37   12    0     -24.57665045     -24.57665045   -0.00000000    0.00001023 0.00000064 0.00001731  0.27D-03      1.75
   4   40   10    0     -24.57665045     -24.57665045   -0.00000000    0.00000096 0.00000006 0.00000145  0.17D-04      2.16
   5   40    6    0     -24.57665045     -24.57665045   -0.00000000    0.00000009 0.00000001 0.00000012  0.14D-05      2.56

 ** WVFN ****  CONVERGENCE REACHED, FINAL GRADIENT:  0.67D-08



 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy              -24.580053511224
 Nuclear energy                         0.00000000
 Kinetic energy                        24.62203775
 One electron energy                  -32.35526673
 Two electron energy                    7.77521322
 Virial ratio                           1.99829485

 !MCSCF STATE 1.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy              -24.580053511207
 Nuclear energy                         0.00000000
 Kinetic energy                        24.62203775
 One electron energy                  -32.35526673
 Two electron energy                    7.77521322
 Virial ratio                           1.99829485

 !MCSCF STATE 2.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy              -24.580053511205
 Nuclear energy                         0.00000000
 Kinetic energy                        24.62203775
 One electron energy                  -32.35526673
 Two electron energy                    7.77521322
 Virial ratio                           1.99829485

 !MCSCF STATE 3.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy              -24.239747780275
 Nuclear energy                         0.00000000
 Kinetic energy                        24.98643535
 One electron energy                  -31.73264447
 Two electron energy                    7.49289669
 Virial ratio                           1.97011628

 !MCSCF STATE 4.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy              -24.239747780092
 Nuclear energy                         0.00000000
 Kinetic energy                        24.98643535
 One electron energy                  -31.73264447
 Two electron energy                    7.49289669
 Virial ratio                           1.97011628

 !MCSCF STATE 5.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy              -24.239747778891
 Nuclear energy                         0.00000000
 Kinetic energy                        24.98643535
 One electron energy                  -31.73264447
 Two electron energy                    7.49289669
 Virial ratio                           1.97011628

 !MCSCF STATE 6.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 State-averaged charge density matrix saved on record  2140.2 (density set 1)

 !MCSCF expec        <1.2|LXLX|1.2>     0.000000000000
 !MCSCF expec        <2.2|LXLX|2.2>     1.000000000000
 !MCSCF expec        <3.2|LXLX|3.2>     1.000000000000
 !MCSCF expec        <4.2|LXLX|4.2>     1.000000000000
 !MCSCF expec        <5.2|LXLX|5.2>     0.999999999967
 !MCSCF expec        <6.2|LXLX|6.2>     0.000000000033
 !MCSCF expec        <1.2|LYLY|1.2>     1.000000000000
 !MCSCF expec        <2.2|LYLY|2.2>     0.000003006543
 !MCSCF expec        <3.2|LYLY|3.2>     0.999996993457
 !MCSCF expec        <4.2|LYLY|4.2>     0.999999999868
 !MCSCF expec        <5.2|LYLY|5.2>     0.000000000165
 !MCSCF expec        <6.2|LYLY|6.2>     0.999999999967
 !MCSCF expec        <1.2|LZLZ|1.2>     1.000000000000
 !MCSCF expec        <2.2|LZLZ|2.2>     0.999996993457
 !MCSCF expec        <3.2|LZLZ|3.2>     0.000003006543
 !MCSCF expec        <4.2|LZLZ|4.2>     0.000000000132
 !MCSCF expec        <5.2|LZLZ|5.2>     0.999999999868
 !MCSCF expec        <6.2|LZLZ|6.2>     1.000000000000
 !MCSCF expec        <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec        <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec        <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec        <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec        <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec        <6.2|L**2|6.2>     2.000000000000


 NATURAL ORBITALS (state averaged)
 =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99992    -7.69116     1  1  s    0.99723
    2.1     1.88514    -0.47743     1  2  s    1.03312
    3.1     0.00843     0.53666     1  2  s   -1.69710    1  4  s   -0.87721    1  5  s    1.34991    1  6  s    1.32641
    1.2     0.36173     0.02187     1  1  py   0.96098
    2.2     0.36173     0.02187     1  1  pz   0.96098
    3.2     0.36173     0.02187     1  1  px   0.96098
    4.2     0.00711     0.36656     1  1  pz  -0.82551    1  4  pz   0.78008    1  5  pz   0.72941
    5.2     0.00711     0.36656     1  1  py  -0.82551    1  4  py   0.78008    1  5  py   0.72941
    6.2     0.00711     0.36656     1  1  px  -0.82551    1  4  px   0.78008    1  5  px   0.72941


 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 5 4 3 6 2   5 4 3 6 113101415 9   7 81211 2 5 4 3 610  13 9141511 7 812 2 4
                                        5 3 6 11013 9 812 7  111514 2 4 3 5 6 1 2   3 4 5 6 9 812131011  1415 7 1 2 4 3 5 6 1
                                        2 5 3 4 6 1 1
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.171D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.168D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 1 2 3 7   9 4 6 5 810 1 2 3 7   910 8 4 6 5 1 2 320  18151711141619122113
                                        6 410 8 9 7 5 1 3 2  17152018191614111321  12 6 4 9 710 8 5 1 2   3 6 810 4 7 9 5 2 1
                                        3 2 1 310 8 4 5 9 7   6 2 1 3

 Natural orbital dump (state averaged) at molpro section  2140.2    (Orbital set 2)


 CI vector
 =========

 220 a00000      0.0000000   0.9694957   0.0000000  -0.0000004  -0.0288895  -0.0000001
 220 00a000      0.9694957  -0.0000000  -0.0002629   0.0000002   0.0000001  -0.0288895
 220 0a0000     -0.0002629   0.0000000  -0.9694957  -0.0288895   0.0000004  -0.0000002
 220 000a00     -0.0000052   0.0000003  -0.0192966   0.9365048   0.0000033   0.0000049
 220 0000a0      0.0000000   0.0192966   0.0000003  -0.0000033   0.9365048   0.0000045
 220 00000a      0.0192966  -0.0000000  -0.0000052  -0.0000049  -0.0000045   0.9365048
 2ab 00a000      0.0100108   0.0000000  -0.0000027   0.0000009   0.0000008  -0.1629844
 2ab a00000     -0.0000000   0.0100108  -0.0000000  -0.0000022  -0.1629844  -0.0000008
 2ab 0a0000     -0.0000027  -0.0000000  -0.0100108  -0.1629844   0.0000022  -0.0000009
 200 a02000      0.0000000  -0.1539428  -0.0000000  -0.0000000  -0.0014214  -0.0000000
 200 a20000      0.0000000  -0.1539428   0.0000000  -0.0000000  -0.0014214  -0.0000000
 200 0a2000      0.0000417  -0.0000000   0.1539428  -0.0014214   0.0000000  -0.0000000
 200 2a0000      0.0000417   0.0000000   0.1539428  -0.0014214   0.0000000  -0.0000000
 200 20a000     -0.1539428   0.0000000   0.0000417   0.0000000   0.0000000  -0.0014214
 200 02a000     -0.1539428   0.0000000   0.0000417   0.0000000   0.0000000  -0.0014214
 200 002a00      0.0000013  -0.0000001   0.0046557  -0.1487986  -0.0000005  -0.0000008
 200 0020a0     -0.0000000  -0.0046557  -0.0000001   0.0000005  -0.1487986  -0.0000007
 200 200a00      0.0000013  -0.0000006   0.0046557  -0.1487986  -0.0000005  -0.0000008
 200 0200a0     -0.0000000  -0.0046557  -0.0000006   0.0000005  -0.1487986  -0.0000007
 200 20000a     -0.0046557   0.0000000   0.0000013   0.0000008   0.0000007  -0.1487986
 200 02000a     -0.0046557   0.0000000   0.0000013   0.0000008   0.0000007  -0.1487986
 200 020a00      0.0000097  -0.0000001   0.0356272  -0.1466732  -0.0000005  -0.0000008
 200 2000a0     -0.0000000  -0.0356272  -0.0000001   0.0000005  -0.1466732  -0.0000007
 200 00200a     -0.0356272   0.0000000   0.0000097   0.0000008   0.0000007  -0.1466732
 2aa 00b000     -0.0171590   0.0000000   0.0000047  -0.0000007  -0.0000006   0.1236728
 2aa b00000      0.0000000  -0.0171590   0.0000000   0.0000017   0.1236728   0.0000006
 2aa 0b0000      0.0000047   0.0000000   0.0171590   0.1236728  -0.0000017   0.0000007
 2ab 0000a0     -0.0000000  -0.0562910  -0.0000009   0.0000001  -0.0221386  -0.0000001
 2ab 00000a     -0.0562910   0.0000000   0.0000153   0.0000001   0.0000001  -0.0221386
 2ab 000a00      0.0000153  -0.0000009   0.0562910  -0.0221386  -0.0000001  -0.0000001

 TOTAL ENERGIES                       -24.58005351   -24.58005351   -24.58005351
                                      -24.23974778   -24.23974778   -24.23974778



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.57       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.86      2.98      0.80      2.83
 REAL TIME  *         8.42 SEC
 DISK USED  *        40.47 MB (local),      429.99 MB (total)
 SF USED    *        26.10 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -24.58005351   2.0
    -24.58005351   2.0
    -24.58005351   2.0
    -24.23974778   2.0
    -24.23974778   2.0
    -24.23974778   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Program parameters:       NSTATE=  6    NSTATI=  6    NSTATR=  6    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT = 30    MAXITI= 50    MAXDAV= 18    MAXVI = 18    NOSING=  0    NOPAIR=  0
                           MXSHRF=  5    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  0    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  2    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0    OVBK  =  0

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  5
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:      462 conf      954 CSFs
 N elec internal:      882 conf     1890 CSFs
 N-1 el internal:      414 conf     1170 CSFs
 N-2 el internal:      156 conf      564 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces:  5


 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:     172 (  84  88 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -24.58005351
     2       -24.58005351
     3       -24.58005351
     4       -24.23974778
     5       -24.23974778
     6       -24.23974778

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1915D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2101D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1243D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2553D-06

 Number of blocks in overlap matrix:     4   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:     406
 Number of N-1 electron functions:    1170

 Number of internal configurations:                  954
 Number of singly external configurations:        100632
 Number of doubly external configurations:       3003580
 Total number of contracted configurations:      3105166
 Total number of uncontracted configurations:    4269694

 Diagonal Coupling coefficients finished.               Storage:   1079116 words, CPU-Time:      0.74 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    700541 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -24.58005351     0.00000000    -0.07023042  0.15D-01  0.10D-02     1.15
    1     2     2     1.00000000     0.00000000   -24.58005351     0.00000000    -0.07023054  0.15D-01  0.10D-02     1.15
    1     3     3     1.00000000     0.00000000   -24.58005351     0.00000000    -0.07017698  0.15D-01  0.10D-02     1.15
    1     4     4     1.00000000     0.00000000   -24.23974778     0.00000000    -0.09555029  0.43D-01  0.10D-02     1.15
    1     5     5     1.00000000     0.00000000   -24.23974778     0.00000000    -0.09556853  0.43D-01  0.10D-02     1.15
    1     6     6     1.00000000     0.00000000   -24.23974778     0.00000000    -0.09556868  0.43D-01  0.10D-02     1.15
    2     1     1     1.01754911    -0.07353579   -24.65358930    -0.07353579    -0.00128045  0.14D-03  0.46D-04    66.54
    2     2     2     1.01761610    -0.07353423   -24.65358774    -0.07353423    -0.00128101  0.14D-03  0.46D-04    66.54
    2     3     3     1.01761605    -0.07353420   -24.65358771    -0.07353420    -0.00128106  0.14D-03  0.46D-04    66.54
    2     4     4     1.06837464    -0.11926352   -24.35901130    -0.11926352    -0.01935346  0.22D-01  0.86D-04    66.54
    2     5     5     1.06838795    -0.11925327   -24.35900105    -0.11925327    -0.01935682  0.22D-01  0.86D-04    66.54
    2     6     6     1.06838812    -0.11925325   -24.35900103    -0.11925325    -0.01935689  0.22D-01  0.86D-04    66.54
    3     1     1     1.02065678    -0.07596834   -24.65602185    -0.00243255    -0.00058505  0.50D-04  0.21D-04   131.11
    3     2     2     1.02061116    -0.07596588   -24.65601939    -0.00243165    -0.00058624  0.50D-04  0.21D-04   131.11
    3     3     3     1.02061092    -0.07596578   -24.65601929    -0.00243158    -0.00058630  0.50D-04  0.21D-04   131.11
    3     4     4     1.42156677    -0.16417656   -24.40392434    -0.04491304    -0.00441618  0.43D-02  0.43D-04   131.11
    3     5     5     1.42149404    -0.16417405   -24.40392183    -0.04492077    -0.00441810  0.43D-02  0.43D-04   131.11
    3     6     6     1.42149175    -0.16417388   -24.40392166    -0.04492063    -0.00441827  0.43D-02  0.43D-04   131.11
    4     1     1     1.02193538    -0.07750298   -24.65755649    -0.00153464    -0.00021698  0.40D-04  0.71D-05   195.68
    4     2     2     1.02193186    -0.07750236   -24.65755587    -0.00153649    -0.00021706  0.40D-04  0.71D-05   195.68
    4     3     3     1.02193189    -0.07750221   -24.65755572    -0.00153643    -0.00021716  0.40D-04  0.71D-05   195.68
    4     4     4     1.61553906    -0.17147076   -24.41121854    -0.00729420    -0.00136621  0.14D-02  0.14D-04   195.68
    4     5     5     1.61546977    -0.17146930   -24.41121708    -0.00729526    -0.00136663  0.14D-02  0.14D-04   195.68
    4     6     6     1.61546284    -0.17146914   -24.41121692    -0.00729526    -0.00136670  0.14D-02  0.14D-04   195.68
    5     1     1     1.02010357    -0.07786109   -24.65791461    -0.00035812    -0.00006987  0.56D-05  0.25D-05   260.36
    5     2     2     1.02011261    -0.07786070   -24.65791421    -0.00035834    -0.00007000  0.56D-05  0.25D-05   260.36
    5     3     3     1.02011310    -0.07786063   -24.65791414    -0.00035842    -0.00007001  0.56D-05  0.25D-05   260.36
    5     4     4     1.72124576    -0.17403394   -24.41378172    -0.00256318    -0.00032952  0.12D-03  0.65D-05   260.36
    5     5     5     1.72121106    -0.17403366   -24.41378144    -0.00256436    -0.00032974  0.12D-03  0.65D-05   260.36
    5     6     6     1.72120595    -0.17403358   -24.41378136    -0.00256444    -0.00032980  0.12D-03  0.65D-05   260.36
    6     1     1     1.02085438    -0.07800297   -24.65805648    -0.00014187    -0.00003938  0.21D-05  0.13D-05   325.00
    6     2     2     1.02084539    -0.07800276   -24.65805628    -0.00014207    -0.00003946  0.21D-05  0.13D-05   325.00
    6     3     3     1.02084519    -0.07800274   -24.65805625    -0.00014211    -0.00003945  0.21D-05  0.13D-05   325.00
    6     4     4     1.78062509    -0.17450394   -24.41425172    -0.00047001    -0.00008217  0.22D-04  0.27D-05   325.00
    6     5     5     1.78060866    -0.17450390   -24.41425168    -0.00047024    -0.00008220  0.22D-04  0.27D-05   325.00
    6     6     6     1.78060145    -0.17450386   -24.41425164    -0.00047028    -0.00008222  0.22D-04  0.27D-05   325.00
    7     1     1     1.02158845    -0.07807352   -24.65812703    -0.00007055    -0.00001983  0.44D-05  0.55D-06   389.70
    7     2     2     1.02158857    -0.07807338   -24.65812690    -0.00007062    -0.00001988  0.45D-05  0.55D-06   389.70
    7     3     3     1.02158867    -0.07807338   -24.65812690    -0.00007064    -0.00001987  0.45D-05  0.55D-06   389.70
    7     4     4     1.80956131    -0.17467299   -24.41442077    -0.00016905    -0.00005904  0.14D-04  0.17D-05   389.70
    7     5     5     1.80954547    -0.17467294   -24.41442072    -0.00016904    -0.00005904  0.14D-04  0.17D-05   389.70
    7     6     6     1.80954098    -0.17467290   -24.41442068    -0.00016904    -0.00005904  0.14D-04  0.17D-05   389.70
    8     1     1     1.02114536    -0.07810545   -24.65815897    -0.00003194    -0.00000947  0.53D-06  0.33D-06   454.43
    8     2     2     1.02114694    -0.07810537   -24.65815888    -0.00003199    -0.00000949  0.55D-06  0.33D-06   454.43
    8     3     3     1.02114717    -0.07810537   -24.65815888    -0.00003198    -0.00000950  0.54D-06  0.34D-06   454.43
    8     4     4     1.81360962    -0.17479118   -24.41453896    -0.00011819    -0.00004507  0.11D-04  0.11D-05   454.43
    8     5     5     1.81360664    -0.17479116   -24.41453894    -0.00011823    -0.00004509  0.11D-04  0.11D-05   454.43
    8     6     6     1.81360661    -0.17479114   -24.41453891    -0.00011823    -0.00004509  0.11D-04  0.11D-05   454.43
    9     1     1     1.02119172    -0.07812172   -24.65817524    -0.00001627    -0.00000566  0.24D-06  0.22D-06   519.27
    9     2     2     1.02118972    -0.07812168   -24.65817519    -0.00001631    -0.00000568  0.24D-06  0.22D-06   519.27
    9     3     3     1.02118947    -0.07812168   -24.65817519    -0.00001631    -0.00000568  0.24D-06  0.22D-06   519.27
    9     4     4     1.81507505    -0.17485509   -24.41460287    -0.00006391    -0.00001880  0.39D-05  0.64D-06   519.27
    9     5     5     1.81507302    -0.17485508   -24.41460286    -0.00006392    -0.00001880  0.38D-05  0.64D-06   519.27
    9     6     6     1.81507430    -0.17485506   -24.41460284    -0.00006393    -0.00001881  0.39D-05  0.64D-06   519.27
   10     1     1     1.02143906    -0.07813145   -24.65818496    -0.00000972    -0.00000345  0.44D-06  0.11D-06   584.04
   10     2     2     1.02143905    -0.07813142   -24.65818493    -0.00000974    -0.00000346  0.45D-06  0.11D-06   584.04
   10     3     3     1.02143888    -0.07813142   -24.65818493    -0.00000974    -0.00000347  0.45D-06  0.11D-06   584.04
   10     4     4     1.81511677    -0.17489071   -24.41463849    -0.00003562    -0.00001549  0.32D-05  0.48D-06   584.04
   10     5     5     1.81511675    -0.17489070   -24.41463848    -0.00003562    -0.00001548  0.32D-05  0.48D-06   584.04
   10     6     6     1.81511698    -0.17489068   -24.41463846    -0.00003562    -0.00001549  0.32D-05  0.48D-06   584.04
   11     1     1     1.02137319    -0.07813669   -24.65819020    -0.00000524    -0.00000180  0.12D-06  0.66D-07   648.85
   11     2     2     1.02137348    -0.07813667   -24.65819018    -0.00000525    -0.00000181  0.12D-06  0.66D-07   648.85
   11     3     3     1.02137354    -0.07813667   -24.65819018    -0.00000525    -0.00000181  0.12D-06  0.66D-07   648.85
   11     4     4     1.81418599    -0.17491931   -24.41466709    -0.00002860    -0.00001267  0.33D-05  0.32D-06   648.85
   11     5     5     1.81418683    -0.17491930   -24.41466708    -0.00002859    -0.00001266  0.33D-05  0.32D-06   648.85
   11     6     6     1.81418595    -0.17491929   -24.41466706    -0.00002860    -0.00001267  0.33D-05  0.32D-06   648.85
   12     1     1     1.02137420    -0.07813970   -24.65819321    -0.00000301    -0.00000118  0.36D-07  0.49D-07   713.68
   12     2     2     1.02137362    -0.07813969   -24.65819320    -0.00000302    -0.00000118  0.38D-07  0.49D-07   713.68
   12     3     3     1.02137359    -0.07813969   -24.65819320    -0.00000302    -0.00000118  0.38D-07  0.49D-07   713.68
   12     4     4     1.81464825    -0.17493690   -24.41468468    -0.00001759    -0.00000590  0.13D-05  0.19D-06   713.68
   12     5     5     1.81464757    -0.17493687   -24.41468465    -0.00001758    -0.00000590  0.13D-05  0.19D-06   713.68
   12     6     6     1.81464748    -0.17493687   -24.41468465    -0.00001759    -0.00000590  0.13D-05  0.19D-06   713.68
   13     1     1     1.02143825    -0.07814161   -24.65819513    -0.00000191    -0.00000077  0.60D-07  0.30D-07   778.57
   13     2     2     1.02143819    -0.07814161   -24.65819512    -0.00000192    -0.00000077  0.60D-07  0.30D-07   778.57
   13     3     3     1.02143826    -0.07814161   -24.65819512    -0.00000192    -0.00000077  0.60D-07  0.30D-07   778.57
   13     4     4     1.81510430    -0.17494724   -24.41469502    -0.00001034    -0.00000478  0.95D-06  0.15D-06   778.57
   13     5     5     1.81510580    -0.17494722   -24.41469500    -0.00001034    -0.00000478  0.95D-06  0.15D-06   778.57
   13     6     6     1.81510424    -0.17494722   -24.41469499    -0.00001034    -0.00000478  0.95D-06  0.15D-06   778.57
   14     1     1     1.02143199    -0.07814275   -24.65819626    -0.00000114    -0.00000043  0.23D-07  0.17D-07   843.46
   14     2     2     1.02143202    -0.07814275   -24.65819626    -0.00000114    -0.00000043  0.23D-07  0.17D-07   843.46
   14     3     3     1.02143198    -0.07814275   -24.65819626    -0.00000114    -0.00000043  0.24D-07  0.17D-07   843.46
   14     4     4     1.81595507    -0.17495603   -24.41470381    -0.00000879    -0.00000416  0.10D-05  0.11D-06   843.46
   14     5     5     1.81595472    -0.17495601   -24.41470379    -0.00000879    -0.00000416  0.10D-05  0.11D-06   843.46
   14     6     6     1.81595550    -0.17495601   -24.41470378    -0.00000879    -0.00000416  0.10D-05  0.11D-06   843.46
   15     1     1     1.02143963    -0.07814344   -24.65819695    -0.00000069    -0.00000029  0.90D-08  0.13D-07   908.08
   15     2     2     1.02143940    -0.07814344   -24.65819695    -0.00000069    -0.00000029  0.95D-08  0.13D-07   908.08
   15     3     3     1.02143942    -0.07814344   -24.65819695    -0.00000069    -0.00000029  0.95D-08  0.13D-07   908.08
   15     4     4     1.81634877    -0.17496166   -24.41470944    -0.00000563    -0.00000204  0.55D-06  0.66D-07   908.08
   15     5     5     1.81634812    -0.17496163   -24.41470941    -0.00000563    -0.00000204  0.55D-06  0.66D-07   908.08
   15     6     6     1.81634749    -0.17496163   -24.41470941    -0.00000562    -0.00000204  0.55D-06  0.66D-07   908.08
   16     1     1     1.02145745    -0.07814390   -24.65819741    -0.00000046    -0.00000020  0.98D-08  0.86D-08   972.80
   16     2     2     1.02145746    -0.07814390   -24.65819741    -0.00000046    -0.00000020  0.99D-08  0.86D-08   972.80
   16     3     3     1.02145745    -0.07814390   -24.65819741    -0.00000046    -0.00000020  0.98D-08  0.86D-08   972.80
   16     4     4     1.81618941    -0.17496509   -24.41471287    -0.00000344    -0.00000166  0.33D-06  0.56D-07   972.80
   16     5     5     1.81618948    -0.17496507   -24.41471285    -0.00000344    -0.00000166  0.33D-06  0.56D-07   972.80
   16     6     6     1.81619036    -0.17496507   -24.41471285    -0.00000344    -0.00000166  0.33D-06  0.56D-07   972.80
   17     1     1     1.02145559    -0.07814418   -24.65819769    -0.00000029    -0.00000011  0.49D-08  0.49D-08  1037.51
   17     2     2     1.02145558    -0.07814418   -24.65819769    -0.00000029    -0.00000011  0.49D-08  0.49D-08  1037.51
   17     3     3     1.02145560    -0.07814418   -24.65819769    -0.00000029    -0.00000011  0.47D-08  0.49D-08  1037.51
   17     4     4     1.81640234    -0.17496811   -24.41471589    -0.00000302    -0.00000150  0.34D-06  0.46D-07  1037.51
   17     5     5     1.81640211    -0.17496809   -24.41471587    -0.00000302    -0.00000150  0.34D-06  0.46D-07  1037.51
   17     6     6     1.81640317    -0.17496808   -24.41471586    -0.00000301    -0.00000150  0.34D-06  0.46D-07  1037.51
   18     1     1     1.02145586    -0.07814419   -24.65819770    -0.00000000    -0.00000011  0.53D-08  0.49D-08  1073.28
   18     2     2     1.02145585    -0.07814418   -24.65819770    -0.00000000    -0.00000011  0.53D-08  0.49D-08  1073.28
   18     3     3     1.02145587    -0.07814418   -24.65819769    -0.00000000    -0.00000011  0.52D-08  0.49D-08  1073.28
   18     4     4     1.81729928    -0.17497455   -24.41472233    -0.00000645    -0.00000052  0.32D-07  0.20D-07  1073.28
   18     5     5     1.81729963    -0.17497453   -24.41472231    -0.00000645    -0.00000052  0.33D-07  0.20D-07  1073.28
   18     6     6     1.81729882    -0.17497452   -24.41472230    -0.00000644    -0.00000052  0.33D-07  0.20D-07  1073.28
   19     1     1     1.02146216    -0.07814433   -24.65819784    -0.00000014    -0.00000005  0.16D-08  0.27D-08  1137.94
   19     2     2     1.02146217    -0.07814433   -24.65819784    -0.00000014    -0.00000005  0.16D-08  0.27D-08  1137.94
   19     3     3     1.02146222    -0.07814433   -24.65819784    -0.00000014    -0.00000005  0.16D-08  0.27D-08  1137.94
   19     4     4     1.81732468    -0.17497504   -24.41472282    -0.00000048    -0.00000004  0.39D-08  0.23D-08  1137.94
   19     5     5     1.81732485    -0.17497502   -24.41472280    -0.00000048    -0.00000004  0.39D-08  0.23D-08  1137.94
   19     6     6     1.81732466    -0.17497501   -24.41472279    -0.00000048    -0.00000004  0.39D-08  0.23D-08  1137.94


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.3%
 P   0.2%   3.3%  68.0%

 Initialization:   0.1%
 Other:           28.0%

 Total CPU:     1137.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 220/00000           0.0000000   0.9627400   0.0001415   0.0000001   0.0081013  -0.0000001
 22000/000           0.9627400   0.0000000  -0.0002127   0.0081014  -0.0000001   0.0000001
 2200/0000           0.0002127  -0.0001415   0.9627399  -0.0000001   0.0000001   0.0081012
 220000/00          -0.0000025   0.0000017  -0.0113418  -0.0000089   0.0000094   0.7016655
 22000000/          -0.0113419  -0.0000000   0.0000025   0.7016655  -0.0000076   0.0000089
 2200000/0          -0.0000000  -0.0113418  -0.0000017   0.0000076   0.7016655  -0.0000094
 200/02000          -0.0000000  -0.1444215  -0.0000212  -0.0000000  -0.0035485   0.0000000
 20020/000          -0.1444215  -0.0000000   0.0000319  -0.0035484   0.0000000  -0.0000000
 2000/2000          -0.0000319   0.0000212  -0.1444215   0.0000000  -0.0000000  -0.0035486
 20002/000          -0.1444039  -0.0000000   0.0000319  -0.0035589   0.0000000  -0.0000000
 200/20000          -0.0000000  -0.1444039  -0.0000212  -0.0000000  -0.0035589   0.0000000
 2002/0000          -0.0000319   0.0000212  -0.1444038   0.0000000  -0.0000000  -0.0035590
 200200/00           0.0000001  -0.0000001   0.0006516   0.0000014  -0.0000014  -0.1072994
 2000200/0           0.0000000   0.0006516   0.0000001  -0.0000012  -0.1072993   0.0000014
 20002000/           0.0006516  -0.0000000  -0.0000001  -0.1072993   0.0000012  -0.0000014
 20020000/           0.0006450   0.0000000  -0.0000001  -0.1072968   0.0000012  -0.0000014
 200002/00           0.0000001  -0.0000001   0.0006450   0.0000014  -0.0000014  -0.1072965
 2000020/0          -0.0000000   0.0006450   0.0000001  -0.0000012  -0.1072964   0.0000014
 200020/00          -0.0000066   0.0000044  -0.0298578   0.0000013  -0.0000014  -0.1053743
 2002000/0          -0.0000000  -0.0298578  -0.0000044  -0.0000011  -0.1053743   0.0000014
 20000200/          -0.0298576  -0.0000000   0.0000066  -0.1053737   0.0000011  -0.0000013
 2//00\000          -0.0234088  -0.0000000   0.0000052   0.0819125  -0.0000009   0.0000010
 2//\00000          -0.0000000  -0.0234089  -0.0000034   0.0000009   0.0819122  -0.0000011
 2//0\0000          -0.0000052   0.0000034  -0.0234089  -0.0000010   0.0000011   0.0819122
 2/\00000/          -0.0571386  -0.0000000   0.0000126  -0.0767421   0.0000008  -0.0000010
 2/\0000/0          -0.0000000  -0.0571385  -0.0000084  -0.0000008  -0.0767420   0.0000010
 2/\000/00          -0.0000126   0.0000084  -0.0571386   0.0000010  -0.0000010  -0.0767420
 2/\/00000          -0.0000000  -0.0043564  -0.0000006  -0.0000008  -0.0747161   0.0000010
 2/\00/000          -0.0043563  -0.0000000   0.0000010  -0.0747161   0.0000008  -0.0000009
 2/\0/0000          -0.0000010   0.0000006  -0.0043564   0.0000009  -0.0000010  -0.0747161

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 220000000   9.2     0.0000010  -0.0000007   0.0046441   0.0000069  -0.0000073  -0.5417576
 220000000   8.2     0.0000000   0.0046440   0.0000007  -0.0000059  -0.5417575   0.0000073
 220000000   7.2     0.0046441   0.0000000  -0.0000010  -0.5417574   0.0000059  -0.0000069
 220000000  18.2     0.0000000   0.0063919   0.0000009  -0.0000033  -0.3070289   0.0000041
 220000000  17.2     0.0063919   0.0000000  -0.0000014  -0.3070289   0.0000033  -0.0000039
 220000000  19.2     0.0000014  -0.0000009   0.0063919   0.0000039  -0.0000041  -0.3070287
 2\/000000   8.2     0.0000000  -0.0036787  -0.0000005   0.0000010   0.0914946  -0.0000012
 2\/000000   7.2    -0.0036787  -0.0000000   0.0000008   0.0914946  -0.0000010   0.0000012
 2\/000000   9.2    -0.0000008   0.0000005  -0.0036787  -0.0000012   0.0000012   0.0914946
 200020000   8.2     0.0000000  -0.0007130  -0.0000001   0.0000009   0.0859599  -0.0000012
 200020000   7.2    -0.0007130  -0.0000000   0.0000002   0.0859599  -0.0000009   0.0000011
 200200000   9.2    -0.0000002   0.0000001  -0.0007129  -0.0000011   0.0000012   0.0859597
 200200000   7.2    -0.0007125  -0.0000000   0.0000002   0.0859595  -0.0000009   0.0000011
 200002000   9.2    -0.0000002   0.0000001  -0.0007124  -0.0000011   0.0000012   0.0859578
 200002000   8.2     0.0000000  -0.0007125  -0.0000001   0.0000009   0.0859578  -0.0000012
 200020000   9.2    -0.0000001   0.0000001  -0.0003668  -0.0000011   0.0000011   0.0849328
 200200000   8.2     0.0000000  -0.0003669  -0.0000001   0.0000009   0.0849326  -0.0000011
 200002000   7.2    -0.0003669  -0.0000000   0.0000001   0.0849310  -0.0000009   0.0000011
 220000000  29.2    -0.0000002   0.0000001  -0.0009313   0.0000008  -0.0000009  -0.0649356
 220000000  27.2    -0.0009311   0.0000000   0.0000002  -0.0649355   0.0000007  -0.0000008
 220000000  28.2    -0.0000000  -0.0009312  -0.0000001  -0.0000007  -0.0649355   0.0000009
 2\/000000  19.2    -0.0000023   0.0000016  -0.0105945  -0.0000007   0.0000008   0.0584967
 2\/000000  18.2    -0.0000000  -0.0105945  -0.0000016   0.0000006   0.0584967  -0.0000008
 2\/000000  17.2    -0.0105946  -0.0000000   0.0000023   0.0584967  -0.0000006   0.0000007

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.988760    0.000000    0.000218   -0.000007   -0.000000   -0.031173
 2           0.000000    0.988760   -0.000145    0.000005   -0.031173   -0.000000
 3          -0.000218    0.000145    0.988760   -0.031173   -0.000005    0.000007
 4           0.032320    0.000000   -0.000000   -0.000009    0.000008    0.738353
 5          -0.000000    0.032320    0.000000    0.000010    0.738353   -0.000008
 6           0.000000   -0.000000    0.032320    0.738353   -0.000010    0.000009

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.989237   -0.000000   -0.000000    0.005173   -0.000000    0.000001
 2          -0.000000    0.989237    0.000000    0.000000    0.005173   -0.000001
 3          -0.000000    0.000000    0.989237   -0.000001    0.000001    0.005173
 4           0.005173    0.000000   -0.000001    0.739042    0.000000    0.000000
 5          -0.000000    0.005173    0.000001    0.000000    0.739042   -0.000000
 6           0.000001   -0.000001    0.005173    0.000000   -0.000000    0.739042


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98875970 (fixed)   0.98943862 (relaxed)   0.98923748 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040670   -0.00006533   -0.05214596
 Singles      0.01814496   -0.02923406   -0.02999072
 Pairs        0.00332593    0.00434474    0.00399236
 Total        1.02187758   -0.02495465   -0.07814433
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57959421
 Nuclear energy                         0.00000000
 Kinetic energy                        24.70566681
 One electron energy                  -32.33288403
 Two electron energy                    7.67468619
 Virial quotient                       -0.99807862
 Correlation energy                    -0.07860363
 !MRCI STATE 1.2 Energy               -24.658197840495

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65991750 (Davidson, fixed reference)
 Cluster corrected energies           -24.65988484 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65991750 (Davidson, rotated reference)

 Cluster corrected energies           -24.65905757 (Pople, fixed reference)
 Cluster corrected energies           -24.65904125 (Pople, relaxed reference)
 Cluster corrected energies           -24.65905757 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.98875971 (fixed)   0.98943862 (relaxed)   0.98923748 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040670   -0.00006533   -0.04789423
 Singles      0.01814496   -0.02923407   -0.02999072
 Pairs        0.00332594    0.00000000   -0.00025938
 Total        1.02187760   -0.02929940   -0.07814433
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57959421
 Nuclear energy                         0.00000000
 Kinetic energy                        24.70566806
 One electron energy                  -32.33288415
 Two electron energy                    7.67468631
 Virial quotient                       -0.99807857
 Correlation energy                    -0.07860362
 !MRCI STATE 2.2 Energy               -24.658197838717

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65991750 (Davidson, fixed reference)
 Cluster corrected energies           -24.65988484 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65991750 (Davidson, rotated reference)

 Cluster corrected energies           -24.65905757 (Pople, fixed reference)
 Cluster corrected energies           -24.65904124 (Pople, relaxed reference)
 Cluster corrected energies           -24.65905757 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.98875967 (fixed)   0.98943859 (relaxed)   0.98923746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040670   -0.00006533   -0.04789326
 Singles      0.01814498   -0.02923410   -0.02999072
 Pairs        0.00332596   -0.00000096   -0.00026035
 Total        1.02187764   -0.02930039   -0.07814433
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.57959422
 Nuclear energy                         0.00000000
 Kinetic energy                        24.70566873
 One electron energy                  -32.33288419
 Two electron energy                    7.67468635
 Virial quotient                       -0.99807854
 Correlation energy                    -0.07860362
 !MRCI STATE 3.2 Energy               -24.658197837687

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.65991750 (Davidson, fixed reference)
 Cluster corrected energies           -24.65988485 (Davidson, relaxed reference)
 Cluster corrected energies           -24.65991750 (Davidson, rotated reference)

 Cluster corrected energies           -24.65905757 (Pople, fixed reference)
 Cluster corrected energies           -24.65904124 (Pople, relaxed reference)
 Cluster corrected energies           -24.65905757 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.73835276 (fixed)   0.74179472 (relaxed)   0.73904170 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00746413   -0.00008743   -0.00099226
 Singles      0.81963147   -0.12974976   -0.14919877
 Pairs        0.00379383   -0.04471460   -0.02478400
 Total        1.83088943   -0.17455179   -0.17497504
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.24020708
 Nuclear energy                         0.00000000
 Kinetic energy                        24.50797040
 One electron energy                  -31.14644812
 Two electron energy                    6.73172530
 Virial quotient                       -0.99619521
 Correlation energy                    -0.17451574
 !MRCI STATE 4.2 Energy               -24.414722818455

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.55972610 (Davidson, fixed reference)
 Cluster corrected energies           -24.55735884 (Davidson, relaxed reference)
 Cluster corrected energies           -24.55972610 (Davidson, rotated reference)

 Cluster corrected energies           -24.47776375 (Pople, fixed reference)
 Cluster corrected energies           -24.47696802 (Pople, relaxed reference)
 Cluster corrected energies           -24.47776375 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.73835271 (fixed)   0.74179469 (relaxed)   0.73904164 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00746418   -0.00008743   -0.02541486
 Singles      0.81963168   -0.12974974   -0.14919875
 Pairs        0.00379383    0.00000049   -0.00036140
 Total        1.83088968   -0.12983669   -0.17497502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.24020708
 Nuclear energy                         0.00000000
 Kinetic energy                        24.50797073
 One electron energy                  -31.14644822
 Two electron energy                    6.73172542
 Virial quotient                       -0.99619520
 Correlation energy                    -0.17451572
 !MRCI STATE 5.2 Energy               -24.414722798959

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.55972611 (Davidson, fixed reference)
 Cluster corrected energies           -24.55735884 (Davidson, relaxed reference)
 Cluster corrected energies           -24.55972611 (Davidson, rotated reference)

 Cluster corrected energies           -24.47776374 (Pople, fixed reference)
 Cluster corrected energies           -24.47696800 (Pople, relaxed reference)
 Cluster corrected energies           -24.47776374 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.73835274 (fixed)   0.74179472 (relaxed)   0.73904168 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00746420   -0.00008744   -0.02541430
 Singles      0.81963152   -0.12974970   -0.14919873
 Pairs        0.00379382   -0.00000057   -0.00036197
 Total        1.83088953   -0.12983771   -0.17497501
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.24020708
 Nuclear energy                         0.00000000
 Kinetic energy                        24.50797093
 One electron energy                  -31.14644827
 Two electron energy                    6.73172548
 Virial quotient                       -0.99619519
 Correlation energy                    -0.17451571
 !MRCI STATE 6.2 Energy               -24.414722785299

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -24.55972606 (Davidson, fixed reference)
 Cluster corrected energies           -24.55735878 (Davidson, relaxed reference)
 Cluster corrected energies           -24.55972606 (Davidson, rotated reference)

 Cluster corrected energies           -24.47776371 (Pople, fixed reference)
 Cluster corrected energies           -24.47696798 (Pople, relaxed reference)
 Cluster corrected energies           -24.47776371 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       38.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      146.50       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1149.13   1142.26      2.98      0.80      2.83
 REAL TIME  *      1175.28 SEC
 DISK USED  *       185.40 MB (local),        1.13 GB (total)
 SF USED    *         1.35 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -24.65991750  AU                              
 SETTING HLSDIAG(2)     =       -24.65991750  AU                              
 SETTING HLSDIAG(3)     =       -24.65991750  AU                              
 SETTING HLSDIAG(4)     =       -24.55972610  AU                              
 SETTING HLSDIAG(5)     =       -24.55972611  AU                              
 SETTING HLSDIAG(6)     =       -24.55972606  AU                              


        HLSDIAG
    -24.65991750
    -24.65991750
    -24.65991750
    -24.55972610
    -24.55972611
    -24.55972606
                                                  


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

 Time for Seward_LS:       7.54 sec

       80463592. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19662 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.55 sec, REAL time:      7.84 sec


 SORTLS1 read    80492086. and wrote    80492086. SO integrals in   314 records. CPU time:      0.80 sec, REAL time:      1.26 sec
 SORTLS2 read    80492086. and wrote   406960599. SO integrals in    15 records. CPU time:      1.05 sec, REAL time:      1.74 sec

 FILE SIZES: FILE 1:  1329.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1329.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:    -24.658198    -24.658198    -24.658198    -24.414723    -24.414723    -24.414723
 Replaced energies:    -24.659917    -24.659917    -24.659917    -24.559726    -24.559726    -24.559726



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -24.65991750

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.83       0.00
                            0.00      -4.83      -0.00       0.00       2.30      -0.00       0.00       0.00       0.00      -0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            4.83      -0.00      -0.00      -2.30       0.00      -0.00      -0.00       0.00      -4.83      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -4.83       0.00      -0.00       2.30
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       4.83      -0.00      -0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   21989.47       0.00       0.00      -0.00       0.00      -2.30       0.00
                           -0.00       2.30       0.00       0.00      -1.08       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   21989.47       0.00       0.00      -0.00       0.00      -0.00
                           -2.30      -0.00       0.00       1.08       0.00       0.00       0.00      -0.00       2.30       0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   21989.48       2.30       0.00      -0.00      -1.08
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.30      -0.00       0.00

    7   1.2  0.5 -0.5       0.00       0.00      -4.83      -0.00       0.00       2.30       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       4.83       0.00      -0.00

    8   2.2  0.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -4.83      -0.00       0.00       2.30      -4.83       0.00       0.00       2.30

    9   3.2  0.5 -0.5       4.83      -0.00      -0.00      -2.30       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       4.83       0.00      -0.00      -2.30       0.00      -0.00      -0.00       0.00       0.00

   10   4.2  0.5 -0.5       0.00      -0.00       2.30       0.00      -0.00      -1.08       0.00       0.00       0.00   21989.47
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -2.30      -0.00      -0.00

   11   5.2  0.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       2.30       0.00      -0.00      -1.08       2.30       0.00      -0.00      -1.08

   12   6.2  0.5 -0.5      -2.30      -0.00       0.00       1.08      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.30      -0.00       0.00       1.08      -0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.00      -2.30
                           -0.00       0.00

    2   2.2  0.5  0.5       0.00      -0.00
                            0.00       2.30

    3   3.2  0.5  0.5      -0.00       0.00
                           -2.30       0.00

    4   4.2  0.5  0.5       0.00       1.08
                           -0.00      -0.00

    5   5.2  0.5  0.5      -0.00      -0.00
                            0.00      -1.08

    6   6.2  0.5  0.5       0.00      -0.00
                            1.08       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                           -2.30       0.00

    8   2.2  0.5 -0.5       0.00       0.00
                           -0.00       0.00

    9   3.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   10   4.2  0.5 -0.5       0.00       0.00
                            1.08      -0.00

   11   5.2  0.5 -0.5   21989.47       0.00
                           -0.00      -0.00

   12   6.2  0.5 -0.5       0.00   21989.48
                            0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -24.65996151    -0.00004401       -9.66      0.00000000        0.00      0.0000
     2   -24.65996151    -0.00004401       -9.66      0.00000000        0.00      0.0000
     3   -24.65989549     0.00002200        4.83      0.00006602       14.49      0.0018
     4   -24.65989549     0.00002200        4.83      0.00006602       14.49      0.0018
     5   -24.65989549     0.00002201        4.83      0.00006602       14.49      0.0018
     6   -24.65989549     0.00002201        4.83      0.00006602       14.49      0.0018
     7   -24.55973596     0.10018154    21987.31      0.10022555    21996.97      2.7273
     8   -24.55973596     0.10018154    21987.31      0.10022555    21996.97      2.7273
     9   -24.55972117     0.10019633    21990.55      0.10024034    22000.21      2.7277
    10   -24.55972117     0.10019633    21990.55      0.10024034    22000.21      2.7277
    11   -24.55972114     0.10019636    21990.56      0.10024038    22000.22      2.7277
    12   -24.55972114     0.10019636    21990.56      0.10024038    22000.22      2.7277


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.365232140  -0.447141265  -0.235211073   0.509182107   0.587941330  -0.080027974  -0.000120509   0.000000003
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000065018  -0.000053108   0.000037337   0.000016966  -0.000022580  -0.000167684  -0.000000000  -0.000000006
                        -0.365129155   0.447217788   0.097806617  -0.211963111   0.775296526  -0.105345588   0.000120472   0.000000029

    3    3.2  0.5  0.5   0.447141432   0.365232275   0.714476171   0.330000910  -0.025041110  -0.184246213   0.000000003   0.000111226
                        -0.003245903  -0.002541726  -0.097570832  -0.044921676  -0.004647992  -0.033804653   0.000000017  -0.000046828

    4    4.2  0.5  0.5  -0.000076242   0.000093385  -0.000024586   0.000053178   0.000061416  -0.000008355  -0.577779860  -0.000110579
                         0.000000001  -0.000000001   0.000000002   0.000000001   0.000000001   0.000000001   0.000006268   0.000052450

    5    5.2  0.5  0.5  -0.000000001  -0.000000002   0.000000016   0.000000007  -0.000000003  -0.000000021   0.000006269   0.000056784
                         0.000076243  -0.000093384   0.000010214  -0.000022140   0.000080983  -0.000011004   0.578137247   0.000100899

    6    6.2  0.5  0.5  -0.000093381  -0.000076239   0.000074628   0.000034484  -0.000002602  -0.000019249  -0.000121919   0.530990789
                         0.000000666   0.000000546  -0.000010194  -0.000004689  -0.000000499  -0.000003530  -0.000013137  -0.223554137

    7    1.2  0.5 -0.5   0.447129871   0.365222833  -0.504504709  -0.233050398  -0.078713533  -0.578284517   0.000000003   0.000111067
                        -0.003192144  -0.002607394   0.068857981   0.031808188  -0.014444949  -0.106122664  -0.000000001  -0.000046761

    8    2.2  0.5 -0.5   0.003245797   0.002541642  -0.028681112  -0.013189639  -0.019179676  -0.139917835  -0.000000017   0.000046746
                         0.447206013   0.365120315  -0.210013695  -0.096913204   0.103585042   0.762566525  -0.000000024   0.000111033

    9    3.2  0.5 -0.5  -0.365241114   0.447153210  -0.333044357   0.721107665  -0.187321701   0.025468774   0.000120682   0.000000004
                         0.000065734   0.000053675   0.000117832   0.000054124  -0.000006793  -0.000051761  -0.000000000   0.000000016

   10    4.2  0.5 -0.5  -0.000093382  -0.000076240  -0.000052689  -0.000024360  -0.000008218  -0.000060408  -0.000122267   0.532512300
                         0.000000666   0.000000544   0.000007192   0.000003322  -0.000001509  -0.000011085  -0.000005433  -0.224187905

   11    5.2  0.5 -0.5  -0.000000665  -0.000000545  -0.000003001  -0.000001365  -0.000002006  -0.000014614   0.000013183   0.224326579
                        -0.000093382  -0.000076241  -0.000021935  -0.000010122   0.000010820   0.000079654  -0.000115028   0.532841686

   12    6.2  0.5 -0.5   0.000076241  -0.000093383  -0.000034801   0.000075321  -0.000019570   0.000002649   0.576131643   0.000107269
                         0.000000001   0.000000001   0.000000018   0.000000008  -0.000000003  -0.000000021   0.000000007  -0.000059415


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.000002118  -0.000069952  -0.000044761   0.000019587
                        -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000002   0.000000000   0.000000005   0.000000011
                        -0.000002337  -0.000077185   0.000033416  -0.000014641

    3    3.2  0.5  0.5   0.000007039  -0.000000197  -0.000033742  -0.000077051
                        -0.000000907   0.000000015   0.000004357   0.000009940

    4    4.2  0.5  0.5   0.020311112   0.670324624   0.426119394  -0.186668197
                        -0.000001787   0.000008081   0.000006225   0.000023627

    5    5.2  0.5  0.5   0.000010767  -0.000009313   0.000003101   0.000013576
                         0.022359028   0.738269941  -0.317582050   0.139127630

    6    6.2  0.5  0.5  -0.068035497   0.002061239   0.324127759   0.739892579
                         0.008761668  -0.000264132  -0.041791962  -0.095477628

    7    1.2  0.5 -0.5   0.000069379  -0.000002101   0.000019426   0.000044393
                        -0.000008933   0.000000270  -0.000002506  -0.000005728

    8    2.2  0.5 -0.5  -0.000009857   0.000000296   0.000001885   0.000004271
                        -0.000076553   0.000002319   0.000014519   0.000033142

    9    3.2  0.5 -0.5   0.000000197   0.000007098  -0.000077689   0.000034022
                        -0.000000010   0.000000000   0.000000001   0.000000004

   10    4.2  0.5 -0.5  -0.664835473   0.020145048  -0.185136639  -0.422615512
                         0.085608968  -0.002591972   0.023862963   0.054533173

   11    5.2  0.5 -0.5   0.094286857  -0.002844586  -0.017789556  -0.040641442
                         0.732224347  -0.022177344  -0.137985613  -0.314970842

   12    6.2  0.5 -0.5  -0.002078093  -0.068597345   0.746027484  -0.326810911
                         0.000001252  -0.000001751   0.000014740   0.000027573


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  13.339%  19.994%   5.532%  25.927%  34.568%   0.640%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  13.332%  20.000%   0.957%   4.493%  60.108%   1.110%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  19.995%  13.340%  52.000%  11.092%   0.065%   3.509%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.383%   0.000%   0.041%  44.934%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.424%   0.000%   0.050%  54.504%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.193%   0.471%   0.000%
    7    1.2  0.5 -0.5  19.994%  13.339%  25.927%   5.532%   0.640%  34.568%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5  20.000%  13.332%   4.493%   0.957%   1.110%  60.108%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5  13.340%  19.995%  11.092%  52.000%   3.509%   0.065%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.383%  44.934%   0.041%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.424%  54.504%   0.050%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.193%   0.000%   0.000%   0.471%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5  18.158%   3.485%
    5    5.2  0.5  0.5  10.086%   1.936%
    6    6.2  0.5  0.5  10.681%  55.656%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   3.485%  18.158%
   11    5.2  0.5 -0.5   1.936%  10.086%
   12    6.2  0.5 -0.5  55.656%  10.681%


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
              1      24     1267.86       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      146.50       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1639.95    490.82   1142.26      2.98      0.80      2.83
 REAL TIME  *      1678.18 SEC
 DISK USED  *       185.59 MB (local),        5.22 GB (total)
 SF USED    *         1.76 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=    -24.559721137306

              CI           MULTI         RHF-SCF
    -24.41472279    -24.23974778    -24.53586411
 **********************************************************************************************************************************
 Molpro calculation terminated
