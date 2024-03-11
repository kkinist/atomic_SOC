
 Working directory              : /wrk/irikura/molpro.yeDyreqJKE/
 Global scratch directory       : /wrk/irikura/molpro.yeDyreqJKE/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.yeDyreqJKE/

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
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=30,sym=1,spin=0}
 
 {multi
     closed,8,6
     occ,10,9
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ga SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Mar-24          TIME: 10:46:50  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry GA     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     F aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     G aug-cc-pwCVTZ-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     15.729 MB (compressed) written to integral file ( 15.6%)

     Node minimum: 0.524 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107427. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1292626. AND WROTE     6503791. INTEGRALS IN     72 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.460E-03 0.307E-02 0.356E-01 0.609E-01 0.609E-01 0.609E-01 0.609E-01 0.609E-01
         2 0.776E-05 0.776E-05 0.776E-05 0.134E-01 0.134E-01 0.134E-01 0.108E+00 0.108E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.13      0.88
 REAL TIME  *         2.15 SEC
 DISK USED  *        29.42 MB (local),      408.88 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial occupancy:   9   6

 NELEC=   30   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -1941.97525469   -1941.97525469     0.00D+00     0.15D+00     0     0       0.01      0.01    start
   2    -1941.98162498      -0.00637029     0.21D-02     0.17D-01     1     0       0.00      0.01    diag
   3    -1941.98223825      -0.00061327     0.18D-02     0.30D-02     2     0       0.00      0.01    diag
   4    -1941.98237219      -0.00013394     0.38D-03     0.19D-02     3     0       0.01      0.02    diag
   5    -1941.98237921      -0.00000702     0.14D-03     0.40D-03     4     0       0.00      0.02    diag
   6    -1941.98237927      -0.00000005     0.85D-05     0.33D-04     5     0       0.00      0.02    diag
   7    -1941.98237927      -0.00000000     0.75D-06     0.55D-05     6     0       0.01      0.03    diag
   8    -1941.98237927      -0.00000000     0.45D-07     0.90D-06     7     0       0.00      0.03    fixocc
   9    -1941.98237927      -0.00000000     0.23D-08     0.49D-07     0     0       0.00      0.03    diag

 Final occupancy:   9   6

 !RHF STATE 1.1 Energy              -1941.982379266486
  RHF One-electron energy           -2699.736527245133
  RHF Two-electron energy             757.754147978647
  RHF Kinetic energy                 2055.623564537094
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.944716928123

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -383.99844     1  1  s    0.99988
    2.1     2.00000   -49.58668     1  2  s    1.00104
    3.1     2.00000    -6.88211     1  3  s    0.99885
    4.1     2.00000    -1.46778     1  1  d0   1.00007
    5.1     2.00000    -1.46778     1  1  d1+  1.00009
    6.1     2.00000    -1.46778     1  1  d2-  0.95787    1  1  d1-  0.28224
    7.1     2.00000    -1.46778     1  1  d2- -0.27844    1  1  d1-  0.95824
    8.1     2.00000    -1.46778     1  1  d2+  0.99594
    9.1     2.00000    -0.69950     1  4  s    1.19415
    1.2     2.00000   -43.04408     1  1  py   0.99979
    2.2     2.00000   -43.04408     1  1  px   0.99979
    3.2     2.00000   -43.04408     1  1  pz   1.00002
    4.2     2.00000    -4.82541     1  2  py   0.99960
    5.2     2.00000    -4.82541     1  2  px   0.99960
    6.2     2.00000    -4.82541     1  2  pz   0.99960


 HOMO      9.1    -0.699498 =     -19.0343eV
 LUMO      7.2    -0.193518 =      -5.2659eV
 LUMO-HOMO         0.505980 =      13.7684eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.19      0.06      0.88
 REAL TIME  *         3.27 SEC
 DISK USED  *        29.94 MB (local),      415.11 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      81 (   38   43)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              20   (24 determinants, 50 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.548D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.528D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.274D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.142D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 6 5 1 1   2 5 3 4 6 1 5 3 4 6   2 1 2 6 4 3 5 1 3 5   6 4 2 71415 81211 9
                                       1310 1 2 5 3 4 6
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.211D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.209D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.715D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.116D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.116D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.212D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.103D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.825D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 2   1 3 3 2 110 8 4 5 7   9 6 810 6 9 7 5 4 3   1 2 4 5 6 810 7 9 3
                                        1 2 4 5 9 710 8 6 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  801  ( 34 closed/active, 562 closed/virtual, 0 active/active, 205 active/virtual )
 Total number of variables:    945
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0  -1942.03173531   -1942.04401750   -0.01228218    0.04878455 0.00000732 0.00000000  0.35E+00      0.26
   2    7    6    0  -1942.04410693   -1942.04411886   -0.00001193    0.00292956 0.00000087 0.00000000  0.12E-01      0.61
   3    4    4    0  -1942.04411886   -1942.04411886   -0.00000000    0.00000299 0.00000000 0.00000000  0.67E-05      0.86

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.60E-08)
                       Final energy:  -1942.04411886
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                     -1942.193056702615
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.34074517
 One electron energy                         -2710.59975838
 Two electron energy                           768.40670168
 Virial ratio                                    1.94448990
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                     -1942.193056702603
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.34074517
 One electron energy                         -2710.59975837
 Two electron energy                           768.40670167
 Virial ratio                                    1.94448990
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                     -1942.193056702600
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.34074517
 One electron energy                         -2710.59975838
 Two electron energy                           768.40670167
 Virial ratio                                    1.94448990
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                     -1941.895181024305
 Nuclear energy                                  0.00000000
 Kinetic energy                               2054.99957711
 One electron energy                         -2700.95206879
 Two electron energy                           759.05688776
 Virial ratio                                    1.94496135
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                     -1941.895181024244
 Nuclear energy                                  0.00000000
 Kinetic energy                               2054.99957711
 One electron energy                         -2700.95206878
 Two electron energy                           759.05688776
 Virial ratio                                    1.94496135
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                     -1941.895181024241
 Nuclear energy                                  0.00000000
 Kinetic energy                               2054.99957711
 One electron energy                         -2700.95206878
 Two electron energy                           759.05688775
 Virial ratio                                    1.94496135
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999995224
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000014842001
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999985434317
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999930
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999992442832
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000007201232
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999992868111
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999985163813
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000021703910
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999553180
 !MCSCF expec                      <5.2|LYLY|5.2>     0.000008009956
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999992798845
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000007136665
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999994186
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999992861773
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000446890
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999547212
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999999923
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 5 2 4 1 1   6 2 5 3 4 1 6 5 3 2   4 1 6 2 3 5 4 1 6 3   5 2 41114151310 812
                                        7 9 1 2 6 5 3 4
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 1 3 2 2   3 1 3 2 1 510 8 9 7   6 4 510 8 9 7 6 4 3   2 1 5 7 9 810 6 4 3
                                        2 1 5 9 710 8 6 4 3   2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -383.79567     1  1  s    0.99988
    2.1     2.00000   -49.38363     1  2  s    1.00113
    3.1     2.00000    -6.67887     1  3  s    0.99714
    4.1     2.00000    -1.26739     1  1  d1-  1.00084
    5.1     2.00000    -1.26739     1  1  d2-  1.00084
    6.1     2.00000    -1.26739     1  1  d2+  1.00084
    7.1     2.00000    -1.26739     1  1  d0   1.00084
    8.1     2.00000    -1.26739     1  1  d1+  1.00084
    9.1     1.46485    -0.42710     1  4  s    1.03258
   10.1     0.50053    -0.00314     1  6  s   -0.32045    1  9  s    1.27796
    1.2     2.00000   -42.84256     1  1  py   1.00002
    2.2     2.00000   -42.84256     1  1  px   1.00002
    3.2     2.00000   -42.84256     1  1  pz   1.00002
    4.2     2.00000    -4.62607     1  2  py   0.99333
    5.2     2.00000    -4.62607     1  2  px   0.99333
    6.2     2.00000    -4.62607     1  2  pz   0.99333
    7.2     0.34487    -0.03215     1  3  px   1.94427    1  4  px  -0.32115    1  5  px  -0.71029
    8.2     0.34487    -0.03215     1  3  pz   1.94427    1  4  pz  -0.32115    1  5  pz  -0.71029
    9.2     0.34487    -0.03215     1  3  py   1.94427    1  4  py  -0.32115    1  5  py  -0.71029
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 0a0         0.98003264     -0.00007781     -0.00261696      0.06491930     -0.00004340     -0.00000043
 20 a00         0.00006773      0.98002887     -0.00377507      0.00000054      0.00017847      0.06491906
 20 00a         0.00261724      0.00377487      0.98002538      0.00004340      0.06491905     -0.00017847
 ab 0a0        -0.05600448      0.00000445      0.00014955      0.81433458     -0.00054436     -0.00000534
 ab a00        -0.00000387     -0.05600426      0.00021573      0.00000683      0.00223863      0.81433168
 ab 00a        -0.00014956     -0.00021572     -0.05600406      0.00054434      0.81433150     -0.00223864
 aa 0b0         0.00810306     -0.00000064     -0.00002164     -0.41471649      0.00027722      0.00000272
 aa b00         0.00000056      0.00810303     -0.00003121     -0.00000348     -0.00114007     -0.41471501
 aa 00b         0.00002164      0.00003121      0.00810300     -0.00027722     -0.41471492      0.00114007
 ba 0a0         0.04790142     -0.00000380     -0.00012791     -0.39961809      0.00026713      0.00000262
 ba a00         0.00000331      0.04790123     -0.00018452     -0.00000335     -0.00109856     -0.39961667
 ba 00a         0.00012792      0.00018451      0.04790106     -0.00026712     -0.39961658      0.00109856
 00 0a2        -0.13040052      0.00001035      0.00034821     -0.01754662      0.00001173      0.00000012
 00 2a0        -0.13040052      0.00001035      0.00034821     -0.01754662      0.00001173      0.00000012
 00 a20        -0.00000901     -0.13040002      0.00050230     -0.00000015     -0.00004824     -0.01754656
 00 a02        -0.00000901     -0.13040002      0.00050230     -0.00000015     -0.00004824     -0.01754656
 00 02a        -0.00034824     -0.00050227     -0.13039955     -0.00001173     -0.01754655      0.00004824
 00 20a        -0.00034824     -0.00050227     -0.13039955     -0.00001173     -0.01754655      0.00004824
 
 Energy:    -1942.19305670  -1942.19305670  -1942.19305670  -1941.89518102  -1941.89518102  -1941.89518102
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       40.19       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.76       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.99      0.80      0.06      0.88
 REAL TIME  *         4.38 SEC
 DISK USED  *        41.04 MB (local),      548.20 MB (total)
 SF USED    *        27.31 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -1942.193057   2.0
    -1942.193057   2.0
    -1942.193057   2.0
    -1941.895181   2.0
    -1941.895181   2.0
    -1941.895181   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 31
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       16 conf       20 CSFs
 N elec internal:     2730 conf     7834 CSFs
 N-1 el internal:     2265 conf    10249 CSFs
 N-2 el internal:      860 conf     5122 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      81 (  38  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.04 sec, npass=  1  Memory used:   0.71 MW


 Number of p-space configurations:  11

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1942.19305670
     2     -1942.19305670
     3     -1942.19305670
     4     -1941.89518102
     5     -1941.89518102
     6     -1941.89518102

 Number of blocks in overlap matrix:   620   Smallest eigenvalue:  0.21D-02
 Number of N-2 electron functions:     892
 Number of N-1 electron functions:   10249

 Number of internal configurations:                 3926
 Number of singly external configurations:        415147
 Number of doubly external configurations:       1465715
 Total number of contracted configurations:      1884788
 Total number of uncontracted configurations:    8799107

 Diagonal Coupling coefficients finished.               Storage:   2149075 words, CPU-Time:      0.93 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    603622 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1942.19305670    -0.00000000    -0.87993524  0.43D-01  0.75D-01     1.30
    1     2     2     1.00000000     0.00000000 -1942.19305670     0.00000000    -0.87998610  0.43D-01  0.75D-01     1.30
    1     3     3     1.00000000     0.00000000 -1942.19305670    -0.00000000    -0.87997629  0.43D-01  0.75D-01     1.30
    1     4     4     1.00000000     0.00000000 -1941.89518102     0.00000000    -0.83131707  0.29D-01  0.69D-01     1.30
    1     5     5     1.00000000     0.00000000 -1941.89518102    -0.00000000    -0.83130660  0.29D-01  0.69D-01     1.30
    1     6     6     1.00000000     0.00000000 -1941.89518102     0.00000000    -0.83132256  0.29D-01  0.69D-01     1.30
    2     1     1     1.07025783    -0.68082083 -1942.87387753    -0.68082083    -0.02444332  0.38D-02  0.15D-02    15.35
    2     2     2     1.07031640    -0.68078346 -1942.87384016    -0.68078346    -0.02447837  0.39D-02  0.15D-02    15.35
    2     3     3     1.07032501    -0.68078266 -1942.87383936    -0.68078266    -0.02447942  0.39D-02  0.15D-02    15.35
    2     4     4     1.05946584    -0.65310065 -1942.54828168    -0.65310065    -0.02391440  0.40D-02  0.14D-02    15.35
    2     5     5     1.05949539    -0.65308392 -1942.54826494    -0.65308392    -0.02392660  0.40D-02  0.14D-02    15.35
    2     6     6     1.05950232    -0.65308169 -1942.54826272    -0.65308169    -0.02392995  0.40D-02  0.14D-02    15.35
    3     1     1     1.06245560    -0.70291371 -1942.89597041    -0.02209288    -0.00074064  0.13D-03  0.62D-04    29.16
    3     2     2     1.06245279    -0.70291279 -1942.89596949    -0.02212933    -0.00074159  0.13D-03  0.62D-04    29.16
    3     3     3     1.06245367    -0.70291275 -1942.89596946    -0.02213009    -0.00074165  0.13D-03  0.62D-04    29.16
    3     4     4     1.05427329    -0.67386910 -1942.56905012    -0.02076844    -0.00085766  0.16D-03  0.60D-04    29.16
    3     5     5     1.05427458    -0.67386755 -1942.56904857    -0.02078363    -0.00085911  0.16D-03  0.60D-04    29.16
    3     6     6     1.05427626    -0.67386741 -1942.56904844    -0.02078572    -0.00085929  0.16D-03  0.60D-04    29.16
    4     1     1     1.06157849    -0.70363663 -1942.89669334    -0.00072292    -0.00004452  0.10D-04  0.28D-05    43.45
    4     2     2     1.06157662    -0.70363661 -1942.89669331    -0.00072382    -0.00004456  0.10D-04  0.28D-05    43.45
    4     3     3     1.06157680    -0.70363660 -1942.89669330    -0.00072385    -0.00004456  0.10D-04  0.28D-05    43.45
    4     4     4     1.05397462    -0.67468500 -1942.56986602    -0.00081590    -0.00004710  0.12D-04  0.27D-05    43.45
    4     5     5     1.05397394    -0.67468491 -1942.56986594    -0.00081736    -0.00004718  0.12D-04  0.27D-05    43.45
    4     6     6     1.05397359    -0.67468490 -1942.56986593    -0.00081749    -0.00004719  0.12D-04  0.27D-05    43.45
    5     1     1     1.06169614    -0.70367808 -1942.89673478    -0.00004144    -0.00000236  0.40D-06  0.17D-06    57.61
    5     2     2     1.06169597    -0.70367808 -1942.89673478    -0.00004147    -0.00000237  0.40D-06  0.17D-06    57.61
    5     3     3     1.06169595    -0.70367808 -1942.89673478    -0.00004147    -0.00000237  0.40D-06  0.17D-06    57.61
    5     4     4     1.05398461    -0.67473244 -1942.56991347    -0.00004745    -0.00000251  0.69D-06  0.20D-06    57.61
    5     5     5     1.05398429    -0.67473244 -1942.56991346    -0.00004753    -0.00000252  0.69D-06  0.20D-06    57.61
    5     6     6     1.05398423    -0.67473244 -1942.56991346    -0.00004753    -0.00000252  0.69D-06  0.20D-06    57.61
    6     1     1     1.06169082    -0.70368042 -1942.89673712    -0.00000234    -0.00000012  0.13D-07  0.12D-07    71.68
    6     2     2     1.06169078    -0.70368042 -1942.89673712    -0.00000234    -0.00000012  0.13D-07  0.12D-07    71.68
    6     3     3     1.06169081    -0.70368042 -1942.89673712    -0.00000234    -0.00000012  0.13D-07  0.12D-07    71.68
    6     4     4     1.05397312    -0.67473519 -1942.56991622    -0.00000275    -0.00000015  0.34D-07  0.17D-07    71.68
    6     5     5     1.05397309    -0.67473519 -1942.56991622    -0.00000275    -0.00000015  0.34D-07  0.17D-07    71.68
    6     6     6     1.05397307    -0.67473519 -1942.56991622    -0.00000276    -0.00000015  0.34D-07  0.17D-07    71.68
    7     1     1     1.06169030    -0.70368053 -1942.89673724    -0.00000012    -0.00000001  0.16D-08  0.50D-09    85.63
    7     2     2     1.06169030    -0.70368053 -1942.89673724    -0.00000012    -0.00000001  0.16D-08  0.50D-09    85.63
    7     3     3     1.06169031    -0.70368053 -1942.89673724    -0.00000012    -0.00000001  0.16D-08  0.50D-09    85.63
    7     4     4     1.05396675    -0.67473535 -1942.56991637    -0.00000016    -0.00000001  0.50D-08  0.11D-08    85.63
    7     5     5     1.05396675    -0.67473535 -1942.56991637    -0.00000016    -0.00000001  0.50D-08  0.11D-08    85.63
    7     6     6     1.05396676    -0.67473535 -1942.56991637    -0.00000016    -0.00000001  0.50D-08  0.11D-08    85.63


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   1.2%   9.7%
 P   0.4%  35.0%  23.4%

 Initialization:   1.2%
 Other:           27.9%

 Total CPU:       85.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00           0.0000000   0.9548673   0.0000000   0.0324355  -0.0000000   0.0000000
 222222202220/0           0.9548673  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0324355
 2222222022200/          -0.0000000  -0.0000000   0.9548673   0.0000000   0.0324355   0.0000000
 222222/\222/00          -0.0000000  -0.0444773  -0.0000000   0.8374349  -0.0000000   0.0000000
 222222/\22200/          -0.0000000   0.0000000  -0.0444773   0.0000000   0.8374349  -0.0000000
 222222/\2220/0          -0.0444773   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8374349
 222222//22200\           0.0000000   0.0000000  -0.0026493  -0.0000000  -0.4949963  -0.0000000
 222222//2220\0          -0.0026493   0.0000000   0.0000000   0.0000000   0.0000000  -0.4949963
 222222//222\00          -0.0000000  -0.0026493   0.0000000  -0.4949963   0.0000000  -0.0000000
 222222002220/2          -0.1165660   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0100107
 22222200222/02          -0.0000000  -0.1165660  -0.0000000  -0.0100107   0.0000000  -0.0000000
 2222220022220/           0.0000000   0.0000000  -0.1165660  -0.0000000  -0.0100107  -0.0000000
 222222002222/0          -0.1165660   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0100107
 2222220022202/           0.0000000   0.0000000  -0.1165660  -0.0000000  -0.0100107  -0.0000000
 22222200222/20          -0.0000000  -0.1165660  -0.0000000  -0.0100107   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969469    0.000000   -0.000000    0.029159   -0.000000    0.000000
 2          -0.000000    0.969469   -0.000000   -0.000000   -0.000000    0.029159
 3           0.000000    0.000000    0.969469   -0.000000    0.029159   -0.000000
 4           0.000000   -0.032160    0.000000   -0.000000    0.000000    0.973176
 5           0.000000    0.000000   -0.032160   -0.000000    0.973176   -0.000000
 6          -0.032160   -0.000000    0.000000    0.973176    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969907   -0.000000    0.000000   -0.000000    0.000000   -0.001441
 2          -0.000000    0.969907    0.000000   -0.001441    0.000000    0.000000
 3           0.000000    0.000000    0.969907   -0.000000   -0.001441   -0.000000
 4          -0.000000   -0.001441   -0.000000    0.973706   -0.000000    0.000000
 5           0.000000    0.000000   -0.001441   -0.000000    0.973706   -0.000000
 6          -0.001441    0.000000   -0.000000    0.000000   -0.000000    0.973706


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96946947 (fixed)   0.97002788 (relaxed)   0.96990683 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00124905   -0.00187301   -0.61822151
 Singles      0.01570876   -0.04737986   -0.05497260
 Pairs        0.04605859   -0.00000000   -0.03048642
 Total        1.06301640   -0.04925287   -0.70368053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.19276021
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.20382815
 One electron energy                -2708.25120514
 Two electron energy                  765.35446790
 Virial quotient                       -0.94489501
 Correlation energy                    -0.70397703
 !MRCI STATE 1.2 Energy             -1942.896737235769

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94109933 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94091257 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94109933 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93876612 (Pople, fixed reference)
 Cluster corrected energies         -1942.93857998 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93876612 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96946947 (fixed)   0.97002788 (relaxed)   0.96990683 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00124905   -0.00187301   -0.59275223
 Singles      0.01570876   -0.04737986   -0.05497260
 Pairs        0.04605859   -0.02707427   -0.05595571
 Total        1.06301640   -0.07632714   -0.70368053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.19276021
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.20382793
 One electron energy                -2708.25120465
 Two electron energy                  765.35446742
 Virial quotient                       -0.94489501
 Correlation energy                    -0.70397703
 !MRCI STATE 2.2 Energy             -1942.896737235668

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94109934 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94091258 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94109934 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93876612 (Pople, fixed reference)
 Cluster corrected energies         -1942.93857998 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93876612 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96946947 (fixed)   0.97002788 (relaxed)   0.96990683 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00124905   -0.00187301   -0.61822151
 Singles      0.01570877   -0.04737985   -0.05497260
 Pairs        0.04605859    0.00000000   -0.03048642
 Total        1.06301641   -0.04925287   -0.70368053
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.19276021
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.20382750
 One electron energy                -2708.25120441
 Two electron energy                  765.35446718
 Virial quotient                       -0.94489501
 Correlation energy                    -0.70397703
 !MRCI STATE 3.2 Energy             -1942.896737235667

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94109934 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94091258 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94109934 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93876612 (Pople, fixed reference)
 Cluster corrected energies         -1942.93857998 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93876612 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97317593 (fixed)   0.97373488 (relaxed)   0.97370611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073087   -0.00138113   -0.00213933
 Singles      0.01103892   -0.03658920   -0.04175229
 Pairs        0.04296728   -0.63638286   -0.63084373
 Total        1.05473706   -0.67435318   -0.67473535
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.89547752
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.46254612
 One electron energy                -2700.00937293
 Two electron energy                  757.43945655
 Virial quotient                       -0.94507678
 Correlation energy                    -0.67443886
 !MRCI STATE 4.2 Energy             -1942.569916373258

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.60683318 (Davidson, fixed reference)
 Cluster corrected energies         -1942.60679114 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.60683318 (Davidson, rotated reference)

 Cluster corrected energies         -1942.60465280 (Pople, fixed reference)
 Cluster corrected energies         -1942.60461146 (Pople, relaxed reference)
 Cluster corrected energies         -1942.60465280 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.97317593 (fixed)   0.97373488 (relaxed)   0.97370611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073087   -0.00138113   -0.60549621
 Singles      0.01103892   -0.03658920   -0.04175229
 Pairs        0.04296728    0.00000000   -0.02748685
 Total        1.05473706   -0.03797032   -0.67473535
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.89547752
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.46254783
 One electron energy                -2700.00937479
 Two electron energy                  757.43945842
 Virial quotient                       -0.94507678
 Correlation energy                    -0.67443886
 !MRCI STATE 5.2 Energy             -1942.569916373250

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.60683317 (Davidson, fixed reference)
 Cluster corrected energies         -1942.60679114 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.60683317 (Davidson, rotated reference)

 Cluster corrected energies         -1942.60465280 (Pople, fixed reference)
 Cluster corrected energies         -1942.60461146 (Pople, relaxed reference)
 Cluster corrected energies         -1942.60465280 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97317593 (fixed)   0.97373488 (relaxed)   0.97370611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00073087   -0.00138113   -0.60549622
 Singles      0.01103891   -0.03658919   -0.04175228
 Pairs        0.04296728   -0.00000000   -0.02748685
 Total        1.05473707   -0.03797031   -0.67473535
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.89547752
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.46254542
 One electron energy                -2700.00937210
 Two electron energy                  757.43945573
 Virial quotient                       -0.94507678
 Correlation energy                    -0.67443886
 !MRCI STATE 6.2 Energy             -1942.569916373216

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.60683318 (Davidson, fixed reference)
 Cluster corrected energies         -1942.60679114 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.60683318 (Davidson, rotated reference)

 Cluster corrected energies         -1942.60465280 (Pople, fixed reference)
 Cluster corrected energies         -1942.60461146 (Pople, relaxed reference)
 Cluster corrected energies         -1942.60465280 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       40.19       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       88.50       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        94.69     92.70      0.80      0.06      0.88
 REAL TIME  *       105.25 SEC
 DISK USED  *       128.78 MB (local),        1.56 GB (total)
 SF USED    *       932.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1942.94109933  AU                              
 SETTING HLSDIAG(2)     =     -1942.94109934  AU                              
 SETTING HLSDIAG(3)     =     -1942.94109934  AU                              
 SETTING HLSDIAG(4)     =     -1942.60683318  AU                              
 SETTING HLSDIAG(5)     =     -1942.60683317  AU                              
 SETTING HLSDIAG(6)     =     -1942.60683318  AU                              


         HLSDIAG
    -1942.941099
    -1942.941099
    -1942.941099
    -1942.606833
    -1942.606833
    -1942.606833
                                                  


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

 Time for Seward_LS:       4.46 sec

        6950436. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.46 sec, REAL time:      4.55 sec


 SORTLS1 read     7821185. and wrote     7821185. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.11 sec
 SORTLS2 read     7821185. and wrote    38256242. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:   167.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   167.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:  -1942.896737  -1942.896737  -1942.896737  -1942.569916  -1942.569916  -1942.569916
 Replaced energies:  -1942.941099  -1942.941099  -1942.941099  -1942.606833  -1942.606833  -1942.606833



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1942.94109934

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -330.90      -0.00      18.85
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     330.90       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     330.90       0.00       0.00      -0.00
                            0.00      -0.00    -330.90      -0.00      18.85      -0.00       0.00       0.00      -0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00     330.90      -0.00     -18.85       0.00       0.00    -330.90       0.00       0.00      -0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   73362.94       0.00       0.00     -18.85       0.00      -0.00       0.00
                            0.00       0.00      18.85       0.00    -268.37       0.00      -0.00       0.00       0.00      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   73362.94       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00     -18.85      -0.00     268.37       0.00       0.00      18.85      -0.00       0.00       0.00

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   73362.94       0.00      18.85       0.00    -268.37
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -18.85       0.00

    7   1.2  0.5 -0.5       0.00     330.90       0.00     -18.85      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     330.90       0.00     -18.85       0.00      -0.00       0.00       0.00       0.00

    8   2.2  0.5 -0.5    -330.90       0.00      -0.00       0.00      -0.00      18.85       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     330.90       0.00

    9   3.2  0.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -330.90       0.00      -0.00      -0.00      -0.00      18.85      -0.00    -330.90       0.00      18.85

   10   4.2  0.5 -0.5      18.85      -0.00       0.00       0.00      -0.00    -268.37       0.00       0.00       0.00   73362.94
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     -18.85      -0.00

   11   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           18.85      -0.00       0.00       0.00      -0.00    -268.37       0.00      18.85       0.00    -268.37

   12   6.2  0.5 -0.5      -0.00     -18.85      -0.00     268.37      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -18.85       0.00     268.37      -0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5       0.00      -0.00
                          -18.85       0.00

    2   2.2  0.5  0.5       0.00     -18.85
                            0.00      -0.00

    3   3.2  0.5  0.5       0.00      -0.00
                           -0.00      18.85

    4   4.2  0.5  0.5       0.00     268.37
                           -0.00      -0.00

    5   5.2  0.5  0.5      -0.00      -0.00
                            0.00    -268.37

    6   6.2  0.5  0.5       0.00      -0.00
                          268.37       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                           -0.00       0.00

    8   2.2  0.5 -0.5       0.00       0.00
                          -18.85       0.00

    9   3.2  0.5 -0.5       0.00       0.00
                           -0.00      -0.00

   10   4.2  0.5 -0.5       0.00       0.00
                          268.37      -0.00

   11   5.2  0.5 -0.5   73362.94       0.00
                           -0.00      -0.00

   12   6.2  0.5 -0.5       0.00   73362.94
                            0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1942.94411481    -0.00301547     -661.82      0.00000000        0.00      0.0000
     2 -1942.94411481    -0.00301547     -661.82      0.00000000        0.00      0.0000
     3 -1942.93959166     0.00150767      330.90      0.00452315      992.72      0.1231
     4 -1942.93959166     0.00150767      330.90      0.00452315      992.72      0.1231
     5 -1942.93959166     0.00150767      330.90      0.00452315      992.72      0.1231
     6 -1942.93959166     0.00150767      330.90      0.00452315      992.72      0.1231
     7 -1942.60927864     0.33182069    72826.22      0.33483617    73488.04      9.1114
     8 -1942.60927864     0.33182069    72826.22      0.33483617    73488.04      9.1114
     9 -1942.60561038     0.33548896    73631.32      0.33850444    74293.14      9.2112
    10 -1942.60561038     0.33548896    73631.32      0.33850444    74293.14      9.2112
    11 -1942.60561038     0.33548896    73631.32      0.33850444    74293.14      9.2112
    12 -1942.60561038     0.33548896    73631.32      0.33850444    74293.14      9.2112


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.017325537   0.577090036  -0.365175501   0.004362587   0.013174504   0.730151380  -0.000074956   0.000286520
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.052258471  -0.001568917   0.005352569   0.448040970   0.680891077  -0.012285661  -0.000286519  -0.000074956
                         0.574719103  -0.017254357  -0.000475580  -0.039739489  -0.023539517   0.000424321  -0.000000046  -0.000000012

    3    3.2  0.5  0.5   0.574719374  -0.017254365   0.000861011   0.072002400  -0.001687897   0.000030871  -0.000000046  -0.000000012
                        -0.052258496   0.001568917   0.009698089   0.811788033  -0.048824248   0.000880973   0.000286519   0.000074956

    4    4.2  0.5  0.5  -0.000026807   0.000000805   0.000001376   0.000115209   0.000175085  -0.000003159  -0.558552877  -0.146123068
                        -0.000294812   0.000008851  -0.000000122  -0.000010219  -0.000006053   0.000000109  -0.000089123  -0.000023315

    5    5.2  0.5  0.5  -0.000294812   0.000008851   0.000000221   0.000018515  -0.000000434   0.000000008  -0.000089123  -0.000023315
                         0.000026807  -0.000000805   0.000002494   0.000208743  -0.000012555   0.000000227   0.558552562   0.146122986

    6    6.2  0.5  0.5  -0.000008887  -0.000296028  -0.000093901   0.000001122   0.000003388   0.000187751  -0.146123133   0.558553123
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    7    1.2  0.5 -0.5  -0.052258464   0.001568916  -0.004345525  -0.363747493   0.729715441  -0.013166636   0.000286520   0.000074956
                        -0.574719029   0.017254355   0.000385431   0.032262949  -0.025227418   0.000455192   0.000000046   0.000000012

    8    2.2  0.5 -0.5   0.017325540   0.577090110  -0.449799874   0.005373653  -0.012292985  -0.681297863  -0.000074956   0.000286519
                        -0.000000000  -0.000000000  -0.000000022   0.000000825   0.000000414  -0.000000024  -0.000000000  -0.000000000

    9    3.2  0.5 -0.5   0.000000000   0.000000000  -0.000000022   0.000000825   0.000000414  -0.000000024   0.000000000   0.000000000
                         0.017325548   0.577090382   0.814974943  -0.009736235  -0.000881516  -0.048853401  -0.000074956   0.000286519

   10    4.2  0.5 -0.5  -0.000008887  -0.000296029  -0.000115662   0.000001382  -0.000003161  -0.000175189  -0.146123070   0.558552884
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   11    5.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000008887  -0.000296028   0.000209563  -0.000002504  -0.000000227  -0.000012562  -0.146122988   0.558552569

   12    6.2  0.5 -0.5   0.000026807  -0.000000805  -0.000001117  -0.000093534   0.000187639  -0.000003386   0.558553116   0.146123131
                         0.000294812  -0.000008851   0.000000099   0.000008296  -0.000006487   0.000000117   0.000089123   0.000023315


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.000102207  -0.000174121   0.000011232   0.000056483
                         0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000130071   0.000076350  -0.000143253   0.000028486
                        -0.000000007   0.000000004   0.000000024  -0.000000005

    3    3.2  0.5  0.5  -0.000000002   0.000000001  -0.000000034   0.000000007
                         0.000044049  -0.000025856  -0.000199736   0.000039717

    4    4.2  0.5  0.5   0.505838984  -0.296920147   0.557099618  -0.110778818
                         0.000026169  -0.000015378  -0.000094786   0.000018796

    5    5.2  0.5  0.5   0.000008828  -0.000005165   0.000132207  -0.000026237
                        -0.171305081   0.100553663   0.776758192  -0.154457732

    6    6.2  0.5  0.5   0.397473574   0.677143696  -0.043678860  -0.219657998
                         0.000000000  -0.000000000  -0.000000000   0.000000000

    7    1.2  0.5 -0.5  -0.000174121   0.000102207   0.000056483  -0.000011232
                        -0.000000009   0.000000005  -0.000000010   0.000000002

    8    2.2  0.5 -0.5   0.000076350   0.000130071   0.000028486   0.000143253
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000

    9    3.2  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000025856   0.000044049  -0.000039717  -0.000199736

   10    4.2  0.5 -0.5  -0.296920172  -0.505838940  -0.110778781  -0.557099661
                         0.000000031   0.000000024   0.000000075   0.000000113

   11    5.2  0.5 -0.5   0.000000031   0.000000023   0.000000075   0.000000113
                        -0.100553630  -0.171305144   0.154457747   0.776758192

   12    6.2  0.5 -0.5   0.677143678  -0.397473583  -0.219658042   0.043678808
                         0.000034997  -0.000020542   0.000037421  -0.000007441


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.030%  33.303%  13.335%   0.002%   0.017%  53.312%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  33.303%   0.030%   0.003%  20.232%  46.417%   0.015%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  33.303%   0.030%   0.009%  66.418%   0.239%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  31.198%   2.135%  25.587%   8.816%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  31.198%   2.135%   2.935%   1.011%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.135%  31.198%  15.799%  45.852%
    7    1.2  0.5 -0.5  33.303%   0.030%   0.002%  13.335%  53.312%   0.017%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.030%  33.303%  20.232%   0.003%   0.015%  46.417%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.030%  33.303%  66.418%   0.009%   0.000%   0.239%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.135%  31.198%   8.816%  25.587%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.135%  31.198%   1.011%   2.935%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  31.198%   2.135%  45.852%  15.799%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5  31.036%   1.227%
    5    5.2  0.5  0.5  60.335%   2.386%
    6    6.2  0.5  0.5   0.191%   4.825%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   1.227%  31.036%
   11    5.2  0.5 -0.5   2.386%  60.335%
   12    6.2  0.5 -0.5   4.825%   0.191%


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
              1      24      159.87       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       88.50       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       363.64    268.94     92.70      0.80      0.06      0.88
 REAL TIME  *       382.73 SEC
 DISK USED  *       128.84 MB (local),        1.94 GB (total)
 SF USED    *       932.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -1942.605610375131

              CI           MULTI         RHF-SCF
  -1942.56991637  -1941.89518102  -1941.98237927
 **********************************************************************************************************************************
 Molpro calculation terminated
