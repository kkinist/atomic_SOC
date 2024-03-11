
 Working directory              : /wrk/irikura/molpro.ZZpRSBRrjD/
 Global scratch directory       : /wrk/irikura/molpro.ZZpRSBRrjD/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ZZpRSBRrjD/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Fr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Fr};
 
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Fr SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 05-Mar-24          TIME: 09:57:08  
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

 Library entry Fr   ECP ECP78MDF                 selected for group  1
 Library entry FR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry FR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry FR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry FR     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  FR      9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
 NUMBER OF PRIMITIVE AOS:         147
 NUMBER OF SYMMETRY AOS:          124
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

         1 0.227E-04 0.847E-03 0.847E-03 0.847E-03 0.847E-03 0.847E-03 0.109E-02 0.115E-01
         2 0.450E-02 0.450E-02 0.450E-02 0.396E-01 0.396E-01 0.396E-01 0.119E+00 0.119E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     12.321 MB (compressed) written to integral file ( 18.8%)

     Node minimum: 0.524 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     312474.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     312474      RECORD LENGTH: 524288

 Memory used in sort:       0.87 MW

 SORT1 READ     8662933. AND WROTE       63341. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      777925. AND WROTE     3749011. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      311578.  Node maximum:      314862. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.80       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.64      0.41
 REAL TIME  *         1.21 SEC
 DISK USED  *        29.13 MB (local),      403.14 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   1   3

 NELEC=    8   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -18.72707869     -18.72707869     0.00D+00     0.90D-01     0     0       0.00      0.00    start
   2      -18.72780026      -0.00072157     0.13D-02     0.25D-02     1     0       0.00      0.00    diag
   3      -18.72782107      -0.00002081     0.26D-03     0.24D-02     2     0       0.01      0.01    diag
   4      -18.72782186      -0.00000079     0.42D-04     0.24D-03     3     0       0.00      0.01    diag
   5      -18.72782186      -0.00000000     0.14D-05     0.18D-04     4     0       0.00      0.01    diag
   6      -18.72782186      -0.00000000     0.34D-07     0.42D-06     5     0       0.00      0.01    diag
   7      -18.72782186       0.00000000     0.29D-08     0.17D-07     0     0       0.01      0.02    diag

 Final occupancy:   1   3

 !RHF STATE 1.1 Energy                -18.727821861182
  RHF One-electron energy             -29.655211012562
  RHF Two-electron energy              10.927389151380
  RHF Kinetic energy                    4.894343742600
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.826421446082

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.49386     1  1  s    1.01206
    1.2     2.00000    -0.80212     1  1  pz   1.01218
    2.2     2.00000    -0.80212     1  1  px   1.01174
    3.2     2.00000    -0.80212     1  1  py   1.01176


 HOMO      3.2    -0.802119 =     -21.8268eV
 LUMO      2.1    -0.130245 =      -3.5441eV
 LUMO-HOMO         0.671874 =      18.2826eV

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
 CPU TIMES  *         0.66      0.02      0.41
 REAL TIME  *         2.21 SEC
 DISK USED  *        29.53 MB (local),      407.96 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.123D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.840D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.364D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.365D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 3 5 6 4 2 1 3 5   6 4 2 1 2 3 5 6 4 1   3 5 4 6 2 1 2 3 5 6   4 2 3 5 6 4 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.633D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.339D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.291D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 2   1 3 4 5 9 7 810 6 2   1 3 6 9 7 4 5 810 7   9 6 5 4 810 1 2 3 6
                                        4 5 810 9 7 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  385  ( 7 closed/active, 168 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    434
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0    -18.79902029     -18.79922685   -0.00020656    0.01763425 0.00001400 0.00000000  0.33E-01      0.16
   2    3    3    0    -18.79922696     -18.79922696   -0.00000000    0.00003531 0.00000001 0.00000000  0.30E-03      0.28

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.52E-08)
                       Final energy:    -18.79922696
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -18.858602142647
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.98034360
 One electron energy                           -31.26532464
 Two electron energy                            12.40672250
 Virial ratio                                    4.78660664
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -18.790493991881
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97637288
 One electron energy                           -30.87611881
 Two electron energy                            12.08562482
 Virial ratio                                    4.77594173
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -18.790493991881
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97637288
 One electron energy                           -30.87611881
 Two electron energy                            12.08562482
 Virial ratio                                    4.77594173
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                       -18.790493991854
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97637287
 One electron energy                           -30.87611881
 Two electron energy                            12.08562482
 Virial ratio                                    4.77594173
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                       -18.790493991848
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97637287
 One electron energy                           -30.87611881
 Two electron energy                            12.08562482
 Virial ratio                                    4.77594173
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                       -18.790493991841
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.97637287
 One electron energy                           -30.87611881
 Two electron energy                            12.08562482
 Virial ratio                                    4.77594173
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                       -18.783516639538
 Nuclear energy                                  0.00000000
 Kinetic energy                                  4.91519349
 One electron energy                           -30.41067081
 Two electron energy                            11.62715417
 Virial ratio                                    4.82152130
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     1.349760207412
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     1.000000000000
 !MCSCF expec                      <6.1|LXLX|6.1>     2.650238226282
 !MCSCF expec                      <7.1|LXLX|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.687166551690
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     4.000000000000
 !MCSCF expec                      <6.1|LYLY|6.1>     3.312834697810
 !MCSCF expec                      <7.1|LYLY|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     3.963073240899
 !MCSCF expec                      <3.1|LZLZ|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.000000000000
 !MCSCF expec                      <6.1|LZLZ|6.1>     0.036927075907
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 1 6 4 3 1 2 6 2   5 3 4 1 6 5 2 3 4 1   6 2 5 3 4 1 2 6 3 5   4 2 6 3 5 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 2   3 1 510 6 8 7 9 4 2   3 1 5 610 8 9 7 4 5   6 810 7 9 4 2 3 1 5
                                        6 810 7 9 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.35056     1  1  s    1.00478
    2.1     0.14286     0.03332     1  1  d2+  1.00789
    3.1     0.14286     0.01498     1  2  s   -0.59829    1  4  s   -0.29061    1  5  s   -0.39192    1  8  s    1.69574
    4.1     0.14286     0.03332     1  1  d1-  1.00789
    5.1     0.14286     0.03332     1  1  d1+  1.00789
    6.1     0.14286     0.03332     1  1  d2-  1.00789
    7.1     0.14286    -0.02306     1  2  s    0.99666
    8.1     0.14286     0.03332     1  1  d0   1.00789
    1.2     2.00000    -0.66008     1  1  py   1.00514
    2.2     2.00000    -0.66008     1  1  pz   1.00514
    3.2     2.00000    -0.66008     1  1  px   1.00514
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 000a000        0.00000000      0.00000000      0.00000000     -0.00000000      1.00000000      0.00000000      0.00000000
 0000a00        0.00000000      0.00000000      1.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 00a0000       -0.00000000     -0.00000000     -0.00000000      1.00000000      0.00000000     -0.00000000     -0.00000000
 00000a0        0.99999007      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00445667
 0a00000       -0.00445667      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.99999007
 a000000       -0.00000000      0.99537345      0.00000000      0.00000000      0.00000000     -0.09608168     -0.00000000
 000000a       -0.00000000      0.09608168      0.00000000      0.00000000      0.00000000      0.99537345     -0.00000000
 
 Energy:      -18.85860214    -18.79049399    -18.79049399    -18.79049399    -18.79049399    -18.79049399    -18.78351664
 


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
 CPU TIMES  *         1.00      0.33      0.02      0.41
 REAL TIME  *         2.66 SEC
 DISK USED  *        32.65 MB (local),      445.38 MB (total)
 SF USED    *         8.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -18.85860214  -0.0
    -18.79049399   6.0
    -18.79049399   6.0
    -18.79049399   6.0
    -18.79049399   6.0
    -18.79049399   6.0
    -18.78351664  -0.0
                                                  


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
     1       -18.85860214
     2       -18.79049399
     3       -18.79049399
     4       -18.79049399
     5       -18.79049399
     6       -18.79049399
     7       -18.78351664

 Number of blocks in overlap matrix:   120   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     120
 Number of N-1 electron functions:     967

 Number of internal configurations:                 1281
 Number of singly external configurations:         35394
 Number of doubly external configurations:        175880
 Total number of contracted configurations:       212555
 Total number of uncontracted configurations:     434861

 Diagonal Coupling coefficients finished.               Storage:    529558 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    336050 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -18.85860214    -0.00000000    -0.19260457  0.14D-01  0.72D-01     0.08
    1     2     2     1.00000000     0.00000000   -18.79049399    -0.00000000    -0.18235413  0.11D-01  0.67D-01     0.08
    1     3     3     1.00000000     0.00000000   -18.79049399    -0.00000000    -0.18235803  0.11D-01  0.67D-01     0.08
    1     4     4     1.00000000     0.00000000   -18.79049399     0.00000000    -0.18235194  0.11D-01  0.67D-01     0.08
    1     5     5     1.00000000     0.00000000   -18.79049399     0.00000000    -0.18235458  0.11D-01  0.67D-01     0.08
    1     6     6     1.00000000     0.00000000   -18.79049399    -0.00000000    -0.18234458  0.11D-01  0.67D-01     0.08
    1     7     7     1.00000000     0.00000000   -18.78351664    -0.00000000    -0.17668753  0.10D-01  0.62D-01     0.08
    2     1     1     1.07376069    -0.17941427   -19.03801641    -0.17941427    -0.00374991  0.83D-03  0.10D-02     0.91
    2     2     2     1.06993401    -0.17348363   -18.96397763    -0.17348363    -0.00321531  0.73D-03  0.91D-03     0.91
    2     3     3     1.06993565    -0.17347648   -18.96397047    -0.17347648    -0.00322173  0.73D-03  0.92D-03     0.91
    2     4     4     1.06993461    -0.17347628   -18.96397028    -0.17347628    -0.00322193  0.73D-03  0.92D-03     0.91
    2     5     5     1.06994142    -0.17347628   -18.96397027    -0.17347628    -0.00322272  0.73D-03  0.92D-03     0.91
    2     6     6     1.06994094    -0.17347575   -18.96396974    -0.17347575    -0.00322392  0.73D-03  0.92D-03     0.91
    2     7     7     1.06643740    -0.17051005   -18.95402669    -0.17051005    -0.00293361  0.42D-03  0.82D-03     0.91
    3     1     1     1.07682880    -0.18347431   -19.04207646    -0.00406004    -0.00010209  0.23D-04  0.31D-04     1.71
    3     2     2     1.07294308    -0.17701385   -18.96750784    -0.00353022    -0.00009449  0.32D-04  0.29D-04     1.71
    3     3     3     1.07294306    -0.17701381   -18.96750780    -0.00353733    -0.00009461  0.32D-04  0.30D-04     1.71
    3     4     4     1.07294047    -0.17701362   -18.96750761    -0.00353733    -0.00009462  0.32D-04  0.29D-04     1.71
    3     5     5     1.07294027    -0.17701359   -18.96750758    -0.00353731    -0.00009464  0.32D-04  0.29D-04     1.71
    3     6     6     1.07294184    -0.17701358   -18.96750757    -0.00353783    -0.00009472  0.32D-04  0.30D-04     1.71
    3     7     7     1.06933677    -0.17372826   -18.95724490    -0.00321821    -0.00007332  0.14D-04  0.22D-04     1.71
    4     1     1     1.07762471    -0.18359668   -19.04219882    -0.00012237    -0.00000566  0.35D-05  0.11D-05     2.57
    4     2     2     1.07384463    -0.17713457   -18.96762856    -0.00012072    -0.00000849  0.98D-05  0.13D-05     2.57
    4     3     3     1.07384469    -0.17713457   -18.96762856    -0.00012075    -0.00000849  0.98D-05  0.13D-05     2.57
    4     4     4     1.07384452    -0.17713454   -18.96762853    -0.00012093    -0.00000851  0.98D-05  0.13D-05     2.57
    4     5     5     1.07384435    -0.17713453   -18.96762852    -0.00012094    -0.00000851  0.98D-05  0.13D-05     2.57
    4     6     6     1.07384435    -0.17713453   -18.96762852    -0.00012095    -0.00000851  0.98D-05  0.13D-05     2.57
    4     7     7     1.06973110    -0.17381551   -18.95733215    -0.00008725    -0.00000387  0.25D-05  0.82D-06     2.57
    5     1     1     1.07790157    -0.18360360   -19.04220575    -0.00000692    -0.00000026  0.73D-07  0.67D-07     3.35
    5     2     2     1.07431467    -0.17714665   -18.96764065    -0.00001209    -0.00000084  0.31D-06  0.26D-06     3.35
    5     3     3     1.07431460    -0.17714665   -18.96764064    -0.00001209    -0.00000084  0.32D-06  0.25D-06     3.35
    5     4     4     1.07431458    -0.17714665   -18.96764064    -0.00001211    -0.00000084  0.32D-06  0.25D-06     3.35
    5     5     5     1.07431424    -0.17714665   -18.96764064    -0.00001212    -0.00000084  0.32D-06  0.26D-06     3.35
    5     6     6     1.07431428    -0.17714665   -18.96764064    -0.00001212    -0.00000084  0.32D-06  0.26D-06     3.35
    5     7     7     1.06988448    -0.17382037   -18.95733701    -0.00000486    -0.00000023  0.12D-06  0.57D-07     3.35
    6     1     1     1.07792862    -0.18360391   -19.04220605    -0.00000030    -0.00000001  0.31D-08  0.22D-08     4.10
    6     2     2     1.07438823    -0.17714772   -18.96764171    -0.00000106    -0.00000006  0.27D-07  0.13D-07     4.10
    6     3     3     1.07438822    -0.17714772   -18.96764171    -0.00000106    -0.00000006  0.27D-07  0.13D-07     4.10
    6     4     4     1.07438826    -0.17714772   -18.96764171    -0.00000106    -0.00000006  0.27D-07  0.13D-07     4.10
    6     5     5     1.07438817    -0.17714772   -18.96764171    -0.00000106    -0.00000006  0.27D-07  0.13D-07     4.10
    6     6     6     1.07438820    -0.17714772   -18.96764171    -0.00000106    -0.00000006  0.27D-07  0.13D-07     4.10
    6     7     7     1.06990729    -0.17382065   -18.95733729    -0.00000028    -0.00000001  0.92D-08  0.30D-08     4.10
    7     1     1     1.07793371    -0.18360391   -19.04220606    -0.00000001    -0.00000000  0.14D-08  0.84D-09     4.77
    7     2     2     1.07440067    -0.17714778   -18.96764178    -0.00000007    -0.00000000  0.36D-08  0.75D-09     4.77
    7     3     3     1.07440067    -0.17714778   -18.96764178    -0.00000007    -0.00000000  0.36D-08  0.75D-09     4.77
    7     4     4     1.07440066    -0.17714778   -18.96764178    -0.00000007    -0.00000000  0.37D-08  0.75D-09     4.77
    7     5     5     1.07440067    -0.17714778   -18.96764178    -0.00000007    -0.00000000  0.36D-08  0.75D-09     4.77
    7     6     6     1.07440067    -0.17714778   -18.96764178    -0.00000007    -0.00000000  0.36D-08  0.75D-09     4.77
    7     7     7     1.06991200    -0.17382067   -18.95733731    -0.00000002    -0.00000000  0.41D-09  0.18D-09     4.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.0%
 S   4.6%   7.5%
 P   1.9%  17.2%  13.6%

 Initialization:   0.8%
 Other:           50.3%

 Total CPU:        4.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20000/00222           0.0000000  -0.0000000  -0.0000000   0.9644743  -0.0000000  -0.0000000  -0.0000000
 2000/000222           0.0000000   0.0000000   0.9644742   0.0000000   0.0000000  -0.0000000  -0.0000000
 200/0000222           0.0000000   0.9644742   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 20/00000222          -0.0589954   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.9644215
 200000/0222           0.9610735  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0625719
 2/000000222          -0.0000000   0.0000000   0.0000000   0.0000000   0.8230470  -0.5027963   0.0000000
 2000000/222           0.0000000   0.0000000   0.0000000   0.0000000   0.5027963   0.8230470  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.961327    0.000000    0.000000    0.000000    0.000000    0.000000   -0.054712
 2          -0.000000    0.000000   -0.000000    0.964474    0.000000    0.000000    0.000000
 3          -0.000000    0.000000   -0.000000    0.000000    0.964474    0.000000    0.000000
 4          -0.000000    0.000000    0.964474    0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.867553   -0.000000    0.000000    0.000000    0.421382   -0.000000
 6          -0.000000   -0.421382   -0.000000    0.000000   -0.000000    0.867553   -0.000000
 7           0.058273    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.964691

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962881    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.001679
 2           0.000000    0.964474    0.000000   -0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.964474    0.000000    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.964474    0.000000   -0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.964474   -0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.964474   -0.000000
 7           0.001679    0.000000    0.000000    0.000000    0.000000   -0.000000    0.966448


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96132691 (fixed)   0.96288254 (relaxed)   0.96288107 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00060496   -0.00087391   -0.16512020
 Singles      0.01233031   -0.01881586   -0.01954429
 Pairs        0.06565054    0.01319718    0.00106057
 Total        1.07858581   -0.00649260   -0.18360391
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.85834464
 Nuclear energy                         0.00000000
 Kinetic energy                         5.09101504
 One electron energy                  -31.18274273
 Two electron energy                   12.14053668
 Virial quotient                       -3.74035549
 Correlation energy                    -0.18386142
 !MRCI STATE 1.1 Energy               -19.042206055337

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -19.05665495 (Davidson, fixed reference)
 Cluster corrected energies           -19.05665435 (Davidson, relaxed reference)
 Cluster corrected energies           -19.05665495 (Davidson, rotated reference)

 Cluster corrected energies           -19.05347183 (Pople, fixed reference)
 Cluster corrected energies           -19.05347134 (Pople, relaxed reference)
 Cluster corrected energies           -19.05347183 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96447425 (fixed)   0.96447425 (relaxed)   0.96447425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00058147   -0.00080612   -0.14920044
 Singles      0.01108155   -0.01685653   -0.01750731
 Pairs        0.06336238   -0.00000000   -0.01044003
 Total        1.07502541   -0.01766264   -0.17714778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79049399
 Nuclear energy                         0.00000000
 Kinetic energy                         5.10025053
 One electron energy                  -30.80460518
 Two electron energy                   11.83696340
 Virial quotient                       -3.71896276
 Correlation energy                    -0.17714778
 !MRCI STATE 2.1 Energy               -18.967641775491

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -18.98093236 (Davidson, fixed reference)
 Cluster corrected energies           -18.98093236 (Davidson, relaxed reference)
 Cluster corrected energies           -18.98093236 (Davidson, rotated reference)

 Cluster corrected energies           -18.97798644 (Pople, fixed reference)
 Cluster corrected energies           -18.97798644 (Pople, relaxed reference)
 Cluster corrected energies           -18.97798644 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96447425 (fixed)   0.96447425 (relaxed)   0.96447425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00058147   -0.00080612   -0.14920044
 Singles      0.01108155   -0.01685653   -0.01750731
 Pairs        0.06336238   -0.00000000   -0.01044003
 Total        1.07502541   -0.01766264   -0.17714778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79049399
 Nuclear energy                         0.00000000
 Kinetic energy                         5.10025053
 One electron energy                  -30.80460517
 Two electron energy                   11.83696339
 Virial quotient                       -3.71896276
 Correlation energy                    -0.17714778
 !MRCI STATE 3.1 Energy               -18.967641775486

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -18.98093236 (Davidson, fixed reference)
 Cluster corrected energies           -18.98093236 (Davidson, relaxed reference)
 Cluster corrected energies           -18.98093236 (Davidson, rotated reference)

 Cluster corrected energies           -18.97798644 (Pople, fixed reference)
 Cluster corrected energies           -18.97798644 (Pople, relaxed reference)
 Cluster corrected energies           -18.97798644 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96447425 (fixed)   0.96447425 (relaxed)   0.96447425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00058147   -0.00080612   -0.14920044
 Singles      0.01108153   -0.01685652   -0.01750731
 Pairs        0.06336239   -0.00000000   -0.01044003
 Total        1.07502540   -0.01766264   -0.17714778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79049399
 Nuclear energy                         0.00000000
 Kinetic energy                         5.10025057
 One electron energy                  -30.80460498
 Two electron energy                   11.83696320
 Virial quotient                       -3.71896273
 Correlation energy                    -0.17714778
 !MRCI STATE 4.1 Energy               -18.967641775484

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -18.98093236 (Davidson, fixed reference)
 Cluster corrected energies           -18.98093236 (Davidson, relaxed reference)
 Cluster corrected energies           -18.98093236 (Davidson, rotated reference)

 Cluster corrected energies           -18.97798644 (Pople, fixed reference)
 Cluster corrected energies           -18.97798644 (Pople, relaxed reference)
 Cluster corrected energies           -18.97798644 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.86755279 (fixed)   0.96447425 (relaxed)   0.96447425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00058147   -0.00080612   -0.14920045
 Singles      0.01108154   -0.01685652   -0.01750731
 Pairs        0.06336240    0.00000000   -0.01044003
 Total        1.07502541   -0.01766264   -0.17714778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79049399
 Nuclear energy                         0.00000000
 Kinetic energy                         5.10025062
 One electron energy                  -30.80460509
 Two electron energy                   11.83696332
 Virial quotient                       -3.71896269
 Correlation energy                    -0.17714778
 !MRCI STATE 5.1 Energy               -18.967641775476

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -18.98093236 (Davidson, fixed reference)
 Cluster corrected energies           -18.98093236 (Davidson, relaxed reference)
 Cluster corrected energies           -18.98093236 (Davidson, rotated reference)

 Cluster corrected energies           -18.97798644 (Pople, fixed reference)
 Cluster corrected energies           -18.97798644 (Pople, relaxed reference)
 Cluster corrected energies           -18.97798644 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.86755279 (fixed)   0.96447425 (relaxed)   0.96447425 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00058147   -0.00080612   -0.14920045
 Singles      0.01108155   -0.01685652   -0.01750731
 Pairs        0.06336239    0.00000000   -0.01044003
 Total        1.07502541   -0.01766264   -0.17714778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.79049399
 Nuclear energy                         0.00000000
 Kinetic energy                         5.10025061
 One electron energy                  -30.80460519
 Two electron energy                   11.83696341
 Virial quotient                       -3.71896270
 Correlation energy                    -0.17714778
 !MRCI STATE 6.1 Energy               -18.967641775473

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -18.98093236 (Davidson, fixed reference)
 Cluster corrected energies           -18.98093236 (Davidson, relaxed reference)
 Cluster corrected energies           -18.98093236 (Davidson, rotated reference)

 Cluster corrected energies           -18.97798644 (Pople, fixed reference)
 Cluster corrected energies           -18.97798644 (Pople, relaxed reference)
 Cluster corrected energies           -18.97798644 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96469081 (fixed)   0.96644923 (relaxed)   0.96644777 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00067988   -0.00096125   -0.00128780
 Singles      0.00985611   -0.01714848   -0.01761735
 Pairs        0.06010342   -0.15541160   -0.15491552
 Total        1.07063941   -0.17352133   -0.17382067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -18.78377414
 Nuclear energy                         0.00000000
 Kinetic energy                         5.04513720
 One electron energy                  -30.30175867
 Two electron energy                   11.34442136
 Virial quotient                       -3.75754644
 Correlation energy                    -0.17356317
 !MRCI STATE 7.1 Energy               -18.957337311434

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -18.96959771 (Davidson, fixed reference)
 Cluster corrected energies           -18.96959715 (Davidson, relaxed reference)
 Cluster corrected energies           -18.96959771 (Davidson, rotated reference)

 Cluster corrected energies           -18.96685971 (Pople, fixed reference)
 Cluster corrected energies           -18.96685926 (Pople, relaxed reference)
 Cluster corrected energies           -18.96685971 (Pople, rotated reference)



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
 CPU TIMES  *         6.19      5.17      0.33      0.02      0.41
 REAL TIME  *         8.44 SEC
 DISK USED  *        44.52 MB (local),      587.85 MB (total)
 SF USED    *       101.49 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -19.05665495  AU                              
 SETTING HLSDIAG(2)     =       -18.98093236  AU                              
 SETTING HLSDIAG(3)     =       -18.98093236  AU                              
 SETTING HLSDIAG(4)     =       -18.98093236  AU                              
 SETTING HLSDIAG(5)     =       -18.98093236  AU                              
 SETTING HLSDIAG(6)     =       -18.98093236  AU                              
 SETTING HLSDIAG(7)     =       -18.96959771  AU                              


        HLSDIAG
    -19.05665495
    -18.98093236
    -18.98093236
    -18.98093236
    -18.98093236
    -18.98093236
    -18.96959771
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:    -19.042206    -18.967642    -18.967642    -18.967642    -18.967642    -18.967642    -18.957337
 Replaced energies:    -19.056655    -18.980932    -18.980932    -18.980932    -18.980932    -18.980932    -18.969598



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -19.05665495

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.00   16619.19       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      26.40      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    3   3.1  0.5  0.5       0.00       0.00   16619.19       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00     -26.40       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   16619.19       0.00       0.00       0.00       0.00      26.40       0.00
                           -0.00       0.00       0.00       0.00      45.06     -27.53      -0.00      -0.00      -0.00     -26.40

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   16619.19       0.00       0.00      -0.00      -0.00      -1.31
                           -0.00       0.00       0.00     -45.06       0.00       0.00       0.00       0.00      46.37       0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   16619.19       0.00      -0.00      -0.00     -52.79
                            0.00      -0.00       0.00      27.53      -0.00      -0.00      -0.00       0.00      25.26       0.00

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   19106.86       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

    8   1.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00      26.40      -0.00      -0.00      -0.00       0.00   16619.19       0.00
                            0.00       0.00      -0.00       0.00     -46.37     -25.26       0.00      -0.00       0.00     -26.40

   10   3.1  0.5 -0.5       0.00      -0.00       0.00       0.00      -1.31     -52.79       0.00       0.00       0.00   16619.19
                            0.00       0.00       0.00      26.40      -0.00      -0.00      -0.00       0.00      26.40      -0.00

   11   4.1  0.5 -0.5      -0.00     -26.40      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00     -26.40      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   12   5.1  0.5 -0.5       0.00       0.00       1.31       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      46.37       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   13   6.1  0.5 -0.5       0.00       0.00      52.79       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      25.26       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   14   7.1  0.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00

    2   2.1  0.5  0.5     -26.40       0.00       0.00       0.00
                            0.00     -46.37     -25.26       0.00

    3   3.1  0.5  0.5      -0.00       1.31      52.79      -0.00
                           26.40      -0.00      -0.00      -0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

    5   5.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00

    6   6.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00

    7   7.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   4.1  0.5 -0.5   16619.19       0.00       0.00       0.00
                           -0.00     -45.06      27.53       0.00

   12   5.1  0.5 -0.5       0.00   16619.19       0.00       0.00
                           45.06      -0.00      -0.00      -0.00

   13   6.1  0.5 -0.5       0.00       0.00   16619.19       0.00
                          -27.53       0.00       0.00       0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   19106.86
                           -0.00       0.00      -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -19.05665495     0.00000000        0.00      0.00000000        0.00      0.0000
     2   -19.05665495     0.00000000        0.00      0.00000000        0.00      0.0000
     3   -18.98129325     0.07536171    16539.98      0.07536171    16539.98      2.0507
     4   -18.98129325     0.07536171    16539.98      0.07536171    16539.98      2.0507
     5   -18.98129324     0.07536171    16539.98      0.07536171    16539.98      2.0507
     6   -18.98129324     0.07536171    16539.98      0.07536171    16539.98      2.0507
     7   -18.98069177     0.07596318    16671.99      0.07596318    16671.99      2.0671
     8   -18.98069177     0.07596318    16671.99      0.07596318    16671.99      2.0671
     9   -18.98069177     0.07596319    16671.99      0.07596319    16671.99      2.0671
    10   -18.98069177     0.07596319    16671.99      0.07596319    16671.99      2.0671
    11   -18.98069177     0.07596319    16671.99      0.07596319    16671.99      2.0671
    12   -18.98069177     0.07596319    16671.99      0.07596319    16671.99      2.0671
    13   -18.96959771     0.08705724    19106.86      0.08705724    19106.86      2.3689
    14   -18.96959771     0.08705724    19106.86      0.08705724    19106.86      2.3689


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   0.000000000   1.000000000  -0.000000003   0.000000013  -0.000000002  -0.000000006   0.000000003  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5   0.000000016   0.000000000   0.403673870   0.083406678   0.178570939  -0.048370141   0.069888914   0.564050852
                        -0.000000002  -0.000000000   0.348310928   0.071967667   0.254204651  -0.068857298   0.033250702   0.268355501

    3    3.1  0.5  0.5   0.000000001   0.000000000  -0.352479329  -0.072828915   0.245291010  -0.066442801   0.033164114   0.267656627
                         0.000000008   0.000000000   0.408504868   0.084404860  -0.172309441   0.046674073  -0.069706911  -0.562581939

    4    4.1  0.5  0.5  -0.000000000   0.000000000   0.000000022  -0.000000034  -0.000000050  -0.000000054  -0.000000017  -0.000000015
                        -0.000000000   0.000000005  -0.001318409   0.006380912   0.165347524   0.610423487   0.389360088  -0.048243807

    5    5.1  0.5  0.5   0.000000000  -0.000000000  -0.065586581   0.317427624  -0.141990385  -0.524194491  -0.200810986   0.024881552
                        -0.000000000   0.000000000   0.000000021  -0.000000020  -0.000000029  -0.000000030   0.000000003  -0.000000002

    6    6.1  0.5  0.5   0.000000000  -0.000000000  -0.109890321   0.531850088   0.084745110   0.312858712   0.121023638  -0.014995478
                         0.000000000  -0.000000000  -0.000000008   0.000000032   0.000000048   0.000000054   0.000000013   0.000000004

    7    7.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000001   0.000000003   0.000000002  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    8    1.1  0.5 -0.5   0.131256067  -0.000000000   0.000000009   0.000000002   0.000000005  -0.000000001   0.000000000   0.000000001
                         0.991348498  -0.000000000  -0.000000010  -0.000000002  -0.000000003   0.000000001  -0.000000000  -0.000000003

    9    2.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000014   0.000000002   0.000000003   0.000000000  -0.000000014  -0.000000017
                         0.000000000  -0.000000016  -0.110163601   0.533172673  -0.084148668  -0.310656694   0.624634324  -0.077395540

   10    3.1  0.5 -0.5   0.000000000  -0.000000008  -0.111481978   0.539553428   0.081197996   0.299763617  -0.623007631   0.077193988
                        -0.000000000  -0.000000000  -0.000000007   0.000000031   0.000000048   0.000000053  -0.000000029  -0.000000020

   11    4.1  0.5 -0.5   0.000000005   0.000000000  -0.004831117  -0.000998206   0.350882205  -0.095044708  -0.043564619  -0.351595938
                        -0.000000001   0.000000000  -0.004168503  -0.000861270   0.499498260  -0.135300803  -0.020726527  -0.167276938

   12    5.1  0.5 -0.5  -0.000000000  -0.000000000   0.207369059   0.042846407   0.428938677  -0.116188096  -0.010689619  -0.086272455
                        -0.000000000  -0.000000000  -0.240329704  -0.049656672  -0.301316244   0.081618598   0.022468281   0.181334265

   13    6.1  0.5 -0.5  -0.000000000  -0.000000000   0.347446892   0.071789118  -0.256006485   0.069345338   0.006442365   0.051994185
                        -0.000000000  -0.000000000  -0.402672542  -0.083199791   0.179836733  -0.048713017  -0.013541061  -0.109285524

   14    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000002   0.000000001   0.000000000   0.000000001
                         0.000000000   0.000000000   0.000000001   0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000002


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5  -0.000000010   0.000000001  -0.000000005   0.000000001  -0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5   0.029846696   0.433369532   0.021948438   0.096019552  -0.000000001   0.000000000
                        -0.000114496  -0.001662641  -0.016435470  -0.071901513   0.000000000  -0.000000000

    3    3.1  0.5  0.5   0.000119529   0.001735833  -0.002038990  -0.008920338  -0.000000000   0.000000000
                         0.031159799   0.452435738  -0.002722948  -0.011912365  -0.000000002   0.000000000

    4    4.1  0.5  0.5   0.000000113   0.000000054  -0.000000265   0.000000008   0.000000000  -0.000000000
                        -0.079582604   0.005480928   0.646432322  -0.147763277  -0.000000001  -0.000000004

    5    5.1  0.5  0.5   0.323870882  -0.022305407   0.656609507  -0.150089647  -0.000000000  -0.000000000
                        -0.000000088  -0.000000033   0.000000198  -0.000000004  -0.000000000   0.000000000

    6    6.1  0.5  0.5   0.701099413  -0.048285560  -0.294486968   0.067314572   0.000000000   0.000000000
                         0.000000112   0.000000050  -0.000000231  -0.000000003   0.000000000  -0.000000000

    7    7.1  0.5  0.5   0.000000001  -0.000000000   0.000000003  -0.000000001   0.117086461   0.992985004
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.016259149  -0.002680000

    8    1.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000003   0.000000000  -0.000000000
                        -0.000000001  -0.000000010  -0.000000001  -0.000000004   0.000000000  -0.000000000

    9    2.1  0.5 -0.5   0.000000007   0.000000014  -0.000000029   0.000000003  -0.000000000   0.000000000
                        -0.433372715   0.029846913  -0.119956601   0.027420055   0.000000000   0.000000001

   10    3.1  0.5 -0.5  -0.452439069   0.031160028   0.014882080  -0.003401740   0.000000000   0.000000002
                        -0.000000050  -0.000000015   0.000000079   0.000000008   0.000000000  -0.000000000

   11    4.1  0.5 -0.5  -0.005480873  -0.079581989   0.118277469   0.517438152  -0.000000004   0.000000001
                         0.000020967   0.000305428  -0.088568772  -0.387469366   0.000000001  -0.000000000

   12    5.1  0.5 -0.5   0.000085615   0.001242444   0.089963180   0.393569472  -0.000000000   0.000000000
                         0.022305258   0.323868529   0.120139608   0.525584530  -0.000000000   0.000000000

   13    6.1  0.5 -0.5   0.000185194   0.002689879  -0.040348115  -0.176514604   0.000000000  -0.000000000
                         0.048285198   0.701094239  -0.053882132  -0.235722687   0.000000000  -0.000000000

   14    7.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000002   0.183842749  -0.037957830
                         0.000000000   0.000000001   0.000000001   0.000000002   0.975821830  -0.111950000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  28.427%   1.214%   9.651%   0.708%   0.599%  39.017%   0.089%  18.781%
    3    3.1  0.5  0.5   0.000%   0.000%  29.112%   1.243%   8.986%   0.659%   0.596%  38.814%   0.097%  20.470%
    4    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.004%   2.734%  37.262%  15.160%   0.233%   0.633%   0.003%
    5    5.1  0.5  0.5   0.000%   0.000%   0.430%  10.076%   2.016%  27.478%   4.033%   0.062%  10.489%   0.050%
    6    6.1  0.5  0.5   0.000%   0.000%   1.208%  28.286%   0.718%   9.788%   1.465%   0.022%  49.154%   0.233%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   1.214%  28.427%   0.708%   9.651%  39.017%   0.599%  18.781%   0.089%
   10    3.1  0.5 -0.5   0.000%   0.000%   1.243%  29.112%   0.659%   8.986%  38.814%   0.596%  20.470%   0.097%
   11    4.1  0.5 -0.5   0.000%   0.000%   0.004%   0.000%  37.262%   2.734%   0.233%  15.160%   0.003%   0.633%
   12    5.1  0.5 -0.5   0.000%   0.000%  10.076%   0.430%  27.478%   2.016%   0.062%   4.033%   0.050%  10.489%
   13    6.1  0.5 -0.5   0.000%   0.000%  28.286%   1.208%   9.788%   0.718%   0.022%   1.465%   0.233%  49.154%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.075%   1.439%   0.000%   0.000%
    3    3.1  0.5  0.5   0.001%   0.022%   0.000%   0.000%
    4    4.1  0.5  0.5  41.787%   2.183%   0.000%   0.000%
    5    5.1  0.5  0.5  43.114%   2.253%   0.000%   0.000%
    6    6.1  0.5  0.5   8.672%   0.453%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%   1.397%  98.603%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   1.439%   0.075%   0.000%   0.000%
   10    3.1  0.5 -0.5   0.022%   0.001%   0.000%   0.000%
   11    4.1  0.5 -0.5   2.183%  41.787%   0.000%   0.000%
   12    5.1  0.5 -0.5   2.253%  43.114%   0.000%   0.000%
   13    6.1  0.5 -0.5   0.453%   8.672%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%  98.603%   1.397%


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
 CPU TIMES  *        10.88      4.66      5.17      0.33      0.02      0.41
 REAL TIME  *        13.78 SEC
 DISK USED  *        44.52 MB (local),      587.85 MB (total)
 SF USED    *       101.49 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -18.969597711068

              CI           MULTI         RHF-SCF
    -18.95733731    -18.78351664    -18.72782186
 **********************************************************************************************************************************
 Molpro calculation terminated
