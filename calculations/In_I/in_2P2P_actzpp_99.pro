
 Working directory              : /wrk/irikura/molpro.Jn0qHqR3hv/
 Global scratch directory       : /wrk/irikura/molpro.Jn0qHqR3hv/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Jn0qHqR3hv/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    6
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
 weight,3[99],3[1]
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   In SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 18-Mar-24          TIME: 16:31:27  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:   9000 MW

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

     12.845 MB (compressed) written to integral file ( 15.4%)

     Node minimum: 1.573 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     922392.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     922392      RECORD LENGTH: 524288

 Memory used in sort:       1.48 MW

 SORT1 READ    11031004. AND WROTE      179214. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     48 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:      920824.  Node maximum:      925041. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.84      0.65
 REAL TIME  *         1.64 SEC
 DISK USED  *        29.19 MB (local),      205.30 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial occupancy:   7   3

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -189.01260533    -189.01260533     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -189.01820445      -0.00559912     0.24D-02     0.82D-02     1     0       0.00      0.01    diag
   3     -189.01869142      -0.00048697     0.14D-02     0.16D-02     2     0       0.01      0.02    diag
   4     -189.01878022      -0.00008880     0.28D-03     0.15D-02     3     0       0.00      0.02    diag
   5     -189.01878392      -0.00000370     0.67D-04     0.35D-03     4     0       0.01      0.03    diag
   6     -189.01878393      -0.00000001     0.46D-05     0.16D-04     5     0       0.00      0.03    diag
   7     -189.01878393      -0.00000000     0.22D-06     0.19D-05     6     0       0.01      0.04    diag
   8     -189.01878393      -0.00000000     0.16D-07     0.14D-06     0     0       0.00      0.04    fixocc

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
    5.1     2.00000    -1.28184     1  1  d1-  0.99572
    6.1     2.00000    -1.28184     1  1  d1+  0.99572
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
 CPU TIMES  *         0.96      0.12      0.65
 REAL TIME  *         2.08 SEC
 DISK USED  *        29.66 MB (local),      208.13 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.669D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.506D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.302D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.983D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.984D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 6 4 1 1 2 5   3 4 6 1 2 6 4 5 3 1   4 6 2 5 3 1 5 3 2 4   6141512 811 9 71310
                                        1 2 5 3 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.482D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.248D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.263D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.193D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.296D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.177D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 3   1 2 810 6 4 5 7 9 3   2 1 6 9 7 810 5 4 8  10 6 7 9 5 4 3 1 210
                                        8 7 9 6 4 5 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33000   0.33000   0.33000   0.00333   0.00333   0.00333
 
 Number of orbital rotations:  702  ( 30 closed/active, 354 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1422
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10    9    0   -189.21700132    -189.23052941   -0.01352809    0.07353929 0.00009300 0.00000000  0.16E+01      0.42
   2    9    8    0   -189.23012982    -189.23015845   -0.00002863    0.00282419 0.00000216 0.00000000  0.74E-01      1.01
   3    5    5    0   -189.23015845    -189.23015845   -0.00000000    0.00000169 0.00000000 0.00000000  0.41E-04      1.32
   4    2    2    0   -189.23015845    -189.23015845    0.00000000    0.00000000 0.00000000 0.00000000  0.88E-08      1.52

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.30E-10)
                       Final energy:   -189.23015845
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -189.232670517269
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.41421887
 One electron energy                          -334.72609637
 Two electron energy                           145.49342585
 Virial ratio                                    3.57760245
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -189.232670517250
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.41421887
 One electron energy                          -334.72609637
 Two electron energy                           145.49342585
 Virial ratio                                    3.57760245
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -189.232670517250
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.41421887
 One electron energy                          -334.72609637
 Two electron energy                           145.49342585
 Virial ratio                                    3.57760245
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -188.981463828750
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.84953878
 One electron energy                          -334.49242345
 Two electron energy                           145.51095962
 Virial ratio                                    3.55900669
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -188.981463828732
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.84953878
 One electron energy                          -334.49242345
 Two electron energy                           145.51095962
 Virial ratio                                    3.55900669
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -188.981463828695
 Nuclear energy                                  0.00000000
 Kinetic energy                                 73.84953878
 One electron energy                          -334.49242345
 Two electron energy                           145.51095962
 Virial ratio                                    3.55900669
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999928
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000003938
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999996574
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999997
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999999654
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000000000256
 
 !MCSCF expec                      <1.2|LYLY|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999996134
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000003427
 !MCSCF expec                      <4.2|LYLY|4.2>     0.000000007563
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999991597
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999999996
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000072
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999928
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999999
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.999999992439
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.000000008749
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999999747
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 4 6 1 1 1 2   4 3 5 6 2 4 6 3 5 1   4 6 2 3 5 1 3 5 2 4   6 911 71415 8121310
                                        1 2 5 3 4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 2 1 3 3   1 2 810 6 4 5 7 9 3   1 2 6 9 7 810 4 5 8  10 6 9 7 4 5 3 1 2 8
                                       10 7 9 4 5 6 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.37735     1  1  s    1.00091
    2.1     2.00000    -1.01398     1  1  d0   1.00000
    3.1     2.00000    -1.01398     1  1  d2-  1.00000
    4.1     2.00000    -1.01398     1  1  d2+  1.00000
    5.1     2.00000    -1.01398     1  1  d1+  1.00000
    6.1     2.00000    -1.01398     1  1  d1-  1.00000
    7.1     1.92342    -0.38924     1  2  s    1.00629
    8.1     0.00498     0.33165     1  2  s    1.49025    1  3  s   -1.34913    1  4  s    1.44489    1  5  s    1.32285
                                    1  7  s   -0.30300
    1.2     2.00000    -3.63023     1  1  px   0.99998
    2.2     2.00000    -3.63023     1  1  py   0.99998
    3.2     2.00000    -3.63023     1  1  pz   0.99998
    4.2     0.34841    -0.00481     1  2  py   0.95896
    5.2     0.34841    -0.00481     1  2  pz   0.95896
    6.2     0.34841    -0.00481     1  2  px   0.95896
    7.2     0.00879     0.26995     1  2  py  -0.90824    1  3  py  -0.62963    1  4  py   1.36705
    8.2     0.00879     0.26995     1  2  px  -0.90824    1  3  px  -0.62963    1  4  px   1.36705
    9.2     0.00879     0.26995     1  2  pz  -0.90824    1  3  pz  -0.62963    1  4  pz   1.36705
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 0a0000      0.97973433     -0.00000833      0.00000002     -0.00000265     -0.03046397     -0.00000057
 20 a00000     -0.00000002      0.00006092      0.97973433     -0.03046397      0.00000265      0.00000005
 20 00a000      0.00000833      0.97973433     -0.00006092     -0.00000005      0.00000057     -0.03046397
 20 0000a0      0.00000022      0.02528910     -0.00000157      0.00000165     -0.00001790      0.96276533
 20 000a00     -0.00000000      0.00000157      0.02528910      0.96276533     -0.00008371     -0.00000166
 20 00000a      0.02528910     -0.00000022      0.00000000      0.00008371      0.96276533      0.00001790
 ab 00a000      0.00000006      0.00657865     -0.00000041      0.00000021     -0.00000223      0.12003034
 ab a00000     -0.00000000      0.00000041      0.00657865      0.12003034     -0.00001044     -0.00000021
 ab 0a0000      0.00657865     -0.00000006      0.00000000      0.00001044      0.12003034      0.00000223
 00 0a2000     -0.10974372      0.00000093     -0.00000000      0.00000146      0.01676694      0.00000031
 00 2a0000     -0.10974372      0.00000093     -0.00000000      0.00000146      0.01676694      0.00000031
 00 a20000      0.00000000     -0.00000682     -0.10974372      0.01676694     -0.00000146     -0.00000003
 00 02a000     -0.00000093     -0.10974372      0.00000682      0.00000003     -0.00000031      0.01676694
 00 a02000      0.00000000     -0.00000682     -0.10974372      0.01676694     -0.00000146     -0.00000003
 00 20a000     -0.00000093     -0.10974372      0.00000682      0.00000003     -0.00000031      0.01676694
 00 0200a0      0.00000001      0.00078681     -0.00000005     -0.00000018      0.00000199     -0.10694806
 00 2000a0      0.00000001      0.00078681     -0.00000005     -0.00000018      0.00000199     -0.10694806
 00 020a00     -0.00000000      0.00000005      0.00078681     -0.10694806      0.00000930      0.00000018
 00 002a00     -0.00000000      0.00000005      0.00078681     -0.10694806      0.00000930      0.00000018
 00 00200a      0.00078681     -0.00000001      0.00000000     -0.00000930     -0.10694806     -0.00000199
 00 20000a      0.00078681     -0.00000001      0.00000000     -0.00000930     -0.10694806     -0.00000199
 aa 00b000     -0.00000013     -0.01520414      0.00000095     -0.00000018      0.00000192     -0.10318367
 aa b00000      0.00000000     -0.00000095     -0.01520414     -0.10318367      0.00000897      0.00000018
 aa 0b0000     -0.01520414      0.00000013     -0.00000000     -0.00000897     -0.10318367     -0.00000192
 00 0020a0     -0.00000036     -0.04209190      0.00000262     -0.00000017      0.00000180     -0.09670414
 00 200a00      0.00000000     -0.00000262     -0.04209190     -0.09670414      0.00000841      0.00000017
 00 02000a     -0.04209190      0.00000036     -0.00000000     -0.00000841     -0.09670414     -0.00000180
 
 Energy:     -189.23267052   -189.23267052   -189.23267052   -188.98146383   -188.98146383   -188.98146383
 


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
 CPU TIMES  *         2.35      1.38      0.12      0.65
 REAL TIME  *         3.83 SEC
 DISK USED  *        38.00 MB (local),      258.20 MB (total)
 SF USED    *        22.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -189.2326705   2.0
    -189.2326705   2.0
    -189.2326705   2.0
    -188.9814638   2.0
    -188.9814638   2.0
    -188.9814638   2.0
                                                  


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


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -189.23267052
     2      -189.23267052
     3      -189.23267052
     4      -188.98146383
     5      -188.98146383
     6      -188.98146383

 Number of blocks in overlap matrix:   526   Smallest eigenvalue:  0.20D-04
 Number of N-2 electron functions:    1366
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3060250
 Number of doubly external configurations:       2133414
 Total number of contracted configurations:      5246936
 Total number of uncontracted configurations:   40457792

 Diagonal Coupling coefficients finished.               Storage:  22147932 words, CPU-Time:     53.73 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1121673 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -189.23267052    -0.00000000    -0.76442331  0.44D-01  0.91D-01    77.44
    1     2     2     1.00000000     0.00000000  -189.23267052     0.00000000    -0.76443437  0.44D-01  0.91D-01    77.44
    1     3     3     1.00000000     0.00000000  -189.23267052     0.00000000    -0.76445698  0.44D-01  0.91D-01    77.44
    1     4     4     1.00000000     0.00000000  -188.98146383     0.00000000    -0.79482229  0.67D-01  0.92D-01    77.44
    1     5     5     1.00000000     0.00000000  -188.98146383     0.00000000    -0.79480029  0.67D-01  0.92D-01    77.44
    1     6     6     1.00000000     0.00000000  -188.98146383     0.00000000    -0.79487572  0.67D-01  0.92D-01    77.44
    2     1     1     1.08377956    -0.61032193  -189.84299244    -0.61032193    -0.01555613  0.22D-02  0.11D-02   633.59
    2     2     2     1.08382373    -0.61028806  -189.84295858    -0.61028806    -0.01559513  0.23D-02  0.11D-02   633.59
    2     3     3     1.08381529    -0.61028429  -189.84295481    -0.61028429    -0.01559886  0.23D-02  0.11D-02   633.59
    2     4     4     1.09843633    -0.63564265  -189.61710648    -0.63564265    -0.02059903  0.53D-02  0.14D-02   633.59
    2     5     5     1.09849928    -0.63561691  -189.61708074    -0.63561691    -0.02062460  0.53D-02  0.14D-02   633.59
    2     6     6     1.09848073    -0.63561315  -189.61707698    -0.63561315    -0.02063235  0.53D-02  0.14D-02   633.59
    3     1     1     1.07754626    -0.62476332  -189.85743384    -0.01444139    -0.00031040  0.29D-04  0.31D-04  1188.65
    3     2     2     1.07754345    -0.62476169  -189.85743221    -0.01447363    -0.00031204  0.30D-04  0.31D-04  1188.65
    3     3     3     1.07754549    -0.62476168  -189.85743219    -0.01447738    -0.00031206  0.30D-04  0.31D-04  1188.65
    3     4     4     1.10389272    -0.65580558  -189.63726941    -0.02016293    -0.00077569  0.24D-03  0.64D-04  1188.65
    3     5     5     1.10389419    -0.65580350  -189.63726733    -0.02018658    -0.00077816  0.24D-03  0.64D-04  1188.65
    3     6     6     1.10388905    -0.65580324  -189.63726707    -0.02019009    -0.00077815  0.24D-03  0.64D-04  1188.65
    4     1     1     1.07779924    -0.62506046  -189.85773098    -0.00029714    -0.00001089  0.27D-05  0.81D-06  1740.68
    4     2     2     1.07779938    -0.62506041  -189.85773093    -0.00029872    -0.00001093  0.27D-05  0.81D-06  1740.68
    4     3     3     1.07779941    -0.62506041  -189.85773093    -0.00029873    -0.00001093  0.27D-05  0.81D-06  1740.68
    4     4     4     1.10980870    -0.65665572  -189.63811955    -0.00085014    -0.00005117  0.13D-04  0.41D-05  1740.68
    4     5     5     1.10980648    -0.65665554  -189.63811937    -0.00085205    -0.00005132  0.13D-04  0.41D-05  1740.68
    4     6     6     1.10980380    -0.65665554  -189.63811936    -0.00085230    -0.00005133  0.13D-04  0.41D-05  1740.68
    5     1     1     1.07781499    -0.62507210  -189.85774261    -0.00001164    -0.00000045  0.76D-07  0.42D-07  2290.80
    5     2     2     1.07781488    -0.62507210  -189.85774261    -0.00001168    -0.00000045  0.76D-07  0.42D-07  2290.80
    5     3     3     1.07781486    -0.62507210  -189.85774261    -0.00001169    -0.00000045  0.76D-07  0.42D-07  2290.80
    5     4     4     1.11111151    -0.65671065  -189.63817448    -0.00005493    -0.00000252  0.98D-06  0.17D-06  2290.80
    5     5     5     1.11111063    -0.65671064  -189.63817447    -0.00005509    -0.00000252  0.98D-06  0.17D-06  2290.80
    5     6     6     1.11111070    -0.65671064  -189.63817447    -0.00005510    -0.00000252  0.98D-06  0.17D-06  2290.80
    6     1     1     1.07780024    -0.62507257  -189.85774309    -0.00000047    -0.00000002  0.28D-08  0.22D-08  2825.91
    6     2     2     1.07780023    -0.62507257  -189.85774309    -0.00000047    -0.00000002  0.28D-08  0.22D-08  2825.91
    6     3     3     1.07780028    -0.62507257  -189.85774309    -0.00000047    -0.00000002  0.28D-08  0.22D-08  2825.91
    6     4     4     1.11131399    -0.65671342  -189.63817725    -0.00000277    -0.00000018  0.77D-07  0.13D-07  2825.91
    6     5     5     1.11131389    -0.65671342  -189.63817725    -0.00000278    -0.00000018  0.77D-07  0.13D-07  2825.91
    6     6     6     1.11131380    -0.65671342  -189.63817725    -0.00000278    -0.00000018  0.77D-07  0.13D-07  2825.91
    7     1     1     1.07780021    -0.62507257  -189.85774309    -0.00000000    -0.00000002  0.26D-08  0.21D-08  3181.05
    7     2     2     1.07780021    -0.62507257  -189.85774309    -0.00000000    -0.00000002  0.26D-08  0.21D-08  3181.05
    7     3     3     1.07780026    -0.62507257  -189.85774309    -0.00000000    -0.00000002  0.26D-08  0.21D-08  3181.05
    7     4     4     1.11139009    -0.65671363  -189.63817746    -0.00000021    -0.00000001  0.16D-08  0.78D-09  3181.05
    7     5     5     1.11139009    -0.65671363  -189.63817746    -0.00000021    -0.00000001  0.16D-08  0.78D-09  3181.05
    7     6     6     1.11139010    -0.65671363  -189.63817746    -0.00000021    -0.00000001  0.16D-08  0.78D-09  3181.05


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.5%
 S   0.6%  58.8%
 P   0.4%  24.4%  10.2%

 Initialization:   1.7%
 Other:            1.4%

 Total CPU:     3181.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00000           0.9460109   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0090569
 2222222022200/000          -0.0000000   0.9460109  -0.0000000  -0.0000000   0.0090569  -0.0000000
 222222202220/0000           0.0000000   0.0000000   0.9460108   0.0090569   0.0000000   0.0000000
 222222202220000/0          -0.0000000  -0.0128533   0.0000000  -0.0000000   0.9168991  -0.0000000
 22222220222000/00          -0.0128533   0.0000000   0.0000000  -0.0000000   0.0000000   0.9168991
 2222222022200000/          -0.0000000   0.0000000  -0.0128533   0.9168991   0.0000000   0.0000000
 222222//2220\0000          -0.0000000  -0.0000000  -0.0151384  -0.1115953  -0.0000000  -0.0000000
 222222//222\00000          -0.0151384  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1115953
 222222//22200\000           0.0000000  -0.0151384   0.0000000   0.0000000  -0.1115952   0.0000000
 2222220022220/000          -0.0000000  -0.0956865  -0.0000000  -0.0000000   0.0109104   0.0000000
 222222002222/0000           0.0000000   0.0000000  -0.0956865   0.0109104   0.0000000  -0.0000000
 22222200222/02000          -0.0956865   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0109104
 222222002220/2000           0.0000000   0.0000000  -0.0956865   0.0109104  -0.0000000   0.0000000
 2222220022202/000          -0.0000000  -0.0956865  -0.0000000   0.0000000   0.0109103   0.0000000
 22222200222/20000          -0.0956865   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0109103
 222222002222000/0           0.0000000   0.0048620   0.0000000  -0.0000000  -0.0906511   0.0000000
 222222002220200/0           0.0000000   0.0048620   0.0000000   0.0000000  -0.0906511   0.0000000
 22222200222020/00           0.0048621  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0906511
 22222200222002/00           0.0048621  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0906511
 2222220022220000/          -0.0000000  -0.0000000   0.0048620  -0.0906511   0.0000000  -0.0000000
 2222220022200200/          -0.0000000  -0.0000000   0.0048620  -0.0906511  -0.0000000   0.0000000
 222222/\2220/0000           0.0000000   0.0000000   0.0205384   0.0881668  -0.0000000  -0.0000000
 222222/\22200/000          -0.0000000   0.0205385  -0.0000000   0.0000000   0.0881668   0.0000000
 222222/\222/00000           0.0205385   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0881668
 2222220022202000/           0.0000000   0.0000000  -0.0322903  -0.0828751   0.0000000   0.0000000
 22222200222200/00          -0.0322903   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0828751
 222222002220020/0          -0.0000000  -0.0322903  -0.0000000  -0.0000000  -0.0828751   0.0000000
 22222200222/00\0/           0.0000000   0.0000000   0.0020131   0.0534105  -0.0000000  -0.0000000
 2222220022200/0\/           0.0000000   0.0000000   0.0020131   0.0534105  -0.0000000  -0.0000000
 22222200222/00\/0           0.0000000   0.0020131  -0.0000000   0.0000000   0.0534105   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 22222220222000000  22.2    -0.0019927   0.0000000  -0.0000000  -0.0000000   0.0000000   0.1398554
 22222220222000000  21.2    -0.0000000  -0.0019928  -0.0000000  -0.0000000   0.1398554  -0.0000000
 22222220222000000  20.2     0.0000000   0.0000000  -0.0019928   0.1398554   0.0000000   0.0000000
 22222220222000000  10.2    -0.0000000  -0.0000000   0.0019505  -0.0994069   0.0000000   0.0000000
 22222220222000000  12.2     0.0019504  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0994069
 22222220222000000  11.2     0.0000000   0.0019504   0.0000000  -0.0000000  -0.0994069   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.960528   -0.036296   -0.000000   -0.000000
 2          -0.000000    0.960528    0.000000    0.000000   -0.000000   -0.036295
 3           0.960528    0.000000    0.000000    0.000000   -0.036295    0.000000
 4           0.039330   -0.000000   -0.000000   -0.000000    0.945244   -0.000000
 5           0.000000    0.039330    0.000000   -0.000000    0.000000    0.945244
 6           0.000000   -0.000000    0.039330    0.945244    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961212    0.000000   -0.000000   -0.000000    0.000000    0.001819
 2           0.000000    0.961212   -0.000000   -0.000000    0.001819   -0.000000
 3          -0.000000   -0.000000    0.961212    0.001819    0.000000    0.000000
 4          -0.000000   -0.000000    0.001819    0.946061   -0.000000   -0.000000
 5           0.000000    0.001819    0.000000   -0.000000    0.946061   -0.000000
 6           0.001819   -0.000000    0.000000   -0.000000   -0.000000    0.946061

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13608       0.00003402    -1.12197404       22222220222000001               

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13609       0.00003402    -1.12197637       22222220222000010               

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13610       0.00003402    -1.12197716       22222220222000100               


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96052804 (fixed)   0.96175396 (relaxed)   0.96121182 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00420766   -0.00735679   -0.50375453
 Singles      0.01994993   -0.08247139   -0.08772521
 Pairs        0.05817764    0.00000000   -0.03359283
 Total        1.08233523   -0.08982819   -0.62507257
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.23227557
 Nuclear energy                         0.00000000
 Kinetic energy                        73.70408061
 One electron energy                 -334.30278721
 Two electron energy                  144.44504412
 Virial quotient                       -2.57594616
 Correlation energy                    -0.62546752
 !MRCI STATE 1.2 Energy              -189.857743088931

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.90924110 (Davidson, fixed reference)
 Cluster corrected energies          -189.90847810 (Davidson, relaxed reference)
 Cluster corrected energies          -189.90924110 (Davidson, rotated reference)

 Cluster corrected energies          -189.90732480 (Pople, fixed reference)
 Cluster corrected energies          -189.90654028 (Pople, relaxed reference)
 Cluster corrected energies          -189.90732480 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96052804 (fixed)   0.96175396 (relaxed)   0.96121182 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00420766   -0.00735679   -0.53041720
 Singles      0.01994994   -0.08247140   -0.08772521
 Pairs        0.05817763    0.02885796   -0.00693015
 Total        1.08233523   -0.06097023   -0.62507257
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.23227557
 Nuclear energy                         0.00000000
 Kinetic energy                        73.70408013
 One electron energy                 -334.30278672
 Two electron energy                  144.44504363
 Virial quotient                       -2.57594617
 Correlation energy                    -0.62546752
 !MRCI STATE 2.2 Energy              -189.857743088846

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.90924110 (Davidson, fixed reference)
 Cluster corrected energies          -189.90847810 (Davidson, relaxed reference)
 Cluster corrected energies          -189.90924110 (Davidson, rotated reference)

 Cluster corrected energies          -189.90732480 (Pople, fixed reference)
 Cluster corrected energies          -189.90654028 (Pople, relaxed reference)
 Cluster corrected energies          -189.90732480 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96052802 (fixed)   0.96175394 (relaxed)   0.96121180 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00420766   -0.00735679   -0.50375447
 Singles      0.01994999   -0.08247143   -0.08772525
 Pairs        0.05817763   -0.00000000   -0.03359285
 Total        1.08233528   -0.08982822   -0.62507257
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -189.23227557
 Nuclear energy                         0.00000000
 Kinetic energy                        73.70408114
 One electron energy                 -334.30278700
 Two electron energy                  144.44504391
 Virial quotient                       -2.57594614
 Correlation energy                    -0.62546752
 !MRCI STATE 3.2 Energy              -189.857743088809

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.90924113 (Davidson, fixed reference)
 Cluster corrected energies          -189.90847813 (Davidson, relaxed reference)
 Cluster corrected energies          -189.90924113 (Davidson, rotated reference)

 Cluster corrected energies          -189.90732483 (Pople, fixed reference)
 Cluster corrected energies          -189.90654031 (Pople, relaxed reference)
 Cluster corrected energies          -189.90732483 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94524442 (fixed)   0.94691612 (relaxed)   0.94606055 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00529984   -0.00772658   -0.49018164
 Singles      0.05409501   -0.11252383   -0.13250539
 Pairs        0.05788543    0.00000000   -0.03402660
 Total        1.11728028   -0.12025041   -0.65671363
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -188.98185878
 Nuclear energy                         0.00000000
 Kinetic energy                        73.85371099
 One electron energy                 -333.07767849
 Two electron energy                  143.43950103
 Virial quotient                       -2.56775421
 Correlation energy                    -0.65631868
 !MRCI STATE 4.2 Energy              -189.638177462262

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.71515070 (Davidson, fixed reference)
 Cluster corrected energies          -189.71382619 (Davidson, relaxed reference)
 Cluster corrected energies          -189.71515070 (Davidson, rotated reference)

 Cluster corrected energies          -189.71451121 (Pople, fixed reference)
 Cluster corrected energies          -189.71306850 (Pople, relaxed reference)
 Cluster corrected energies          -189.71451121 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94524442 (fixed)   0.94691612 (relaxed)   0.94606055 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00529984   -0.00772658   -0.01049450
 Singles      0.05409501   -0.11252385   -0.13250540
 Pairs        0.05788543   -0.53594496   -0.51371373
 Total        1.11728028   -0.65619539   -0.65671363
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -188.98185878
 Nuclear energy                         0.00000000
 Kinetic energy                        73.85371259
 One electron energy                 -333.07767970
 Two electron energy                  143.43950223
 Virial quotient                       -2.56775416
 Correlation energy                    -0.65631868
 !MRCI STATE 5.2 Energy              -189.638177461230

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.71515070 (Davidson, fixed reference)
 Cluster corrected energies          -189.71382619 (Davidson, relaxed reference)
 Cluster corrected energies          -189.71515070 (Davidson, rotated reference)

 Cluster corrected energies          -189.71451121 (Pople, fixed reference)
 Cluster corrected energies          -189.71306851 (Pople, relaxed reference)
 Cluster corrected energies          -189.71451121 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94524442 (fixed)   0.94691612 (relaxed)   0.94606055 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00529984   -0.00772658   -0.49018162
 Singles      0.05409501   -0.11252385   -0.13250540
 Pairs        0.05788544   -0.00000000   -0.03402661
 Total        1.11728029   -0.12025042   -0.65671363
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -188.98185878
 Nuclear energy                         0.00000000
 Kinetic energy                        73.85371250
 One electron energy                 -333.07767959
 Two electron energy                  143.43950213
 Virial quotient                       -2.56775416
 Correlation energy                    -0.65631868
 !MRCI STATE 6.2 Energy              -189.638177460346

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -189.71515071 (Davidson, fixed reference)
 Cluster corrected energies          -189.71382620 (Davidson, relaxed reference)
 Cluster corrected energies          -189.71515071 (Davidson, rotated reference)

 Cluster corrected energies          -189.71451121 (Pople, fixed reference)
 Cluster corrected energies          -189.71306851 (Pople, relaxed reference)
 Cluster corrected energies          -189.71451121 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       37.18       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      248.68       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3445.72   3443.36      1.38      0.12      0.65
 REAL TIME  *      3489.09 SEC
 DISK USED  *       285.95 MB (local),        1.70 GB (total)
 SF USED    *         2.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -189.90924110  AU                              
 SETTING HLSDIAG(2)     =      -189.90924110  AU                              
 SETTING HLSDIAG(3)     =      -189.90924113  AU                              
 SETTING HLSDIAG(4)     =      -189.71515070  AU                              
 SETTING HLSDIAG(5)     =      -189.71515070  AU                              
 SETTING HLSDIAG(6)     =      -189.71515071  AU                              


         HLSDIAG
    -189.9092411
    -189.9092411
    -189.9092411
    -189.7151507
    -189.7151507
    -189.7151507
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -189.857743   -189.857743   -189.857743   -189.638177   -189.638177   -189.638177
 Replaced energies:   -189.909241   -189.909241   -189.909241   -189.715151   -189.715151   -189.715151



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -189.90924113

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00     674.22      -0.00       0.00    -747.47      -0.00      -0.00      -0.00    -674.22     747.47

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00      -0.00     674.22    -747.47
                         -674.22       0.00       0.00      -0.00      -0.00     747.47       0.00      -0.00      -0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -674.22      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00     674.22       0.00       0.00      -0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   42597.93       0.00       0.00      -0.00     747.47      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00    -747.47      -0.00       0.00      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   42597.93       0.00      -0.00      -0.00    -747.47     824.25
                          747.47       0.00      -0.00       0.00       0.00    -824.25       0.00       0.00      -0.00       0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   42597.92      -0.00       0.00      -0.00       0.00
                            0.00    -747.47       0.00      -0.00     824.25       0.00       0.00       0.00     747.47    -824.25

    7   1.2  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.01       0.00       0.00       0.00
                            0.00      -0.00    -674.22     747.47      -0.00      -0.00      -0.00    -674.22       0.00      -0.00

    8   2.2  0.5 -0.5      -0.00      -0.00    -674.22     747.47      -0.00       0.00       0.00       0.01       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00     674.22      -0.00      -0.00       0.00

    9   3.2  0.5 -0.5      -0.00     674.22      -0.00      -0.00    -747.47      -0.00       0.00       0.00       0.00       0.00
                          674.22       0.00      -0.00      -0.00       0.00    -747.47      -0.00       0.00      -0.00      -0.00

   10   4.2  0.5 -0.5       0.00    -747.47       0.00      -0.00     824.25       0.00       0.00       0.00       0.00   42597.93
                         -747.47      -0.00       0.00       0.00      -0.00     824.25       0.00      -0.00       0.00       0.00

   11   5.2  0.5 -0.5       0.00       0.00     747.47    -824.25       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00    -747.47      -0.00       0.00      -0.00

   12   6.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     747.47    -824.25       0.00       0.00      -0.00     747.47      -0.00       0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5       0.00       0.00
                           -0.00      -0.00

    2   2.2  0.5  0.5       0.00      -0.00
                           -0.00      -0.00

    3   3.2  0.5  0.5     747.47       0.00
                            0.00    -747.47

    4   4.2  0.5  0.5    -824.25      -0.00
                           -0.00     824.25

    5   5.2  0.5  0.5       0.00       0.00
                           -0.00      -0.00

    6   6.2  0.5  0.5      -0.00      -0.00
                            0.00      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                          747.47       0.00

    8   2.2  0.5 -0.5       0.00       0.00
                            0.00    -747.47

    9   3.2  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   10   4.2  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   11   5.2  0.5 -0.5   42597.93       0.00
                           -0.00     824.25

   12   6.2  0.5 -0.5       0.00   42597.92
                         -824.25      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -189.91562547    -0.00638434    -1401.20      0.00000000        0.00      0.0000
     2  -189.91562547    -0.00638434    -1401.20      0.00000000        0.00      0.0000
     3  -189.90622869     0.00301244      661.15      0.00939678     2062.35      0.2557
     4  -189.90622869     0.00301244      661.15      0.00939678     2062.35      0.2557
     5  -189.90622867     0.00301246      661.16      0.00939680     2062.36      0.2557
     6  -189.90622867     0.00301246      661.16      0.00939680     2062.36      0.2557
     7  -189.72242140     0.18681973    41002.19      0.19320407    42403.39      5.2574
     8  -189.72242140     0.18681973    41002.19      0.19320407    42403.39      5.2574
     9  -189.71133560     0.19790553    43435.24      0.20428987    44836.44      5.5590
    10  -189.71133560     0.19790553    43435.24      0.20428987    44836.44      5.5590
    11  -189.71133560     0.19790553    43435.24      0.20428988    44836.45      5.5590
    12  -189.71133560     0.19790553    43435.24      0.20428988    44836.45      5.5590


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.212897951  -0.536276343   0.391080975  -0.069555749   0.712749684   0.025869478   0.010074238   0.017701370
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000000  -0.000000000   0.000001406   0.000000384  -0.000000754   0.000000553   0.000000000  -0.000000000
                        -0.212897930  -0.536276290   0.412583424  -0.073378861  -0.700148842  -0.025412600   0.010074237   0.017701369

    3    3.2  0.5  0.5   0.535892050  -0.212745390   0.041354313   0.232515421   0.000402390  -0.011090440   0.017701359  -0.010074231
                        -0.020341351   0.008075374   0.136821043   0.769291276  -0.000216383   0.005981985  -0.000017628   0.000010032

    4    4.2  0.5  0.5  -0.018916529   0.007509730   0.000722885   0.004064436   0.000007034  -0.000193866   0.501465602  -0.285395060
                         0.000718032  -0.000285054   0.002391671   0.013447432  -0.000003782   0.000104568  -0.000499385   0.000284211

    5    5.2  0.5  0.5  -0.000000000  -0.000000000   0.000000025   0.000000007  -0.000000013   0.000000010  -0.000000000  -0.000000000
                         0.007515149   0.018930180   0.007212006  -0.001282671  -0.012238765  -0.000444218   0.285395191   0.501465833

    6    6.2  0.5  0.5   0.007515147   0.018930176   0.006836140  -0.001215842   0.012459028   0.000452204   0.285395319   0.501466058
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    7    1.2  0.5 -0.5   0.020341289  -0.008075349   0.066580985   0.374355204  -0.012279598   0.338324547   0.000017628  -0.000010032
                         0.535890425  -0.212744745  -0.020123982  -0.113148180  -0.022769308   0.627334530   0.017701361  -0.010074233

    8    2.2  0.5 -0.5   0.535890372  -0.212744724  -0.021230458  -0.119367957   0.022366919  -0.616244118   0.017701361  -0.010074232
                        -0.020341287   0.008075348  -0.070240479  -0.394938441  -0.012063216   0.332342577  -0.000017628   0.000010032

    9    3.2  0.5 -0.5  -0.000000000  -0.000000000   0.000001406   0.000000384  -0.000000754   0.000000553   0.000000000   0.000000000
                         0.212898597   0.536277969   0.803661924  -0.142934170   0.012600873   0.000456880  -0.010074236  -0.017701367

   10    4.2  0.5 -0.5   0.000000000   0.000000000   0.000000025   0.000000007  -0.000000013   0.000000010   0.000000000   0.000000000
                        -0.007515138  -0.018930152   0.014048241  -0.002498530   0.000220269   0.000007986  -0.285395201  -0.501465851

   11    5.2  0.5 -0.5  -0.018916557   0.007509741  -0.000371111  -0.002086566   0.000390979  -0.010772091   0.501465585  -0.285395050
                         0.000718033  -0.000285054  -0.001227812  -0.006903570  -0.000210868   0.005809426  -0.000499385   0.000284211

   12    6.2  0.5 -0.5  -0.000718033   0.000285054   0.001163843   0.006543772  -0.000214650   0.005913991   0.000499385  -0.000284211
                        -0.018916554   0.007509739  -0.000351770  -0.001977843  -0.000398013   0.010965952   0.501465810  -0.285395178


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.014139369  -0.001542668  -0.000141122  -0.001149831
                         0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000021   0.000000203   0.000002327  -0.000000300
                         0.008067037   0.000879914  -0.001432962  -0.011650691

    3    3.2  0.5  0.5  -0.000662752   0.006072302  -0.012781941   0.001571672
                        -0.000001153   0.000012447   0.000689411  -0.000087138

    4    4.2  0.5  0.5   0.037914421  -0.347381541   0.731222796  -0.089911393
                         0.000065947  -0.000712083  -0.039439482   0.004984927

    5    5.2  0.5  0.5   0.000001202  -0.000011641  -0.000133128   0.000017171
                        -0.461495299  -0.050337694   0.081976157   0.666506735

    6    6.2  0.5  0.5   0.808877219   0.088252122   0.008073215   0.065778896
                        -0.000000000  -0.000000000   0.000000000   0.000000000

    7    1.2  0.5 -0.5  -0.000003157   0.000028935   0.000061955  -0.000007604
                         0.001542665  -0.014139339   0.001148161  -0.000140917

    8    2.2  0.5 -0.5  -0.000879911   0.008067020   0.011633783  -0.001430755
                        -0.000002004   0.000016488  -0.000627457   0.000079534

    9    3.2  0.5 -0.5  -0.000000021   0.000000203   0.000002327  -0.000000300
                        -0.006072315  -0.000662753  -0.001574084  -0.012800520

   10    4.2  0.5 -0.5   0.000001202  -0.000011641  -0.000133128   0.000017171
                         0.347382270   0.037914466   0.090049373   0.732285635

   11    5.2  0.5 -0.5   0.050337555  -0.461494335  -0.665539453   0.081849894
                         0.000114653  -0.000943212   0.035895212  -0.004549929

   12    6.2  0.5 -0.5   0.000180600  -0.001655294  -0.003544270   0.000434998
                        -0.088251938   0.808875525  -0.065683338   0.008061499


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   4.533%  28.759%  15.294%   0.484%  50.801%   0.067%   0.010%   0.031%   0.020%   0.000%
    2    2.2  0.5  0.5   4.533%  28.759%  17.023%   0.538%  49.021%   0.065%   0.010%   0.031%   0.007%   0.000%
    3    3.2  0.5  0.5  28.759%   4.533%   2.043%  64.587%   0.000%   0.016%   0.031%   0.010%   0.000%   0.004%
    4    4.2  0.5  0.5   0.036%   0.006%   0.001%   0.020%   0.000%   0.000%  25.147%   8.145%   0.144%  12.067%
    5    5.2  0.5  0.5   0.006%   0.036%   0.005%   0.000%   0.015%   0.000%   8.145%  25.147%  21.298%   0.253%
    6    6.2  0.5  0.5   0.006%   0.036%   0.005%   0.000%   0.016%   0.000%   8.145%  25.147%  65.428%   0.779%
    7    1.2  0.5 -0.5  28.759%   4.533%   0.484%  15.294%   0.067%  50.801%   0.031%   0.010%   0.000%   0.020%
    8    2.2  0.5 -0.5  28.759%   4.533%   0.538%  17.023%   0.065%  49.021%   0.031%   0.010%   0.000%   0.007%
    9    3.2  0.5 -0.5   4.533%  28.759%  64.587%   2.043%   0.016%   0.000%   0.010%   0.031%   0.004%   0.000%
   10    4.2  0.5 -0.5   0.006%   0.036%   0.020%   0.001%   0.000%   0.000%   8.145%  25.147%  12.067%   0.144%
   11    5.2  0.5 -0.5   0.036%   0.006%   0.000%   0.005%   0.000%   0.015%  25.147%   8.145%   0.253%  21.298%
   12    6.2  0.5 -0.5   0.036%   0.006%   0.000%   0.005%   0.000%   0.016%  25.147%   8.145%   0.779%  65.428%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.014%
    3    3.2  0.5  0.5   0.016%   0.000%
    4    4.2  0.5  0.5  53.624%   0.811%
    5    5.2  0.5  0.5   0.672%  44.423%
    6    6.2  0.5  0.5   0.007%   0.433%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.014%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.016%
   10    4.2  0.5 -0.5   0.811%  53.624%
   11    5.2  0.5 -0.5  44.423%   0.672%
   12    6.2  0.5 -0.5   0.433%   0.007%


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

              2       6      248.68       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8092.29   4646.55   3443.36      1.38      0.12      0.65
 REAL TIME  *      8180.97 SEC
 DISK USED  *       285.95 MB (local),        1.70 GB (total)
 SF USED    *         2.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -189.711335596227

              CI           MULTI         RHF-SCF
   -189.63817746   -188.98146383   -189.01878393
 **********************************************************************************************************************************
 Molpro calculation terminated
