
 Working directory              : /wrk/irikura/molpro.T34tWj9jlk/
 Global scratch directory       : /wrk/irikura/molpro.T34tWj9jlk/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.T34tWj9jlk/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rb SO-CI
                                                                                 ! ECP replaces 28 electrons
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Rb};
 
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 14:23:36  
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

 Library entry Rb   ECP ECP28MDF                 selected for group  1
 Library entry RB     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry RB     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry RB     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry RB     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  RB      9.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    9
 NUMBER OF PRIMITIVE AOS:         128
 NUMBER OF SYMMETRY AOS:          111
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

         1 0.146E-03 0.129E-02 0.129E-02 0.129E-02 0.129E-02 0.129E-02 0.494E-02 0.974E-02
         2 0.637E-02 0.637E-02 0.637E-02 0.324E-01 0.324E-01 0.324E-01 0.136E+00 0.136E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     7.864 MB (compressed) written to integral file ( 18.8%)

     Node minimum: 0.524 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     223617.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     223617      RECORD LENGTH: 524288

 Memory used in sort:       0.78 MW

 SORT1 READ     6063679. AND WROTE       46599. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.08 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     36 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      223265.  Node maximum:      226254. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.72      0.50
 REAL TIME  *         1.31 SEC
 DISK USED  *        29.09 MB (local),      400.75 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   1   3

 NELEC=    8   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -23.65797655     -23.65797655     0.00D+00     0.99D-01     0     0       0.00      0.00    start
   2      -23.65834088      -0.00036433     0.11D-02     0.13D-02     1     0       0.00      0.00    diag
   3      -23.65835094      -0.00001006     0.24D-03     0.53D-03     2     0       0.01      0.01    diag
   4      -23.65835134      -0.00000040     0.35D-04     0.16D-03     3     0       0.00      0.01    diag
   5      -23.65835134      -0.00000000     0.13D-05     0.12D-04     4     0       0.00      0.01    diag
   6      -23.65835134      -0.00000000     0.29D-07     0.25D-06     5     0       0.00      0.01    diag
   7      -23.65835134      -0.00000000     0.20D-08     0.37D-08     0     0       0.01      0.02    diag

 Final occupancy:   1   3

 !RHF STATE 1.1 Energy                -23.658351338476
  RHF One-electron energy             -37.713521090696
  RHF Two-electron energy              14.055169752220
  RHF Kinetic energy                    7.523975247397
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.144395158219

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.77945     1  1  s    0.99619
    1.2     2.00000    -1.00738     1  1  py   1.00552
    2.2     2.00000    -1.00738     1  1  px   1.00552
    3.2     2.00000    -1.00738     1  1  pz   1.00558


 HOMO      3.2    -1.007380 =     -27.4122eV
 LUMO      2.1    -0.139436 =      -3.7942eV
 LUMO-HOMO         0.867944 =      23.6180eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.82      0.09      0.50
 REAL TIME  *         2.24 SEC
 DISK USED  *        29.45 MB (local),      405.02 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:      69 (   30   39)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.392D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.452D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.216D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.353D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 4 6 3 5 1 2 4   6 3 5 1 2 4 6 3 5 1   2 4 6 5 3 2 6 4 5 3   1 2 6 4 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.109D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.125D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 1 3 2 1   2 3 7 9 610 8 4 5 2   1 3 9 7 810 6 5 4 2   1 3 6 7 9 4 510 8 3
                                        1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  364  ( 7 closed/active, 147 closed/virtual, 0 active/active, 210 active/virtual )
 Total number of variables:    413
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0    -23.72927741     -23.72934079   -0.00006338    0.01128017 0.00000036 0.00000000  0.12E-01      0.13
   2    3    3    0    -23.72934080     -23.72934080   -0.00000000    0.00000999 0.00000000 0.00000000  0.12E-03      0.25

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.31E-10)
                       Final energy:    -23.72934080
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                       -23.798017652869
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.61758045
 One electron energy                           -39.48372139
 Two electron energy                            15.68570374
 Virial ratio                                    4.12409141
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                       -23.718063683815
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59947025
 One electron energy                           -38.85306492
 Two electron energy                            15.13500123
 Virial ratio                                    4.12101540
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                       -23.718063683794
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59947025
 One electron energy                           -38.85306492
 Two electron energy                            15.13500123
 Virial ratio                                    4.12101540
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                       -23.718063683794
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59947025
 One electron energy                           -38.85306492
 Two electron energy                            15.13500123
 Virial ratio                                    4.12101540
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                       -23.718063683794
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59947025
 One electron energy                           -38.85306492
 Two electron energy                            15.13500123
 Virial ratio                                    4.12101540
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                       -23.718063683794
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.59947025
 One electron energy                           -38.85306492
 Two electron energy                            15.13500123
 Virial ratio                                    4.12101540
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                       -23.717049552139
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.55508897
 One electron energy                           -38.53325928
 Two electron energy                            14.81620973
 Virial ratio                                    4.13921512
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     2.997826316296
 !MCSCF expec                      <3.1|LXLX|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     1.002173693451
 !MCSCF expec                      <6.1|LXLX|6.1>     4.000000000000
 !MCSCF expec                      <7.1|LXLX|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     3.002172109876
 !MCSCF expec                      <3.1|LYLY|3.1>     4.000000000000
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     0.997827880390
 !MCSCF expec                      <6.1|LYLY|6.1>     1.000000000000
 !MCSCF expec                      <7.1|LYLY|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.000001573827
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000000000000
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.999998426158
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.000000000000
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>     0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 1 4 6 3 1 5 2 3   5 4 6 1 2 3 5 4 6 1   2 4 6 3 5 2 4 6 3 5   1 2 4 6 3 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 2 3 3   1 2 9 7 6 810 4 5 1   2 3 9 7 810 6 4 5 1   2 3 6 7 9 4 5 810 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.63998     1  1  s    0.99571
    2.1     0.14286     0.03034     1  1  d0   0.83293
    3.1     0.14286    -0.03323     1  2  s    1.00121
    4.1     0.14286     0.03034     1  1  d1+  0.83293
    5.1     0.14286     0.03034     1  1  d1-  0.83293
    6.1     0.14286     0.03034     1  1  d2-  0.83293
    7.1     0.14286     0.01367     1  2  s   -0.69819    1  4  s   -0.32842    1  8  s    1.51492
    8.1     0.14286     0.03034     1  1  d2+  0.83293
    1.2     2.00000    -0.86837     1  1  px   1.00298
    2.2     2.00000    -0.86837     1  1  pz   1.00298
    3.2     2.00000    -0.86837     1  1  py   1.00298
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 000a000        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      1.00000000      0.00000000
 0000a00        0.00000000      0.00000000      0.00000000      1.00000000      0.00000000      0.00000000      0.00000000
 00a0000        0.00000000      0.00000000      1.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a000000       -0.00000000      0.99999980      0.00000000      0.00000000      0.00062726      0.00000000     -0.00000001
 000000a        0.00000000     -0.00062726      0.00000000      0.00000000      0.99999980      0.00000000      0.00000000
 00000a0       -0.00167939      0.00000001      0.00000000      0.00000000     -0.00000000      0.00000000      0.99999859
 0a00000        0.99999859      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00167939
 
 Energy:      -23.79801765    -23.71806368    -23.71806368    -23.71806368    -23.71806368    -23.71806368    -23.71704955
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.65       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.11      0.29      0.09      0.50
 REAL TIME  *         2.63 SEC
 DISK USED  *        32.09 MB (local),      436.77 MB (total)
 SF USED    *         7.56 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -23.79801765   0.0
    -23.71806368   6.0
    -23.71806368   6.0
    -23.71806368   6.0
    -23.71806368   6.0
    -23.71806368   6.0
    -23.71704955   0.0
                                                  


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
 Number of external orbitals:      69 (  30  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -23.79801765
     2       -23.71806368
     3       -23.71806368
     4       -23.71806368
     5       -23.71806368
     6       -23.71806368
     7       -23.71704955

 Number of blocks in overlap matrix:   120   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     120
 Number of N-1 electron functions:     967

 Number of internal configurations:                 1281
 Number of singly external configurations:         32601
 Number of doubly external configurations:        144282
 Total number of contracted configurations:       178164
 Total number of uncontracted configurations:     360339

 Diagonal Coupling coefficients finished.               Storage:    529558 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    308722 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -23.79801765     0.00000000    -0.19017725  0.51D-02  0.61D-01     0.08
    1     2     2     1.00000000     0.00000000   -23.71806368    -0.00000000    -0.17885990  0.40D-02  0.55D-01     0.08
    1     3     3     1.00000000     0.00000000   -23.71806368     0.00000000    -0.17886702  0.40D-02  0.55D-01     0.08
    1     4     4     1.00000000     0.00000000   -23.71806368    -0.00000000    -0.17886290  0.40D-02  0.55D-01     0.08
    1     5     5     1.00000000     0.00000000   -23.71806368    -0.00000000    -0.17886394  0.40D-02  0.55D-01     0.08
    1     6     6     1.00000000     0.00000000   -23.71806368    -0.00000000    -0.17886797  0.40D-02  0.55D-01     0.08
    1     7     7     1.00000000     0.00000000   -23.71704955    -0.00000000    -0.17734565  0.41D-02  0.53D-01     0.08
    2     1     1     1.05940598    -0.18018515   -23.97820280    -0.18018515    -0.00255740  0.56D-03  0.62D-03     0.79
    2     2     2     1.05503208    -0.17350480   -23.89156848    -0.17350480    -0.00201712  0.31D-03  0.49D-03     0.79
    2     3     3     1.05503222    -0.17350358   -23.89156727    -0.17350358    -0.00201799  0.31D-03  0.50D-03     0.79
    2     4     4     1.05503341    -0.17350299   -23.89156668    -0.17350299    -0.00201856  0.31D-03  0.50D-03     0.79
    2     5     5     1.05503287    -0.17350289   -23.89156658    -0.17350289    -0.00201908  0.31D-03  0.50D-03     0.79
    2     6     6     1.05503297    -0.17350268   -23.89156637    -0.17350268    -0.00201881  0.31D-03  0.50D-03     0.79
    2     7     7     1.05407540    -0.17263482   -23.88968437    -0.17263482    -0.00196661  0.23D-03  0.48D-03     0.79
    3     1     1     1.06161435    -0.18300269   -23.98102035    -0.00281754    -0.00008963  0.18D-04  0.25D-04     1.54
    3     2     2     1.05711180    -0.17578344   -23.89384712    -0.00227864    -0.00006882  0.16D-04  0.18D-04     1.54
    3     3     3     1.05711222    -0.17578341   -23.89384710    -0.00227983    -0.00006888  0.16D-04  0.18D-04     1.54
    3     4     4     1.05711125    -0.17578335   -23.89384703    -0.00228036    -0.00006886  0.16D-04  0.18D-04     1.54
    3     5     5     1.05711105    -0.17578334   -23.89384702    -0.00228044    -0.00006888  0.16D-04  0.18D-04     1.54
    3     6     6     1.05711103    -0.17578333   -23.89384702    -0.00228065    -0.00006888  0.16D-04  0.18D-04     1.54
    3     7     7     1.05609336    -0.17485002   -23.89189957    -0.00221519    -0.00006254  0.12D-04  0.16D-04     1.54
    4     1     1     1.06237085    -0.18310820   -23.98112586    -0.00010551    -0.00000435  0.21D-05  0.78D-06     2.19
    4     2     2     1.05766808    -0.17586821   -23.89393190    -0.00008478    -0.00000478  0.49D-05  0.65D-06     2.19
    4     3     3     1.05766810    -0.17586821   -23.89393190    -0.00008480    -0.00000478  0.49D-05  0.65D-06     2.19
    4     4     4     1.05766802    -0.17586820   -23.89393189    -0.00008485    -0.00000478  0.49D-05  0.65D-06     2.19
    4     5     5     1.05766792    -0.17586820   -23.89393188    -0.00008486    -0.00000479  0.49D-05  0.65D-06     2.19
    4     6     6     1.05766792    -0.17586820   -23.89393188    -0.00008487    -0.00000479  0.49D-05  0.65D-06     2.19
    4     7     7     1.05649660    -0.17492459   -23.89197414    -0.00007457    -0.00000313  0.16D-05  0.60D-06     2.19
    5     1     1     1.06255464    -0.18311328   -23.98113093    -0.00000508    -0.00000013  0.47D-07  0.29D-07     2.84
    5     2     2     1.05786587    -0.17587449   -23.89393817    -0.00000627    -0.00000040  0.21D-06  0.98D-07     2.84
    5     3     3     1.05786579    -0.17587449   -23.89393817    -0.00000627    -0.00000040  0.21D-06  0.98D-07     2.84
    5     4     4     1.05786587    -0.17587449   -23.89393817    -0.00000628    -0.00000040  0.21D-06  0.98D-07     2.84
    5     5     5     1.05786586    -0.17587449   -23.89393817    -0.00000629    -0.00000040  0.21D-06  0.98D-07     2.84
    5     6     6     1.05786586    -0.17587449   -23.89393817    -0.00000629    -0.00000040  0.21D-06  0.98D-07     2.84
    5     7     7     1.05659078    -0.17492831   -23.89197786    -0.00000372    -0.00000013  0.90D-07  0.24D-07     2.84
    6     1     1     1.06256981    -0.18311344   -23.98113109    -0.00000016    -0.00000001  0.14D-08  0.12D-08     3.49
    6     2     2     1.05790731    -0.17587504   -23.89393872    -0.00000055    -0.00000003  0.15D-07  0.61D-08     3.49
    6     3     3     1.05790730    -0.17587504   -23.89393872    -0.00000055    -0.00000003  0.15D-07  0.61D-08     3.49
    6     4     4     1.05790728    -0.17587504   -23.89393872    -0.00000055    -0.00000003  0.15D-07  0.62D-08     3.49
    6     5     5     1.05790729    -0.17587504   -23.89393872    -0.00000055    -0.00000003  0.15D-07  0.61D-08     3.49
    6     6     6     1.05790729    -0.17587504   -23.89393872    -0.00000055    -0.00000003  0.15D-07  0.61D-08     3.49
    6     7     7     1.05660617    -0.17492847   -23.89197803    -0.00000016    -0.00000001  0.58D-08  0.17D-08     3.49
    7     1     1     1.06256981    -0.18311344   -23.98113109    -0.00000000    -0.00000001  0.14D-08  0.12D-08     3.98
    7     2     2     1.05791860    -0.17587508   -23.89393876    -0.00000004    -0.00000000  0.11D-09  0.22D-09     3.98
    7     3     3     1.05791539    -0.17587508   -23.89393876    -0.00000004    -0.00000000  0.13D-08  0.29D-09     3.98
    7     4     4     1.05791539    -0.17587508   -23.89393876    -0.00000004    -0.00000000  0.13D-08  0.29D-09     3.98
    7     5     5     1.05791538    -0.17587508   -23.89393876    -0.00000004    -0.00000000  0.13D-08  0.29D-09     3.98
    7     6     6     1.05791538    -0.17587508   -23.89393876    -0.00000004    -0.00000000  0.13D-08  0.29D-09     3.98
    7     7     7     1.05660616    -0.17492847   -23.89197803    -0.00000000    -0.00000001  0.58D-08  0.17D-08     3.98


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.8%
 S   5.3%   8.5%
 P   1.3%  17.8%  13.6%

 Initialization:   1.0%
 Other:           47.7%

 Total CPU:        4.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2000/000222           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.9721963   0.0000000
 20000/00222           0.0000000   0.0000000  -0.0000000   0.0000000   0.9721963   0.0000000   0.0000000
 2/000000222          -0.0000000   0.0000000   0.9721961  -0.0004934   0.0000000   0.0000000  -0.0000000
 2000000/222          -0.0000000  -0.0000000   0.0004934   0.9721961   0.0000000   0.0000000   0.0000000
 200/0000222           0.0000000   0.9721948   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 200000/0222          -0.0483614   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9714380
 20/00000222           0.9688604  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0513188

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968940   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.046734
 2          -0.000000    0.000000    0.972195   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.972196    0.000000    0.000493   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000493    0.000000    0.972196    0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.972196    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.972196   -0.000000
 7           0.049687    0.000000   -0.000000    0.000000    0.000000    0.000000    0.971523

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970066   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.001411
 2          -0.000000    0.972195   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.972196   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.972196    0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.972196   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.972196    0.000000
 7           0.001411   -0.000000    0.000000    0.000000    0.000000    0.000000    0.972792


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96894030 (fixed)   0.97006669 (relaxed)   0.97006566 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009271   -0.00017723   -0.17438144
 Singles      0.00581752   -0.00997256   -0.01038760
 Pairs        0.05675809    0.01215178    0.00165560
 Total        1.06266832    0.00200198   -0.18311344
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.79781823
 Nuclear energy                         0.00000000
 Kinetic energy                         7.69301991
 One electron energy                  -39.36723058
 Two electron energy                   15.38609949
 Virial quotient                       -3.11725842
 Correlation energy                    -0.18331286
 !MRCI STATE 1.1 Energy               -23.981131090020

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.99261900 (Davidson, fixed reference)
 Cluster corrected energies           -23.99261859 (Davidson, relaxed reference)
 Cluster corrected energies           -23.99261900 (Davidson, rotated reference)

 Cluster corrected energies           -23.99001876 (Pople, fixed reference)
 Cluster corrected energies           -23.99001843 (Pople, relaxed reference)
 Cluster corrected energies           -23.99001876 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97219477 (fixed)   0.97219477 (relaxed)   0.97219477 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009483   -0.00017982   -0.15764741
 Singles      0.00468228   -0.00909782   -0.00937753
 Pairs        0.05324181    0.00000000   -0.00885014
 Total        1.05801892   -0.00927764   -0.17587508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71806368
 Nuclear energy                         0.00000000
 Kinetic energy                         7.69454816
 One electron energy                  -38.73979401
 Two electron energy                   14.84585525
 Virial quotient                       -3.10530758
 Correlation energy                    -0.17587508
 !MRCI STATE 2.1 Energy               -23.893938762992

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.90414285 (Davidson, fixed reference)
 Cluster corrected energies           -23.90414285 (Davidson, relaxed reference)
 Cluster corrected energies           -23.90414285 (Davidson, rotated reference)

 Cluster corrected energies           -23.90181520 (Pople, fixed reference)
 Cluster corrected energies           -23.90181520 (Pople, relaxed reference)
 Cluster corrected energies           -23.90181520 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97219613 (fixed)   0.97219625 (relaxed)   0.97219625 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009483   -0.00017982   -0.15764793
 Singles      0.00467917   -0.00909777   -0.00937739
 Pairs        0.05324171    0.00000000   -0.00884976
 Total        1.05801570   -0.00927759   -0.17587508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71806368
 Nuclear energy                         0.00000000
 Kinetic energy                         7.69453515
 One electron energy                  -38.73972803
 Two electron energy                   14.84578927
 Virial quotient                       -3.10531283
 Correlation energy                    -0.17587508
 !MRCI STATE 3.1 Energy               -23.893938761725

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.90414228 (Davidson, fixed reference)
 Cluster corrected energies           -23.90414228 (Davidson, relaxed reference)
 Cluster corrected energies           -23.90414228 (Davidson, rotated reference)

 Cluster corrected energies           -23.90181475 (Pople, fixed reference)
 Cluster corrected energies           -23.90181475 (Pople, relaxed reference)
 Cluster corrected energies           -23.90181475 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97219613 (fixed)   0.97219625 (relaxed)   0.97219625 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009483   -0.00017982   -0.15764793
 Singles      0.00467918   -0.00909777   -0.00937739
 Pairs        0.05324170   -0.00000000   -0.00884976
 Total        1.05801571   -0.00927759   -0.17587508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71806368
 Nuclear energy                         0.00000000
 Kinetic energy                         7.69453488
 One electron energy                  -38.73972792
 Two electron energy                   14.84578915
 Virial quotient                       -3.10531295
 Correlation energy                    -0.17587508
 !MRCI STATE 4.1 Energy               -23.893938761682

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.90414228 (Davidson, fixed reference)
 Cluster corrected energies           -23.90414228 (Davidson, relaxed reference)
 Cluster corrected energies           -23.90414228 (Davidson, rotated reference)

 Cluster corrected energies           -23.90181475 (Pople, fixed reference)
 Cluster corrected energies           -23.90181475 (Pople, relaxed reference)
 Cluster corrected energies           -23.90181475 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.97219626 (fixed)   0.97219626 (relaxed)   0.97219626 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009483   -0.00017982   -0.15764793
 Singles      0.00467917   -0.00909777   -0.00937739
 Pairs        0.05324170   -0.00000000   -0.00884976
 Total        1.05801570   -0.00927759   -0.17587508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71806368
 Nuclear energy                         0.00000000
 Kinetic energy                         7.69453487
 One electron energy                  -38.73972780
 Two electron energy                   14.84578904
 Virial quotient                       -3.10531295
 Correlation energy                    -0.17587508
 !MRCI STATE 5.1 Energy               -23.893938761679

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.90414228 (Davidson, fixed reference)
 Cluster corrected energies           -23.90414228 (Davidson, relaxed reference)
 Cluster corrected energies           -23.90414228 (Davidson, rotated reference)

 Cluster corrected energies           -23.90181475 (Pople, fixed reference)
 Cluster corrected energies           -23.90181475 (Pople, relaxed reference)
 Cluster corrected energies           -23.90181475 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97219626 (fixed)   0.97219626 (relaxed)   0.97219626 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009483   -0.00017982   -0.15764794
 Singles      0.00467917   -0.00909776   -0.00937739
 Pairs        0.05324171   -0.00000000   -0.00884975
 Total        1.05801570   -0.00927759   -0.17587508
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71806368
 Nuclear energy                         0.00000000
 Kinetic energy                         7.69453498
 One electron energy                  -38.73972785
 Two electron energy                   14.84578908
 Virial quotient                       -3.10531291
 Correlation energy                    -0.17587508
 !MRCI STATE 6.1 Energy               -23.893938761674

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.90414228 (Davidson, fixed reference)
 Cluster corrected energies           -23.90414228 (Davidson, relaxed reference)
 Cluster corrected energies           -23.90414228 (Davidson, rotated reference)

 Cluster corrected energies           -23.90181475 (Pople, fixed reference)
 Cluster corrected energies           -23.90181475 (Pople, relaxed reference)
 Cluster corrected energies           -23.90181475 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.97152285 (fixed)   0.97279262 (relaxed)   0.97279159 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010878   -0.00020879   -0.00041845
 Singles      0.00442262   -0.00943789   -0.00966364
 Pairs        0.05218970   -0.16506743   -0.16484638
 Total        1.05672111   -0.17471411   -0.17492847
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -23.71724898
 Nuclear energy                         0.00000000
 Kinetic energy                         7.65021028
 One electron energy                  -38.38414695
 Two electron energy                   14.49216893
 Virial quotient                       -3.12304854
 Correlation energy                    -0.17472905
 !MRCI STATE 7.1 Energy               -23.891978025166

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -23.90188885 (Davidson, fixed reference)
 Cluster corrected energies           -23.90188846 (Davidson, relaxed reference)
 Cluster corrected energies           -23.90188885 (Davidson, rotated reference)

 Cluster corrected energies           -23.89962322 (Pople, fixed reference)
 Cluster corrected energies           -23.89962291 (Pople, relaxed reference)
 Cluster corrected energies           -23.89962322 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       31.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       10.57       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.45      4.33      0.29      0.09      0.50
 REAL TIME  *         7.46 SEC
 DISK USED  *        42.01 MB (local),      555.74 MB (total)
 SF USED    *        85.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -23.99261900  AU                              
 SETTING HLSDIAG(2)     =       -23.90414285  AU                              
 SETTING HLSDIAG(3)     =       -23.90414228  AU                              
 SETTING HLSDIAG(4)     =       -23.90414228  AU                              
 SETTING HLSDIAG(5)     =       -23.90414228  AU                              
 SETTING HLSDIAG(6)     =       -23.90414228  AU                              
 SETTING HLSDIAG(7)     =       -23.90188885  AU                              


        HLSDIAG
    -23.99261900
    -23.90414285
    -23.90414228
    -23.90414228
    -23.90414228
    -23.90414228
    -23.90188885
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:    -23.981131    -23.893939    -23.893939    -23.893939    -23.893939    -23.893939    -23.891978
 Replaced energies:    -23.992619    -23.904143    -23.904142    -23.904142    -23.904142    -23.904142    -23.901889



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -23.99261900

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.00   19418.27       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.37
                           -0.00       0.00       0.00       0.00       0.00       0.79      -0.00      -0.00      -0.00      -0.00

    3   3.1  0.5  0.5       0.00       0.00   19418.40       0.00       0.00       0.00       0.00      -0.00       1.37       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   19418.40       0.00       0.00       0.00       0.00      -0.79      -0.00
                            0.00      -0.00      -0.00       0.00       1.58       0.00      -0.00       0.00       0.00      -0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   19418.40       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -1.58       0.00      -0.00      -0.00      -0.00       0.79      -0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   19418.40       0.00       0.00      -0.00       0.00
                            0.00      -0.79       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       1.37

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   19912.97      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

    8   1.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    9   2.1  0.5 -0.5       0.00      -0.00       1.37      -0.79       0.00      -0.00      -0.00       0.00   19418.27       0.00
                           -0.00       0.00      -0.00      -0.00      -0.79      -0.00       0.00       0.00      -0.00      -0.00

   10   3.1  0.5 -0.5       0.00      -1.37       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   19418.40
                            0.00       0.00       0.00       0.00       0.00      -1.37       0.00       0.00       0.00       0.00

   11   4.1  0.5 -0.5      -0.00       0.79       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.79       0.00      -0.00       0.00       0.00

   12   5.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.79      -0.00       0.00       0.00       0.00
                           -0.00       0.79      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   13   6.1  0.5 -0.5      -0.00       0.00      -0.00       0.00      -0.79      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       1.37       0.79       0.00      -0.00       0.00      -0.00       0.79      -0.00

   14   7.1  0.5 -0.5       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.79      -0.00       0.00       0.00
                           -0.00      -0.79      -0.00       0.00

    3   3.1  0.5  0.5       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -1.37       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.79       0.00

    5   5.1  0.5  0.5      -0.00       0.00      -0.79       0.00
                            0.00      -0.00      -0.00      -0.00

    6   6.1  0.5  0.5      -0.00       0.79      -0.00      -0.00
                            0.79       0.00       0.00       0.00

    7   7.1  0.5  0.5      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.79       0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00

   11   4.1  0.5 -0.5   19418.40       0.00       0.00       0.00
                           -0.00      -1.58      -0.00       0.00

   12   5.1  0.5 -0.5       0.00   19418.40       0.00       0.00
                            1.58      -0.00       0.00       0.00

   13   6.1  0.5 -0.5       0.00       0.00   19418.40       0.00
                            0.00      -0.00       0.00      -0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   19912.97
                           -0.00      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -23.99261900     0.00000000        0.00      0.00000000        0.00      0.0000
     2   -23.99261900     0.00000000        0.00      0.00000000        0.00      0.0000
     3   -23.90414982     0.08846918    19416.74      0.08846918    19416.74      2.4074
     4   -23.90414982     0.08846918    19416.74      0.08846918    19416.74      2.4074
     5   -23.90414948     0.08846952    19416.82      0.08846952    19416.82      2.4074
     6   -23.90414948     0.08846952    19416.82      0.08846952    19416.82      2.4074
     7   -23.90414948     0.08846952    19416.82      0.08846952    19416.82      2.4074
     8   -23.90414948     0.08846952    19416.82      0.08846952    19416.82      2.4074
     9   -23.90413170     0.08848730    19420.72      0.08848730    19420.72      2.4079
    10   -23.90413170     0.08848730    19420.72      0.08848730    19420.72      2.4079
    11   -23.90413148     0.08848752    19420.77      0.08848752    19420.77      2.4079
    12   -23.90413148     0.08848752    19420.77      0.08848752    19420.77      2.4079
    13   -23.90188885     0.09073015    19912.97      0.09073015    19912.97      2.4689
    14   -23.90188885     0.09073015    19912.97      0.09073015    19912.97      2.4689


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5  -0.000000000   1.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.000000000  -0.000000000  -0.379577949   0.679505470   0.000187182  -0.000020189   0.000041257  -0.000187332
                         0.000000001   0.000000000   0.046815761  -0.083807743   0.000259142  -0.000027951   0.000047013  -0.000213466

    3    3.1  0.5  0.5   0.000000000   0.000000000  -0.383020844  -0.213958934   0.023113735   0.214298223  -0.580700734  -0.127890401
                        -0.000000000   0.000000000  -0.000000001   0.000000004   0.000000002   0.000000000   0.000000000  -0.000000009

    4    4.1  0.5  0.5  -0.000000000  -0.000000000   0.221614387   0.123795816   0.077946838   0.722681617   0.067263734   0.014813788
                        -0.000000000  -0.000000000   0.000000001  -0.000000002   0.000000005   0.000000003   0.000000000   0.000000002

    5    5.1  0.5  0.5   0.000000000   0.000000000   0.000000001  -0.000000002  -0.000000004  -0.000000002   0.000000000  -0.000000008
                         0.000000000  -0.000000000  -0.220804625  -0.123343476   0.064664849   0.599538092   0.402514631   0.088647640

    6    6.1  0.5  0.5   0.000000000  -0.000000000  -0.015112383   0.027053596   0.199987799  -0.021570230  -0.111040547   0.504192134
                         0.000000000  -0.000000000  -0.122529830   0.219348067  -0.144453657   0.015580445   0.097446022  -0.442464590

    7    7.1  0.5  0.5   0.000000000  -0.000000000   0.000000002   0.000000001   0.000000001   0.000000012  -0.000000006  -0.000000001
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    8    1.1  0.5 -0.5  -0.208217362  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.978082578   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    9    2.1  0.5 -0.5  -0.000000000  -0.000000001   0.684654235   0.382454095  -0.000034479  -0.000319674  -0.000284009  -0.000062549
                        -0.000000000   0.000000000   0.000000002  -0.000000007  -0.000000000  -0.000000000   0.000000000  -0.000000000

   10    3.1  0.5 -0.5  -0.000000000  -0.000000000  -0.212349912   0.380140435   0.125479852  -0.013533974  -0.084356328   0.383029365
                         0.000000000  -0.000000000   0.026190464  -0.046885144   0.173719656  -0.018737008  -0.096124732   0.436465194

   11    4.1  0.5 -0.5   0.000000000   0.000000000   0.122864842  -0.219947793   0.423157924  -0.045640881   0.009771155  -0.044367015
                        -0.000000000  -0.000000000  -0.015153702   0.027127564   0.585837945  -0.063187182   0.011134318  -0.050556612

   12    5.1  0.5 -0.5  -0.000000000   0.000000000   0.015098331  -0.027028442   0.486012336  -0.052420218   0.066629172  -0.302537261
                        -0.000000000   0.000000000   0.122415903  -0.219144121  -0.351052654   0.037863769  -0.058471859   0.265498021

   13    6.1  0.5 -0.5  -0.000000000   0.000000000   0.000000001  -0.000000002   0.000000002   0.000000000   0.000000001  -0.000000011
                        -0.000000000  -0.000000000  -0.221010117  -0.123458265  -0.026608762  -0.246702251   0.670808913   0.147735341

   14    7.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000001  -0.000000002   0.000000007  -0.000000001  -0.000000001   0.000000004
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000010  -0.000000001  -0.000000001   0.000000004


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.434248715   0.442442112   0.000048727  -0.000000668  -0.000000001  -0.000000000
                         0.017860643  -0.018197645   0.000356993  -0.000004893   0.000000001  -0.000000000

    3    3.1  0.5  0.5   0.395508422   0.388184170   0.004341659   0.316791140   0.000000000   0.000000000
                         0.000000003  -0.000000004   0.000000002  -0.000000003   0.000000000   0.000000000

    4    4.1  0.5  0.5  -0.228919590  -0.224680326   0.007500739   0.547294878   0.000000000   0.000000000
                        -0.000000002   0.000000003   0.000000003  -0.000000005   0.000000000   0.000000000

    5    5.1  0.5  0.5  -0.000000002   0.000000003   0.000000003  -0.000000005   0.000000000   0.000000000
                         0.228735731   0.224499871  -0.007503487  -0.547495458  -0.000000000  -0.000000013

    6    6.1  0.5  0.5   0.009207136  -0.009380860   0.542846741  -0.007439776  -0.000000013   0.000000000
                         0.223854601  -0.228078286  -0.074093898   0.001015469  -0.000000010  -0.000000000

    7    7.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000016   0.009993754   0.999896293
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.008291515   0.006227266

    8    1.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    9    2.1  0.5 -0.5   0.442816188   0.434615864   0.000004938   0.000360303  -0.000000000  -0.000000001
                         0.000000003  -0.000000005   0.000000000  -0.000000000  -0.000000000  -0.000000000

   10    3.1  0.5 -0.5   0.387856245  -0.395174310  -0.042842028   0.000587157  -0.000000000  -0.000000000
                        -0.015952521   0.016253520  -0.313880848   0.004301772   0.000000000  -0.000000000

   11    4.1  0.5 -0.5  -0.224490523   0.228726207  -0.074014768   0.001014384  -0.000000000  -0.000000000
                         0.009233292  -0.009407509  -0.542266998   0.007431830   0.000000000  -0.000000000

   12    5.1  0.5 -0.5  -0.009225876   0.009399954   0.542465736  -0.007434554  -0.000000011   0.000000000
                        -0.224310221   0.228542503  -0.074041894   0.001014756  -0.000000008  -0.000000000

   13    6.1  0.5 -0.5  -0.000000002   0.000000003  -0.000000003   0.000000005  -0.000000000  -0.000000000
                         0.228271121   0.224043866   0.007508758   0.547879996   0.000000000   0.000000017

   14    7.1  0.5 -0.5  -0.000000000   0.000000000   0.000000002  -0.000000000  -0.589873729  -0.000718776
                         0.000000000  -0.000000000   0.000000016  -0.000000000   0.807391082  -0.012965635


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%  14.627%  46.875%   0.000%   0.000%   0.000%   0.000%  18.889%  19.609%
    3    3.1  0.5  0.5   0.000%   0.000%  14.670%   4.578%   0.053%   4.592%  33.721%   1.636%  15.643%  15.069%
    4    4.1  0.5  0.5   0.000%   0.000%   4.911%   1.533%   0.608%  52.227%   0.452%   0.022%   5.240%   5.048%
    5    5.1  0.5  0.5   0.000%   0.000%   4.875%   1.521%   0.418%  35.945%  16.202%   0.786%   5.232%   5.040%
    6    6.1  0.5  0.5   0.000%   0.000%   1.524%   4.885%   6.086%   0.071%   2.183%  44.998%   5.020%   5.211%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%  46.875%  14.627%   0.000%   0.000%   0.000%   0.000%  19.609%  18.889%
   10    3.1  0.5 -0.5   0.000%   0.000%   4.578%  14.670%   4.592%   0.053%   1.636%  33.721%  15.069%  15.643%
   11    4.1  0.5 -0.5   0.000%   0.000%   1.533%   4.911%  52.227%   0.608%   0.022%   0.452%   5.048%   5.240%
   12    5.1  0.5 -0.5   0.000%   0.000%   1.521%   4.875%  35.945%   0.418%   0.786%  16.202%   5.040%   5.232%
   13    6.1  0.5 -0.5   0.000%   0.000%   4.885%   1.524%   0.071%   6.086%  44.998%   2.183%   5.211%   5.020%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    3.1  0.5  0.5   0.002%  10.036%   0.000%   0.000%
    4    4.1  0.5  0.5   0.006%  29.953%   0.000%   0.000%
    5    5.1  0.5  0.5   0.006%  29.975%   0.000%   0.000%
    6    6.1  0.5  0.5  30.017%   0.006%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%   0.017%  99.983%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   10    3.1  0.5 -0.5  10.036%   0.002%   0.000%   0.000%
   11    4.1  0.5 -0.5  29.953%   0.006%   0.000%   0.000%
   12    5.1  0.5 -0.5  29.975%   0.006%   0.000%   0.000%
   13    6.1  0.5 -0.5   0.006%  30.017%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%  99.983%   0.017%


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
              1      21       31.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       10.57       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.74      4.27      4.33      0.29      0.09      0.50
 REAL TIME  *        12.24 SEC
 DISK USED  *        42.01 MB (local),      555.74 MB (total)
 SF USED    *        85.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -23.901888850211

              CI           MULTI         RHF-SCF
    -23.89197803    -23.71704955    -23.65835134
 **********************************************************************************************************************************
 Molpro calculation terminated
