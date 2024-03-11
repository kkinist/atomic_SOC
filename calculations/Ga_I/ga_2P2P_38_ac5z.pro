
 Working directory              : /wrk/irikura/molpro.JSOsx7PUjH/
 Global scratch directory       : /wrk/irikura/molpro.JSOsx7PUjH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.JSOsx7PUjH/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ga SO-CI
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ga};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=30,sym=1,spin=0}
 
 {multi
     closed,8,6
     occ,10,12
     wf,nelec=31,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ga SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 07-Mar-24          TIME: 17:35:38  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry GA     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GA     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GA     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GA     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GA     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GA     H aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GA     I aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  GA     31.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   31
 NUMBER OF PRIMITIVE AOS:         475
 NUMBER OF SYMMETRY AOS:          342
 NUMBER OF CONTRACTIONS:          263   (  130Ag  +  133Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     467.403 MB (compressed) written to integral file ( 11.7%)

     Node minimum: 27.001 MB, node maximum: 51.118 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   25282566.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15984186      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   497186979. AND WROTE     4167916. INTEGRALS IN     13 RECORDS. CPU TIME:     2.06 SEC, REAL TIME:     2.13 SEC
 SORT2 READ    51746543. AND WROTE   303595781. INTEGRALS IN   1632 RECORDS. CPU TIME:     0.49 SEC, REAL TIME:     0.53 SEC

 Node minimum:    25276762.  Node maximum:    25318282. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415161718
                                       19202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 91011  12131415161718192021  11121314151617181920  21111213141516171819
                                       20211112131415161718  192021

 Eigenvalues of metric

         1 0.973E-06 0.575E-04 0.409E-03 0.122E-02 0.122E-02 0.122E-02 0.122E-02 0.122E-02
         2 0.979E-05 0.979E-05 0.979E-05 0.350E-02 0.350E-02 0.350E-02 0.199E-01 0.199E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.24      8.99
 REAL TIME  *        10.68 SEC
 DISK USED  *        31.64 MB (local),        1.37 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial occupancy:   9   6

 NELEC=   30   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -1937.70544443   -1937.70544443     0.00D+00     0.68D-01     0     0       0.11      0.22    start
   2    -1938.85509109      -1.14964666     0.11D+00     0.54D-01     1     0       0.12      0.34    diag
   3    -1941.94511249      -3.09002140     0.11D+00     0.33D-01     2     0       0.12      0.46    diag
   4    -1941.99128874      -0.04617625     0.10D-01     0.42D-02     3     0       0.12      0.58    diag
   5    -1941.99185253      -0.00056379     0.10D-02     0.14D-02     4     0       0.12      0.70    diag
   6    -1941.99187136      -0.00001883     0.85D-04     0.27D-03     5     0       0.12      0.82    diag
   7    -1941.99187206      -0.00000070     0.23D-04     0.30D-04     6     0       0.12      0.94    diag
   8    -1941.99187207      -0.00000000     0.17D-05     0.56D-05     7     0       0.12      1.06    fixocc
   9    -1941.99187207      -0.00000000     0.15D-06     0.50D-06     8     0       0.12      1.18    diag
  10    -1941.99187207      -0.00000000     0.11D-07     0.35D-07     0     0       0.12      1.30    diag/orth

 Final occupancy:   9   6

 !RHF STATE 1.1 Energy              -1941.991872067940
  RHF One-electron energy           -2699.723935376909
  RHF Two-electron energy             757.732063308969
  RHF Kinetic energy                 2052.014066167693
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.946383313880

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -384.01356     1  1  s    0.97116    1  3  s   -0.53819    1  4  s   -0.76555    1  6  s    0.34048
                                    1  7  s    0.43472
    2.1     2.00000   -49.58687     1  2  s    1.07656    1  4  s    0.28112
    3.1     2.00000    -6.88228     1  3  s    0.92200
    4.1     2.00000    -1.46778     1  1  d2-  1.00074
    5.1     2.00000    -1.46778     1  1  d1-  1.00074
    6.1     2.00000    -1.46778     1  1  d0   0.99834
    7.1     2.00000    -1.46778     1  1  d1+  1.00074
    8.1     2.00000    -1.46778     1  1  d2+  0.99834
    9.1     2.00000    -0.69947     1  4  s    1.07516
    1.2     2.00000   -43.04412     1  1  pz   0.99731
    2.2     2.00000   -43.04412     1  1  px   0.99731
    3.2     2.00000   -43.04412     1  1  py   0.99731
    4.2     2.00000    -4.82549     1  2  pz   1.00230
    5.2     2.00000    -4.82549     1  2  px   1.00230
    6.2     2.00000    -4.82549     1  2  py   1.00230


 HOMO      9.1    -0.699473 =     -19.0336eV
 LUMO      7.2    -0.193820 =      -5.2741eV
 LUMO-HOMO         0.505653 =      13.7595eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.96       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        10.56      1.32      8.99
 REAL TIME  *        12.05 SEC
 DISK USED  *        34.57 MB (local),        1.40 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     241 (  120  121)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.981D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.653D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.661D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 6 2 4 5 1 1   3 6 2 5 4 1 3 6 2 5   41112131410 815 9 7   1 3 6 2 5 413101114
                                       1215 8 9 7 3 6 2 5 4   11310111412 815 9 7   3 6 2 5 4 113101215  14 811 7 9 3 6 5 2 4
                                       22162725182423201926  172821 1 7 915 81014  131112 4 6 3 2 5 1 7   9 8151412111013 4 5
                                        2 6 3 1 4 5 2 6 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.197D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.199D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.533D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.124D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.134D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.125D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.255D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.298D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.291D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.291D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 1 3 2   3 1 2 3 1 9 710 5 8   4 610 9 7 8 5 6 4 2   3 1 910 7 8 6 5 420
                                       18131512141716211911   2 3 1 910 7 6 4 8 5  18201514191217162111  13 810 7 9 5 6 4 2 1
                                        3182019151217142116  1311 5 8 710 9 6 4 1   3 2 5 6 4 8 710 911  13211617181415201912
                                        3 1 2 6 4 8 510 7 9   3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  2704  ( 52 closed/active, 1686 closed/virtual, 0 active/active, 966 active/virtual )
 Total number of variables:    3424
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8    7    0  -1942.13996243   -1942.14702526   -0.00706282    0.04974762 0.00003601 0.00000000  0.83E+00      2.91
   2    8    7    0  -1942.14691790   -1942.14692312   -0.00000522    0.00194196 0.00000007 0.00000000  0.29E-01      6.00
   3    7    7    0  -1942.14692313   -1942.14692313   -0.00000000    0.00000130 0.00000000 0.00000000  0.57E-04      8.73

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.13E-09)
                       Final energy:  -1942.14692313
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                     -1942.209921744648
 Nuclear energy                                  0.00000000
 Kinetic energy                               2052.31685717
 One electron energy                         -2709.33171649
 Two electron energy                           767.12179475
 Virial ratio                                    1.94634993
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                     -1942.209921743565
 Nuclear energy                                  0.00000000
 Kinetic energy                               2052.31685718
 One electron energy                         -2709.33171648
 Two electron energy                           767.12179474
 Virial ratio                                    1.94634993
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                     -1942.209921743528
 Nuclear energy                                  0.00000000
 Kinetic energy                               2052.31685718
 One electron energy                         -2709.33171648
 Two electron energy                           767.12179474
 Virial ratio                                    1.94634993
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                     -1942.083924508580
 Nuclear energy                                  0.00000000
 Kinetic energy                               2052.00451353
 One electron energy                         -2703.27600636
 Two electron energy                           761.19208185
 Virial ratio                                    1.94643258
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                     -1942.083924508427
 Nuclear energy                                  0.00000000
 Kinetic energy                               2052.00451353
 One electron energy                         -2703.27600636
 Two electron energy                           761.19208185
 Virial ratio                                    1.94643258
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                     -1942.083924508415
 Nuclear energy                                  0.00000000
 Kinetic energy                               2052.00451353
 One electron energy                         -2703.27600636
 Two electron energy                           761.19208185
 Virial ratio                                    1.94643258
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999928
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000001822
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999999056
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999413
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999883738
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000000127909
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.000000000142
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999999927
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999999931
 !MCSCF expec                      <4.2|LYLY|4.2>     0.000000000587
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999999996
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999999487
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999999930
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999998252
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000001013
 !MCSCF expec                      <4.2|LZLZ|4.2>     1.000000000000
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.000000116266
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999872604
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 6 2 4 5 1 1   1 3 6 2 5 4 3 6 2 5   4 11013111415 812 7   9 3 6 2 5 413101114
                                       15 812 7 9 3 6 2 5 4   11013111514 812 7 9   3 6 2 5 4 110131415  11 812 7 9 3 6 5 2 4
                                       22161820272419172326  252128 1 9 71415 812  101311 4 6 3 2 5 1 9   712 81415111013 4 5
                                        2 6 3 1 4 5 2 6 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 3 1 3   2 1 2 3 1 7 9 5 810   6 4 9 7 810 5 6 4 2   3 1 7 910 6 5 8 420
                                       18171512161421191311   2 3 110 7 9 6 4 5 8  18201215171416211913  11 8 7 910 5 6 4 2 1
                                        3201812171521141613  1911 8 5 7 9 610 4 1   3 2 6 8 4 5 7 91011  13191416211517122018
                                        3 1 2 4 610 8 5 7 9   3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -383.79453     1  1  s    0.97115    1  3  s   -0.53843    1  4  s   -0.76589    1  6  s    0.34063
                                    1  7  s    0.43491
    2.1     2.00000   -49.36907     1  2  s    1.07688    1  4  s    0.28278
    3.1     2.00000    -6.66443     1  3  s    0.92093
    4.1     2.00000    -1.25081     1  1  d2-  1.00023
    5.1     2.00000    -1.25081     1  1  d1-  1.00023
    6.1     2.00000    -1.25081     1  1  d0   1.00023
    7.1     2.00000    -1.25081     1  1  d1+  1.00023
    8.1     2.00000    -1.25081     1  1  d2+  1.00023
    9.1     1.92014    -0.49193     1  4  s    1.03731
   10.1     0.00560     0.26538     1  4  s   -1.98158    1  6  s   -0.80606    1  7  s    1.75768    1  8  s    1.24101
    1.2     2.00000   -42.82679     1  1  pz   0.99728
    2.2     2.00000   -42.82679     1  1  px   0.99728
    3.2     2.00000   -42.82679     1  1  py   0.99728
    4.2     2.00000    -4.60908     1  2  pz   1.00266
    5.2     2.00000    -4.60908     1  2  px   1.00266
    6.2     2.00000    -4.60908     1  2  py   1.00266
    7.2     0.19154    -0.01697     1  8  py   0.43830    1  9  py   0.58196
    8.2     0.19154    -0.01697     1  8  pz   0.43830    1  9  pz   0.58196
    9.2     0.19154    -0.01697     1  8  px   0.43830    1  9  px   0.58196
   10.2     0.16654     0.01721     1 11  pz   0.97321
   11.2     0.16654     0.01721     1 11  py   0.97321
   12.2     0.16654     0.01721     1 11  px   0.97321
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 00a000      0.00000807      0.94946891     -0.00003970      0.00000596     -0.00008381     -0.24579332
 20 a00000      0.94946891     -0.00000807      0.00000794     -0.24579335      0.00000005     -0.00000596
 20 0a0000     -0.00000794      0.00003970      0.94946890     -0.00000005     -0.24579335      0.00008381
 20 0000a0      0.24582681     -0.00000209      0.00000206      0.94550745     -0.00000019      0.00002291
 20 00000a      0.00000209      0.24582680     -0.00001028     -0.00002291      0.00032239      0.94550740
 20 000a00     -0.00000205      0.00001028      0.24582683      0.00000019      0.94550739     -0.00032239
 00 20a000     -0.00000106     -0.12481892      0.00000522     -0.00000083      0.00001168      0.03424701
 00 02a000     -0.00000106     -0.12481892      0.00000522     -0.00000083      0.00001168      0.03424701
 00 2a0000      0.00000104     -0.00000522     -0.12481892      0.00000001      0.03424702     -0.00001168
 00 a02000     -0.12481892      0.00000106     -0.00000104      0.03424702     -0.00000001      0.00000083
 00 a20000     -0.12481892      0.00000106     -0.00000104      0.03424702     -0.00000001      0.00000083
 00 0a2000      0.00000104     -0.00000522     -0.12481892      0.00000001      0.03424702     -0.00001168
 00 0200a0     -0.02940263      0.00000025     -0.00000025     -0.11327573      0.00000002     -0.00000275
 00 0020a0     -0.02940263      0.00000025     -0.00000025     -0.11327573      0.00000002     -0.00000275
 00 20000a     -0.00000025     -0.02940262      0.00000123      0.00000275     -0.00003862     -0.11327573
 00 02000a     -0.00000025     -0.02940262      0.00000123      0.00000275     -0.00003862     -0.11327572
 00 200a00      0.00000025     -0.00000123     -0.02940263     -0.00000002     -0.11327572      0.00003862
 00 002a00      0.00000025     -0.00000123     -0.02940263     -0.00000002     -0.11327572      0.00003862
 00 2000a0     -0.02904529      0.00000025     -0.00000024     -0.11173883      0.00000002     -0.00000271
 00 020a00      0.00000024     -0.00000121     -0.02904528     -0.00000002     -0.11173883      0.00003810
 00 00200a     -0.00000025     -0.02904528      0.00000121      0.00000271     -0.00003810     -0.11173883
 
 Energy:    -1942.20992174  -1942.20992174  -1942.20992174  -1942.08392451  -1942.08392451  -1942.08392451
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      132.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.40       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        20.07      9.51      1.32      8.99
 REAL TIME  *        23.39 SEC
 DISK USED  *       135.34 MB (local),        2.58 GB (total)
 SF USED    *       259.84 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -1942.209922   2.0
    -1942.209922   2.0
    -1942.209922   2.0
    -1942.083925   2.0
    -1942.083925   2.0
    -1942.083925   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 31
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     241 ( 120 121 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   1.23 sec, npass=  1  Memory used:   6.56 MW


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1942.20992174
     2     -1942.20992174
     3     -1942.20992174
     4     -1942.08392451
     5     -1942.08392451
     6     -1942.08392451

 Number of blocks in overlap matrix:   544   Smallest eigenvalue:  0.29D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       9335563
 Number of doubly external configurations:      19318422
 Total number of contracted configurations:     28707257
 Total number of uncontracted configurations:  357661163

 Diagonal Coupling coefficients finished.               Storage:  22138356 words, CPU-Time:     25.96 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3493227 words, CPU-time:      3.23 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1942.20992174    -0.00000000    -1.09567260  0.38D-01  0.74D-01    44.90
    1     2     2     1.00000000     0.00000000 -1942.20992174     0.00000000    -1.09565209  0.38D-01  0.74D-01    44.90
    1     3     3     1.00000000     0.00000000 -1942.20992174    -0.00000000    -1.09562050  0.37D-01  0.74D-01    44.90
    1     4     4     1.00000000     0.00000000 -1942.08392451     0.00000000    -1.06982863  0.21D-01  0.69D-01    44.90
    1     5     5     1.00000000     0.00000000 -1942.08392451     0.00000000    -1.06982865  0.21D-01  0.69D-01    44.90
    1     6     6     1.00000000     0.00000000 -1942.08392451     0.00000000    -1.06984824  0.21D-01  0.69D-01    44.90
    2     1     1     1.07156040    -0.87984409 -1943.08976583    -0.87984409    -0.03188464  0.38D-02  0.17D-02  1084.80
    2     2     2     1.07161341    -0.87979519 -1943.08971694    -0.87979519    -0.03193231  0.39D-02  0.17D-02  1084.80
    2     3     3     1.07162237    -0.87979007 -1943.08971182    -0.87979007    -0.03193773  0.39D-02  0.17D-02  1084.80
    2     4     4     1.05914212    -0.87102722 -1942.95495173    -0.87102722    -0.02866097  0.22D-02  0.16D-02  1084.80
    2     5     5     1.05915037    -0.87102000 -1942.95494451    -0.87102000    -0.02866888  0.22D-02  0.16D-02  1084.80
    2     6     6     1.05915780    -0.87101641 -1942.95494092    -0.87101641    -0.02867156  0.22D-02  0.16D-02  1084.80
    3     1     1     1.06033031    -0.90799350 -1943.11791525    -0.02814941    -0.00078414  0.16D-03  0.46D-04  2118.98
    3     2     2     1.06032726    -0.90799296 -1943.11791471    -0.02819777    -0.00078480  0.16D-03  0.46D-04  2118.98
    3     3     3     1.06032736    -0.90799295 -1943.11791469    -0.02820287    -0.00078478  0.16D-03  0.46D-04  2118.98
    3     4     4     1.05348931    -0.89559480 -1942.97951931    -0.02456758    -0.00061281  0.79D-04  0.33D-04  2118.98
    3     5     5     1.05348924    -0.89559468 -1942.97951919    -0.02457469    -0.00061292  0.79D-04  0.33D-04  2118.98
    3     6     6     1.05348935    -0.89559463 -1942.97951914    -0.02457822    -0.00061301  0.79D-04  0.33D-04  2118.98
    4     1     1     1.05906261    -0.90871688 -1943.11863863    -0.00072338    -0.00004031  0.76D-05  0.26D-05  3155.96
    4     2     2     1.05906132    -0.90871687 -1943.11863861    -0.00072390    -0.00004034  0.76D-05  0.26D-05  3155.96
    4     3     3     1.05906135    -0.90871686 -1943.11863860    -0.00072391    -0.00004034  0.76D-05  0.26D-05  3155.96
    4     4     4     1.05325877    -0.89614490 -1942.98006940    -0.00055009    -0.00002686  0.44D-05  0.13D-05  3155.96
    4     5     5     1.05325880    -0.89614489 -1942.98006940    -0.00055021    -0.00002687  0.44D-05  0.13D-05  3155.96
    4     6     6     1.05325851    -0.89614489 -1942.98006940    -0.00055026    -0.00002687  0.44D-05  0.13D-05  3155.96
    5     1     1     1.05903289    -0.90875596 -1943.11867771    -0.00003908    -0.00000177  0.20D-06  0.13D-06  4189.47
    5     2     2     1.05903286    -0.90875596 -1943.11867771    -0.00003910    -0.00000177  0.20D-06  0.13D-06  4189.47
    5     3     3     1.05903284    -0.90875596 -1943.11867771    -0.00003910    -0.00000177  0.20D-06  0.13D-06  4189.47
    5     4     4     1.05332112    -0.89617110 -1942.98009561    -0.00002620    -0.00000114  0.11D-06  0.70D-07  4189.47
    5     5     5     1.05332117    -0.89617110 -1942.98009561    -0.00002621    -0.00000114  0.11D-06  0.70D-07  4189.47
    5     6     6     1.05332115    -0.89617110 -1942.98009561    -0.00002621    -0.00000114  0.11D-06  0.70D-07  4189.47
    6     1     1     1.05905093    -0.90875768 -1943.11867943    -0.00000172    -0.00000007  0.76D-08  0.70D-08  5221.59
    6     2     2     1.05905094    -0.90875768 -1943.11867943    -0.00000172    -0.00000007  0.75D-08  0.69D-08  5221.59
    6     3     3     1.05905094    -0.90875768 -1943.11867943    -0.00000172    -0.00000007  0.76D-08  0.70D-08  5221.59
    6     4     4     1.05335317    -0.89617225 -1942.98009676    -0.00000115    -0.00000005  0.42D-08  0.39D-08  5221.59
    6     5     5     1.05335317    -0.89617225 -1942.98009676    -0.00000115    -0.00000005  0.42D-08  0.39D-08  5221.59
    6     6     6     1.05335318    -0.89617225 -1942.98009676    -0.00000115    -0.00000005  0.42D-08  0.39D-08  5221.59
    7     1     1     1.05905207    -0.90875776 -1943.11867950    -0.00000007    -0.00000000  0.86D-09  0.27D-09  6253.87
    7     2     2     1.05905207    -0.90875776 -1943.11867950    -0.00000007    -0.00000000  0.87D-09  0.27D-09  6253.87
    7     3     3     1.05905207    -0.90875776 -1943.11867950    -0.00000007    -0.00000000  0.86D-09  0.27D-09  6253.87
    7     4     4     1.05335682    -0.89617229 -1942.98009680    -0.00000005    -0.00000000  0.62D-09  0.13D-09  6253.87
    7     5     5     1.05335682    -0.89617229 -1942.98009680    -0.00000005    -0.00000000  0.62D-09  0.13D-09  6253.87
    7     6     6     1.05335682    -0.89617229 -1942.98009680    -0.00000005    -0.00000000  0.62D-09  0.13D-09  6253.87


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.4%  54.6%
 P   0.2%  17.0%  17.8%

 Initialization:   0.5%
 Other:            8.9%

 Total CPU:     6253.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00000           0.9333036   0.0023783  -0.0000205   0.0027424  -0.2044623  -0.0000000
 2222222022200/000          -0.0000024   0.0089948   0.9332633  -0.2044561  -0.0027423  -0.0015971
 222222202220/0000          -0.0023784   0.9332602  -0.0089948   0.0015969   0.0000214  -0.2044745
 22222220222000/00          -0.0005223   0.2049541  -0.0019754  -0.0072668  -0.0000976   0.9304584
 222222202220000/0           0.2049636   0.0005223  -0.0000045  -0.0124792   0.9304031   0.0000001
 2222222022200000/          -0.0000005   0.0019754   0.2049547   0.9303747   0.0124788   0.0072675
 22222200222/02000          -0.1144822  -0.0002917   0.0000025  -0.0003608   0.0268998   0.0000000
 22222200222/20000          -0.1144821  -0.0002917   0.0000025  -0.0003608   0.0268998   0.0000000
 2222220022220/000           0.0000003  -0.0011033  -0.1144772   0.0268990   0.0003608   0.0002101
 2222220022202/000           0.0000003  -0.0011033  -0.1144772   0.0268990   0.0003608   0.0002101
 222222002222/0000           0.0002917  -0.1144768   0.0011033  -0.0002101  -0.0000028   0.0269014
 222222002220/2000           0.0002917  -0.1144768   0.0011033  -0.0002101  -0.0000028   0.0269014
 22222200222200/00           0.0000584  -0.0228963   0.0002207   0.0008134   0.0000109  -0.1041535
 22222200222002/00           0.0000584  -0.0228963   0.0002207   0.0008134   0.0000109  -0.1041535
 222222002220200/0          -0.0228974  -0.0000583   0.0000005   0.0013969  -0.1041473  -0.0000000
 222222002220020/0          -0.0228974  -0.0000583   0.0000005   0.0013969  -0.1041473  -0.0000000
 2222220022220000/           0.0000001  -0.0002207  -0.0228964  -0.1041441  -0.0013968  -0.0008135
 2222220022202000/           0.0000001  -0.0002207  -0.0228964  -0.1041441  -0.0013968  -0.0008135
 22222200222020/00           0.0000572  -0.0224445   0.0002163   0.0008013   0.0000108  -0.1025945
 222222002222000/0          -0.0224456  -0.0000572   0.0000005   0.0013760  -0.1025884  -0.0000000
 2222220022200200/           0.0000001  -0.0002163  -0.0224446  -0.1025853  -0.0013759  -0.0008013
 222222/\222000/00           0.0000484  -0.0190094   0.0001832   0.0005761   0.0000077  -0.0737671
 222222/\2220000/0          -0.0190103  -0.0000484   0.0000004   0.0009894  -0.0737628  -0.0000000
 222222/\22200000/           0.0000000  -0.0001832  -0.0190094  -0.0737605  -0.0009893  -0.0005762

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970358   -0.000002   -0.002473   -0.035605    0.000091    0.000000
 2           0.002473    0.009352    0.970313   -0.000091   -0.035604   -0.000343
 3          -0.000021    0.970316   -0.009352    0.000001    0.000343   -0.035604
 4          -0.000500    0.037294   -0.000291   -0.013046   -0.007597    0.972639
 5           0.037295    0.000500   -0.000004    0.972669   -0.000102    0.013046
 6           0.000000    0.000291    0.037298    0.000000    0.972726    0.007598

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971013    0.000000   -0.000000   -0.000011    0.000801   -0.000002
 2           0.000000    0.971013    0.000000    0.000001    0.000002    0.000801
 3          -0.000000    0.000000    0.971013    0.000801    0.000011   -0.000001
 4          -0.000011    0.000001    0.000801    0.973471   -0.000000    0.000000
 5           0.000801    0.000002    0.000011   -0.000000    0.973471    0.000000
 6          -0.000002    0.000801   -0.000001    0.000000    0.000000    0.973471


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97035757 (fixed)   0.97127181 (relaxed)   0.97101340 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00145684   -0.00232898   -0.80435197
 Singles      0.01292951   -0.05698995   -0.06481285
 Pairs        0.04620858   -0.00000009   -0.03959294
 Total        1.06059494   -0.05931903   -0.90875776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20974463
 Nuclear energy                         0.00000000
 Kinetic energy                      2053.13130627
 One electron energy                -2708.06592330
 Two electron energy                  764.94724380
 Virial quotient                       -0.94641715
 Correlation energy                    -0.90893487
 !MRCI STATE 1.2 Energy             -1943.118679500973

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1943.17375635 (Davidson, fixed reference)
 Cluster corrected energies         -1943.17324348 (Davidson, relaxed reference)
 Cluster corrected energies         -1943.17375635 (Davidson, rotated reference)

 Cluster corrected energies         -1943.17075500 (Pople, fixed reference)
 Cluster corrected energies         -1943.17024597 (Pople, relaxed reference)
 Cluster corrected energies         -1943.17075500 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97031251 (fixed)   0.97127181 (relaxed)   0.97101340 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00145684   -0.00232898   -0.80466883
 Singles      0.01292952   -0.05698996   -0.06481286
 Pairs        0.04620858    0.00033598   -0.03927607
 Total        1.06059494   -0.05898296   -0.90875776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20974463
 Nuclear energy                         0.00000000
 Kinetic energy                      2053.13130707
 One electron energy                -2708.06592432
 Two electron energy                  764.94724482
 Virial quotient                       -0.94641715
 Correlation energy                    -0.90893487
 !MRCI STATE 2.2 Energy             -1943.118679499746

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1943.17375635 (Davidson, fixed reference)
 Cluster corrected energies         -1943.17324348 (Davidson, relaxed reference)
 Cluster corrected energies         -1943.17375635 (Davidson, rotated reference)

 Cluster corrected energies         -1943.17075500 (Pople, fixed reference)
 Cluster corrected energies         -1943.17024598 (Pople, relaxed reference)
 Cluster corrected energies         -1943.17075500 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97031566 (fixed)   0.97127181 (relaxed)   0.97101340 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00145684   -0.00232898   -0.83722051
 Singles      0.01292951   -0.05698996   -0.06481285
 Pairs        0.04620858    0.03486012   -0.00672440
 Total        1.06059494   -0.02445882   -0.90875776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20974463
 Nuclear energy                         0.00000000
 Kinetic energy                      2053.13130623
 One electron energy                -2708.06592345
 Two electron energy                  764.94724395
 Virial quotient                       -0.94641715
 Correlation energy                    -0.90893487
 !MRCI STATE 3.2 Energy             -1943.118679498910

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1943.17375635 (Davidson, fixed reference)
 Cluster corrected energies         -1943.17324348 (Davidson, relaxed reference)
 Cluster corrected energies         -1943.17375635 (Davidson, rotated reference)

 Cluster corrected energies         -1943.17075500 (Pople, fixed reference)
 Cluster corrected energies         -1943.17024597 (Pople, relaxed reference)
 Cluster corrected energies         -1943.17075500 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97263896 (fixed)   0.97376093 (relaxed)   0.97347060 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00179488   -0.00291392   -0.00499735
 Singles      0.00934391   -0.05257112   -0.05775415
 Pairs        0.04410868   -0.83993624   -0.83342079
 Total        1.05524747   -0.89542129   -0.89617229
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.08410162
 Nuclear energy                         0.00000000
 Kinetic energy                      2052.91747325
 One electron energy                -2702.05845512
 Two electron energy                  759.07835831
 Virial quotient                       -0.94644822
 Correlation energy                    -0.89599518
 !MRCI STATE 4.2 Energy             -1942.980096802014

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1943.02959827 (Davidson, fixed reference)
 Cluster corrected energies         -1943.02903455 (Davidson, relaxed reference)
 Cluster corrected energies         -1943.02959827 (Davidson, rotated reference)

 Cluster corrected energies         -1943.02669425 (Pople, fixed reference)
 Cluster corrected energies         -1943.02613968 (Pople, relaxed reference)
 Cluster corrected energies         -1943.02669425 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97266863 (fixed)   0.97376093 (relaxed)   0.97347060 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00179488   -0.00291392   -0.79028280
 Singles      0.00934391   -0.05257112   -0.05775415
 Pairs        0.04410868   -0.01126576   -0.04813534
 Total        1.05524747   -0.06675081   -0.89617229
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.08410162
 Nuclear energy                         0.00000000
 Kinetic energy                      2052.91747346
 One electron energy                -2702.05845526
 Two electron energy                  759.07835846
 Virial quotient                       -0.94644822
 Correlation energy                    -0.89599518
 !MRCI STATE 5.2 Energy             -1942.980096801648

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1943.02959827 (Davidson, fixed reference)
 Cluster corrected energies         -1943.02903455 (Davidson, relaxed reference)
 Cluster corrected energies         -1943.02959827 (Davidson, rotated reference)

 Cluster corrected energies         -1943.02669424 (Pople, fixed reference)
 Cluster corrected energies         -1943.02613968 (Pople, relaxed reference)
 Cluster corrected energies         -1943.02669424 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97272645 (fixed)   0.97376093 (relaxed)   0.97347060 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00179488   -0.00291392   -0.79474121
 Singles      0.00934391   -0.05257112   -0.05775415
 Pairs        0.04410868   -0.00656104   -0.04367693
 Total        1.05524747   -0.06204608   -0.89617229
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.08410162
 Nuclear energy                         0.00000000
 Kinetic energy                      2052.91747346
 One electron energy                -2702.05845534
 Two electron energy                  759.07835854
 Virial quotient                       -0.94644822
 Correlation energy                    -0.89599518
 !MRCI STATE 6.2 Energy             -1942.980096801500

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1943.02959827 (Davidson, fixed reference)
 Cluster corrected energies         -1943.02903456 (Davidson, relaxed reference)
 Cluster corrected energies         -1943.02959827 (Davidson, rotated reference)

 Cluster corrected energies         -1943.02669425 (Pople, fixed reference)
 Cluster corrected energies         -1943.02613969 (Pople, relaxed reference)
 Cluster corrected energies         -1943.02669425 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      132.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1326.44       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6489.54   6469.45      9.51      1.32      8.99
 REAL TIME  *      6612.17 SEC
 DISK USED  *         1.43 GB (local),       18.10 GB (total)
 SF USED    *        13.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1943.17375635  AU                              
 SETTING HLSDIAG(2)     =     -1943.17375635  AU                              
 SETTING HLSDIAG(3)     =     -1943.17375635  AU                              
 SETTING HLSDIAG(4)     =     -1943.02959827  AU                              
 SETTING HLSDIAG(5)     =     -1943.02959827  AU                              
 SETTING HLSDIAG(6)     =     -1943.02959827  AU                              


         HLSDIAG
    -1943.173756
    -1943.173756
    -1943.173756
    -1943.029598
    -1943.029598
    -1943.029598
                                                  


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

 Time for Seward_LS:      41.10 sec

      355305350. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    86801 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     41.10 sec, REAL time:     42.62 sec


 SORTLS1 read   355372856. and wrote   355372856. SO integrals in  1370 records. CPU time:      3.25 sec, REAL time:      4.87 sec
 SORTLS2 read   355372856. and wrote  1807811302. SO integrals in    36 records. CPU time:      2.17 sec, REAL time:      3.02 sec

 FILE SIZES: FILE 1:  5828.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  5828.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:  -1943.118680  -1943.118679  -1943.118679  -1942.980097  -1942.980097  -1942.980097
 Replaced energies:  -1943.173756  -1943.173756  -1943.173756  -1943.029598  -1943.029598  -1943.029598



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1943.17375635

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.80      -0.30
                            0.00       3.01     312.61    -119.29      -1.60      -0.93      -0.00    -312.61       3.01      -0.94

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00    -312.63     119.29
                           -3.01       0.00       0.80      -0.32       1.15      -0.00     312.61       0.00       0.00       1.60

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.80     312.63       0.00      -0.22
                         -312.61      -0.80      -0.00      -1.60     119.29       0.00      -3.01      -0.00      -0.00      -0.02

    4   4.2  0.5  0.5       0.00       0.00       0.00   31639.04       0.00       0.00       0.30    -119.29       0.22      -0.00
                          119.29       0.32       1.60       0.00     -45.43      -0.00       0.94      -1.60       0.02      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   31639.04       0.00       0.00      -1.60       0.00       0.00
                            1.60      -1.15    -119.29      45.43       0.00       0.35      -0.29     119.29      -1.15       0.35

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   31639.04       0.00       0.22     119.30     -45.42
                            0.93       0.00      -0.00       0.00      -0.35       0.00    -119.30      -0.30       0.00      -0.61

    7   1.2  0.5 -0.5       0.00      -0.01      -0.80       0.30       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -312.61       3.01      -0.94       0.29     119.30      -0.00      -3.01    -312.61     119.29

    8   2.2  0.5 -0.5       0.01       0.00     312.63    -119.29      -1.60       0.22       0.00       0.00       0.00       0.00
                          312.61      -0.00       0.00       1.60    -119.29       0.30       3.01      -0.00      -0.80       0.32

    9   3.2  0.5 -0.5       0.80    -312.63       0.00       0.22       0.00     119.30       0.00       0.00       0.00       0.00
                           -3.01      -0.00       0.00      -0.02       1.15      -0.00     312.61       0.80       0.00       1.60

   10   4.2  0.5 -0.5      -0.30     119.29      -0.22      -0.00       0.00     -45.42       0.00       0.00       0.00   31639.04
                            0.94      -1.60       0.02       0.00      -0.35       0.61    -119.29      -0.32      -1.60      -0.00

   11   5.2  0.5 -0.5      -0.00       1.60      -0.00      -0.00      -0.00      -0.61       0.00       0.00       0.00       0.00
                           -0.29     119.29      -1.15       0.35      -0.00     -45.42      -1.60       1.15     119.29     -45.43

   12   6.2  0.5 -0.5      -0.00      -0.22    -119.30      45.42       0.61       0.00       0.00       0.00       0.00       0.00
                         -119.30      -0.30       0.00      -0.61      45.42       0.00      -0.93      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.00      -0.00
                            0.29     119.30

    2   2.2  0.5  0.5       1.60      -0.22
                         -119.29       0.30

    3   3.2  0.5  0.5      -0.00    -119.30
                            1.15      -0.00

    4   4.2  0.5  0.5      -0.00      45.42
                           -0.35       0.61

    5   5.2  0.5  0.5      -0.00       0.61
                            0.00     -45.42

    6   6.2  0.5  0.5      -0.61       0.00
                           45.42      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            1.60       0.93

    8   2.2  0.5 -0.5       0.00       0.00
                           -1.15       0.00

    9   3.2  0.5 -0.5       0.00       0.00
                         -119.29      -0.00

   10   4.2  0.5 -0.5       0.00       0.00
                           45.43       0.00

   11   5.2  0.5 -0.5   31639.04       0.00
                           -0.00      -0.35

   12   6.2  0.5 -0.5       0.00   31639.04
                            0.35      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1943.17661327    -0.00285692     -627.02      0.00000000        0.00      0.0000
     2 -1943.17661327    -0.00285692     -627.02      0.00000000        0.00      0.0000
     3 -1943.17233399     0.00142236      312.17      0.00427928      939.19      0.1164
     4 -1943.17233399     0.00142236      312.17      0.00427928      939.19      0.1164
     5 -1943.17233399     0.00142237      312.17      0.00427928      939.19      0.1164
     6 -1943.17233399     0.00142237      312.17      0.00427928      939.19      0.1164
     7 -1943.03000417     0.14375219    31549.96      0.14660911    32176.98      3.9894
     8 -1943.03000417     0.14375219    31549.96      0.14660911    32176.98      3.9894
     9 -1943.02938922     0.14436714    31684.92      0.14722405    32311.95      4.0062
    10 -1943.02938922     0.14436714    31684.92      0.14722405    32311.95      4.0062
    11 -1943.02938922     0.14436714    31684.92      0.14722406    32311.95      4.0062
    12 -1943.02938922     0.14436714    31684.92      0.14722406    32311.95      4.0062


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.072991831  -0.572701482   0.332999493  -0.012169929   0.745384235   0.004775578   0.004281409   0.000022701
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.276029791   0.035180492  -0.014527379  -0.361866887   0.000333437   0.038775684  -0.000021080   0.003975686
                         0.502464934   0.058430938   0.018985545   0.726675734  -0.001405474   0.074661427   0.000049684  -0.001588066

    3    3.2  0.5  0.5  -0.003939141  -0.000502050   0.003404370  -0.002127945  -0.001531421  -0.003780295   0.000000182  -0.000034270
                         0.068855722  -0.573199822   0.478717604  -0.013614130  -0.661196613  -0.009354676   0.004281060   0.000048140

    4    4.2  0.5  0.5   0.000032790  -0.000053631  -0.000004115  -0.000009939  -0.000043788  -0.000014353  -0.007713359  -0.003700508
                        -0.000517263   0.004249642   0.001820457  -0.000046813  -0.002514219  -0.000035062   0.577238597   0.006106894

    5    5.2  0.5  0.5  -0.000546126   0.004246096   0.001266262  -0.000049924   0.002834253   0.000018346   0.577265159   0.004377989
                        -0.000016422   0.000055801   0.000024561   0.000006415  -0.000033681   0.000000254   0.007746689  -0.000463946

    6    6.2  0.5  0.5  -0.002045678  -0.000271723  -0.000058496  -0.001375990  -0.000005944   0.000147438  -0.004313662   0.536100098
                        -0.003725287  -0.000441084   0.000068873   0.002763529  -0.000000750   0.000283991   0.005644781  -0.214153876

    7    1.2  0.5 -0.5  -0.501778323  -0.063952548   0.010916080   0.298691140  -0.004278163   0.667746596  -0.000008422   0.001588448
                         0.276053440   0.035183506   0.005380179   0.147215029   0.002122135  -0.331228232  -0.000021081   0.003975840

    8    2.2  0.5 -0.5   0.002658884   0.000351680   0.003329880  -0.004637370  -0.001559414   0.000923261  -0.000000297   0.000038317
                        -0.068152563   0.573291664   0.811784564  -0.023451876   0.084115697   0.001110915  -0.004281125  -0.000038009

    9    3.2  0.5 -0.5   0.275853774   0.036641139   0.007927346   0.214688848  -0.000770414   0.292445664  -0.000031990   0.003975582
                         0.502456947   0.058429909  -0.011270754  -0.427891147  -0.010060173   0.593008295   0.000049684  -0.001588149

   10    4.2  0.5 -0.5  -0.002095401  -0.000278060   0.000029610   0.000801111  -0.000002722   0.001078023  -0.004298110   0.533178583
                        -0.003697517  -0.000437400  -0.000037596  -0.001634718  -0.000037789   0.002271801   0.005702120  -0.221324404

   11    5.2  0.5 -0.5   0.003693363   0.000470578   0.000041945   0.001146659  -0.000016322   0.002554010  -0.001193446   0.221365210
                        -0.002095593  -0.000277632   0.000027825   0.000537768   0.000008380  -0.001229291  -0.004237656   0.533190884

   12    6.2  0.5 -0.5  -0.000025462  -0.000003320   0.000012502  -0.000022021  -0.000005883  -0.000004992  -0.000029312   0.003641492
                         0.000517436  -0.004250006   0.003087116  -0.000087637   0.000319929   0.000003314  -0.577291258  -0.006100063


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5   0.000195750  -0.001187628  -0.002861901  -0.000041815
                        -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.003037744  -0.000504682  -0.000003840   0.000376067
                         0.000079823   0.000026248   0.000012247  -0.000098984

    3    3.2  0.5  0.5  -0.000005993   0.000029657  -0.000012513  -0.000013955
                         0.000313833  -0.001850323   0.002472894   0.000048556

    4    4.2  0.5  0.5   0.003697361  -0.011742953  -0.006788007   0.003344773
                        -0.082555841   0.486505243  -0.650218183  -0.012720512

    5    5.2  0.5  0.5  -0.049393903   0.312507904   0.752542817   0.010789514
                        -0.001158965   0.006497053  -0.008715100  -0.000104018

    6    6.2  0.5  0.5   0.798928328   0.131928699  -0.000913912  -0.098924450
                        -0.020839394  -0.007791183  -0.002032263   0.026052050

    7    1.2  0.5 -0.5   0.000020365   0.000003357   0.000011979  -0.000819871
                         0.001187453   0.000195721   0.000040063  -0.002741950

    8    2.2  0.5 -0.5  -0.000017590   0.000027720  -0.000012899   0.000010634
                         0.000505057  -0.003038666  -0.000388662  -0.000007187

    9    3.2  0.5 -0.5   0.001849543   0.000313684  -0.000042523   0.002365663
                        -0.000061382  -0.000011374   0.000027281  -0.000720418

   10    4.2  0.5 -0.5  -0.486232388  -0.082480299   0.011229158  -0.624910078
                         0.020083847   0.005112490  -0.006848728   0.179769599

   11    5.2  0.5 -0.5  -0.011854920  -0.002005790  -0.002991298   0.207236976
                        -0.312350488  -0.049366767  -0.010367088   0.723498110

   12    6.2  0.5 -0.5   0.005527729  -0.007136340   0.003379475  -0.002208898
                        -0.132042904   0.799168217   0.102241493  -0.000293400


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.533%  32.799%  11.089%   0.015%  55.560%   0.002%   0.002%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  32.866%   0.465%   0.057%  65.901%   0.000%   0.708%   0.000%   0.002%   0.001%   0.000%
    3    3.2  0.5  0.5   0.476%  32.856%  22.918%   0.019%  43.718%   0.010%   0.002%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%  33.326%   0.005%   0.683%  23.683%
    5    5.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%  33.330%   0.002%   0.244%   9.770%
    6    6.2  0.5  0.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.005%  33.327%  63.872%   1.747%
    7    1.2  0.5 -0.5  32.799%   0.533%   0.015%  11.089%   0.002%  55.560%   0.000%   0.002%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.465%  32.866%  65.901%   0.057%   0.708%   0.000%   0.002%   0.000%   0.000%   0.001%
    9    3.2  0.5 -0.5  32.856%   0.476%   0.019%  22.918%   0.010%  43.718%   0.000%   0.002%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   0.005%  33.326%  23.683%   0.683%
   11    5.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%  33.330%   9.770%   0.244%
   12    6.2  0.5 -0.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%  33.327%   0.005%   1.747%  63.872%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.001%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.001%   0.000%
    4    4.2  0.5  0.5  42.283%   0.017%
    5    5.2  0.5  0.5  56.640%   0.012%
    6    6.2  0.5  0.5   0.000%   1.046%
    7    1.2  0.5 -0.5   0.000%   0.001%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.001%
   10    4.2  0.5 -0.5   0.017%  42.283%
   11    5.2  0.5 -0.5   0.012%  56.640%
   12    6.2  0.5 -0.5   1.046%   0.000%


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
              1      24     5558.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1326.44       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     14897.91   8408.36   6469.45      9.51      1.32      8.99
 REAL TIME  *     15175.19 SEC
 DISK USED  *         1.43 GB (local),       36.18 GB (total)
 SF USED    *        13.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=  -1943.029389219088

              CI           MULTI         RHF-SCF
  -1942.98009680  -1942.08392451  -1941.99187207
 **********************************************************************************************************************************
 Molpro calculation terminated
