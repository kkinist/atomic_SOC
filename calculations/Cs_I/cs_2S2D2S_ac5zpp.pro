
 Working directory              : /wrk/irikura/molpro.y38hBv5RoU/
 Global scratch directory       : /wrk/irikura/molpro.y38hBv5RoU/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.y38hBv5RoU/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Cs SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Cs};
 
                                                                                 ! start with smaller basis, to get orbitals
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
 
 basis=aug-cc-pwCV5Z-PP
 
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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cs SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 04-Mar-24          TIME: 10:04:46  
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

     11.272 MB (compressed) written to integral file ( 16.3%)

     Node minimum: 0.524 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     312474.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     312474      RECORD LENGTH: 524288

 Memory used in sort:       0.87 MW

 SORT1 READ     8662933. AND WROTE       63341. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     48 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      311578.  Node maximum:      314862. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.80       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.67      0.47
 REAL TIME  *         1.24 SEC
 DISK USED  *        29.14 MB (local),      402.48 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   1   3

 NELEC=    8   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -19.72397554     -19.72397554     0.00D+00     0.90D-01     0     0       0.00      0.00    start
   2      -19.72440879      -0.00043324     0.10D-02     0.15D-02     1     0       0.00      0.00    diag
   3      -19.72442110      -0.00001232     0.20D-03     0.23D-02     2     0       0.01      0.01    diag
   4      -19.72442151      -0.00000040     0.31D-04     0.29D-03     3     0       0.00      0.01    diag
   5      -19.72442151      -0.00000000     0.92D-06     0.52D-05     4     0       0.00      0.01    diag
   6      -19.72442151      -0.00000000     0.26D-07     0.28D-06     5     0       0.00      0.01    diag
   7      -19.72442151       0.00000000     0.15D-08     0.10D-07     0     0       0.01      0.02    diag

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
 CPU TIMES  *         0.70      0.02      0.47
 REAL TIME  *         2.09 SEC
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.280D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.268D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.202D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.202D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 2 6 4 1 3 5   6 4 2 1 3 5 6 4 2 1   3 5 6 4 2 1 5 3 6 4   2 1 5 3 6 4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.105D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.141D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.385D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 2 1 3 1   2 3 7 9 4 510 8 6 1   2 3 6 4 510 8 7 9 8  10 4 5 7 9 6 1 2 3 6
                                        7 910 4 5 8 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  385  ( 7 closed/active, 168 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    434
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0    -19.79652882     -19.79677568   -0.00024685    0.02035764 0.00000224 0.00000000  0.41E-01      0.17
   2   10   10    0    -19.79677585     -19.79677586   -0.00000000    0.00004053 0.00000001 0.00000000  0.35E-03      0.35

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.80E-08)
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
 !MCSCF STATE 2.1 Energy                       -19.789042271439
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58775617
 One electron energy                           -32.62399727
 Two electron energy                            12.83495499
 Virial ratio                                    4.54150068
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -19.789042271435
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
 !MCSCF STATE 5.1 Energy                       -19.789042271378
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58775617
 One electron energy                           -32.62399726
 Two electron energy                            12.83495499
 Virial ratio                                    4.54150068
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                       -19.789042271373
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
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     3.742168545952
 !MCSCF expec                      <3.1|LXLX|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     1.000000000000
 !MCSCF expec                      <6.1|LXLX|6.1>     0.257831388891
 !MCSCF expec                      <7.1|LXLX|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.278247420266
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     4.000000000000
 !MCSCF expec                      <6.1|LYLY|6.1>     3.721752512230
 !MCSCF expec                      <7.1|LYLY|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     1.979584033782
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.000000000000
 !MCSCF expec                      <6.1|LZLZ|6.1>     2.020416098879
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 1 6 4 3 1 2 6 5   3 4 2 1 6 5 3 4 2 1   4 6 5 3 2 1 3 5 4 6   2 1 3 5 6 4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 1 3 2 1   2 3 4 510 7 9 8 6 1   3 2 6 5 410 8 9 7 8  10 5 6 4 9 7 2 1 3 6
                                        5 8 410 7 9 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.34691     1  1  s    1.00567
    2.1     0.14286     0.03798     1  1  d2+  0.92806
    3.1     0.14286     0.01660     1  2  s   -0.67267    1  3  s   -0.25518    1  5  s   -1.03511    1  8  s    2.13780
    4.1     0.14286     0.03798     1  1  d1-  0.92806
    5.1     0.14286     0.03798     1  1  d1+  0.92806
    6.1     0.14286     0.03798     1  1  d2-  0.92806
    7.1     0.14286    -0.01719     1  2  s    0.98655
    8.1     0.14286     0.03798     1  1  d0   0.92806
    1.2     2.00000    -0.70838     1  1  px   1.00075
    2.2     2.00000    -0.70838     1  1  pz   1.00075
    3.2     2.00000    -0.70838     1  1  py   1.00075
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 000a000        0.00000000     -0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000      0.00000000
 0000a00        0.00000000      0.00000000      0.00000000      1.00000000     -0.00000000      0.00000000      0.00000000
 00a0000        0.00000000     -0.00000000      1.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 00000a0        0.99999145      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00413435
 0a00000       -0.00413435     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.99999145
 a000000       -0.00000000      0.70348846      0.00000000     -0.00000000      0.00000000      0.71070668     -0.00000000
 000000a       -0.00000000      0.71070668      0.00000000     -0.00000000      0.00000000     -0.70348846      0.00000000
 
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
 CPU TIMES  *         1.08      0.39      0.02      0.47
 REAL TIME  *         2.60 SEC
 DISK USED  *        32.66 MB (local),      444.72 MB (total)
 SF USED    *         8.93 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


        ENERGY      LL
    -19.85271761  -0.0
    -19.78904227   6.0
    -19.78904227   6.0
    -19.78904227   6.0
    -19.78904227   6.0
    -19.78904227   6.0
    -19.77950203  -0.0
                                                  
 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Cs   ECP ECP46MDF                 selected for group  1
 Library entry CS     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CS     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CS     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CS     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CS     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CS     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         337
 NUMBER OF SYMMETRY AOS:          247
 NUMBER OF CONTRACTIONS:          213   (  101Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.490E-04 0.360E-03 0.825E-03 0.251E-02 0.331E-02 0.331E-02 0.331E-02 0.331E-02
         2 0.835E-03 0.835E-03 0.835E-03 0.219E-02 0.219E-02 0.219E-02 0.140E-01 0.140E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     234.095 MB (compressed) written to integral file ( 12.9%)

     Node minimum: 15.991 MB, node maximum: 23.855 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   10920087.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   10920087      RECORD LENGTH: 524288

 Memory used in sort:      11.48 MW

 SORT1 READ   226482739. AND WROTE     1837487. INTEGRALS IN      6 RECORDS. CPU TIME:     1.04 SEC, REAL TIME:     1.07 SEC
 SORT2 READ    23222928. AND WROTE   131080516. INTEGRALS IN    972 RECORDS. CPU TIME:     0.21 SEC, REAL TIME:     0.24 SEC

 Node minimum:    10913395.  Node maximum:    10938414. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.81       500      610      700      900      950      970     1001      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       6        0.91       700     1000      520     2100     2140     1001   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    BASIS   

 PROGRAMS   *        TOTAL       INT     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.72      3.63      0.39      0.02      0.47
 REAL TIME  *         6.72 SEC
 DISK USED  *        32.66 MB (local),      861.42 MB (total)
 SF USED    *         8.93 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:     202 (   93  109)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Present basis size:      101  112
 Previous basis size:      38   49
 Previous occupation:       8    3
 Previous closed-shells:    1    3
 Present occupation:        8    3
 Present closed-shells:     1    3
 Wavefunction symmetry:    1   Doublet 

 Orbital overlap <old|new>:  < 1.1| 1.1> = 1.000000   < 1.2| 1.2> = 1.000000   < 2.2| 2.2> = 1.000000   < 3.2| 3.2> = 1.000000
                             < 2.1| 2.1> = 0.999958   < 3.1| 3.1> = 0.999970   < 4.1| 4.1> = 0.999958   < 5.1| 5.1> = 0.999958
                             < 6.1| 6.1> = 0.999958   < 7.1| 7.1> = 1.000000   < 8.1| 8.1> = 0.999958


 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 1 6 4 3 1 2 2 4   5 3 6 1 2 4 5 3 612  1114 9 713 81510 1 7   91513 911121014 4 5
                                        3 2 614131211 7 9 8  1510 1 4 5 3 2 61014   812 81113 715 1 4 2   5 3 6 1 2 4 3 5 6 6
                                        3 5 4 2 9121315 8 7  101114 1 3 6 4 5 2 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 8 4 9 7 5 610   2 3 1 9 5 6 710 8 7   2 3 110 4 7 6 8 5 9  15192114161718121320
                                       11 2 3 1 6 5 8 910 7   4211114182017121613  191510 5 9 4 6 8 7 1   3 21618171513112120
                                       121419 2 3 1 2 3 1 1   3 2 6 9 410 4 8 510   4 9 7 6 8 5 2 3 1 2   3 1

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  1078  ( 7 closed/active, 420 closed/virtual, 0 active/active, 651 active/virtual )
 Total number of variables:    1127
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0    -19.79681676     -19.79701827   -0.00020151    0.00690397 0.00000016 0.00000000  0.13E+00      0.52
   2    5    5    0    -19.79701827     -19.79701827   -0.00000000    0.00000087 0.00000001 0.00000000  0.24E-05      0.99

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.60E-08)
                       Final energy:    -19.79701827
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -19.852724727544
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.55360416
 One electron energy                           -32.87648956
 Two electron energy                            13.02376483
 Virial ratio                                    4.57474608
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -19.789356303392
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58748609
 One electron energy                           -32.62660314
 Two electron energy                            12.83724684
 Virial ratio                                    4.54172807
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -19.789356303392
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58748609
 One electron energy                           -32.62660314
 Two electron energy                            12.83724684
 Virial ratio                                    4.54172807
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                       -19.789356303392
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58748609
 One electron energy                           -32.62660314
 Two electron energy                            12.83724684
 Virial ratio                                    4.54172807
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                       -19.789356303392
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58748609
 One electron energy                           -32.62660314
 Two electron energy                            12.83724684
 Virial ratio                                    4.54172807
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                       -19.789356303392
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.58748609
 One electron energy                           -32.62660314
 Two electron energy                            12.83724684
 Virial ratio                                    4.54172807
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                       -19.779621648107
 Nuclear energy                                  0.00000000
 Kinetic energy                                  5.49596710
 One electron energy                           -32.03392534
 Two electron energy                            12.25430369
 Virial ratio                                    4.59893378
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     2.865182371760
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     1.000000000000
 !MCSCF expec                      <6.1|LXLX|6.1>     1.134842223374
 !MCSCF expec                      <7.1|LXLX|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     3.129008826190
 !MCSCF expec                      <3.1|LYLY|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     1.000000000000
 !MCSCF expec                      <6.1|LYLY|6.1>     0.870968656483
 !MCSCF expec                      <7.1|LYLY|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.005808802050
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     4.000000000000
 !MCSCF expec                      <6.1|LZLZ|6.1>     3.994189120144
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 1 6 4 3 1 5 4 3   5 2 6 1 4 3 5 2 6 1   4 3 5 2 6 913101415  12 8 711 4 3 5 2 6 1
                                        91310151412 8 711 4   5 3 2 6 1 913101514  12 8 711 4 5 3 2 6 1   91310151412 8 711 4
                                        5 3 2 6 1 913101415  12 8 711 4 5 3 2 6 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 1   3 2 4 9 7 810 6 5 1   3 21118201517141613  211912 4 7 9 810 6 5
                                        1 3 2 4 7 910 8 6 5  11201815171416132119  12 1 3 2 4 7 910 8 6   5 4 7 910 8 6 51120
                                       181517141613211912 1   3 2 4 7 910 8 6 5 4   9 710 8 6 5 1 3 2 1   3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.34686     1  1  s    0.99867
    2.1     0.14286     0.03825     1  1  d0   0.31897    1  3  d0   0.39317
    3.1     0.14286     0.01600     1  4  s   -1.17775    1  5  s    0.38068    1  6  s   -0.88027    1 11  s    1.88628
    4.1     0.14286     0.03825     1  1  d1-  0.31897    1  3  d1-  0.39317
    5.1     0.14286     0.03825     1  1  d1+  0.31897    1  3  d1+  0.39317
    6.1     0.14286     0.03825     1  1  d2-  0.31897    1  3  d2-  0.39317
    7.1     0.14286    -0.01696     1  1  s   -0.27084    1  3  s    0.34606    1  4  s    0.47003    1  5  s    0.41298
    8.1     0.14286     0.03825     1  1  d2+  0.31897    1  3  d2+  0.39317
    1.2     2.00000    -0.70831     1  1  px   1.00019
    2.2     2.00000    -0.70831     1  1  pz   1.00019
    3.2     2.00000    -0.70831     1  1  py   1.00019
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 000a000        0.00000000      0.00000000      1.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0000a00        0.00000000      0.00000000      0.00000000      0.00000000      1.00000000      0.00000000      0.00000000
 00a0000        0.00000000      0.00000000      0.00000000      1.00000000      0.00000000      0.00000000      0.00000000
 0a00000       -0.00405025     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.99999180
 00000a0        0.99999180     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00405025
 000000a        0.00000000     -0.03810775      0.00000000      0.00000000      0.00000000      0.99927364      0.00000000
 a000000       -0.00000000      0.99927364      0.00000000      0.00000000      0.00000000      0.03810775      0.00000000
 
 Energy:      -19.85272473    -19.78935630    -19.78935630    -19.78935630    -19.78935630    -19.78935630    -19.77962165
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.12       500      610      700      900      950      970     1001      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7        1.62       700     1000      520     2100     2140     1001     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    BASIS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.86      1.14      3.63      0.39      0.02      0.47
 REAL TIME  *         8.13 SEC
 DISK USED  *        49.85 MB (local),        1.04 GB (total)
 SF USED    *        53.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -19.85272473  -0.0
    -19.78935630   6.0
    -19.78935630   6.0
    -19.78935630   6.0
    -19.78935630   6.0
    -19.78935630   6.0
    -19.77962165  -0.0
                                                  


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
 Number of external orbitals:     202 (  93 109 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -19.85272473
     2       -19.78935630
     3       -19.78935630
     4       -19.78935630
     5       -19.78935630
     6       -19.78935630
     7       -19.77962165

 Number of blocks in overlap matrix:   120   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     120
 Number of N-1 electron functions:     967

 Number of internal configurations:                 1281
 Number of singly external configurations:         96315
 Number of doubly external configurations:       1228484
 Total number of contracted configurations:      1326080
 Total number of uncontracted configurations:    2893877

 Diagonal Coupling coefficients finished.               Storage:    529558 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1127330 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -19.85272473    -0.00000000    -0.22672736  0.15D-01  0.70D-01     0.29
    1     2     2     1.00000000     0.00000000   -19.78935630    -0.00000000    -0.22111317  0.13D-01  0.68D-01     0.29
    1     3     3     1.00000000     0.00000000   -19.78935630     0.00000000    -0.22111496  0.13D-01  0.68D-01     0.29
    1     4     4     1.00000000     0.00000000   -19.78935630    -0.00000000    -0.22111966  0.13D-01  0.68D-01     0.29
    1     5     5     1.00000000     0.00000000   -19.78935630    -0.00000000    -0.22110678  0.13D-01  0.68D-01     0.29
    1     6     6     1.00000000     0.00000000   -19.78935630    -0.00000000    -0.22110748  0.13D-01  0.68D-01     0.29
    1     7     7     1.00000000     0.00000000   -19.77962165    -0.00000000    -0.21131432  0.12D-01  0.61D-01     0.29
    2     1     1     1.07647350    -0.21616980   -20.06889453    -0.21616980    -0.00450274  0.88D-03  0.10D-02     7.44
    2     2     2     1.07413640    -0.21292822   -20.00228452    -0.21292822    -0.00430900  0.11D-02  0.99D-03     7.44
    2     3     3     1.07413699    -0.21292624   -20.00228254    -0.21292624    -0.00431012  0.11D-02  0.99D-03     7.44
    2     4     4     1.07413891    -0.21292228   -20.00227858    -0.21292228    -0.00431419  0.11D-02  0.99D-03     7.44
    2     5     5     1.07413856    -0.21292190   -20.00227820    -0.21292190    -0.00431594  0.11D-02  0.10D-02     7.44
    2     6     6     1.07413951    -0.21292033   -20.00227663    -0.21292033    -0.00431589  0.11D-02  0.99D-03     7.44
    2     7     7     1.06992465    -0.20829675   -19.98791840    -0.20829675    -0.00379255  0.46D-03  0.87D-03     7.44
    3     1     1     1.08039235    -0.22106566   -20.07379039    -0.00489586    -0.00016237  0.16D-04  0.41D-04    14.68
    3     2     2     1.07877484    -0.21764598   -20.00700228    -0.00471776    -0.00018090  0.29D-04  0.49D-04    14.68
    3     3     3     1.07877447    -0.21764597   -20.00700227    -0.00471973    -0.00018083  0.28D-04  0.49D-04    14.68
    3     4     4     1.07877559    -0.21764587   -20.00700217    -0.00472359    -0.00018118  0.28D-04  0.49D-04    14.68
    3     5     5     1.07877370    -0.21764574   -20.00700204    -0.00472384    -0.00018109  0.28D-04  0.49D-04    14.68
    3     6     6     1.07877317    -0.21764572   -20.00700203    -0.00472539    -0.00018111  0.28D-04  0.49D-04    14.68
    3     7     7     1.07463773    -0.21251666   -19.99213831    -0.00421991    -0.00013845  0.11D-04  0.34D-04    14.68
    4     1     1     1.08127674    -0.22124726   -20.07397199    -0.00018159    -0.00000683  0.24D-05  0.13D-05    21.94
    4     2     2     1.07999336    -0.21785822   -20.00721453    -0.00021224    -0.00001333  0.12D-04  0.18D-05    21.94
    4     3     3     1.07999336    -0.21785821   -20.00721451    -0.00021224    -0.00001332  0.12D-04  0.18D-05    21.94
    4     4     4     1.07999336    -0.21785819   -20.00721450    -0.00021233    -0.00001333  0.12D-04  0.18D-05    21.94
    4     5     5     1.07999299    -0.21785818   -20.00721448    -0.00021244    -0.00001335  0.12D-04  0.18D-05    21.94
    4     6     6     1.07999293    -0.21785818   -20.00721448    -0.00021246    -0.00001335  0.12D-04  0.18D-05    21.94
    4     7     7     1.07525379    -0.21267172   -19.99229337    -0.00015506    -0.00000566  0.15D-05  0.12D-05    21.94
    5     1     1     1.08150787    -0.22125529   -20.07398001    -0.00000803    -0.00000034  0.11D-06  0.70D-07    29.09
    5     2     2     1.08054120    -0.21787665   -20.00723296    -0.00001843    -0.00000164  0.63D-06  0.38D-06    29.09
    5     3     3     1.08054097    -0.21787665   -20.00723296    -0.00001845    -0.00000164  0.63D-06  0.38D-06    29.09
    5     4     4     1.08054091    -0.21787665   -20.00723295    -0.00001846    -0.00000164  0.63D-06  0.38D-06    29.09
    5     5     5     1.08054094    -0.21787665   -20.00723295    -0.00001847    -0.00000164  0.63D-06  0.38D-06    29.09
    5     6     6     1.08054042    -0.21787665   -20.00723295    -0.00001847    -0.00000164  0.63D-06  0.38D-06    29.09
    5     7     7     1.07537809    -0.21267843   -19.99230008    -0.00000671    -0.00000030  0.11D-06  0.63D-07    29.09
    6     1     1     1.08154041    -0.22125570   -20.07398043    -0.00000041    -0.00000002  0.41D-08  0.34D-08    36.33
    6     2     2     1.08066379    -0.21787878   -20.00723508    -0.00000212    -0.00000014  0.39D-07  0.29D-07    36.33
    6     3     3     1.08066382    -0.21787878   -20.00723508    -0.00000212    -0.00000014  0.39D-07  0.29D-07    36.33
    6     4     4     1.08066374    -0.21787878   -20.00723508    -0.00000213    -0.00000014  0.39D-07  0.29D-07    36.33
    6     5     5     1.08066373    -0.21787878   -20.00723508    -0.00000213    -0.00000014  0.39D-07  0.29D-07    36.33
    6     6     6     1.08066367    -0.21787878   -20.00723508    -0.00000213    -0.00000014  0.39D-07  0.29D-07    36.33
    6     7     7     1.07540480    -0.21267881   -19.99230046    -0.00000038    -0.00000002  0.68D-08  0.34D-08    36.33
    7     1     1     1.08154511    -0.22125571   -20.07398044    -0.00000001    -0.00000001  0.12D-08  0.20D-08    42.60
    7     2     2     1.08068431    -0.21787893   -20.00723523    -0.00000015    -0.00000001  0.71D-08  0.18D-08    42.60
    7     3     3     1.08068431    -0.21787893   -20.00723523    -0.00000015    -0.00000001  0.71D-08  0.18D-08    42.60
    7     4     4     1.08068429    -0.21787893   -20.00723523    -0.00000015    -0.00000001  0.71D-08  0.18D-08    42.60
    7     5     5     1.08068428    -0.21787893   -20.00723523    -0.00000015    -0.00000001  0.71D-08  0.18D-08    42.60
    7     6     6     1.08068426    -0.21787893   -20.00723523    -0.00000015    -0.00000001  0.71D-08  0.18D-08    42.60
    7     7     7     1.07540959    -0.21267883   -19.99230048    -0.00000002    -0.00000000  0.35D-09  0.18D-09    42.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.6%   2.6%
 P   0.8%   8.3%  12.7%

 Initialization:   0.5%
 Other:           74.2%

 Total CPU:       42.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/00000222          -0.0567391   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9620651
 200/0000222           0.0000000   0.0000000  -0.0000000  -0.0000000   0.9616228   0.0000000  -0.0000000
 2000/000222          -0.0000000   0.0000000  -0.0000000   0.9616228  -0.0000000   0.0000000   0.0000000
 20000/00222          -0.0000000   0.9616228   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/000000222           0.0000000   0.0000000  -0.0038276   0.0000000   0.0000000   0.9616152  -0.0000000
 2000000/222          -0.0000000  -0.0000000   0.9616152  -0.0000000  -0.0000000   0.0038276  -0.0000000
 200000/0222           0.9595128   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0595936

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959735    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.052852
 2           0.000000    0.000000    0.000000    0.000000    0.961623   -0.000000    0.000000
 3           0.000000   -0.003828   -0.000000   -0.000000    0.000000    0.961615    0.000000
 4           0.000000    0.000000    0.961623   -0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.961623    0.000000   -0.000000    0.000000
 6          -0.000000    0.961615    0.000000    0.000000   -0.000000    0.003828    0.000000
 7           0.055697   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.962299

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961188   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.001348
 2          -0.000000    0.961623    0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.961623   -0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.961623   -0.000000    0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.961623    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.961623    0.000000
 7           0.001348   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.963908


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95973469 (fixed)   0.96118888 (relaxed)   0.96118793 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00078029   -0.00129650   -0.19591347
 Singles      0.01345589   -0.02384242   -0.02477834
 Pairs        0.06815285    0.01446867   -0.00056389
 Total        1.08238902   -0.01067026   -0.22125571
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.85249230
 Nuclear energy                         0.00000000
 Kinetic energy                         5.73765702
 One electron energy                  -32.79768711
 Two electron energy                   12.72370668
 Virial quotient                       -3.49863723
 Correlation energy                    -0.22148813
 !MRCI STATE 1.1 Energy               -20.073980435596

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -20.09222863 (Davidson, fixed reference)
 Cluster corrected energies           -20.09222816 (Davidson, relaxed reference)
 Cluster corrected energies           -20.09222863 (Davidson, rotated reference)

 Cluster corrected energies           -20.08823489 (Pople, fixed reference)
 Cluster corrected energies           -20.08823451 (Pople, relaxed reference)
 Cluster corrected energies           -20.08823489 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96162280 (fixed)   0.96162280 (relaxed)   0.96162280 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00067178   -0.00109645   -0.18148717
 Singles      0.01310633   -0.02176320   -0.02276747
 Pairs        0.06763218    0.00000000   -0.01362429
 Total        1.08141029   -0.02285966   -0.21787893
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78935630
 Nuclear energy                         0.00000000
 Kinetic energy                         5.77537623
 One electron energy                  -32.55379742
 Two electron energy                   12.54656218
 Virial quotient                       -3.46423063
 Correlation energy                    -0.21787893
 !MRCI STATE 2.1 Energy               -20.007235234792

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -20.02497282 (Davidson, fixed reference)
 Cluster corrected energies           -20.02497282 (Davidson, relaxed reference)
 Cluster corrected energies           -20.02497282 (Davidson, rotated reference)

 Cluster corrected energies           -20.02108423 (Pople, fixed reference)
 Cluster corrected energies           -20.02108423 (Pople, relaxed reference)
 Cluster corrected energies           -20.02108423 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96161518 (fixed)   0.96162280 (relaxed)   0.96162280 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00067178   -0.00109645   -0.18148716
 Singles      0.01310634   -0.02176321   -0.02276748
 Pairs        0.06763217   -0.00000000   -0.01362429
 Total        1.08141029   -0.02285966   -0.21787893
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78935630
 Nuclear energy                         0.00000000
 Kinetic energy                         5.77537630
 One electron energy                  -32.55379753
 Two electron energy                   12.54656229
 Virial quotient                       -3.46423059
 Correlation energy                    -0.21787893
 !MRCI STATE 3.1 Energy               -20.007235234767

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -20.02497282 (Davidson, fixed reference)
 Cluster corrected energies           -20.02497282 (Davidson, relaxed reference)
 Cluster corrected energies           -20.02497282 (Davidson, rotated reference)

 Cluster corrected energies           -20.02108424 (Pople, fixed reference)
 Cluster corrected energies           -20.02108424 (Pople, relaxed reference)
 Cluster corrected energies           -20.02108424 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96162281 (fixed)   0.96162281 (relaxed)   0.96162281 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00067178   -0.00109645   -0.18148718
 Singles      0.01310630   -0.02176319   -0.02276747
 Pairs        0.06763219   -0.00000000   -0.01362428
 Total        1.08141027   -0.02285965   -0.21787893
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78935630
 Nuclear energy                         0.00000000
 Kinetic energy                         5.77537626
 One electron energy                  -32.55379717
 Two electron energy                   12.54656193
 Virial quotient                       -3.46423061
 Correlation energy                    -0.21787893
 !MRCI STATE 4.1 Energy               -20.007235234743

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -20.02497282 (Davidson, fixed reference)
 Cluster corrected energies           -20.02497282 (Davidson, relaxed reference)
 Cluster corrected energies           -20.02497282 (Davidson, rotated reference)

 Cluster corrected energies           -20.02108423 (Pople, fixed reference)
 Cluster corrected energies           -20.02108423 (Pople, relaxed reference)
 Cluster corrected energies           -20.02108423 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96162281 (fixed)   0.96162281 (relaxed)   0.96162281 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00067178   -0.00109645   -0.18148719
 Singles      0.01310629   -0.02176318   -0.02276747
 Pairs        0.06763220    0.00000000   -0.01362427
 Total        1.08141027   -0.02285964   -0.21787893
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78935630
 Nuclear energy                         0.00000000
 Kinetic energy                         5.77537627
 One electron energy                  -32.55379716
 Two electron energy                   12.54656192
 Virial quotient                       -3.46423061
 Correlation energy                    -0.21787893
 !MRCI STATE 5.1 Energy               -20.007235234739

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -20.02497282 (Davidson, fixed reference)
 Cluster corrected energies           -20.02497282 (Davidson, relaxed reference)
 Cluster corrected energies           -20.02497282 (Davidson, rotated reference)

 Cluster corrected energies           -20.02108423 (Pople, fixed reference)
 Cluster corrected energies           -20.02108423 (Pople, relaxed reference)
 Cluster corrected energies           -20.02108423 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96161520 (fixed)   0.96162282 (relaxed)   0.96162282 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00067178   -0.00109645   -0.18148720
 Singles      0.01310626   -0.02176319   -0.02276746
 Pairs        0.06763220    0.00000000   -0.01362427
 Total        1.08141024   -0.02285964   -0.21787893
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.78935630
 Nuclear energy                         0.00000000
 Kinetic energy                         5.77537642
 One electron energy                  -32.55379697
 Two electron energy                   12.54656173
 Virial quotient                       -3.46423052
 Correlation energy                    -0.21787893
 !MRCI STATE 6.1 Energy               -20.007235234656

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -20.02497281 (Davidson, fixed reference)
 Cluster corrected energies           -20.02497281 (Davidson, relaxed reference)
 Cluster corrected energies           -20.02497281 (Davidson, rotated reference)

 Cluster corrected energies           -20.02108423 (Pople, fixed reference)
 Cluster corrected energies           -20.02108423 (Pople, relaxed reference)
 Cluster corrected energies           -20.02108423 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96229860 (fixed)   0.96390907 (relaxed)   0.96390813 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00081731   -0.00133917   -0.00171156
 Singles      0.01179949   -0.02254612   -0.02327977
 Pairs        0.06367173   -0.18846440   -0.18768750
 Total        1.07628854   -0.21234969   -0.21267883
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -19.77985407
 Nuclear energy                         0.00000000
 Kinetic energy                         5.69497659
 One electron energy                  -31.92035514
 Two electron energy                   11.92805466
 Virial quotient                       -3.51051496
 Correlation energy                    -0.21244640
 !MRCI STATE 7.1 Energy               -19.992300477250

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -20.00850770 (Davidson, fixed reference)
 Cluster corrected energies           -20.00850726 (Davidson, relaxed reference)
 Cluster corrected energies           -20.00850770 (Davidson, rotated reference)

 Cluster corrected energies           -20.00492307 (Pople, fixed reference)
 Cluster corrected energies           -20.00492271 (Pople, relaxed reference)
 Cluster corrected energies           -20.00492307 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.12       500      610      700      900      950      970     1001      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8       73.98       700     1000      520     2100     2140     1001     2141     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    BASIS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT     MULTI   RHF-SCF       INT
 CPU TIMES  *        50.03     44.16      1.14      3.63      0.39      0.02      0.47
 REAL TIME  *        55.76 SEC
 DISK USED  *       122.20 MB (local),        1.89 GB (total)
 SF USED    *       581.96 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -20.09222863  AU                              
 SETTING HLSDIAG(2)     =       -20.02497282  AU                              
 SETTING HLSDIAG(3)     =       -20.02497282  AU                              
 SETTING HLSDIAG(4)     =       -20.02497282  AU                              
 SETTING HLSDIAG(5)     =       -20.02497282  AU                              
 SETTING HLSDIAG(6)     =       -20.02497281  AU                              
 SETTING HLSDIAG(7)     =       -20.00850770  AU                              


        HLSDIAG
    -20.09222863
    -20.02497282
    -20.02497282
    -20.02497282
    -20.02497282
    -20.02497281
    -20.00850770
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:    -20.073980    -20.007235    -20.007235    -20.007235    -20.007235    -20.007235    -19.992300
 Replaced energies:    -20.092229    -20.024973    -20.024973    -20.024973    -20.024973    -20.024973    -20.008508



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -20.09222863

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.00   14760.94       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      10.77      -0.00       0.00       0.04      -0.00      -0.00       0.00      -0.00

    3   3.1  0.5  0.5       0.00       0.00   14760.94       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00     -10.77       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   14760.94       0.00       0.00       0.00      -0.00      -0.00      -5.42
                           -0.00       0.00      -0.00      -0.00      -5.38       0.00       0.00      -0.00       5.38      -0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   14760.94       0.00       0.00       0.00      -5.38      -0.00
                            0.00      -0.00      -0.00       5.38       0.00      -0.00       0.00       0.00       0.00      -5.35

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   14760.95       0.00      -0.00       0.00      -0.00
                            0.00      -0.04       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   18374.62       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    9   2.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00      -5.38       0.00       0.00       0.00   14760.94       0.00
                           -0.00      -0.00      -0.00      -5.38      -0.00       0.00      -0.00      -0.00      -0.00     -10.77

   10   3.1  0.5 -0.5      -0.00       0.00       0.00      -5.42      -0.00      -0.00      -0.00       0.00       0.00   14760.94
                            0.00       0.00      -0.00       0.00       5.35      -0.00      -0.00      -0.00      10.77      -0.00

   11   4.1  0.5 -0.5       0.00       0.00       5.42      -0.00       0.00      -9.30       0.00       0.00       0.00       0.00
                           -0.00       5.38      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   12   5.1  0.5 -0.5      -0.00       5.38       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -5.35       0.00      -0.00      -9.34       0.00      -0.00       0.00       0.00

   13   6.1  0.5 -0.5       0.00      -0.00       0.00       9.30       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       9.34      -0.00      -0.00      -0.00       0.04      -0.00

   14   7.1  0.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.00       5.38      -0.00      -0.00
                           -5.38      -0.00       0.00      -0.00

    3   3.1  0.5  0.5       5.42       0.00       0.00       0.00
                            0.00       5.35      -0.00      -0.00

    4   4.1  0.5  0.5      -0.00      -0.00       9.30      -0.00
                            0.00      -0.00      -0.00      -0.00

    5   5.1  0.5  0.5       0.00      -0.00       0.00       0.00
                            0.00       0.00      -9.34       0.00

    6   6.1  0.5  0.5      -9.30      -0.00      -0.00      -0.00
                            0.00       9.34       0.00      -0.00

    7   7.1  0.5  0.5       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.04       0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00

   11   4.1  0.5 -0.5   14760.94       0.00       0.00       0.00
                            0.00       5.38      -0.00      -0.00

   12   5.1  0.5 -0.5       0.00   14760.94       0.00       0.00
                           -5.38      -0.00       0.00      -0.00

   13   6.1  0.5 -0.5       0.00       0.00   14760.95       0.00
                            0.00      -0.00       0.00      -0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   18374.62
                            0.00       0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -20.09222863     0.00000000        0.00      0.00000000        0.00      0.0000
     2   -20.09222863     0.00000000        0.00      0.00000000        0.00      0.0000
     3   -20.02504640     0.06718223    14744.79      0.06718223    14744.79      1.8281
     4   -20.02504640     0.06718223    14744.79      0.06718223    14744.79      1.8281
     5   -20.02504639     0.06718223    14744.80      0.06718223    14744.80      1.8281
     6   -20.02504639     0.06718223    14744.80      0.06718223    14744.80      1.8281
     7   -20.02492377     0.06730486    14771.71      0.06730486    14771.71      1.8315
     8   -20.02492377     0.06730486    14771.71      0.06730486    14771.71      1.8315
     9   -20.02492377     0.06730486    14771.71      0.06730486    14771.71      1.8315
    10   -20.02492377     0.06730486    14771.71      0.06730486    14771.71      1.8315
    11   -20.02492376     0.06730487    14771.71      0.06730487    14771.71      1.8315
    12   -20.02492376     0.06730487    14771.71      0.06730487    14771.71      1.8315
    13   -20.00850770     0.08372092    18374.62      0.08372092    18374.62      2.2782
    14   -20.00850770     0.08372092    18374.62      0.08372092    18374.62      2.2782


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   1.000000000  -0.000000000  -0.000000003   0.000000000   0.000000002  -0.000000001  -0.000000000   0.000000002
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000010  -0.000000004   0.000000001  -0.000000000   0.000000001  -0.000000011
                        -0.000000003  -0.000000000  -0.628985567   0.065545179  -0.008742783   0.002933923  -0.008095548   0.719169012

    3    3.1  0.5  0.5   0.000000000   0.000000000   0.629025883  -0.065549380   0.006356468  -0.002133117  -0.007810159   0.693816580
                        -0.000000000  -0.000000000  -0.000000010  -0.000000004   0.000000001  -0.000000001   0.000000001   0.000000011

    4    4.1  0.5  0.5   0.000000000  -0.000000000   0.005258299   0.050459741  -0.070381053  -0.209728142  -0.018746531  -0.000211021
                         0.000000000   0.000000003   0.033184552   0.318446057  -0.157788390  -0.470192764   0.015742276   0.000177207

    5    5.1  0.5  0.5   0.000000000   0.000000001  -0.031549491  -0.302755677  -0.160467024  -0.478174813  -0.016854721  -0.000189728
                        -0.000000000   0.000000000   0.004999214   0.047973501   0.071575850   0.213288511  -0.020071275  -0.000225934

    6    6.1  0.5  0.5  -0.000000000   0.000000000  -0.006667817   0.000694839   0.599546477  -0.201197208  -0.000014225   0.001263654
                        -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000004   0.000000008  -0.000000000   0.000000000

    7    7.1  0.5  0.5   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000002   0.000000001  -0.000000000   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    8    1.1  0.5 -0.5  -0.000000000  -0.097653618  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000001  -0.000000000
                         0.000000000   0.995220464  -0.000000000  -0.000000003   0.000000001   0.000000002   0.000000001   0.000000000

    9    2.1  0.5 -0.5   0.000000000  -0.000000003  -0.064737491  -0.621234825  -0.002679455  -0.007984497   0.462481155   0.005206061
                         0.000000000  -0.000000000   0.010258060   0.098438486   0.001195163   0.003561460   0.550740640   0.006199579

   10    3.1  0.5 -0.5   0.000000000  -0.000000000   0.010258717   0.098444795   0.000868947   0.002589370  -0.531325702  -0.005981034
                        -0.000000000   0.000000000   0.064741640   0.621274645   0.001948106   0.005805153   0.446177589   0.005022536

   11    4.1  0.5 -0.5  -0.000000003   0.000000000  -0.322419104   0.033598574   0.514846702  -0.172773460   0.000275564  -0.024479612
                         0.000000000   0.000000000   0.000000006   0.000000002   0.000000003   0.000000007   0.000000002  -0.000000000

   12    5.1  0.5 -0.5   0.000000000  -0.000000000   0.000000004   0.000000002  -0.000000004  -0.000000007   0.000000002  -0.000000000
                        -0.000000001  -0.000000000   0.306532959  -0.031943113   0.523586805  -0.175706484  -0.000295036   0.026209491

   13    6.1  0.5 -0.5  -0.000000000   0.000000000  -0.000108745  -0.001043538   0.081959760   0.244231472  -0.000967709  -0.000010892
                        -0.000000000  -0.000000000  -0.000686277  -0.006585648   0.183746876   0.547546314   0.000812628   0.000009149

   14    7.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000001   0.000000000   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5   0.000000001  -0.000000000  -0.000000001   0.000000001   0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.000000012  -0.000000021  -0.000000001  -0.000000001   0.000000000   0.000000000
                        -0.278938303   0.070047527  -0.002959916   0.002083806   0.000000000  -0.000000000

    3    3.1  0.5  0.5   0.333905950  -0.083851121   0.003480969  -0.002450635   0.000000000  -0.000000000
                        -0.000000014  -0.000000029  -0.000000000   0.000000000  -0.000000000  -0.000000000

    4    4.1  0.5  0.5   0.155728798   0.620132132   0.224575779   0.318995640   0.000000000   0.000000000
                         0.004470229   0.017801261   0.112298389   0.159512755  -0.000000000  -0.000000000

    5    5.1  0.5  0.5  -0.004361348  -0.017367674   0.117942184   0.167529413  -0.000000001  -0.000000000
                         0.151935686   0.605027480  -0.235862320  -0.335027445  -0.000000001  -0.000000001

    6    6.1  0.5  0.5  -0.011760161   0.002953238   0.633310588  -0.445856302   0.000000000  -0.000000000
                         0.000000000   0.000000003  -0.000000014  -0.000000019  -0.000000000  -0.000000000

    7    7.1  0.5  0.5   0.000000001  -0.000000000   0.000000001  -0.000000001  -0.546360221   0.726468993
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.051037134   0.413676833

    8    1.1  0.5 -0.5  -0.000000000  -0.000000001  -0.000000001  -0.000000001  -0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000000

    9    2.1  0.5 -0.5   0.002009902   0.008003803  -0.000931976  -0.001323815  -0.000000000  -0.000000000
                        -0.070018689  -0.278823443   0.001863780   0.002647378  -0.000000000  -0.000000000

   10    3.1  0.5 -0.5  -0.083816593  -0.333768470   0.002191872   0.003113414   0.000000000   0.000000000
                        -0.002405974  -0.009581012   0.001096038   0.001556853  -0.000000000  -0.000000000

   11    4.1  0.5 -0.5   0.620387578  -0.155792945  -0.356654645   0.251088051  -0.000000000   0.000000000
                        -0.000000026  -0.000000052   0.000000006   0.000000010   0.000000000   0.000000000

   12    5.1  0.5 -0.5  -0.000000026  -0.000000049  -0.000000009  -0.000000012  -0.000000000  -0.000000001
                        -0.605276703   0.151998269  -0.374579089   0.263707020  -0.000000001   0.000000002

   13    6.1  0.5 -0.5   0.002952019   0.011755318   0.398778543   0.566439600   0.000000000   0.000000000
                         0.000084737   0.000337443   0.199407913   0.283246324  -0.000000000  -0.000000000

   14    7.1  0.5 -0.5  -0.000000000  -0.000000001   0.000000001   0.000000001  -0.532565764  -0.528953082
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.644406259   0.146023686


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  39.562%   0.430%   0.008%   0.001%   0.007%  51.720%   7.781%   0.491%
    3    3.1  0.5  0.5   0.000%   0.000%  39.567%   0.430%   0.004%   0.000%   0.006%  48.138%  11.149%   0.703%
    4    4.1  0.5  0.5   0.000%   0.000%   0.113%  10.395%   2.985%  26.507%   0.060%   0.000%   2.427%  38.488%
    5    5.1  0.5  0.5   0.000%   0.000%   0.102%   9.396%   3.087%  27.414%   0.069%   0.000%   2.310%  36.636%
    6    6.1  0.5  0.5   0.000%   0.000%   0.004%   0.000%  35.946%   4.048%   0.000%   0.000%   0.014%   0.001%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   0.430%  39.562%   0.001%   0.008%  51.720%   0.007%   0.491%   7.781%
   10    3.1  0.5 -0.5   0.000%   0.000%   0.430%  39.567%   0.000%   0.004%  48.138%   0.006%   0.703%  11.149%
   11    4.1  0.5 -0.5   0.000%   0.000%  10.395%   0.113%  26.507%   2.985%   0.000%   0.060%  38.488%   2.427%
   12    5.1  0.5 -0.5   0.000%   0.000%   9.396%   0.102%  27.414%   3.087%   0.000%   0.069%  36.636%   2.310%
   13    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.004%   4.048%  35.946%   0.000%   0.000%   0.001%   0.014%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.001%   0.000%   0.000%   0.000%
    3    3.1  0.5  0.5   0.001%   0.001%   0.000%   0.000%
    4    4.1  0.5  0.5   6.305%  12.720%   0.000%   0.000%
    5    5.1  0.5  0.5   6.954%  14.031%   0.000%   0.000%
    6    6.1  0.5  0.5  40.108%  19.879%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%  30.111%  69.889%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.001%   0.000%   0.000%
   10    3.1  0.5 -0.5   0.001%   0.001%   0.000%   0.000%
   11    4.1  0.5 -0.5  12.720%   6.305%   0.000%   0.000%
   12    5.1  0.5 -0.5  14.031%   6.954%   0.000%   0.000%
   13    6.1  0.5 -0.5  19.879%  40.108%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%  69.889%  30.111%


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
              1      21       48.12       500      610      700      900      950      970     1001      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8       73.98       700     1000      520     2100     2140     1001     2141     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    BASIS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT     MULTI   RHF-SCF       INT
 CPU TIMES  *        69.70     19.66     44.16      1.14      3.63      0.39      0.02      0.47
 REAL TIME  *        79.98 SEC
 DISK USED  *       122.20 MB (local),        1.89 GB (total)
 SF USED    *       581.96 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -20.008507702744

              CI           MULTI           MULTI         RHF-SCF
    -19.99230048    -19.77962165    -19.77950203    -19.72442151
 **********************************************************************************************************************************
 Molpro calculation terminated
