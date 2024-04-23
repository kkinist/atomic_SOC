
 Working directory              : /wrk/irikura/molpro.4mmjBfkaAH/
 Global scratch directory       : /wrk/irikura/molpro.4mmjBfkaAH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.4mmjBfkaAH/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.03 sec
 ***,Sr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/5)
 {multi
     closed,1,3
     occ,3,6
     wf,sym=1,spin=0;state,2;
     wf,sym=1,spin=2;state,4;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,4; save,5203.2}
 hlsdiag(3) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5203.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.03 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 15:58:39  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sr   ECP ECP28MDF                 selected for group  1
 Library entry SR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  SR     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         127
 NUMBER OF SYMMETRY AOS:          110
 NUMBER OF CONTRACTIONS:           80   (   38Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.706E-05 0.181E-02 0.976E-02 0.976E-02 0.976E-02 0.976E-02 0.976E-02 0.121E-01
         2 0.508E-02 0.508E-02 0.508E-02 0.242E-01 0.242E-01 0.242E-01 0.110E+00 0.110E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     13.107 MB (compressed) written to integral file ( 23.3%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      89640.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      89640      RECORD LENGTH: 524288

 Memory used in sort:       0.65 MW

 SORT1 READ     6063679. AND WROTE       19650. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.14 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       88960.  Node maximum:       92031. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.87      1.51
 REAL TIME  *         2.39 SEC
 DISK USED  *        29.00 MB (local),      995.63 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -30.34122429     -30.34122429     0.00D+00     0.11D+00     0     0       0.00      0.01    start
   2      -30.34122430      -0.00000001     0.32D-05     0.84D-04     1     0       0.00      0.01    diag
   3      -30.34122430      -0.00000000     0.87D-06     0.22D-04     2     0       0.01      0.02    diag
   4      -30.34122430      -0.00000000     0.38D-06     0.15D-04     3     0       0.00      0.02    diag
   5      -30.34122430      -0.00000000     0.57D-07     0.56D-06     4     0       0.00      0.02    diag
   6      -30.34122430      -0.00000000     0.22D-07     0.30D-06     0     0       0.01      0.03    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -30.341224300615
  RHF One-electron energy             -49.818329586653
  RHF Two-electron energy              19.477105286038
  RHF Kinetic energy                    9.485913008600
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.198556034944

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.97188     1  1  s    1.00522
    2.1     2.00000    -0.18127     1  2  s    1.01723
    1.2     2.00000    -1.09297     1  1  pz   0.99986
    2.2     2.00000    -1.09297     1  1  px   0.99986
    3.2     2.00000    -1.09297     1  1  py   0.99986


 HOMO      2.1    -0.181273 =      -4.9327eV
 LUMO      4.2     0.009585 =       0.2608eV
 LUMO-HOMO         0.190858 =       5.1935eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.40       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.90      0.03      1.51
 REAL TIME  *         2.43 SEC
 DISK USED  *        29.34 MB (local),     1005.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      71 (   35   36)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             4
 Number of CSFs:               4   (4 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 2 4   6 3 5 1 6 4 2 5 3 1   4 6 3 5 2 4 6 3 5 2   1 6 4 5 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.106D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.574D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.131D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.142D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.453D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 1 2 3 3   1 2 6 5 4 810 7 9 3   1 2 5 4 6 810 9 7 3   1 2 4 5 6 810 9 7 2
                                        3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  332  ( 11 closed/active, 143 closed/virtual, 0 active/active, 178 active/virtual )
 Total number of variables:    374
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   14    0    -30.17098041     -30.23957634   -0.06859593    0.05909299 0.00004905 0.00000000  0.12E+01      0.21
   2    7   12    0    -30.23475431     -30.23595793   -0.00120362    0.00952043 0.00000043 0.00000000  0.16E+00      0.41
   3    5   10    0    -30.23595913     -30.23595916   -0.00000003    0.00006001 0.00000000 0.00000000  0.75E-03      0.59
   4    2    4    0    -30.23595916     -30.23595916    0.00000000    0.00000001 0.00000000 0.00000000  0.13E-06      0.66

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.12E-10)
                       Final energy:    -30.23595916
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.359495693966
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.55526547
 One electron energy                           -49.85192503
 Two electron energy                            19.49242934
 Virial ratio                                    4.17725298
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.225699615243
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.46551311
 One electron energy                           -48.73592309
 Two electron energy                            18.51022347
 Virial ratio                                    4.19324471
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.235574441732
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.42103230
 One electron energy                           -48.58150659
 Two electron energy                            18.34593215
 Virial ratio                                    4.20936958
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.198328400819
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.49415619
 One electron energy                           -48.94363000
 Two electron energy                            18.74530159
 Virial ratio                                    4.18072800
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.198328400819
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.49415619
 One electron energy                           -48.94363000
 Two electron energy                            18.74530159
 Virial ratio                                    4.18072800
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.198328400819
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.49415619
 One electron energy                           -48.94363000
 Two electron energy                            18.74530159
 Virial ratio                                    4.18072800
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 2 4   6 3 5 1 2 3 4 6 5 1   3 4 6 5 2 3 4 6 5 2   1 3 4 6 5 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 1 2 3 1   3 2 6 5 4 810 9 7 3   1 2 4 5 810 6 9 7 3   1 2 4 5 7 9 810 6 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.05205     1  1  s    1.01667
    2.1     0.63864    -0.11689     1  2  s    1.17140
    3.1     0.33318     0.00531     1  2  s   -0.48330    1  5  s   -0.88091    1  8  s    1.90258
    1.2     2.00000    -1.17456     1  1  px   1.00581
    2.2     2.00000    -1.17456     1  1  pz   1.00581
    3.2     2.00000    -1.17456     1  1  py   1.00581
    4.2     0.34273    -0.01367     1  2  pz   1.00199
    5.2     0.34273    -0.01367     1  2  px   1.00199
    6.2     0.34273    -0.01367     1  2  py   1.00199
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.94031982     -0.17965223
 ab 000         0.12586519      0.69540894
 ba 000        -0.12586519     -0.69540894
 00 200        -0.16744470      0.01217056
 00 020        -0.16744470      0.01217056
 00 002        -0.16744470      0.01217056
 
 Energy:      -30.35949569    -30.22569962
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa 000         1.00000000      0.00000000      0.00000000     -0.00000000
 00 aa0         0.00000000      1.00000000      0.00000000     -0.00000000
 00 a0a         0.00000000      0.00000000      1.00000000     -0.00000000
 00 0aa         0.00000000      0.00000000      0.00000000      1.00000000
 
 Energy:      -30.23557444    -30.19832840    -30.19832840    -30.19832840
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.62       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.54      0.64      0.03      1.51
 REAL TIME  *         3.26 SEC
 DISK USED  *        31.22 MB (local),        1.04 GB (total)
 SF USED    *         4.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.35949569  -0.0
    -30.22569962  -0.0
    -30.23557444  -0.0
    -30.19832840   2.0
    -30.19832840   2.0
    -30.19832840   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:        9 conf        9 CSFs
 N elec internal:      585 conf      945 CSFs
 N-1 el internal:      365 conf      805 CSFs
 N-2 el internal:      111 conf      273 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      71 (  35  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.35949569
     2       -30.22569962

 Number of blocks in overlap matrix:    65   Smallest eigenvalue:  0.88D+00
 Number of N-2 electron functions:      73
 Number of N-1 electron functions:     805

 Number of internal configurations:                  486
 Number of singly external configurations:         28579
 Number of doubly external configurations:         92321
 Total number of contracted configurations:       121386
 Total number of uncontracted configurations:     373447

 Diagonal Coupling coefficients finished.               Storage:  276575 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  262785 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.35949569    -0.00000000    -0.22394384  0.17D-01  0.62D-01     0.04
    1     2     2     1.00000000     0.00000000   -30.22569962     0.00000000    -0.21378259  0.21D-01  0.58D-01     0.04
    2     1     1     1.06880115    -0.20901842   -30.56851411    -0.20901842    -0.00462694  0.18D-02  0.96D-03     0.17
    2     2     2     1.06991636    -0.20456226   -30.43026187    -0.20456226    -0.00413127  0.19D-02  0.98D-03     0.17
    3     1     1     1.06730122    -0.21372662   -30.57322232    -0.00470821    -0.00017106  0.30D-04  0.52D-04     0.29
    3     2     2     1.06790246    -0.20883554   -30.43453516    -0.00427328    -0.00016202  0.33D-04  0.53D-04     0.29
    4     1     1     1.06783166    -0.21392145   -30.57341714    -0.00019482    -0.00000850  0.24D-05  0.22D-05     0.40
    4     2     2     1.06851164    -0.20902314   -30.43472275    -0.00018759    -0.00000855  0.30D-05  0.22D-05     0.40
    5     1     1     1.06801727    -0.21393119   -30.57342688    -0.00000974    -0.00000037  0.10D-06  0.14D-06     0.50
    5     2     2     1.06864028    -0.20903319   -30.43473281    -0.00001006    -0.00000047  0.23D-06  0.19D-06     0.50
    6     1     1     1.06802482    -0.21393159   -30.57342728    -0.00000040    -0.00000002  0.21D-08  0.11D-07     0.61
    6     2     2     1.06864252    -0.20903372   -30.43473334    -0.00000053    -0.00000004  0.10D-07  0.20D-07     0.61
    7     1     1     1.06803422    -0.21393161   -30.57342731    -0.00000002    -0.00000000  0.33D-09  0.68D-09     0.71
    7     2     2     1.06864801    -0.20903377   -30.43473338    -0.00000005    -0.00000000  0.19D-08  0.17D-08     0.71


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.6%
 S   4.2%   7.0%
 P   4.2%  28.2%  11.3%

 Initialization:   4.2%
 Other:           35.2%

 Total CPU:        0.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222000           0.1129288   0.9600973
 220222000           0.9288056  -0.1148489
 200222002          -0.1419481  -0.0109357
 200222020          -0.1419480  -0.0109355
 200222200          -0.1419480  -0.0109354

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.964787   -0.061031
 2           0.068405    0.964372

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966708    0.003693
 2           0.003693    0.966788


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96478669 (fixed)   0.96742125 (relaxed)   0.96670806 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00189948   -0.00057278   -0.20191359
 Singles      0.01046857   -0.01666210   -0.01766394
 Pairs        0.05769487    0.01838437    0.00564591
 Total        1.07006292    0.00114949   -0.21393161
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.35889609
 Nuclear energy                         0.00000000
 Kinetic energy                         9.65080510
 One electron energy                  -49.75947504
 Two electron energy                   19.18604773
 Virial quotient                       -3.16796651
 Correlation energy                    -0.21453122
 !MRCI STATE 1.1 Energy               -30.573427306199

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.58845799 (Davidson, fixed reference)
 Cluster corrected energies           -30.58811965 (Davidson, relaxed reference)
 Cluster corrected energies           -30.58845799 (Davidson, rotated reference)

 Cluster corrected energies           -30.58596880 (Pople, fixed reference)
 Cluster corrected energies           -30.58567487 (Pople, relaxed reference)
 Cluster corrected energies           -30.58596880 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96437216 (fixed)   0.96715916 (relaxed)   0.96678814 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00115815   -0.00062995   -0.00141451
 Singles      0.01304734   -0.01579498   -0.01731230
 Pairs        0.05568018   -0.19196751   -0.19030696
 Total        1.06988567   -0.20839245   -0.20903377
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.22629922
 Nuclear energy                         0.00000000
 Kinetic energy                         9.57678770
 One electron energy                  -48.57963159
 Two electron energy                   18.14489821
 Virial quotient                       -3.17796889
 Correlation energy                    -0.20843416
 !MRCI STATE 2.1 Energy               -30.434733382041

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.44929994 (Davidson, fixed reference)
 Cluster corrected energies           -30.44912888 (Davidson, relaxed reference)
 Cluster corrected energies           -30.44929994 (Davidson, rotated reference)

 Cluster corrected energies           -30.44688632 (Pople, fixed reference)
 Cluster corrected energies           -30.44673768 (Pople, relaxed reference)
 Cluster corrected energies           -30.44688632 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6        2.69       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.34      0.78      0.64      0.03      1.51
 REAL TIME  *         4.40 SEC
 DISK USED  *        33.29 MB (local),        1.10 GB (total)
 SF USED    *        22.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.58845799  AU                              
 SETTING HLSDIAG(2)     =       -30.44929994  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 4  Roots:    1   2   3   4
 Number of reference states: 4  Roots:    1   2   3   4

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        4 conf        4 CSFs
 N elec internal:      504 conf     1224 CSFs
 N-1 el internal:      245 conf      981 CSFs
 N-2 el internal:       61 conf      325 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      71 (  35  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.23557444
     2       -30.19832840
     3       -30.19832840
     4       -30.19832840

 Number of blocks in overlap matrix:   105   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     105
 Number of N-1 electron functions:     981

 Number of internal configurations:                  603
 Number of singly external configurations:         34821
 Number of doubly external configurations:        132864
 Total number of contracted configurations:       168288
 Total number of uncontracted configurations:     442747

 Diagonal Coupling coefficients finished.               Storage:  309419 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  272774 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.23557444    -0.00000000    -0.20626518  0.15D-01  0.53D-01     0.03
    1     2     2     1.00000000     0.00000000   -30.19832840    -0.00000000    -0.20532279  0.69D-02  0.64D-01     0.03
    1     3     3     1.00000000     0.00000000   -30.19832840    -0.00000000    -0.20532547  0.69D-02  0.64D-01     0.03
    1     4     4     1.00000000     0.00000000   -30.19832840    -0.00000000    -0.20527259  0.69D-02  0.63D-01     0.03
    2     1     1     1.06588896    -0.20310406   -30.43867850    -0.20310406    -0.00281029  0.76D-03  0.51D-03     0.27
    2     2     2     1.06656956    -0.20021924   -30.39854764    -0.20021924    -0.00317408  0.92D-03  0.72D-03     0.27
    2     3     3     1.06671654    -0.20021271   -30.39854111    -0.20021271    -0.00318475  0.93D-03  0.73D-03     0.27
    2     4     4     1.06671711    -0.20021190   -30.39854030    -0.20021190    -0.00318572  0.93D-03  0.73D-03     0.27
    3     1     1     1.06841097    -0.20628358   -30.44185802    -0.00317952    -0.00009637  0.19D-04  0.22D-04     0.53
    3     2     2     1.06825395    -0.20369974   -30.40202814    -0.00348050    -0.00012581  0.17D-04  0.57D-04     0.53
    3     3     3     1.06825343    -0.20369969   -30.40202809    -0.00348698    -0.00012586  0.17D-04  0.57D-04     0.53
    3     4     4     1.06819562    -0.20369824   -30.40202664    -0.00348634    -0.00012613  0.17D-04  0.58D-04     0.53
    4     1     1     1.06920565    -0.20640038   -30.44197482    -0.00011680    -0.00000446  0.20D-05  0.79D-06     0.77
    4     2     2     1.06995595    -0.20385920   -30.40218760    -0.00015946    -0.00000992  0.17D-05  0.75D-05     0.77
    4     3     3     1.06995569    -0.20385920   -30.40218760    -0.00015951    -0.00000992  0.17D-05  0.75D-05     0.77
    4     4     4     1.06993347    -0.20385869   -30.40218709    -0.00016046    -0.00001016  0.17D-05  0.77D-05     0.77
    5     1     1     1.06941607    -0.20640554   -30.44197998    -0.00000516    -0.00000017  0.66D-07  0.43D-07     1.01
    5     2     2     1.07078989    -0.20387351   -30.40220191    -0.00001431    -0.00000116  0.81D-07  0.90D-06     1.01
    5     3     3     1.07078984    -0.20387351   -30.40220191    -0.00001432    -0.00000116  0.81D-07  0.90D-06     1.01
    5     4     4     1.07078545    -0.20387343   -30.40220183    -0.00001474    -0.00000121  0.85D-07  0.92D-06     1.01
    6     1     1     1.06944553    -0.20640574   -30.44198018    -0.00000020    -0.00000001  0.90D-08  0.27D-08     1.27
    6     2     2     1.07103890    -0.20387527   -30.40220367    -0.00000175    -0.00000013  0.27D-07  0.60D-07     1.27
    6     3     3     1.07103886    -0.20387527   -30.40220367    -0.00000175    -0.00000013  0.27D-07  0.60D-07     1.27
    6     4     4     1.07103758    -0.20387526   -30.40220366    -0.00000183    -0.00000014  0.28D-07  0.61D-07     1.27
    7     1     1     1.06945485    -0.20640575   -30.44198020    -0.00000001    -0.00000000  0.37D-09  0.31D-09     1.55
    7     2     2     1.07109119    -0.20387543   -30.40220383    -0.00000016    -0.00000001  0.12D-08  0.61D-08     1.55
    7     3     3     1.07109118    -0.20387543   -30.40220383    -0.00000016    -0.00000001  0.12D-08  0.61D-08     1.55
    7     4     4     1.07109017    -0.20387543   -30.40220383    -0.00000017    -0.00000001  0.13D-08  0.64D-08     1.55


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.5%
 S   3.2%   5.2%
 P   1.9%  23.9%   9.0%

 Initialization:   1.3%
 Other:           51.0%

 Total CPU:        1.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222000           0.9668262   0.0000000  -0.0000000  -0.0000000
 2002220//           0.0000000  -0.0000000  -0.0000000   0.9661175
 200222//0           0.0000000   0.0000000   0.9661170  -0.0000000
 200222/0/          -0.0000000   0.9661170  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966826   -0.000000    0.000000    0.000000
 2           0.000000    0.966117    0.000000   -0.000000
 3          -0.000000   -0.000000    0.966117   -0.000000
 4          -0.000000    0.000000   -0.000000    0.966117

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966826    0.000000   -0.000000   -0.000000
 2           0.000000    0.966117   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.966117   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.966117


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96682616 (fixed)   0.96682616 (relaxed)   0.96682616 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00032416   -0.00052994   -0.17824751
 Singles      0.01566286   -0.01578321   -0.01777588
 Pairs        0.05381451    0.00000000   -0.01038236
 Total        1.06980153   -0.01631314   -0.20640575
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.23557444
 Nuclear energy                         0.00000000
 Kinetic energy                         9.56048081
 One electron energy                  -48.52666259
 Two electron energy                   18.08468240
 Virial quotient                       -3.18414741
 Correlation energy                    -0.20640575
 !MRCI STATE 1.1 Energy               -30.441980195021

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45638763 (Davidson, fixed reference)
 Cluster corrected energies           -30.45638763 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45638763 (Davidson, rotated reference)

 Cluster corrected energies           -30.45316557 (Pople, fixed reference)
 Cluster corrected energies           -30.45316557 (Pople, relaxed reference)
 Cluster corrected energies           -30.45316557 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96611701 (fixed)   0.96611701 (relaxed)   0.96611701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026275   -0.00043446   -0.18041111
 Singles      0.00547100   -0.01064148   -0.01097243
 Pairs        0.06563887   -0.00000000   -0.01249189
 Total        1.07137262   -0.01107594   -0.20387543
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19832840
 Nuclear energy                         0.00000000
 Kinetic energy                         9.63802513
 One electron energy                  -48.84841748
 Two electron energy                   18.44621365
 Virial quotient                       -3.15440180
 Correlation energy                    -0.20387543
 !MRCI STATE 2.1 Energy               -30.402203827654

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41675495 (Davidson, fixed reference)
 Cluster corrected energies           -30.41675495 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41675495 (Davidson, rotated reference)

 Cluster corrected energies           -30.41350944 (Pople, fixed reference)
 Cluster corrected energies           -30.41350944 (Pople, relaxed reference)
 Cluster corrected energies           -30.41350944 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96611701 (fixed)   0.96611701 (relaxed)   0.96611701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026275   -0.00043446   -0.18041111
 Singles      0.00547100   -0.01064148   -0.01097243
 Pairs        0.06563886    0.00000000   -0.01249189
 Total        1.07137261   -0.01107594   -0.20387543
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19832840
 Nuclear energy                         0.00000000
 Kinetic energy                         9.63802519
 One electron energy                  -48.84841749
 Two electron energy                   18.44621366
 Virial quotient                       -3.15440178
 Correlation energy                    -0.20387543
 !MRCI STATE 3.1 Energy               -30.402203827644

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41675495 (Davidson, fixed reference)
 Cluster corrected energies           -30.41675495 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41675495 (Davidson, rotated reference)

 Cluster corrected energies           -30.41350944 (Pople, fixed reference)
 Cluster corrected energies           -30.41350944 (Pople, relaxed reference)
 Cluster corrected energies           -30.41350944 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96611747 (fixed)   0.96611747 (relaxed)   0.96611747 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026275   -0.00043446   -0.00045552
 Singles      0.00547099   -0.01064149   -0.01097244
 Pairs        0.06563787   -0.19279947   -0.19244746
 Total        1.07137160   -0.20387543   -0.20387543
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19832840
 Nuclear energy                         0.00000000
 Kinetic energy                         9.63802427
 One electron energy                  -48.84841497
 Two electron energy                   18.44621115
 Virial quotient                       -3.15440208
 Correlation energy                    -0.20387543
 !MRCI STATE 4.1 Energy               -30.402203826929

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41675474 (Davidson, fixed reference)
 Cluster corrected energies           -30.41675474 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41675474 (Davidson, rotated reference)

 Cluster corrected energies           -30.41350927 (Pople, fixed reference)
 Cluster corrected energies           -30.41350927 (Pople, relaxed reference)
 Cluster corrected energies           -30.41350927 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7        8.00       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.09      1.71      0.78      0.64      0.03      1.51
 REAL TIME  *         6.49 SEC
 DISK USED  *        38.60 MB (local),        1.25 GB (total)
 SF USED    *        47.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =       -30.45638763  AU                              
 SETTING HLSDIAG(4)     =       -30.41675495  AU                              
 SETTING HLSDIAG(5)     =       -30.41675495  AU                              
 SETTING HLSDIAG(6)     =       -30.41675474  AU                              


        HLSDIAG
    -30.58845799
    -30.44929994
    -30.45638763
    -30.41675495
    -30.41675495
    -30.41675474
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:    -30.573427    -30.434733
 Replaced energies:    -30.588458    -30.449300

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   4

 Original energies:    -30.441980    -30.402204    -30.402204    -30.402204
 Replaced energies:    -30.456388    -30.416755    -30.416755    -30.416755



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.58845799

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00     -66.23      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -66.23       0.00      -0.00      -0.00       0.00      -0.00     -93.66

    2   2.1  0.0  0.0       0.00   30541.66      -0.00       0.00       9.92       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       9.92      -0.00       0.00       0.00      -0.00       0.00      14.02

    3   1.1  1.0  1.0       0.00      -0.00   28986.09       0.00       0.00       0.00      -0.00       0.00     -10.58       0.00
                           -0.00       0.00       0.00       0.00      -0.00     -14.96       0.00      10.58       0.00       0.00

    4   2.1  1.0  1.0      -0.00       0.00       0.00   37684.46       0.00       0.00      -0.00       0.00      -0.00    -117.63
                           66.23      -9.92      -0.00       0.00     166.35      -0.00     -10.58       0.00      -0.00      -0.00

    5   3.1  1.0  1.0     -66.23       9.92       0.00       0.00   37684.46       0.00      10.58       0.00       0.00       0.00
                           -0.00       0.00       0.00    -166.35       0.00      -0.00      -0.00       0.00      -0.00    -117.63

    6   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00   37684.51      -0.00     117.63      -0.00      -0.00
                            0.00      -0.00      14.96       0.00       0.00       0.00      -0.00       0.00     117.63      -0.00

    7   1.1  1.0  0.0       0.00       0.00      -0.00      -0.00      10.58      -0.00   28986.09       0.00       0.00       0.00
                            0.00      -0.00      -0.00      10.58       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     117.63       0.00   37684.46       0.00       0.00
                           -0.00       0.00     -10.58      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00     -10.58      -0.00       0.00      -0.00       0.00       0.00   37684.46       0.00
                            0.00      -0.00      -0.00       0.00       0.00    -117.63      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00       0.00    -117.63       0.00      -0.00       0.00       0.00       0.00   37684.51
                           93.66     -14.02      -0.00       0.00     117.63       0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      10.58      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      10.58       0.00       0.00

   12   2.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     117.63
                          -66.23       9.92      -0.00      -0.00      -0.00      -0.00     -10.58      -0.00      -0.00      -0.00

   13   3.1  1.0 -1.0     -66.23       9.92       0.00       0.00       0.00       0.00     -10.58      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -117.63

   14   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    -117.63       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     117.63       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.0  0.0       0.00      -0.00     -66.23      -0.00
                           -0.00      66.23      -0.00       0.00

    2   2.1  0.0  0.0      -0.00       0.00       9.92       0.00
                            0.00      -9.92       0.00      -0.00

    3   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0      -0.00       0.00     -10.58       0.00
                            0.00      10.58       0.00       0.00

    8   2.1  1.0  0.0      -0.00       0.00      -0.00    -117.63
                          -10.58       0.00      -0.00      -0.00

    9   3.1  1.0  0.0      10.58       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -117.63

   10   4.1  1.0  0.0      -0.00     117.63      -0.00      -0.00
                           -0.00       0.00     117.63      -0.00

   11   1.1  1.0 -1.0   28986.09       0.00       0.00       0.00
                           -0.00      -0.00       0.00      14.96

   12   2.1  1.0 -1.0       0.00   37684.46       0.00       0.00
                            0.00      -0.00    -166.35       0.00

   13   3.1  1.0 -1.0       0.00       0.00   37684.46       0.00
                           -0.00     166.35      -0.00       0.00

   14   4.1  1.0 -1.0       0.00       0.00       0.00   37684.51
                          -14.96      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by    -30.58845799 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000      -0.000     -93.661      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |0 0>               0.000   30541.661      -0.000       0.000      14.022       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000      -0.000   28986.093       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      14.961

    2    1  |1 1>+             -0.000       0.000       0.000   37684.461       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -14.961       0.000

    3    1  |1 1>+            -93.661      14.022       0.000       0.000   37684.462       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000   37684.507       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000   28986.093       0.000
                                0.000      -0.000       0.000      14.961       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000   37684.461
                               -0.000       0.000     -14.961       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000    -166.349      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               93.661     -14.022      -0.000       0.000     166.349       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000     -14.961       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               93.661     -14.022      -0.000       0.000     166.349      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      14.961       0.000
                               -0.000       0.000       0.000    -166.349       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000     166.349
                                0.000      -0.000      14.961       0.000       0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -93.661       0.000     -93.661       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      14.022      -0.000      14.022      -0.000       0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -14.961

    2    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     166.349      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -166.349       0.000    -166.349       0.000      -0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                              166.349       0.000      14.961       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000      14.961      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000     166.349
                                0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>           37684.462       0.000     -14.961      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000   37684.507       0.000    -166.349       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-            -14.961       0.000   28986.093       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000    -166.349       0.000   37684.461       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   37684.462       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000   37684.507
                               -0.000      -0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.58846120    -0.00000321       -0.70      0.00000000        0.00      0.0000
    2   -30.45638787     0.13207012    28986.04      0.13207333    28986.75      3.5939
    3   -30.45638787     0.13207012    28986.04      0.13207333    28986.75      3.5939
    4   -30.45638787     0.13207012    28986.04      0.13207333    28986.75      3.5939
    5   -30.44930034     0.13915765    30541.57      0.13916086    30542.28      3.7868
    6   -30.41826716     0.17019083    37352.57      0.17019404    37353.27      4.6312
    7   -30.41751265     0.17094534    37518.17      0.17094855    37518.87      4.6517
    8   -30.41751255     0.17094544    37518.19      0.17094865    37518.89      4.6517
    9   -30.41751255     0.17094544    37518.19      0.17094865    37518.89      4.6517
   10   -30.41599701     0.17246098    37850.81      0.17246419    37851.52      4.6930
   11   -30.41599701     0.17246098    37850.81      0.17246419    37851.52      4.6930
   12   -30.41599691     0.17246108    37850.83      0.17246429    37851.54      4.6930
   13   -30.41599691     0.17246109    37850.83      0.17246430    37851.54      4.6930
   14   -30.41599687     0.17246112    37850.84      0.17246433    37851.55      4.6930

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999057  0.00000000 -0.00000000  0.00000000  0.00001894  0.00434303  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000345  0.00000000 -0.00000000  0.00000000  0.99999364 -0.00356589 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.99999677 -0.00055546  0.00001262 -0.00000000 -0.00000000  0.00000000 -0.00247985
                           0.00000000 -0.00005970 -0.00001661 -0.00001294 -0.00000000  0.00000000  0.00000000 -0.00000002

   2    1  |1 1>+          0.00000000  0.00000002  0.00000003 -0.00175352 -0.00000000 -0.00000000  0.70710452  0.00000000
                          -0.00000000  0.00000002  0.00000001  0.00000001  0.00000000  0.00000000 -0.00087858 -0.00000000

   3    1  |1 1>+          0.00250747  0.00000000  0.00000000 -0.00000000 -0.00205875 -0.57735858 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000097  0.00175352  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000003 -0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000005

   1    1  |1 0>          -0.00000000  0.00001294  0.00000361  0.00000803 -0.00000000 -0.00000000  0.00000308  0.00000000
                          -0.00000000 -0.00001262 -0.00001485  0.99999692 -0.00000000 -0.00000000  0.00247985  0.00000000

   2    1  |1 0>           0.00000000  0.00000010  0.00000003  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000599
                           0.00000000  0.00175352 -0.00000097  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.70715325

   3    1  |1 0>          -0.00000000  0.00000003  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000005
                          -0.00000000  0.00000097  0.00175352  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00250747  0.00000000 -0.00000000  0.00000000  0.00205873  0.57730583  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00001664  0.00000463  0.00000361 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00055546  0.99999677  0.00001486  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00250747  0.00000000  0.00000000  0.00000000  0.00205874  0.57735905  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000002 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00087858  0.00000000
                           0.00000000  0.00000002  0.00000003 -0.00175352 -0.00000000 -0.00000000  0.70710360  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000010 -0.00000003 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000599
                          -0.00000000 -0.00175352  0.00000097 -0.00000002  0.00000000  0.00000000  0.00000000 -0.70705596

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000018
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000014
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000039 -0.70710629 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00019472 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.70525456  0.00000039 -0.00000000  0.00000000  0.41141530
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.70705642 -0.00000000 -0.00000000  0.00000001  0.70715497 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000153  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000005  0.00000000 -0.00000000 -0.00000010 -0.00000002  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.70705813 -0.00000001  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000153  0.00000000
                           0.70715279  0.00000000  0.00000000 -0.00000001 -0.70705859  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00369091 -0.00000000 -0.00000000  0.00000000  0.81651321

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00247985 -0.00000000 -0.00000000 -0.00000000 -0.00000017  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.70894455  0.00000039  0.00000000 -0.00000000 -0.40502298

   3    1  |1 1>-          0.00000000  0.00000000 -0.00019472 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000039  0.70710721  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000005  0.00000000 -0.00000000 -0.00000010 -0.00000002  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.70715543 -0.00000001  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.58846120     -0.00000321       -0.70      0.00000000        0.00      0.0000
     2   1    -30.45638787      0.13207012    28986.04      0.13207333    28986.75      3.5939
     3   1    -30.45638787      0.13207012    28986.04      0.13207333    28986.75      3.5939
     4   1    -30.45638787      0.13207012    28986.04      0.13207333    28986.75      3.5939
     5   1    -30.44930034      0.13915765    30541.57      0.13916086    30542.28      3.7868
     6   1    -30.41826716      0.17019083    37352.57      0.17019404    37353.27      4.6312
     7   1    -30.41751265      0.17094534    37518.17      0.17094855    37518.87      4.6517
     8   1    -30.41751255      0.17094544    37518.19      0.17094865    37518.89      4.6517
     9   1    -30.41751255      0.17094544    37518.19      0.17094865    37518.89      4.6517
    10   1    -30.41599701      0.17246098    37850.81      0.17246419    37851.52      4.6930
    11   1    -30.41599701      0.17246098    37850.81      0.17246419    37851.52      4.6930
    12   1    -30.41599691      0.17246108    37850.83      0.17246429    37851.54      4.6930
    13   1    -30.41599691      0.17246109    37850.83      0.17246430    37851.54      4.6930
    14   1    -30.41599687      0.17246112    37850.84      0.17246433    37851.55      4.6930

 E0 =    -30.58845799 is the energy of the lowest zeroth-order state
 E1 =    -30.58846120 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999057  0.00000000 -0.00000000  0.00000000  0.00001894  0.00434303  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000345  0.00000000 -0.00000000  0.00000000  0.99999364 -0.00356589 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     1    1  |1 1>+      -0.00000000  0.99999677 -0.00055546  0.00001262 -0.00000000 -0.00000000  0.00000000 -0.00247985
                                0.00000000 -0.00005970 -0.00001661 -0.00001294 -0.00000000  0.00000000  0.00000000 -0.00000002

  4  1     2    1  |1 1>+       0.00000000  0.00000002  0.00000003 -0.00175352 -0.00000000 -0.00000000  0.70710452  0.00000000
                               -0.00000000  0.00000002  0.00000001  0.00000001  0.00000000  0.00000000 -0.00087858 -0.00000000

  5  1     3    1  |1 1>+       0.00250747  0.00000000  0.00000000 -0.00000000 -0.00205875 -0.57735858 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     4    1  |1 1>+       0.00000000  0.00000097  0.00175352  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000003 -0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000005

  7  1     1    1  |1 0>       -0.00000000  0.00001294  0.00000361  0.00000803 -0.00000000 -0.00000000  0.00000308  0.00000000
                               -0.00000000 -0.00001262 -0.00001485  0.99999692 -0.00000000 -0.00000000  0.00247985  0.00000000

  8  1     2    1  |1 0>        0.00000000  0.00000010  0.00000003  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000599
                                0.00000000  0.00175352 -0.00000097  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.70715325

  9  1     3    1  |1 0>       -0.00000000  0.00000003  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000005
                               -0.00000000  0.00000097  0.00175352  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00250747  0.00000000 -0.00000000  0.00000000  0.00205873  0.57730583  0.00000000  0.00000000

 11  1     1    1  |1 1>-      -0.00000000  0.00001664  0.00000463  0.00000361 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00055546  0.99999677  0.00001486  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00250747  0.00000000  0.00000000  0.00000000  0.00205874  0.57735905  0.00000000  0.00000000

 13  1     3    1  |1 1>-       0.00000000 -0.00000002 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00087858  0.00000000
                                0.00000000  0.00000002  0.00000003 -0.00175352 -0.00000000 -0.00000000  0.70710360  0.00000000

 14  1     4    1  |1 1>-       0.00000000 -0.00000010 -0.00000003 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000599
                               -0.00000000 -0.00175352  0.00000097 -0.00000002  0.00000000  0.00000000  0.00000000 -0.70705596


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000018
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000014
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000017 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     2    1  |1 1>+       0.00000000  0.00000039 -0.70710629 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00019472 -0.00000000  0.00000000  0.00000000

  5  1     3    1  |1 1>+       0.00000000  0.70525456  0.00000039 -0.00000000  0.00000000  0.41141530
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     4    1  |1 1>+       0.70705642 -0.00000000 -0.00000000  0.00000001  0.70715497 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000153  0.00000000

  7  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 0>       -0.00000005  0.00000000 -0.00000000 -0.00000010 -0.00000002  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.70705813 -0.00000001  0.00000000

  9  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000153  0.00000000
                                0.70715279  0.00000000  0.00000000 -0.00000001 -0.70705859  0.00000000

 10  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00369091 -0.00000000 -0.00000000  0.00000000  0.81651321

 11  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00247985 -0.00000000 -0.00000000 -0.00000000 -0.00000017  0.00000000

 12  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.70894455  0.00000039  0.00000000 -0.00000000 -0.40502298

 13  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00019472 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000039  0.70710721  0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>-       0.00000005  0.00000000 -0.00000000 -0.00000010 -0.00000002  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.70715543 -0.00000001  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
  6  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.01%
  9  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 11  1     1    1  |1 1>-         0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 13  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.99%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
  5  1     3    1  |1 1>+         0.00%   49.74%    0.00%    0.00%    0.00%   16.93%
  6  1     4    1  |1 1>+        49.99%    0.00%    0.00%    0.00%   50.01%    0.00%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%    0.00%   49.99%    0.00%    0.00%
  9  1     3    1  |1 0>         50.01%    0.00%    0.00%    0.00%   49.99%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   66.67%
 11  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%   50.26%    0.00%    0.00%    0.00%   16.40%
 13  1     3    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%   50.01%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7        8.00       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.76      2.64      1.71      0.78      0.64      0.03      1.51
 REAL TIME  *         9.61 SEC
 DISK USED  *        38.60 MB (local),        1.25 GB (total)
 SF USED    *        47.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -30.415996871460

              CI              CI           MULTI         RHF-SCF
    -30.40220383    -30.43473338    -30.19832840    -30.34122430
 **********************************************************************************************************************************
 Molpro calculation terminated
