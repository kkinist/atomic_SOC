
 Working directory              : /wrk/irikura/molpro.HYPrTmOS1n/
 Global scratch directory       : /wrk/irikura/molpro.HYPrTmOS1n/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.HYPrTmOS1n/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Cs SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Cs};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=8,sym=1,spin=0}
 
 {multi
     closed,1,3
     occ,8,3
     wf,nelec=9,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cs SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 15:53:46  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Cs   ECP ECP46MDF                 selected for group  1
 Library entry CS     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CS     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CS     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry CS     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  CS      9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
 NUMBER OF PRIMITIVE AOS:         164
 NUMBER OF SYMMETRY AOS:          137
 NUMBER OF CONTRACTIONS:           87   (   38Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.613E-04 0.866E-03 0.119E-02 0.119E-02 0.119E-02 0.119E-02 0.119E-02 0.635E-02
         2 0.514E-02 0.514E-02 0.514E-02 0.336E-01 0.336E-01 0.336E-01 0.117E+00 0.117E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     11.010 MB (compressed) written to integral file ( 16.7%)

     Node minimum: 0.524 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     312474.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     312474      RECORD LENGTH: 524288

 Memory used in sort:       0.87 MW

 SORT1 READ     8662933. AND WROTE       63341. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      311578.  Node maximum:      314862. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.80       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.76      0.49
 REAL TIME  *         1.35 SEC
 DISK USED  *        29.14 MB (local),      402.48 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   1   3

 NELEC=    8   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -19.72397554     -19.72397554     0.00D+00     0.90D-01     0     0       0.00      0.01    start
   2      -19.72440879      -0.00043324     0.10D-02     0.15D-02     1     0       0.00      0.01    diag
   3      -19.72442110      -0.00001232     0.20D-03     0.23D-02     2     0       0.00      0.01    diag
   4      -19.72442151      -0.00000040     0.31D-04     0.29D-03     3     0       0.01      0.02    diag
   5      -19.72442151      -0.00000000     0.92D-06     0.52D-05     4     0       0.00      0.02    diag
   6      -19.72442151      -0.00000000     0.26D-07     0.28D-06     5     0       0.00      0.02    diag
   7      -19.72442151      -0.00000000     0.15D-08     0.10D-07     0     0       0.00      0.02    diag

 Final occupancy:   1   3

 !RHF STATE 1.1 Energy                -19.724421508115
  RHF One-electron energy             -31.289752082441
  RHF Two-electron energy              11.565330574326
  RHF Kinetic energy                    5.483893070297
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.596791778263

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.49991     1  1  s    1.01078
    1.2     2.00000    -0.85988     1  1  pz   1.00731
    2.2     2.00000    -0.85988     1  1  py   1.00731
    3.2     2.00000    -0.85988     1  1  px   1.00731


 HOMO      3.2    -0.859879 =     -23.3985eV
 LUMO      2.1    -0.127915 =      -3.4807eV
 LUMO-HOMO         0.731964 =      19.9178eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.80       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.79      0.03      0.49
 REAL TIME  *         2.21 SEC
 DISK USED  *        29.54 MB (local),      407.29 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:      76 (   30   46)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.648D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.675D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.170D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.168D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 2 4 6 1 3 5   4 6 2 1 3 5 4 6 2 1   3 5 6 4 2 1 3 5 6 4   2 1 5 3 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.155D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.157D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.194D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 2 1 3 2   1 3 7 9 4 510 8 6 2   1 3 6 4 510 8 7 9 8  10 4 5 7 9 6 2 1 3 6
                                        7 910 4 5 8 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  385  ( 7 closed/active, 168 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    434
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0    -19.79652882     -19.79677568   -0.00024685    0.02035764 0.00000224 0.00000000  0.41E-01      0.15
   2    3    3    0    -19.79677585     -19.79677586   -0.00000000    0.00004053 0.00000000 0.00000000  0.35E-03      0.28

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.26E-08)
                       Final energy:    -19.79677586
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -19.852717614242
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.55356466
 One electron energy                           -32.87628115
 Two electron energy                            13.02356353
 Virial ratio                                    4.57477023
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -19.789042271414
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58775617
 One electron energy                           -32.62399727
 Two electron energy                            12.83495499
 Virial ratio                                    4.54150068
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -19.789042271413
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58775617
 One electron energy                           -32.62399727
 Two electron energy                            12.83495499
 Virial ratio                                    4.54150068
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                       -19.789042271406
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58775617
 One electron energy                           -32.62399727
 Two electron energy                            12.83495499
 Virial ratio                                    4.54150068
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                       -19.789042271399
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58775617
 One electron energy                           -32.62399727
 Two electron energy                            12.83495499
 Virial ratio                                    4.54150068
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                       -19.789042271398
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58775617
 One electron energy                           -32.62399727
 Two electron energy                            12.83495499
 Virial ratio                                    4.54150068
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                       -19.779502026388
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.49729516
 One electron energy                           -32.04158124
 Two electron energy                            12.26207922
 Virial ratio                                    4.59804258
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     3.715270479930
 !MCSCF expec                      <3.1|LXLX|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     1.000000000000
 !MCSCF expec                      <6.1|LXLX|6.1>     0.284728590444
 !MCSCF expec                      <7.1|LXLX|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.251642926065
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     4.000000000000
 !MCSCF expec                      <6.1|LYLY|6.1>     3.748356196105
 !MCSCF expec                      <7.1|LYLY|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     2.033086594004
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.000000000000
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.966915213450
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 1 4 6 3 1 2 6 4   2 5 3 1 6 4 5 2 3 1   6 4 2 5 3 1 6 4 3 5   2 1 3 5 6 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 5 410 6 8 7 9 3   2 1 6 5 410 8 9 7 6   5 4 810 9 7 3 2 1 6
                                        5 4 810 7 9 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.34691     1  1  s    1.00567
    2.1     0.14286     0.03798     1  1  d2+  0.92806
    3.1     0.14286     0.01660     1  2  s   -0.67267    1  3  s   -0.25518    1  5  s   -1.03511    1  8  s    2.13780
    4.1     0.14286     0.03798     1  1  d1+  0.92806
    5.1     0.14286     0.03798     1  1  d1-  0.92806
    6.1     0.14286     0.03798     1  1  d2-  0.92806
    7.1     0.14286    -0.01719     1  2  s    0.98655
    8.1     0.14286     0.03798     1  1  d0   0.92806
    1.2     2.00000    -0.70838     1  1  pz   1.00075
    2.2     2.00000    -0.70838     1  1  px   1.00075
    3.2     2.00000    -0.70838     1  1  py   1.00075
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 000a000        0.00000000      0.00000000      1.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000a00        0.00000000      0.00000000      0.00000000      1.00000000     -0.00000000     -0.00000000      0.00000000
 00a0000       -0.00000000      0.00000000      0.00000000     -0.00000000      1.00000000     -0.00000000      0.00000000
 00000a0        0.99999145      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00413435
 0a00000       -0.00413435     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.99999145
 a000000       -0.00000000      0.71293173      0.00000000     -0.00000000     -0.00000000     -0.70123345     -0.00000000
 000000a       -0.00000000      0.70123345     -0.00000000     -0.00000000     -0.00000000      0.71293173      0.00000000
 
 Energy:      -19.85271761    -19.78904227    -19.78904227    -19.78904227    -19.78904227    -19.78904227    -19.77950203
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.69       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.10      0.30      0.03      0.49
 REAL TIME  *         2.64 SEC
 DISK USED  *        32.66 MB (local),      444.72 MB (total)
 SF USED    *         9.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -19.85271761  -0.0
    -19.78904227   6.0
    -19.78904227   6.0
    -19.78904227   6.0
    -19.78904227   6.0
    -19.78904227   6.0
    -19.77950203  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                  9
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:      889 conf     2205 CSFs
 N-1 el internal:      309 conf      967 CSFs
 N-2 el internal:       74 conf      274 CSFs

 Number of electrons in valence space:                      9
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:      76 (  30  46 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -19.85271761
     2       -19.78904227
     3       -19.78904227
     4       -19.78904227
     5       -19.78904227
     6       -19.78904227
     7       -19.77950203

 Number of blocks in overlap matrix:   120   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     120
 Number of N-1 electron functions:     967

 Number of internal configurations:                 1281
 Number of singly external configurations:         35394
 Number of doubly external configurations:        175880
 Total number of contracted configurations:       212555
 Total number of uncontracted configurations:     434861

 Diagonal Coupling coefficients finished.               Storage:    529558 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    336050 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -19.85271761    -0.00000000    -0.19818161  0.15D-01  0.69D-01     0.10
    1     2     2     1.00000000     0.00000000   -19.78904227    -0.00000000    -0.19175463  0.13D-01  0.66D-01     0.10
    1     3     3     1.00000000     0.00000000   -19.78904227     0.00000000    -0.19175918  0.13D-01  0.66D-01     0.10
    1     4     4     1.00000000     0.00000000   -19.78904227    -0.00000000    -0.19176882  0.13D-01  0.66D-01     0.10
    1     5     5     1.00000000     0.00000000   -19.78904227    -0.00000000    -0.19175517  0.13D-01  0.66D-01     0.10
    1     6     6     1.00000000     0.00000000   -19.78904227    -0.00000000    -0.19175302  0.13D-01  0.66D-01     0.10
    1     7     7     1.00000000     0.00000000   -19.77950203    -0.00000000    -0.18415263  0.12D-01  0.60D-01     0.10
    2     1     1     1.07408010    -0.18715519   -20.03987280    -0.18715519    -0.00387273  0.82D-03  0.10D-02     0.93
    2     2     2     1.07152147    -0.18312308   -19.97216536    -0.18312308    -0.00349911  0.83D-03  0.94D-03     0.93
    2     3     3     1.07152383    -0.18311464   -19.97215691    -0.18311464    -0.00350673  0.83D-03  0.94D-03     0.93
    2     4     4     1.07152268    -0.18311447   -19.97215674    -0.18311447    -0.00350689  0.83D-03  0.94D-03     0.93
    2     5     5     1.07153045    -0.18311321   -19.97215548    -0.18311321    -0.00350905  0.83D-03  0.94D-03     0.93
    2     6     6     1.07152864    -0.18311215   -19.97215442    -0.18311215    -0.00351067  0.83D-03  0.94D-03     0.93
    2     7     7     1.06782410    -0.17952641   -19.95902844    -0.17952641    -0.00311470  0.43D-03  0.82D-03     0.93
    3     1     1     1.07695501    -0.19135809   -20.04407570    -0.00420290    -0.00010397  0.21D-04  0.31D-04     1.70
    3     2     2     1.07460950    -0.18696080   -19.97600307    -0.00383772    -0.00010303  0.30D-04  0.31D-04     1.70
    3     3     3     1.07460940    -0.18696075   -19.97600302    -0.00384610    -0.00010319  0.30D-04  0.31D-04     1.70
    3     4     4     1.07460710    -0.18696062   -19.97600289    -0.00384615    -0.00010313  0.30D-04  0.31D-04     1.70
    3     5     5     1.07460693    -0.18696060   -19.97600287    -0.00384739    -0.00010315  0.30D-04  0.31D-04     1.70
    3     6     6     1.07460830    -0.18696054   -19.97600281    -0.00384839    -0.00010327  0.30D-04  0.31D-04     1.70
    3     7     7     1.07073882    -0.18295319   -19.96245522    -0.00342678    -0.00007618  0.13D-04  0.22D-04     1.70
    4     1     1     1.07763871    -0.19148056   -20.04419818    -0.00012248    -0.00000581  0.35D-05  0.11D-05     2.45
    4     2     2     1.07548132    -0.18709119   -19.97613346    -0.00013039    -0.00000970  0.11D-04  0.13D-05     2.45
    4     3     3     1.07548100    -0.18709118   -19.97613346    -0.00013044    -0.00000970  0.11D-04  0.13D-05     2.45
    4     4     4     1.07548108    -0.18709117   -19.97613344    -0.00013054    -0.00000971  0.11D-04  0.13D-05     2.45
    4     5     5     1.07548091    -0.18709116   -19.97613343    -0.00013056    -0.00000972  0.11D-04  0.13D-05     2.45
    4     6     6     1.07548092    -0.18709116   -19.97613343    -0.00013062    -0.00000972  0.11D-04  0.13D-05     2.45
    4     7     7     1.07109436    -0.18304296   -19.96254498    -0.00008976    -0.00000399  0.23D-05  0.83D-06     2.45
    5     1     1     1.07789531    -0.19148767   -20.04420528    -0.00000710    -0.00000027  0.86D-07  0.66D-07     3.20
    5     2     2     1.07599479    -0.18710499   -19.97614726    -0.00001380    -0.00000101  0.36D-06  0.29D-06     3.20
    5     3     3     1.07599487    -0.18710499   -19.97614726    -0.00001381    -0.00000101  0.36D-06  0.29D-06     3.20
    5     4     4     1.07599486    -0.18710499   -19.97614726    -0.00001382    -0.00000101  0.36D-06  0.29D-06     3.20
    5     5     5     1.07599440    -0.18710499   -19.97614726    -0.00001383    -0.00000101  0.36D-06  0.29D-06     3.20
    5     6     6     1.07599447    -0.18710499   -19.97614726    -0.00001383    -0.00000101  0.36D-06  0.29D-06     3.20
    5     7     7     1.07124071    -0.18304794   -19.96254997    -0.00000498    -0.00000023  0.12D-06  0.52D-07     3.20
    6     1     1     1.07792385    -0.19148799   -20.04420560    -0.00000032    -0.00000001  0.33D-08  0.24D-08     3.96
    6     2     2     1.07607394    -0.18710627   -19.97614854    -0.00000128    -0.00000007  0.30D-07  0.16D-07     3.96
    6     3     3     1.07607393    -0.18710627   -19.97614854    -0.00000128    -0.00000007  0.30D-07  0.16D-07     3.96
    6     4     4     1.07607398    -0.18710627   -19.97614854    -0.00000128    -0.00000007  0.30D-07  0.16D-07     3.96
    6     5     5     1.07607386    -0.18710627   -19.97614854    -0.00000128    -0.00000007  0.30D-07  0.16D-07     3.96
    6     6     6     1.07607391    -0.18710627   -19.97614854    -0.00000128    -0.00000007  0.30D-07  0.16D-07     3.96
    6     7     7     1.07126309    -0.18304823   -19.96255026    -0.00000029    -0.00000001  0.84D-08  0.29D-08     3.96
    7     1     1     1.07792905    -0.19148800   -20.04420561    -0.00000001    -0.00000000  0.12D-08  0.78D-09     4.62
    7     2     2     1.07608752    -0.18710635   -19.97614863    -0.00000008    -0.00000001  0.49D-08  0.89D-09     4.62
    7     3     3     1.07608752    -0.18710635   -19.97614863    -0.00000008    -0.00000001  0.49D-08  0.89D-09     4.62
    7     4     4     1.07608752    -0.18710635   -19.97614863    -0.00000008    -0.00000001  0.49D-08  0.89D-09     4.62
    7     5     5     1.07608751    -0.18710635   -19.97614863    -0.00000008    -0.00000001  0.49D-08  0.89D-09     4.62
    7     6     6     1.07608752    -0.18710635   -19.97614863    -0.00000008    -0.00000001  0.49D-08  0.89D-09     4.62
    7     7     7     1.07126763    -0.18304825   -19.96255027    -0.00000002    -0.00000000  0.39D-09  0.18D-09     4.62


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.5%
 S   4.5%   7.6%
 P   1.3%  17.3%  13.9%

 Initialization:   1.1%
 Other:           49.8%

 Total CPU:        4.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/00000222          -0.0563112  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9639158
 20000/00222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.9636561  -0.0000000   0.0000000
 2000/000222           0.0000000   0.0000000   0.9636561  -0.0000000   0.0000000  -0.0000000  -0.0000000
 200/0000222          -0.0000000   0.0000000   0.0000000   0.9636561   0.0000000  -0.0000000   0.0000000
 2000000/222          -0.0000000   0.9634752  -0.0000000  -0.0000000  -0.0000000  -0.0186694  -0.0000000
 2/000000222          -0.0000000   0.0186694   0.0000000   0.0000000   0.0000000   0.9634752  -0.0000000
 200000/0222           0.9611301   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0595084

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.961355   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.052337
 2           0.000000    0.688925    0.000000    0.000000    0.000000    0.673806    0.000000
 3          -0.000000   -0.000000    0.963656   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000   -0.000000    0.963656   -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.963656    0.000000   -0.000000    0.000000
 6          -0.000000    0.673806   -0.000000   -0.000000   -0.000000   -0.688925   -0.000000
 7           0.055523   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.964154

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962777    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.001512
 2           0.000000    0.963656   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.963656   -0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.963656    0.000000    0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.963656    0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.963656   -0.000000
 7           0.001512   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.965750


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96135467 (fixed)   0.96277826 (relaxed)   0.96277707 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00082547   -0.00134496   -0.16756220
 Singles      0.01378001   -0.02349626   -0.02422580
 Pairs        0.06421337    0.01261945    0.00030001
 Total        1.07881884   -0.01222176   -0.19148800
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.85248860
 Nuclear energy                         0.00000000
 Kinetic energy                         5.69602514
 One electron energy                  -32.80308559
 Two electron energy                   12.75887998
 Virial quotient                       -3.51898124
 Correlation energy                    -0.19171702
 !MRCI STATE 1.1 Energy               -20.044205611763

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -20.05931652 (Davidson, fixed reference)
 Cluster corrected energies           -20.05931601 (Davidson, relaxed reference)
 Cluster corrected energies           -20.05931652 (Davidson, rotated reference)

 Cluster corrected energies           -20.05598890 (Pople, fixed reference)
 Cluster corrected energies           -20.05598849 (Pople, relaxed reference)
 Cluster corrected energies           -20.05598890 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.68892535 (fixed)   0.96365610 (relaxed)   0.96365610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071004   -0.00113832   -0.15404283
 Singles      0.01290656   -0.02135794   -0.02207768
 Pairs        0.06323498    0.00000000   -0.01098584
 Total        1.07685159   -0.02249626   -0.18710635
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78904227
 Nuclear energy                         0.00000000
 Kinetic energy                         5.73239473
 One electron energy                  -32.55259562
 Two electron energy                   12.57644700
 Virial quotient                       -3.48478246
 Correlation energy                    -0.18710635
 !MRCI STATE 2.1 Energy               -19.976148626403

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.99052805 (Davidson, fixed reference)
 Cluster corrected energies           -19.99052805 (Davidson, relaxed reference)
 Cluster corrected energies           -19.99052805 (Davidson, rotated reference)

 Cluster corrected energies           -19.98735076 (Pople, fixed reference)
 Cluster corrected energies           -19.98735076 (Pople, relaxed reference)
 Cluster corrected energies           -19.98735076 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96365610 (fixed)   0.96365610 (relaxed)   0.96365610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071004   -0.00113832   -0.15404282
 Singles      0.01290658   -0.02135795   -0.02207768
 Pairs        0.06323497   -0.00000000   -0.01098585
 Total        1.07685159   -0.02249627   -0.18710635
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78904227
 Nuclear energy                         0.00000000
 Kinetic energy                         5.73239475
 One electron energy                  -32.55259572
 Two electron energy                   12.57644709
 Virial quotient                       -3.48478245
 Correlation energy                    -0.18710635
 !MRCI STATE 3.1 Energy               -19.976148626338

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.99052805 (Davidson, fixed reference)
 Cluster corrected energies           -19.99052805 (Davidson, relaxed reference)
 Cluster corrected energies           -19.99052805 (Davidson, rotated reference)

 Cluster corrected energies           -19.98735076 (Pople, fixed reference)
 Cluster corrected energies           -19.98735076 (Pople, relaxed reference)
 Cluster corrected energies           -19.98735076 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96365610 (fixed)   0.96365610 (relaxed)   0.96365610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071004   -0.00113832   -0.15404282
 Singles      0.01290658   -0.02135795   -0.02207768
 Pairs        0.06323497    0.00000000   -0.01098585
 Total        1.07685159   -0.02249627   -0.18710635
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78904227
 Nuclear energy                         0.00000000
 Kinetic energy                         5.73239475
 One electron energy                  -32.55259572
 Two electron energy                   12.57644710
 Virial quotient                       -3.48478245
 Correlation energy                    -0.18710635
 !MRCI STATE 4.1 Energy               -19.976148626332

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.99052805 (Davidson, fixed reference)
 Cluster corrected energies           -19.99052805 (Davidson, relaxed reference)
 Cluster corrected energies           -19.99052805 (Davidson, rotated reference)

 Cluster corrected energies           -19.98735076 (Pople, fixed reference)
 Cluster corrected energies           -19.98735076 (Pople, relaxed reference)
 Cluster corrected energies           -19.98735076 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96365610 (fixed)   0.96365610 (relaxed)   0.96365610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071004   -0.00113832   -0.15404282
 Singles      0.01290655   -0.02135795   -0.02207768
 Pairs        0.06323498   -0.00000000   -0.01098585
 Total        1.07685158   -0.02249627   -0.18710635
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78904227
 Nuclear energy                         0.00000000
 Kinetic energy                         5.73239474
 One electron energy                  -32.55259542
 Two electron energy                   12.57644679
 Virial quotient                       -3.48478246
 Correlation energy                    -0.18710635
 !MRCI STATE 5.1 Energy               -19.976148626328

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.99052805 (Davidson, fixed reference)
 Cluster corrected energies           -19.99052805 (Davidson, relaxed reference)
 Cluster corrected energies           -19.99052805 (Davidson, rotated reference)

 Cluster corrected energies           -19.98735076 (Pople, fixed reference)
 Cluster corrected energies           -19.98735076 (Pople, relaxed reference)
 Cluster corrected energies           -19.98735076 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.68892535 (fixed)   0.96365610 (relaxed)   0.96365610 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00071004   -0.00113832   -0.15404283
 Singles      0.01290655   -0.02135794   -0.02207768
 Pairs        0.06323499   -0.00000000   -0.01098585
 Total        1.07685159   -0.02249627   -0.18710635
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78904227
 Nuclear energy                         0.00000000
 Kinetic energy                         5.73239481
 One electron energy                  -32.55259554
 Two electron energy                   12.57644691
 Virial quotient                       -3.48478242
 Correlation energy                    -0.18710635
 !MRCI STATE 6.1 Energy               -19.976148626291

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.99052805 (Davidson, fixed reference)
 Cluster corrected energies           -19.99052805 (Davidson, relaxed reference)
 Cluster corrected energies           -19.99052805 (Davidson, rotated reference)

 Cluster corrected energies           -19.98735076 (Pople, fixed reference)
 Cluster corrected energies           -19.98735076 (Pople, relaxed reference)
 Cluster corrected energies           -19.98735076 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96415360 (fixed)   0.96575097 (relaxed)   0.96574978 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085872   -0.00138731   -0.00170378
 Singles      0.01177544   -0.02202463   -0.02255225
 Pairs        0.05955339   -0.15935404   -0.15879221
 Total        1.07218755   -0.18276597   -0.18304825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.77973105
 Nuclear energy                         0.00000000
 Kinetic energy                         5.65561794
 One electron energy                  -31.93491874
 Two electron energy                   11.97236847
 Virial quotient                       -3.52968508
 Correlation energy                    -0.18281923
 !MRCI STATE 7.1 Energy               -19.962550272626

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.97574755 (Davidson, fixed reference)
 Cluster corrected energies           -19.97574706 (Davidson, relaxed reference)
 Cluster corrected energies           -19.97574755 (Davidson, rotated reference)

 Cluster corrected energies           -19.97280808 (Pople, fixed reference)
 Cluster corrected energies           -19.97280770 (Pople, relaxed reference)
 Cluster corrected energies           -19.97280808 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       12.56       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.14      5.03      0.30      0.03      0.49
 REAL TIME  *         8.33 SEC
 DISK USED  *        44.53 MB (local),      587.18 MB (total)
 SF USED    *       101.82 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -20.05931652  AU                              
 SETTING HLSDIAG(2)     =       -19.99052805  AU                              
 SETTING HLSDIAG(3)     =       -19.99052805  AU                              
 SETTING HLSDIAG(4)     =       -19.99052805  AU                              
 SETTING HLSDIAG(5)     =       -19.99052805  AU                              
 SETTING HLSDIAG(6)     =       -19.99052805  AU                              
 SETTING HLSDIAG(7)     =       -19.97574755  AU                              


        HLSDIAG
    -20.05931652
    -19.99052805
    -19.99052805
    -19.99052805
    -19.99052805
    -19.99052805
    -19.97574755
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:    -20.044206    -19.976149    -19.976149    -19.976149    -19.976149    -19.976149    -19.962550
 Replaced energies:    -20.059317    -19.990528    -19.990528    -19.990528    -19.990528    -19.990528    -19.975748



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -20.05931652

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.00   15097.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.16      -0.00       0.00       0.00      -0.00       7.28

    3   3.1  0.5  0.5       0.00       0.00   15097.33       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       4.16       0.00       0.00       0.00       0.00      -7.28       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   15097.33       0.00       0.00       0.00      -0.00       7.12      -0.00
                           -0.00       0.00      -4.16      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   15097.33       0.00       0.00       0.00       0.00       4.16
                            0.00       0.16      -0.00       0.00       0.00       8.31       0.00       0.00      -0.00      -0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   15097.33       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -8.31      -0.00       0.00       0.00      -0.00       4.02

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   18341.27      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

    8   1.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

    9   2.1  0.5 -0.5      -0.00       0.00       0.00       7.12       0.00       0.00       0.00       0.00   15097.33       0.00
                            0.00       0.00       7.28       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   10   3.1  0.5 -0.5       0.00      -0.00       0.00      -0.00       4.16       0.00      -0.00       0.00       0.00   15097.33
                            0.00      -7.28      -0.00      -0.00       0.00      -4.02       0.00       0.00       0.00      -0.00

   11   4.1  0.5 -0.5       0.00      -7.12       0.00      -0.00       0.00       4.29       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       4.16      -0.00      -0.00       0.00      -0.00       4.16

   12   5.1  0.5 -0.5      -0.00      -0.00      -4.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -4.16       0.00      -0.00      -0.00      -0.00      -0.16       0.00

   13   6.1  0.5 -0.5       0.00      -0.00      -0.00      -4.29      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       4.02       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   14   7.1  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

    2   2.1  0.5  0.5      -7.12      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00

    3   3.1  0.5  0.5       0.00      -4.16      -0.00       0.00
                           -0.00       0.00      -4.02       0.00

    4   4.1  0.5  0.5      -0.00      -0.00      -4.29      -0.00
                           -0.00       4.16      -0.00      -0.00

    5   5.1  0.5  0.5       0.00       0.00      -0.00      -0.00
                           -4.16      -0.00      -0.00      -0.00

    6   6.1  0.5  0.5       4.29       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

    7   7.1  0.5  0.5       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.16       0.00      -0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -4.16      -0.00      -0.00      -0.00

   11   4.1  0.5 -0.5   15097.33       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

   12   5.1  0.5 -0.5       0.00   15097.33       0.00       0.00
                           -0.00      -0.00      -8.31      -0.00

   13   6.1  0.5 -0.5       0.00       0.00   15097.33       0.00
                           -0.00       8.31       0.00      -0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   18341.27
                            0.00       0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -20.05931652     0.00000000        0.00      0.00000000        0.00      0.0000
     2   -20.05931652     0.00000000        0.00      0.00000000        0.00      0.0000
     3   -19.99058486     0.06873166    15084.86      0.06873166    15084.86      1.8703
     4   -19.99058486     0.06873166    15084.86      0.06873166    15084.86      1.8703
     5   -19.99058486     0.06873167    15084.86      0.06873167    15084.86      1.8703
     6   -19.99058486     0.06873167    15084.86      0.06873167    15084.86      1.8703
     7   -19.99049017     0.06882635    15105.64      0.06882635    15105.64      1.8729
     8   -19.99049017     0.06882635    15105.64      0.06882635    15105.64      1.8729
     9   -19.99049017     0.06882635    15105.64      0.06882635    15105.64      1.8729
    10   -19.99049017     0.06882635    15105.64      0.06882635    15105.64      1.8729
    11   -19.99049017     0.06882635    15105.64      0.06882635    15105.64      1.8729
    12   -19.99049017     0.06882635    15105.64      0.06882635    15105.64      1.8729
    13   -19.97574755     0.08356898    18341.27      0.08356898    18341.27      2.2740
    14   -19.97574755     0.08356898    18341.27      0.08356898    18341.27      2.2740


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   0.000000000   1.000000000  -0.000000001   0.000000002   0.000000000   0.000000001   0.000000001  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5   0.000000000  -0.000000000  -0.364261306   0.516923654  -0.000456677  -0.010181992   0.000905813  -0.000294556
                        -0.000000000   0.000000000   0.000000014   0.000000007   0.000000022   0.000000002  -0.000000002  -0.000000002

    3    3.1  0.5  0.5   0.000000001   0.000000000  -0.448561597  -0.316088528   0.313711246  -0.014070719  -0.194303595  -0.597540691
                         0.000000000   0.000000000  -0.002199018  -0.001549589   0.016054172  -0.000720096   0.011722779   0.036051129

    4    4.1  0.5  0.5  -0.000000001  -0.000000000   0.002190743   0.001543783   0.016236442  -0.000728236   0.011827633   0.036373594
                         0.000000003   0.000000000  -0.446876748  -0.314901248  -0.317273044   0.014230500   0.196041547   0.602885434

    5    5.1  0.5  0.5   0.000000000   0.000000000  -0.000000015  -0.000000015   0.000000015  -0.000000052   0.000000020   0.000000027
                        -0.000000000  -0.000000001   0.001187383  -0.001684992   0.028338180   0.631808352  -0.315233880   0.102505280

    6    6.1  0.5  0.5  -0.000000000   0.000000000   0.005870907  -0.008331437  -0.028335580  -0.631750376   0.286098904  -0.093031390
                         0.000000000   0.000000000  -0.000000015  -0.000000015   0.000000015  -0.000000053   0.000000012   0.000000009

    7    7.1  0.5  0.5  -0.000000000   0.000000000   0.000000001  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    8    1.1  0.5 -0.5  -0.383369752   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.923594951  -0.000000000   0.000000002   0.000000001   0.000000001  -0.000000000  -0.000000000  -0.000000001

    9    2.1  0.5 -0.5   0.000000000   0.000000000  -0.002534116  -0.001785738   0.000520385  -0.000023361  -0.000017740  -0.000054548
                        -0.000000000  -0.000000000   0.516917442   0.364256929  -0.010168676   0.000456076  -0.000294020  -0.000904174

   10    3.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000005   0.000000001  -0.000000026   0.000000024   0.000000031   0.000000034
                         0.000000000  -0.000000001  -0.316092325   0.448566983  -0.014089136  -0.314121771  -0.598627228   0.194656906

   11    4.1  0.5 -0.5   0.000000000  -0.000000003  -0.314905034   0.446882122   0.014249118   0.317688214   0.603981696  -0.196398017
                         0.000000000  -0.000000000   0.000000019   0.000000014   0.000000011   0.000000029   0.000000034   0.000000036

   12    5.1  0.5 -0.5  -0.000000001   0.000000000  -0.001684981  -0.001187372   0.630982659  -0.028301145   0.102319229   0.314661715
                        -0.000000000  -0.000000000  -0.000008275  -0.000005806   0.032290530  -0.001448328  -0.006173145  -0.018984333

   13    6.1  0.5 -0.5  -0.000000000  -0.000000000   0.000040828   0.000028796   0.032287567  -0.001448195  -0.005602616  -0.017229734
                         0.000000000  -0.000000000  -0.008331328  -0.005870834  -0.630924758   0.028298548  -0.092862535  -0.285579619

   14    7.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5  -0.000000000  -0.000000002   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5   0.114577507   0.764529697   0.048630176   0.000539631   0.000000000  -0.000000000
                        -0.000000031  -0.000000001  -0.000000024   0.000000008   0.000000000  -0.000000000

    3    3.1  0.5  0.5   0.444458665  -0.066609540  -0.000347216   0.031290321  -0.000000000  -0.000000000
                         0.024635990  -0.003692129   0.000147346  -0.013278363   0.000000002   0.000000000

    4    4.1  0.5  0.5  -0.024268255   0.003637020  -0.000026921   0.002428571  -0.000000001  -0.000000000
                         0.437824274  -0.065615251  -0.000063476   0.005722632  -0.000000000  -0.000000000

    5    5.1  0.5  0.5   0.000000040   0.000000004   0.000000174   0.000000000   0.000000000  -0.000000000
                        -0.004973884  -0.033188332   0.699245842   0.007760153  -0.000000000   0.000000000

    6    6.1  0.5  0.5  -0.006696846  -0.044684997   0.712301319   0.007905043  -0.000000000   0.000000000
                        -0.000000039  -0.000000006  -0.000000178   0.000000007  -0.000000000   0.000000000

    7    7.1  0.5  0.5   0.000000000   0.000000001  -0.000000000  -0.000000000  -0.288174495   0.956745038
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.028873358   0.027581183

    8    1.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000002   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    9    2.1  0.5 -0.5  -0.042312321   0.006341235  -0.000210787   0.018997038  -0.000000000  -0.000000000
                         0.763357922  -0.114401896  -0.000496746   0.044766221  -0.000000000  -0.000000000

   10    3.1  0.5 -0.5  -0.000000017  -0.000000002  -0.000000016   0.000000012   0.000000000  -0.000000000
                        -0.066711786  -0.445140925  -0.033991115  -0.000377194  -0.000000000   0.000000002

   11    4.1  0.5 -0.5  -0.065715975  -0.438496340  -0.006216582  -0.000068956  -0.000000000   0.000000001
                         0.000000018  -0.000000001   0.000000008   0.000000003  -0.000000000   0.000000000

   12    5.1  0.5 -0.5  -0.033137526   0.004966269  -0.007143565   0.643686822   0.000000000   0.000000000
                        -0.001836995   0.000275289   0.003031413  -0.273152006  -0.000000000  -0.000000000

   13    6.1  0.5 -0.5   0.002473271  -0.000370648  -0.003088020   0.278251968   0.000000000   0.000000000
                        -0.044616575   0.006686588  -0.007276939   0.655704967   0.000000000   0.000000000

   14    7.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.953920549   0.289599721
                         0.000000001  -0.000000000   0.000000000  -0.000000000   0.078468950   0.003195589


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  13.269%  26.721%   0.000%   0.010%   0.000%   0.000%   1.313%  58.451%
    3    3.1  0.5  0.5   0.000%   0.000%  20.121%   9.991%   9.867%   0.020%   3.789%  35.835%  19.815%   0.445%
    4    4.1  0.5  0.5   0.000%   0.000%  19.970%   9.917%  10.093%   0.020%   3.857%  36.479%  19.228%   0.432%
    5    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.080%  39.918%   9.937%   1.051%   0.002%   0.110%
    6    6.1  0.5  0.5   0.000%   0.000%   0.003%   0.007%   0.080%  39.911%   8.185%   0.865%   0.004%   0.200%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%  26.721%  13.269%   0.010%   0.000%   0.000%   0.000%  58.451%   1.313%
   10    3.1  0.5 -0.5   0.000%   0.000%   9.991%  20.121%   0.020%   9.867%  35.835%   3.789%   0.445%  19.815%
   11    4.1  0.5 -0.5   0.000%   0.000%   9.917%  19.970%   0.020%  10.093%  36.479%   3.857%   0.432%  19.228%
   12    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  39.918%   0.080%   1.051%   9.937%   0.110%   0.002%
   13    6.1  0.5 -0.5   0.000%   0.000%   0.007%   0.003%  39.911%   0.080%   0.865%   8.185%   0.200%   0.004%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.236%   0.000%   0.000%   0.000%
    3    3.1  0.5  0.5   0.000%   0.116%   0.000%   0.000%
    4    4.1  0.5  0.5   0.000%   0.004%   0.000%   0.000%
    5    5.1  0.5  0.5  48.894%   0.006%   0.000%   0.000%
    6    6.1  0.5  0.5  50.737%   0.006%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%   8.388%  91.612%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.236%   0.000%   0.000%
   10    3.1  0.5 -0.5   0.116%   0.000%   0.000%   0.000%
   11    4.1  0.5 -0.5   0.004%   0.000%   0.000%   0.000%
   12    5.1  0.5 -0.5   0.006%  48.894%   0.000%   0.000%
   13    6.1  0.5 -0.5   0.006%  50.737%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%  91.612%   8.388%


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
              1      21       31.88       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       12.56       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.92      4.77      5.03      0.30      0.03      0.49
 REAL TIME  *        13.72 SEC
 DISK USED  *        44.53 MB (local),      587.18 MB (total)
 SF USED    *       101.82 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -19.975747545300

              CI           MULTI         RHF-SCF
    -19.96255027    -19.77950203    -19.72442151
 **********************************************************************************************************************************
 Molpro calculation terminated
