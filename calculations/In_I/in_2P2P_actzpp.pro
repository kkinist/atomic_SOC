
 Working directory              : /wrk/irikura/molpro.r26dAq9ih8/
 Global scratch directory       : /wrk/irikura/molpro.r26dAq9ih8/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.r26dAq9ih8/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,In SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={In};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 {multi
     closed,6,3
     occ,8,9
     wf,nelec=21,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   In SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 08-Mar-24          TIME: 15:29:43  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry In   ECP ECP28MDF                 selected for group  1
 Library entry IN     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry IN     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry IN     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry IN     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry IN     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  IN     21.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   21
 NUMBER OF PRIMITIVE AOS:         184
 NUMBER OF SYMMETRY AOS:          154
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.116E-03 0.163E-02 0.926E-02 0.147E-01 0.147E-01 0.147E-01 0.147E-01 0.147E-01
         2 0.826E-02 0.826E-02 0.826E-02 0.318E-01 0.318E-01 0.318E-01 0.183E+00 0.183E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     14.156 MB (compressed) written to integral file ( 15.7%)

     Node minimum: 0.524 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     48 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.80      0.59
 REAL TIME  *         1.60 SEC
 DISK USED  *        29.19 MB (local),      405.07 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial occupancy:   7   3

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -189.01260533    -189.01260533     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -189.01820445      -0.00559912     0.24D-02     0.82D-02     1     0       0.00      0.01    diag
   3     -189.01869142      -0.00048697     0.14D-02     0.16D-02     2     0       0.00      0.01    diag
   4     -189.01878022      -0.00008880     0.28D-03     0.15D-02     3     0       0.01      0.02    diag
   5     -189.01878392      -0.00000370     0.67D-04     0.35D-03     4     0       0.00      0.02    diag
   6     -189.01878393      -0.00000001     0.46D-05     0.16D-04     5     0       0.00      0.02    diag
   7     -189.01878393      -0.00000000     0.22D-06     0.19D-05     6     0       0.01      0.03    diag
   8     -189.01878393      -0.00000000     0.16D-07     0.14D-06     0     0       0.00      0.03    fixocc

 Final occupancy:   7   3

 !RHF STATE 1.1 Energy               -189.018783929285
  RHF One-electron energy            -329.270278893711
  RHF Two-electron energy             140.251494964426
  RHF Kinetic energy                   73.251792467227
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.580398070311

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.64573     1  1  s    0.99969
    2.1     2.00000    -1.28184     1  1  d0   1.00161
    3.1     2.00000    -1.28184     1  1  d2-  1.00161
    4.1     2.00000    -1.28184     1  1  d2+  1.00161
    5.1     2.00000    -1.28184     1  1  d1+  0.44197    1  1  d1-  0.89882
    6.1     2.00000    -1.28184     1  1  d1+  0.89882    1  1  d1- -0.44197
    7.1     2.00000    -0.63504     1  2  s    1.08589
    1.2     2.00000    -3.89789     1  1  px   0.99911
    2.2     2.00000    -3.89789     1  1  py   0.99911
    3.2     2.00000    -3.89789     1  1  pz   0.99911


 HOMO      7.1    -0.635041 =     -17.2804eV
 LUMO      4.2    -0.182920 =      -4.9775eV
 LUMO-HOMO         0.452122 =      12.3029eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.01      0.21      0.59
 REAL TIME  *         2.69 SEC
 DISK USED  *        29.66 MB (local),      410.73 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      79 (   39   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.847D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.932D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.746D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.330D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.330D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 6 4 1 1 2 5   3 4 6 1 2 6 4 5 3 1   4 6 2 5 3 1 5 3 2 4   6141512 8 911 71310
                                        1 2 5 3 6 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.555D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.236D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.238D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.141D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.146D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 2 3 3   1 2 810 6 4 5 9 7 3   1 2 6 9 7 810 5 4 8  10 6 9 7 5 4 3 2 110
                                        8 7 9 6 5 4 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1422
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0   -189.15841303    -189.16403596   -0.00562293    0.04562711 0.00017801 0.00000000  0.78E+00      0.32
   2    8    7    0   -189.16397158    -189.16397401   -0.00000244    0.00145527 0.00000010 0.00000000  0.20E-01      0.69
   3    5    5    0   -189.16397402    -189.16397402   -0.00000000    0.00000044 0.00000000 0.00000000  0.21E-04      0.95

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.17E-09)
                       Final energy:   -189.16397402
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -189.223633269074
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.48270256
 One electron energy                          -334.98075711
 Two electron energy                           145.75712384
 Virial ratio                                    3.57507722
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -189.223633269016
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.48270256
 One electron energy                          -334.98075711
 Two electron energy                           145.75712384
 Virial ratio                                    3.57507722
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -189.223633268901
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.48270256
 One electron energy                          -334.98075711
 Two electron energy                           145.75712385
 Virial ratio                                    3.57507722
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -189.104314762251
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.28595860
 One electron energy                          -331.60262051
 Two electron energy                           142.49830575
 Virial ratio                                    3.58036216
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -189.104314762240
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.28595860
 One electron energy                          -331.60262051
 Two electron energy                           142.49830575
 Virial ratio                                    3.58036216
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -189.104314762204
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.28595860
 One electron energy                          -331.60262051
 Two electron energy                           142.49830575
 Virial ratio                                    3.58036216
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000000004
 !MCSCF expec                      <4.2|LXLX|4.2>     0.000000000396
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999999995
 !MCSCF expec                      <6.2|LXLX|6.2>     0.999999999837
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.000000000020
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999999956
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999999999
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999999960
 !MCSCF expec                      <5.2|LYLY|5.2>     0.000000000442
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999999935
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999999980
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.000000000044
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999996
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.999999999644
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999999563
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.000000000228
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 3 5 4 1 1 2 3   5 6 4 1 2 6 4 3 5 1   2 4 6 3 5 1 3 5 2 6   411 71415 9 8121310
                                        1 2 5 3 6 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 3 1 2 3   1 2 810 6 4 5 9 7 3   1 2 6 9 7 810 5 4 8  10 6 7 9 5 4 3 2 1 8
                                       10 9 7 5 4 6 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.44751     1  1  s    1.00087
    2.1     2.00000    -1.08406     1  1  d0   1.00062
    3.1     2.00000    -1.08406     1  1  d1-  1.00062
    4.1     2.00000    -1.08406     1  1  d2-  1.00062
    5.1     2.00000    -1.08406     1  1  d2+  1.00062
    6.1     2.00000    -1.08406     1  1  d1+  1.00062
    7.1     1.92024    -0.44481     1  2  s    1.02629
    8.1     0.00524     0.22841     1  2  s    1.30675    1  3  s   -1.14602    1  4  s    0.81484    1  5  s    1.54133
    1.2     2.00000    -3.70032     1  1  py   0.99974
    2.2     2.00000    -3.70032     1  1  px   0.99974
    3.2     2.00000    -3.70032     1  1  pz   0.99974
    4.2     0.19166    -0.01952     1  2  px   1.23879
    5.2     0.19166    -0.01952     1  2  pz   1.23879
    6.2     0.19166    -0.01952     1  2  py   1.23879
    7.2     0.16652     0.01932     1  2  pz  -0.31661    1  7  pz   1.10436
    8.2     0.16652     0.01932     1  2  px  -0.31661    1  7  px   1.10436
    9.2     0.16652     0.01932     1  2  py  -0.31661    1  7  py   1.10436
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 a00000      0.00000029     -0.00000005      0.94800858     -0.25151064      0.00000159     -0.00000474
 20 00a000      0.94800858      0.00000422     -0.00000029     -0.00000159     -0.25151064     -0.00000526
 20 0a0000     -0.00000422      0.94800858      0.00000005      0.00000474      0.00000526     -0.25151064
 20 0000a0      0.00000008     -0.00000001      0.25147128      0.94410094     -0.00000597      0.00001780
 20 00000a      0.25147128      0.00000112     -0.00000008      0.00000597      0.94410094      0.00001973
 20 000a00     -0.00000112      0.25147128      0.00000001     -0.00001780     -0.00001973      0.94410094
 00 20a000     -0.12506566     -0.00000056      0.00000004      0.00000022      0.03536128      0.00000074
 00 2a0000      0.00000056     -0.12506566     -0.00000001     -0.00000067     -0.00000074      0.03536128
 00 a20000     -0.00000004      0.00000001     -0.12506566      0.03536128     -0.00000022      0.00000067
 00 02a000     -0.12506566     -0.00000056      0.00000004      0.00000022      0.03536128      0.00000074
 00 a02000     -0.00000004      0.00000001     -0.12506566      0.03536128     -0.00000022      0.00000067
 00 0a2000      0.00000056     -0.12506566     -0.00000001     -0.00000067     -0.00000074      0.03536128
 00 20000a     -0.03013516     -0.00000013      0.00000001     -0.00000072     -0.11320737     -0.00000237
 00 200a00      0.00000013     -0.03013516     -0.00000000      0.00000213      0.00000237     -0.11320737
 00 0200a0     -0.00000001      0.00000000     -0.03013516     -0.11320737      0.00000072     -0.00000213
 00 02000a     -0.03013516     -0.00000013      0.00000001     -0.00000072     -0.11320737     -0.00000237
 00 0020a0     -0.00000001      0.00000000     -0.03013516     -0.11320737      0.00000072     -0.00000213
 00 002a00      0.00000013     -0.03013516     -0.00000000      0.00000213      0.00000237     -0.11320737
 00 2000a0     -0.00000001      0.00000000     -0.02944087     -0.11133248      0.00000070     -0.00000210
 00 020a00      0.00000013     -0.02944087     -0.00000000      0.00000210      0.00000233     -0.11133248
 00 00200a     -0.02944087     -0.00000013      0.00000001     -0.00000070     -0.11133248     -0.00000233
 
 Energy:     -189.22363327   -189.22363327   -189.22363327   -189.10431476   -189.10431476   -189.10431476
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.74       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.93      0.90      0.21      0.59
 REAL TIME  *         3.86 SEC
 DISK USED  *        38.00 MB (local),      510.86 MB (total)
 SF USED    *        22.12 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -189.2236333   2.0
    -189.2236333   2.0
    -189.2236333   2.0
    -189.1043148   2.0
    -189.1043148   2.0
    -189.1043148   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      79 (  39  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -189.22363327
     2      -189.22363327
     3      -189.22363327
     4      -189.10431476
     5      -189.10431476
     6      -189.10431476

 Number of blocks in overlap matrix:   566   Smallest eigenvalue:  0.38D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3060250
 Number of doubly external configurations:       2077248
 Total number of contracted configurations:      5190770
 Total number of uncontracted configurations:   40457792

 Diagonal Coupling coefficients finished.               Storage:  22137732 words, CPU-Time:     26.33 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1112961 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -189.22363327    -0.00000000    -0.77631024  0.46D-01  0.99D-01    38.20
    1     2     2     1.00000000     0.00000000  -189.22363327     0.00000000    -0.77626851  0.46D-01  0.99D-01    38.20
    1     3     3     1.00000000     0.00000000  -189.22363327     0.00000000    -0.77633561  0.46D-01  0.99D-01    38.20
    1     4     4     1.00000000     0.00000000  -189.10431476     0.00000000    -0.75452168  0.32D-01  0.94D-01    38.20
    1     5     5     1.00000000     0.00000000  -189.10431476    -0.00000000    -0.75453543  0.32D-01  0.94D-01    38.20
    1     6     6     1.00000000     0.00000000  -189.10431476    -0.00000000    -0.75453032  0.32D-01  0.94D-01    38.20
    2     1     1     1.09013088    -0.61437389  -189.83800716    -0.61437389    -0.01599074  0.28D-02  0.12D-02   261.64
    2     2     2     1.09018246    -0.61434096  -189.83797423    -0.61434096    -0.01602552  0.28D-02  0.12D-02   261.64
    2     3     3     1.09019498    -0.61433562  -189.83796889    -0.61433562    -0.01603139  0.28D-02  0.12D-02   261.64
    2     4     4     1.07939363    -0.60478761  -189.70910237    -0.60478761    -0.01417843  0.19D-02  0.10D-02   261.64
    2     5     5     1.07939727    -0.60478272  -189.70909748    -0.60478272    -0.01418455  0.19D-02  0.10D-02   261.64
    2     6     6     1.07940264    -0.60478166  -189.70909642    -0.60478166    -0.01418527  0.19D-02  0.10D-02   261.64
    3     1     1     1.08157336    -0.62953674  -189.85317001    -0.01516285    -0.00033219  0.45D-04  0.34D-04   484.47
    3     2     2     1.08157212    -0.62953550  -189.85316877    -0.01519454    -0.00033337  0.45D-04  0.34D-04   484.47
    3     3     3     1.08157327    -0.62953523  -189.85316850    -0.01519962    -0.00033364  0.45D-04  0.34D-04   484.47
    3     4     4     1.07439192    -0.61821971  -189.72253447    -0.01343210    -0.00026161  0.27D-04  0.23D-04   484.47
    3     5     5     1.07439132    -0.61821949  -189.72253426    -0.01343677    -0.00026184  0.27D-04  0.23D-04   484.47
    3     6     6     1.07439176    -0.61821944  -189.72253420    -0.01343778    -0.00026190  0.27D-04  0.23D-04   484.47
    4     1     1     1.08162449    -0.62987062  -189.85350389    -0.00033388    -0.00001339  0.37D-05  0.11D-05   706.62
    4     2     2     1.08162415    -0.62987062  -189.85350389    -0.00033512    -0.00001338  0.36D-05  0.11D-05   706.62
    4     3     3     1.08162412    -0.62987061  -189.85350388    -0.00033537    -0.00001340  0.37D-05  0.11D-05   706.62
    4     4     4     1.07483758    -0.61847627  -189.72279104    -0.00025656    -0.00000965  0.25D-05  0.63D-06   706.62
    4     5     5     1.07483764    -0.61847627  -189.72279103    -0.00025678    -0.00000965  0.25D-05  0.63D-06   706.62
    4     6     6     1.07483755    -0.61847627  -189.72279103    -0.00025683    -0.00000965  0.25D-05  0.63D-06   706.62
    5     1     1     1.08159726    -0.62988526  -189.85351852    -0.00001463    -0.00000051  0.99D-07  0.47D-07   926.65
    5     2     2     1.08159726    -0.62988525  -189.85351852    -0.00001464    -0.00000051  0.99D-07  0.47D-07   926.65
    5     3     3     1.08159750    -0.62988525  -189.85351852    -0.00001465    -0.00000051  0.10D-06  0.47D-07   926.65
    5     4     4     1.07491305    -0.61848652  -189.72280128    -0.00001024    -0.00000037  0.74D-07  0.29D-07   926.65
    5     5     5     1.07491307    -0.61848652  -189.72280128    -0.00001025    -0.00000037  0.74D-07  0.29D-07   926.65
    5     6     6     1.07491307    -0.61848652  -189.72280128    -0.00001025    -0.00000037  0.74D-07  0.29D-07   926.65
    6     1     1     1.08157650    -0.62988579  -189.85351906    -0.00000054    -0.00000002  0.41D-08  0.23D-08  1145.81
    6     2     2     1.08157649    -0.62988579  -189.85351906    -0.00000054    -0.00000002  0.41D-08  0.23D-08  1145.81
    6     3     3     1.08157650    -0.62988579  -189.85351906    -0.00000054    -0.00000002  0.41D-08  0.23D-08  1145.81
    6     4     4     1.07491026    -0.61848690  -189.72280166    -0.00000038    -0.00000002  0.33D-08  0.15D-08  1145.81
    6     5     5     1.07491027    -0.61848690  -189.72280166    -0.00000038    -0.00000002  0.33D-08  0.15D-08  1145.81
    6     6     6     1.07491027    -0.61848690  -189.72280166    -0.00000038    -0.00000002  0.33D-08  0.15D-08  1145.81


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.2%
 S   1.2%  52.4%
 P   0.5%  27.7%  10.3%

 Initialization:   2.3%
 Other:            2.4%

 Total CPU:     1145.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202220/0000           0.9235482   0.0000050   0.0000010  -0.0003546   0.0451891  -0.2027583
 2222222022200/000          -0.0000010   0.0018299   0.9235464  -0.2077259  -0.0017425  -0.0000250
 22222220222/00000          -0.0000050   0.9235464  -0.0018299   0.0017062  -0.2027511  -0.0451905
 2222222022200000/          -0.0000002   0.0004122   0.2080138   0.9206565   0.0077229   0.0001110
 22222220222000/00           0.2080142   0.0000011   0.0000002   0.0015717  -0.2002813   0.8986395
 222222202220000/0          -0.0000011   0.2080138  -0.0004122  -0.0075621   0.8986077   0.2002875
 222222002220/2000          -0.1085342  -0.0000006  -0.0000001   0.0000452  -0.0057648   0.0258662
 222222002222/0000          -0.1085341  -0.0000006  -0.0000001   0.0000452  -0.0057648   0.0258662
 22222200222/20000           0.0000006  -0.1085340   0.0002150  -0.0002177   0.0258653   0.0057650
 2222220022202/000           0.0000001  -0.0002150  -0.1085340   0.0265000   0.0002223   0.0000032
 22222200222/02000           0.0000006  -0.1085339   0.0002150  -0.0002177   0.0258652   0.0057650
 2222220022220/000           0.0000001  -0.0002150  -0.1085339   0.0264999   0.0002223   0.0000032
 2222220022202000/           0.0000000  -0.0000438  -0.0220879  -0.0980019  -0.0008221  -0.0000118
 2222220022220000/           0.0000000  -0.0000438  -0.0220879  -0.0980019  -0.0008221  -0.0000118
 2222220022200200/           0.0000000  -0.0000423  -0.0213330  -0.0961329  -0.0008064  -0.0000116
 22222200222200/00          -0.0220880  -0.0000001  -0.0000000  -0.0001673   0.0213195  -0.0956582
 22222200222002/00          -0.0220880  -0.0000001  -0.0000000  -0.0001673   0.0213195  -0.0956582
 222222002220200/0           0.0000001  -0.0220879   0.0000438   0.0008050  -0.0956549  -0.0213202
 222222002220020/0           0.0000001  -0.0220879   0.0000438   0.0008050  -0.0956548  -0.0213202
 22222200222020/00          -0.0213329  -0.0000001  -0.0000000  -0.0001641   0.0209129  -0.0938340
 222222002222000/0           0.0000001  -0.0213329   0.0000423   0.0007896  -0.0938306  -0.0209136
 222222/\22200000/          -0.0000000   0.0000403   0.0203635   0.0795924   0.0006677   0.0000096
 222222/\222000/00           0.0203636   0.0000001   0.0000000   0.0001359  -0.0173147   0.0776890
 222222/\2220000/0          -0.0000001   0.0203636  -0.0000403  -0.0006538   0.0776863   0.0173152

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000001    0.959512   -0.000005    0.000000    0.000000   -0.035550
 2           0.001901    0.000005    0.959510   -0.035550   -0.000070   -0.000000
 3           0.959510    0.000001   -0.001901    0.000070   -0.035550   -0.000000
 4           0.037419    0.000064   -0.000307   -0.007902    0.962086    0.001642
 5           0.000314   -0.008140    0.036523    0.939045    0.008070   -0.209294
 6           0.000005    0.036524    0.008141    0.209300    0.000116    0.939078

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960170   -0.000000    0.000000    0.000002   -0.000193    0.000864
 2          -0.000000    0.960170   -0.000000   -0.000006    0.000864    0.000193
 3           0.000000   -0.000000    0.960170    0.000885    0.000006   -0.000000
 4           0.000002   -0.000006    0.000885    0.962847    0.000000    0.000000
 5          -0.000193    0.000864    0.000006    0.000000    0.962847   -0.000000
 6           0.000864    0.000193   -0.000000    0.000000   -0.000000    0.962847


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95951224 (fixed)   0.96076183 (relaxed)   0.96017019 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287388   -0.00333061   -0.54867768
 Singles      0.01847950   -0.06138038   -0.06732695
 Pairs        0.06333144    0.02482673   -0.01388116
 Total        1.08468482   -0.03988426   -0.62988579
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.22346146
 Nuclear energy                         0.00000000
 Kinetic energy                        73.72508357
 One electron energy                 -334.44165721
 Two electron energy                  144.58813815
 Virial quotient                       -2.57515502
 Correlation energy                    -0.63005760
 !MRCI STATE 1.2 Energy              -189.853519062443

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.90687538 (Davidson, fixed reference)
 Cluster corrected energies          -189.90603394 (Davidson, relaxed reference)
 Cluster corrected energies          -189.90687538 (Davidson, rotated reference)

 Cluster corrected energies          -189.90499127 (Pople, fixed reference)
 Cluster corrected energies          -189.90412281 (Pople, relaxed reference)
 Cluster corrected energies          -189.90499127 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95951037 (fixed)   0.96076184 (relaxed)   0.96017020 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287387   -0.00333061   -0.52578939
 Singles      0.01847948   -0.06138037   -0.06732693
 Pairs        0.06333145    0.00000013   -0.03676946
 Total        1.08468480   -0.06471085   -0.62988579
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.22346146
 Nuclear energy                         0.00000000
 Kinetic energy                        73.72508667
 One electron energy                 -334.44165926
 Two electron energy                  144.58814020
 Virial quotient                       -2.57515491
 Correlation energy                    -0.63005760
 !MRCI STATE 2.2 Energy              -189.853519062391

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.90687536 (Davidson, fixed reference)
 Cluster corrected energies          -189.90603393 (Davidson, relaxed reference)
 Cluster corrected energies          -189.90687536 (Davidson, rotated reference)

 Cluster corrected energies          -189.90499125 (Pople, fixed reference)
 Cluster corrected energies          -189.90412280 (Pople, relaxed reference)
 Cluster corrected energies          -189.90499125 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95951036 (fixed)   0.96076183 (relaxed)   0.96017019 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00287387   -0.00333061   -0.52578927
 Singles      0.01847949   -0.06138039   -0.06732694
 Pairs        0.06333145    0.00000003   -0.03676958
 Total        1.08468482   -0.06471097   -0.62988579
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.22346146
 Nuclear energy                         0.00000000
 Kinetic energy                        73.72508635
 One electron energy                 -334.44165921
 Two electron energy                  144.58814015
 Virial quotient                       -2.57515492
 Correlation energy                    -0.63005760
 !MRCI STATE 3.2 Energy              -189.853519061116

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.90687537 (Davidson, fixed reference)
 Cluster corrected energies          -189.90603394 (Davidson, relaxed reference)
 Cluster corrected energies          -189.90687537 (Davidson, rotated reference)

 Cluster corrected energies          -189.90499126 (Pople, fixed reference)
 Cluster corrected energies          -189.90412281 (Pople, relaxed reference)
 Cluster corrected energies          -189.90499126 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96208599 (fixed)   0.96350925 (relaxed)   0.96284689 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00349065   -0.00418838   -0.52089383
 Singles      0.01444912   -0.05782802   -0.06190257
 Pairs        0.06072263   -0.00094921   -0.03569049
 Total        1.07866240   -0.06296561   -0.61848690
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.10448657
 Nuclear energy                         0.00000000
 Kinetic energy                        73.59531591
 One electron energy                 -331.06876299
 Two electron energy                  141.34596133
 Virial quotient                       -2.57791952
 Correlation energy                    -0.61831509
 !MRCI STATE 4.2 Energy              -189.722801663680

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.77143981 (Davidson, fixed reference)
 Cluster corrected energies          -189.77052313 (Davidson, relaxed reference)
 Cluster corrected energies          -189.77143981 (Davidson, rotated reference)

 Cluster corrected energies          -189.76948612 (Pople, fixed reference)
 Cluster corrected energies          -189.76854951 (Pople, relaxed reference)
 Cluster corrected energies          -189.76948612 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.93904499 (fixed)   0.96350925 (relaxed)   0.96284688 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00349065   -0.00418838   -0.63390915
 Singles      0.01444912   -0.05782802   -0.06190257
 Pairs        0.06072263    0.12095617    0.07732483
 Total        1.07866240    0.05893977   -0.61848690
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.10448657
 Nuclear energy                         0.00000000
 Kinetic energy                        73.59531572
 One electron energy                 -331.06876286
 Two electron energy                  141.34596120
 Virial quotient                       -2.57791953
 Correlation energy                    -0.61831509
 !MRCI STATE 5.2 Energy              -189.722801663228

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.77143981 (Davidson, fixed reference)
 Cluster corrected energies          -189.77052314 (Davidson, relaxed reference)
 Cluster corrected energies          -189.77143981 (Davidson, rotated reference)

 Cluster corrected energies          -189.76948612 (Pople, fixed reference)
 Cluster corrected energies          -189.76854952 (Pople, relaxed reference)
 Cluster corrected energies          -189.76948612 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.93907824 (fixed)   0.96350925 (relaxed)   0.96284689 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00349065   -0.00418838   -0.01863536
 Singles      0.01444912   -0.05782802   -0.06190258
 Pairs        0.06072263   -0.54271654   -0.53794896
 Total        1.07866240   -0.60473294   -0.61848690
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.10448657
 Nuclear energy                         0.00000000
 Kinetic energy                        73.59531612
 One electron energy                 -331.06876343
 Two electron energy                  141.34596176
 Virial quotient                       -2.57791952
 Correlation energy                    -0.61831509
 !MRCI STATE 6.2 Energy              -189.722801663220

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.77143981 (Davidson, fixed reference)
 Cluster corrected energies          -189.77052313 (Davidson, relaxed reference)
 Cluster corrected energies          -189.77143981 (Davidson, rotated reference)

 Cluster corrected energies          -189.76948612 (Pople, fixed reference)
 Cluster corrected energies          -189.76854951 (Pople, relaxed reference)
 Cluster corrected energies          -189.76948612 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      246.01       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1300.98   1299.05      0.90      0.21      0.59
 REAL TIME  *      1326.06 SEC
 DISK USED  *       283.28 MB (local),        3.37 GB (total)
 SF USED    *         2.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -189.90687538  AU                              
 SETTING HLSDIAG(2)     =      -189.90687536  AU                              
 SETTING HLSDIAG(3)     =      -189.90687537  AU                              
 SETTING HLSDIAG(4)     =      -189.77143981  AU                              
 SETTING HLSDIAG(5)     =      -189.77143981  AU                              
 SETTING HLSDIAG(6)     =      -189.77143981  AU                              


         HLSDIAG
    -189.9068754
    -189.9068754
    -189.9068754
    -189.7714398
    -189.7714398
    -189.7714398
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -189.853519   -189.853519   -189.853519   -189.722802   -189.722802   -189.722802
 Replaced energies:   -189.906875   -189.906875   -189.906875   -189.771440   -189.771440   -189.771440



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -189.90687538

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -768.21       1.52      -2.52
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       1.52     768.21    -306.68

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     768.21      -0.00       0.00      -0.52
                            0.00       0.00    -768.21     306.68       1.98      -0.10      -1.52      -0.00       0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -1.52      -0.00       0.00       0.00
                           -0.00     768.21       0.00       1.91    -299.34     -66.72    -768.21      -0.00      -0.00       0.52

    4   4.2  0.5  0.5       0.00       0.00       0.00   29724.67       0.00       0.00       2.52       0.52      -0.00       0.00
                            0.00    -306.68      -1.91       0.00     119.19      26.56     306.68       0.00      -0.52       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   29724.67       0.00    -299.33     -66.72       0.13      -0.01
                           -0.00      -1.98     299.34    -119.19      -0.00       0.21       2.57       0.13      66.72     -26.57

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   29724.67     -66.72     299.34      -0.59       1.02
                           -0.00       0.10      66.72     -26.56      -0.21      -0.00       0.04      -0.59    -299.35     119.19

    7   1.2  0.5 -0.5      -0.00     768.21      -1.52       2.52    -299.33     -66.72       0.00       0.00       0.00       0.00
                            0.00       1.52     768.21    -306.68      -2.57      -0.04       0.00       0.00      -0.00       0.00

    8   2.2  0.5 -0.5    -768.21      -0.00      -0.00       0.52     -66.72     299.34       0.00       0.00       0.00       0.00
                           -1.52       0.00       0.00      -0.00      -0.13       0.59      -0.00      -0.00     768.21    -306.68

    9   3.2  0.5 -0.5       1.52       0.00       0.00      -0.00       0.13      -0.59       0.00       0.00       0.00       0.00
                         -768.21      -0.00       0.00       0.52     -66.72     299.35       0.00    -768.21      -0.00      -1.91

   10   4.2  0.5 -0.5      -2.52      -0.52       0.00       0.00      -0.01       1.02       0.00       0.00       0.00   29724.67
                          306.68       0.00      -0.52      -0.00      26.57    -119.19      -0.00     306.68       1.91      -0.00

   11   5.2  0.5 -0.5     299.33      66.72      -0.13       0.01       0.00    -122.11       0.00       0.00       0.00       0.00
                            2.57       0.13      66.72     -26.57       0.00      -1.00       0.00       1.98    -299.34     119.19

   12   6.2  0.5 -0.5      66.72    -299.34       0.59      -1.02     122.11       0.00       0.00       0.00       0.00       0.00
                            0.04      -0.59    -299.35     119.19       1.00      -0.00       0.00      -0.10     -66.72      26.56


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5     299.33      66.72
                           -2.57      -0.04

    2   2.2  0.5  0.5      66.72    -299.34
                           -0.13       0.59

    3   3.2  0.5  0.5      -0.13       0.59
                          -66.72     299.35

    4   4.2  0.5  0.5       0.01      -1.02
                           26.57    -119.19

    5   5.2  0.5  0.5       0.00     122.11
                           -0.00      -1.00

    6   6.2  0.5  0.5    -122.11       0.00
                            1.00       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                           -0.00      -0.00

    8   2.2  0.5 -0.5       0.00       0.00
                           -1.98       0.10

    9   3.2  0.5 -0.5       0.00       0.00
                          299.34      66.72

   10   4.2  0.5 -0.5       0.00       0.00
                         -119.19     -26.56

   11   5.2  0.5 -0.5   29724.67       0.00
                            0.00      -0.21

   12   6.2  0.5 -0.5       0.00   29724.67
                            0.21       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -189.91393106    -0.00705568    -1548.54      0.00000000        0.00      0.0000
     2  -189.91393106    -0.00705568    -1548.54      0.00000000        0.00      0.0000
     3  -189.90338989     0.00348549      764.98      0.01054117     2313.52      0.2868
     4  -189.90338989     0.00348549      764.98      0.01054117     2313.52      0.2868
     5  -189.90338988     0.00348550      764.98      0.01054118     2313.52      0.2868
     6  -189.90338988     0.00348550      764.98      0.01054118     2313.52      0.2868
     7  -189.77249737     0.13437801    29492.56      0.14143369    31041.11      3.8486
     8  -189.77249737     0.13437801    29492.56      0.14143369    31041.11      3.8486
     9  -189.77086867     0.13600670    29850.02      0.14306239    31398.56      3.8929
    10  -189.77086867     0.13600670    29850.02      0.14306239    31398.56      3.8929
    11  -189.77086867     0.13600670    29850.02      0.14306239    31398.57      3.8929
    12  -189.77086867     0.13600670    29850.02      0.14306239    31398.57      3.8929


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.122343767   0.564123716   0.054085819   0.763330641   0.024239227  -0.283558831   0.010009958   0.005477956
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.155982505   0.033828550  -0.004646434   0.000320976   0.615873262   0.052623988  -0.000242077   0.000442359
                        -0.542129362   0.117573146   0.135737450  -0.009618343  -0.513863082  -0.043929146  -0.005472613   0.010000171

    3    3.2  0.5  0.5  -0.542129730   0.117573844   0.627158218  -0.044436513   0.332242514   0.028402979  -0.005472606   0.010000182
                         0.155983311  -0.033825526   0.021134853  -0.001509173   0.398112039   0.034006455   0.000242133  -0.000442329

    4    4.2  0.5  0.5   0.010693261  -0.002339011   0.006615016  -0.000454895   0.003463652   0.000290966  -0.275895142   0.506199153
                        -0.003150205   0.000683134   0.000213958  -0.000015283   0.004232098   0.000361505   0.013973778  -0.025528171

    5    5.2  0.5  0.5   0.003604841   0.001758218  -0.000129219  -0.001750899   0.006306186   0.001194114  -0.123895121  -0.035176841
                         0.010440050  -0.002264164   0.001398581  -0.000099104  -0.005262094  -0.000449848  -0.270127223   0.493606715

    6    6.2  0.5  0.5  -0.001693090  -0.011029277   0.000544011   0.007858019   0.001661347  -0.002798106   0.491665368   0.275186762
                         0.002332358  -0.000505825   0.000311338  -0.000022061  -0.001180199  -0.000100893  -0.060229564   0.110058197

    7    1.2  0.5 -0.5   0.154908254  -0.033595573  -0.027293050   0.001933850   0.218120217   0.018645392   0.000231236  -0.000422542
                         0.542438014  -0.117640702   0.762842551  -0.054051236  -0.181188248  -0.015488367   0.005473073  -0.010001036

    8    2.2  0.5 -0.5   0.122342783   0.564121917  -0.009623669  -0.135816790  -0.068549446   0.802092324   0.010009930   0.005477954
                         0.000242572   0.001117711  -0.000023135  -0.000209858  -0.000165704   0.001745423   0.000019835   0.000010851

    9    3.2  0.5 -0.5  -0.000239473  -0.001118384   0.000080629   0.001302838  -0.000118826   0.001183482  -0.000019805  -0.000010907
                         0.122342624   0.564122492  -0.044462061  -0.627512881   0.044307494  -0.518533396   0.010009941   0.005477949

   10    4.2  0.5 -0.5   0.000014582   0.000092739   0.000000992   0.000022700   0.000007177  -0.000039900  -0.004137645  -0.002315186
                        -0.002436685  -0.011147243  -0.000455151  -0.006618436   0.000463999  -0.005468633   0.506825562   0.276239091

   11    5.2  0.5 -0.5  -0.001694320  -0.011028608  -0.000036437  -0.001402307  -0.001205984   0.008213239   0.491681856   0.275116334
                         0.002312369  -0.000599431  -0.001753323   0.000079130   0.000416980   0.000018205  -0.055981704   0.112382030

   12    6.2  0.5 -0.5  -0.003515018  -0.001777777  -0.000303012  -0.000291688   0.002087901   0.002032071   0.121576333   0.039421611
                        -0.010466396   0.002268470   0.007852206  -0.000554795  -0.001865541  -0.000153729   0.270295682  -0.493769553


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.001066423   0.004550244  -0.001084012   0.007149625
                        -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.004130081  -0.002796550   0.000042781   0.001170259
                        -0.006739269  -0.001562870   0.000155819   0.000013075

    3    3.2  0.5  0.5   0.002945349   0.000673712  -0.005184383  -0.000775495
                        -0.001617908  -0.002207748   0.005125179   0.001940800

    4    4.2  0.5  0.5  -0.281554801  -0.066272124   0.491797343   0.073069405
                         0.149432167   0.208421568  -0.485890699  -0.184024003

    5    5.2  0.5  0.5   0.358444387   0.352275372  -0.023147511   0.039648261
                         0.624719663   0.145997089  -0.017557804  -0.002397816

    6    6.2  0.5  0.5   0.183986307  -0.363433227   0.099294452  -0.685886147
                         0.138975231   0.032175262  -0.003063941  -0.000212756

    7    1.2  0.5 -0.5  -0.002504650  -0.000587005  -0.005072417  -0.000769070
                        -0.003798875  -0.000890328  -0.005038624  -0.000763946

    8    2.2  0.5 -0.5   0.002844139  -0.007899807  -0.000839473   0.000140163
                         0.001474492   0.000261493  -0.000815452  -0.000080400

    9    3.2  0.5 -0.5   0.001472349   0.000270499  -0.000817571  -0.000066228
                        -0.001777704   0.003349558   0.001923454  -0.007289780

   10    4.2  0.5 -0.5  -0.137526431  -0.030223064   0.077848738   0.006487150
                         0.170053043  -0.317316325  -0.182053675   0.691312015

   11    5.2  0.5 -0.5  -0.315796532   0.718864619  -0.026439300  -0.028796036
                        -0.213741992  -0.044617209  -0.029642854  -0.003856279

   12    6.2  0.5 -0.5   0.173187067   0.217300635   0.486762887   0.068286759
                         0.321131129   0.077107221   0.483220168   0.072150473


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   1.497%  31.824%   0.293%  58.267%   0.059%   8.041%   0.010%   0.003%   0.000%   0.002%
    2    2.2  0.5  0.5  31.823%   1.497%   1.845%   0.009%  64.336%   0.470%   0.003%   0.010%   0.006%   0.001%
    3    3.2  0.5  0.5  31.824%   1.497%  39.377%   0.198%  26.888%   0.196%   0.003%   0.010%   0.001%   0.001%
    4    4.2  0.5  0.5   0.012%   0.001%   0.004%   0.000%   0.003%   0.000%   7.631%  25.689%  10.160%   4.783%
    5    5.2  0.5  0.5   0.012%   0.001%   0.000%   0.000%   0.007%   0.000%   8.832%  24.488%  51.876%  14.541%
    6    6.2  0.5  0.5   0.001%   0.012%   0.000%   0.006%   0.000%   0.001%  24.536%   8.784%   5.317%  13.312%
    7    1.2  0.5 -0.5  31.824%   1.497%  58.267%   0.293%   8.041%   0.059%   0.003%   0.010%   0.002%   0.000%
    8    2.2  0.5 -0.5   1.497%  31.823%   0.009%   1.845%   0.470%  64.336%   0.010%   0.003%   0.001%   0.006%
    9    3.2  0.5 -0.5   1.497%  31.824%   0.198%  39.377%   0.196%  26.888%   0.010%   0.003%   0.001%   0.001%
   10    4.2  0.5 -0.5   0.001%   0.012%   0.000%   0.004%   0.000%   0.003%  25.689%   7.631%   4.783%  10.160%
   11    5.2  0.5 -0.5   0.001%   0.012%   0.000%   0.000%   0.000%   0.007%  24.488%   8.832%  14.541%  51.876%
   12    6.2  0.5 -0.5   0.012%   0.001%   0.006%   0.000%   0.001%   0.000%   8.784%  24.536%  13.312%   5.317%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.005%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.005%   0.000%
    4    4.2  0.5  0.5  47.795%   3.920%
    5    5.2  0.5  0.5   0.084%   0.158%
    6    6.2  0.5  0.5   0.987%  47.044%
    7    1.2  0.5 -0.5   0.005%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.005%
   10    4.2  0.5 -0.5   3.920%  47.795%
   11    5.2  0.5 -0.5   0.158%   0.084%
   12    6.2  0.5 -0.5  47.044%   0.987%


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
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      246.01       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5979.13   4678.15   1299.05      0.90      0.21      0.59
 REAL TIME  *      6055.79 SEC
 DISK USED  *       283.28 MB (local),        3.37 GB (total)
 SF USED    *         2.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -189.770868672654

              CI           MULTI         RHF-SCF
   -189.72280166   -189.10431476   -189.01878393
 **********************************************************************************************************************************
 Molpro calculation terminated
