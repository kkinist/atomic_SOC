
 Working directory              : /wrk/irikura/molpro.18SvO9ddfz/
 Global scratch directory       : /wrk/irikura/molpro.18SvO9ddfz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.18SvO9ddfz/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Sr SO-CI
 memory,3000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/10)
 {multi
     closed,1,3
     occ,8,6
     wf,sym=1,spin=2;state,9;
       weight,1,1,1,1,1, 99, 1,1,1
     wf,sym=1,spin=0;state,7;
       weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=2;state,9; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,7; save,5201.2}
 hlsdiag(10) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5201.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 21-Mar-24          TIME: 10:48:44  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


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

     10.224 MB (compressed) written to integral file ( 21.7%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     167320.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     167320      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     6063679. AND WROTE       34957. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     32 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:      166504.  Node maximum:      170063. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.96      0.73
 REAL TIME  *         2.31 SEC
 DISK USED  *        29.00 MB (local),      532.61 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -30.34122429     -30.34122429     0.00D+00     0.11D+00     0     0       0.00      0.00    start
   2      -30.34122430      -0.00000001     0.32D-05     0.84D-04     1     0       0.00      0.00    diag
   3      -30.34122430      -0.00000000     0.87D-06     0.22D-04     2     0       0.01      0.01    diag
   4      -30.34122430      -0.00000000     0.38D-06     0.15D-04     3     0       0.00      0.01    diag
   5      -30.34122430      -0.00000000     0.57D-07     0.56D-06     4     0       0.00      0.01    diag
   6      -30.34122430      -0.00000000     0.22D-07     0.30D-06     0     0       0.01      0.02    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -30.341224300615
  RHF One-electron energy             -49.818329586654
  RHF Two-electron energy              19.477105286039
  RHF Kinetic energy                    9.485913008601
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
    2.2     2.00000    -1.09297     1  1  px   0.99979
    3.2     2.00000    -1.09297     1  1  py   0.99979


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
 CPU TIMES  *         0.99      0.03      0.73
 REAL TIME  *         2.34 SEC
 DISK USED  *        29.34 MB (local),      538.11 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.977D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.222D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.483D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.431D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 2 6   4 3 5 1 6 4 2 3 5 1   4 6 3 5 2 4 6 3 5 2   1 6 4 5 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.594D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.119D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.119D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.527D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.495D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.187D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 1 3 3   1 2 6 5 4 810 7 9 3   1 2 4 5 6 810 9 7 3   2 1 5 4 6 810 9 7 2
                                        3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.00877   0.00877   0.00877   0.00877   0.00877   0.86842   0.00877   0.00877
                                          0.00877
 Weight factors for state symmetry  2:    0.00877   0.00877   0.00877   0.00877   0.00877   0.00877   0.00877
 
 Number of orbital rotations:  472  ( 16 closed/active, 138 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1094
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   21   40    5    -30.20626318     -30.24064020   -0.03437702    0.05306247 0.00004073 0.00000000  0.24E+01      0.49
   2    7   12    0    -30.23995272     -30.24015959   -0.00020687    0.00669650 0.00000138 0.00000000  0.29E+00      0.78
   3    6   12    0    -30.24016026     -30.24016028   -0.00000002    0.00005038 0.00000000 0.00000000  0.29E-02      1.01
   4    2    4    0    -30.24016028     -30.24016028    0.00000000    0.00000002 0.00000000 0.00000000  0.81E-06      1.14

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.82E-10)
                       Final energy:    -30.24016028
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.266407080574
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77361955
 One electron energy                           -50.05063847
 Two electron energy                            19.78423139
 Virial ratio                                    4.09674496
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.266407080568
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77361955
 One electron energy                           -50.05063847
 Two electron energy                            19.78423139
 Virial ratio                                    4.09674496
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.266407080547
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77361954
 One electron energy                           -50.05063847
 Two electron energy                            19.78423139
 Virial ratio                                    4.09674496
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.266407080519
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77361954
 One electron energy                           -50.05063846
 Two electron energy                            19.78423138
 Virial ratio                                    4.09674496
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -30.266407080516
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.77361954
 One electron energy                           -50.05063846
 Two electron energy                            19.78423138
 Virial ratio                                    4.09674496
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -30.237471194375
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.43762973
 One electron energy                           -48.70027130
 Two electron energy                            18.46280010
 Virial ratio                                    4.20392641
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -30.211897849541
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.61620310
 One electron energy                           -49.29236801
 Two electron energy                            19.08047016
 Virial ratio                                    4.14176994
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -30.211897849492
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.61620310
 One electron energy                           -49.29236801
 Two electron energy                            19.08047016
 Virial ratio                                    4.14176994
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -30.211897849415
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.61620310
 One electron energy                           -49.29236802
 Two electron energy                            19.08047017
 Virial ratio                                    4.14176994
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.358893431078
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.57192090
 One electron energy                           -49.92906830
 Two electron energy                            19.57017487
 Virial ratio                                    4.17166154
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.263638289462
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70963860
 One electron energy                           -49.79947827
 Two electron energy                            19.53583998
 Virial ratio                                    4.11686557
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -30.263638289453
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70963860
 One electron energy                           -49.79947827
 Two electron energy                            19.53583998
 Virial ratio                                    4.11686557
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -30.263638289382
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70963860
 One electron energy                           -49.79947827
 Two electron energy                            19.53583998
 Virial ratio                                    4.11686557
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -30.263638289354
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70963861
 One electron energy                           -49.79947827
 Two electron energy                            19.53583998
 Virial ratio                                    4.11686557
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -30.263638289346
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.70963861
 One electron energy                           -49.79947827
 Two electron energy                            19.53583998
 Virial ratio                                    4.11686557
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -30.223809537488
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.50783342
 One electron energy                           -48.93473259
 Two electron energy                            18.71092305
 Virial ratio                                    4.17883246
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.997834271253
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     4.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.002165728747
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.000000000002
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999999996
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000012
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.455292666056
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000001458
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999999999188
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.544709336476
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.002167293337
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000002
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999999999
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.997832706663
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999999984
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000009
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999999990
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.938928129833
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000010
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999999999997
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.061071359787
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999998435409
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999999998
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000001
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000001564591
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999999998
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.000000000020
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999991
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.999999999997
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.605779204111
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999998532
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000815
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.394219303738
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 5 6   3 4 2 1 5 3 6 4 2 1   3 4 5 2 6 5 3 4 6 2   1 5 3 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 3 2 1   3 2 7 9 4 810 6 5 1   3 2 7 9 4 810 6 5 1   2 3 9 7 410 8 6 5 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.07019     1  1  s    1.00708
    2.1     0.97029    -0.16134     1  2  s    1.16879    1  3  s    0.25660    1  4  s   -0.25277    1  5  s   -0.30891
    3.1     0.87742    -0.01908     1  2  s   -0.69194    1  5  s   -0.37221    1  8  s    1.63651
    4.1     0.01801     0.01997     1  1  d0   0.84592
    5.1     0.01801     0.01997     1  1  d2-  0.84592
    6.1     0.01801     0.01997     1  1  d1+  0.84592
    7.1     0.01801     0.01997     1  1  d1-  0.84592
    8.1     0.01801     0.01997     1  1  d2+  0.84592
    1.2     2.00000    -1.19214     1  1  px   1.00181
    2.2     2.00000    -1.19214     1  1  py   1.00181
    3.2     2.00000    -1.19214     1  1  pz   1.00181
    4.2     0.02075    -0.00875     1  2  pz   0.99912
    5.2     0.02075    -0.00875     1  2  py   0.99912
    6.2     0.02075    -0.00875     1  2  px   0.99912
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 aa00000 000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      1.00000000      0.00000000
 a000a00 000     -0.00000000     -0.00000000     -0.00000081      0.99995892      0.00000000     -0.00000000     -0.00000000
 a00a000 000      0.00000000      0.00000000      0.99995892      0.00000081     -0.00000000     -0.00000000      0.00000000
 a0000a0 000      0.00000000      0.99995892     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a0a0000 000     -0.00062539     -0.00000000      0.00000000     -0.00000000      0.99995873     -0.00000000      0.00000000
 a00000a 000      0.99995873     -0.00000000      0.00000000     -0.00000000      0.00062539      0.00000000      0.00000000
 0000000 aa0     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.88276337
 0000000 0aa      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000124
 0000000 a0a     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000005
 000a00a 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000059
 00a0a00 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000002
 00a00a0 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.36391936
 0000a0a 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000001
 000a0a0 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001
 0000aa0 000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000030
 000aa00 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.21010894
 00000aa 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.21010894
 
 Energy:        -30.26640708    -30.26640708    -30.26640708    -30.26640708    -30.26640708    -30.23747119    -30.21189785

 State:                8               9
 aa00000 000      0.00000000      0.00000000
 a000a00 000      0.00000000     -0.00000000
 a00a000 000     -0.00000000     -0.00000000
 a0000a0 000      0.00000000     -0.00000000
 a0a0000 000     -0.00000000      0.00000000
 a00000a 000      0.00000000     -0.00000000
 0000000 aa0      0.00000124     -0.00000005
 0000000 0aa      0.88276337      0.00000354
 0000000 a0a     -0.00000354      0.88276337
 000a00a 000     -0.42021788     -0.00000169
 00a0a00 000      0.00000146     -0.36391936
 00a00a0 000     -0.00000051      0.00000002
 0000a0a 000      0.00000084     -0.21010894
 000a0a0 000     -0.00000084      0.21010894
 0000aa0 000      0.21010894      0.00000084
 000aa00 000      0.00000030     -0.00000001
 00000aa 000      0.00000030     -0.00000001
 
 Energy:        -30.21189785    -30.21189785
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95813244      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.03764913
 ab00000 000      0.02690216      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.69344575
 ba00000 000     -0.02690216     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.69344575
 b000a00 000      0.00000000     -0.61735646      0.00000306      0.00000094      0.00000036     -0.00000000     -0.00000000
 a000b00 000     -0.00000000      0.61735646     -0.00000306     -0.00000094     -0.00000036      0.00000000      0.00000000
 b00a000 000      0.00000000     -0.00000094      0.00000013     -0.61735646      0.00001361     -0.00000044     -0.00000000
 a00b000 000     -0.00000000      0.00000094     -0.00000013      0.61735646     -0.00001361      0.00000044      0.00000000
 b0000a0 000     -0.00000000     -0.00000036      0.00000005     -0.00001361     -0.61735646      0.00000145      0.00000000
 a0000b0 000      0.00000000      0.00000036     -0.00000005      0.00001361      0.61735646     -0.00000145     -0.00000000
 b0a0000 000     -0.00000000     -0.00000282     -0.56869059      0.00000005     -0.00000061     -0.24024988     -0.00000000
 a0b0000 000      0.00000000      0.00000282      0.56869059     -0.00000005      0.00000061      0.24024988      0.00000000
 a00000b 000      0.00000000     -0.00000119     -0.24024988     -0.00000046      0.00000132      0.56869059      0.00000000
 b00000a 000     -0.00000000      0.00000119      0.24024988      0.00000046     -0.00000132     -0.56869059     -0.00000000
 0000000 020     -0.15703234      0.00000024      0.04808913     -0.00000027      0.00000091      0.38620273     -0.00527083
 0000000 200     -0.15703234     -0.00000178     -0.35850594      0.00000003     -0.00000038     -0.15145496     -0.00527083
 0000000 0ab      0.00000000     -0.00000052      0.00000007     -0.33704427      0.00000743     -0.00000024      0.00000000
 0000000 0ba     -0.00000000      0.00000052     -0.00000007      0.33704427     -0.00000743      0.00000024     -0.00000000
 0000000 ab0     -0.00000000     -0.00000020      0.00000003     -0.00000743     -0.33704427      0.00000079      0.00000000
 0000000 ba0      0.00000000      0.00000020     -0.00000003      0.00000743      0.33704427     -0.00000079     -0.00000000
 0000000 b0a     -0.00000000      0.33704427     -0.00000167     -0.00000052     -0.00000020      0.00000000     -0.00000000
 0000000 a0b      0.00000000     -0.33704427      0.00000167      0.00000052      0.00000020     -0.00000000      0.00000000
 0000000 002     -0.15703234      0.00000154      0.31041681      0.00000024     -0.00000053     -0.23474778     -0.00527083
 0200000 000     -0.02554328     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.16215900
 00ba000 000      0.00000000     -0.00000008      0.00000001     -0.05018095      0.00000111     -0.00000004     -0.00000000
 00ab000 000     -0.00000000      0.00000008     -0.00000001      0.05018095     -0.00000111      0.00000004      0.00000000
 
 Energy:        -30.35889343    -30.26363829    -30.26363829    -30.26363829    -30.26363829    -30.26363829    -30.22380954
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.62       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.00      1.01      0.03      0.73
 REAL TIME  *         3.67 SEC
 DISK USED  *        33.43 MB (local),      603.56 MB (total)
 SF USED    *        12.45 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.26640708   6.0
    -30.26640708   6.0
    -30.26640708   6.0
    -30.26640708   6.0
    -30.26640708   6.0
    -30.23747119  -0.0
    -30.21189785   2.0
    -30.21189785   2.0
    -30.21189785   2.0
    -30.35889343  -0.0
    -30.26363829   6.0
    -30.26363829   6.0
    -30.26363829   6.0
    -30.26363829   6.0
    -30.26363829   6.0
    -30.22380954  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.26640708
     2       -30.26640708
     3       -30.26640708
     4       -30.26640708
     5       -30.26640708
     6       -30.23747119
     7       -30.21189785
     8       -30.21189785
     9       -30.21189785

 Number of blocks in overlap matrix:   201   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     225
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        315636
 Number of doubly external configurations:        246369
 Total number of contracted configurations:       573843
 Total number of uncontracted configurations:    2175747

 Diagonal Coupling coefficients finished.               Storage: 4509206 words, CPU-Time:      0.45 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  409810 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.26640708     0.00000000    -0.22472492  0.41D-01  0.43D-01     1.01
    1     2     2     1.00000000     0.00000000   -30.26640708     0.00000000    -0.22477026  0.41D-01  0.43D-01     1.01
    1     3     3     1.00000000     0.00000000   -30.26640708    -0.00000000    -0.22474407  0.41D-01  0.43D-01     1.01
    1     4     4     1.00000000     0.00000000   -30.26640708    -0.00000000    -0.22476841  0.41D-01  0.43D-01     1.01
    1     5     5     1.00000000     0.00000000   -30.26640708     0.00000000    -0.22475718  0.41D-01  0.43D-01     1.01
    1     6     6     1.00000000     0.00000000   -30.23747119     0.00000000    -0.20288012  0.32D-01  0.35D-01     1.01
    1     7     7     1.00000000     0.00000000   -30.21189785     0.00000000    -0.20104692  0.26D-01  0.37D-01     1.01
    1     8     8     1.00000000     0.00000000   -30.21189785     0.00000000    -0.20101401  0.26D-01  0.37D-01     1.01
    1     9     9     1.00000000     0.00000000   -30.21189785     0.00000000    -0.20104203  0.26D-01  0.37D-01     1.01
    2     1     1     1.06750963    -0.21249812   -30.47890520    -0.21249812    -0.00469228  0.18D-02  0.63D-03     6.12
    2     2     2     1.06751215    -0.21249306   -30.47890014    -0.21249306    -0.00469617  0.18D-02  0.63D-03     6.12
    2     3     3     1.06750573    -0.21249291   -30.47889999    -0.21249291    -0.00469810  0.18D-02  0.63D-03     6.12
    2     4     4     1.06752636    -0.21248685   -30.47889393    -0.21248685    -0.00470264  0.18D-02  0.63D-03     6.12
    2     5     5     1.06752561    -0.21248547   -30.47889255    -0.21248547    -0.00470387  0.18D-02  0.63D-03     6.12
    2     6     6     1.06015217    -0.20282036   -30.44029155    -0.20282036    -0.00341223  0.11D-02  0.43D-03     6.12
    2     7     7     1.05591578    -0.19851222   -30.41041007    -0.19851222    -0.00352913  0.13D-02  0.45D-03     6.12
    2     8     8     1.05593747    -0.19850038   -30.41039823    -0.19850038    -0.00354314  0.14D-02  0.46D-03     6.12
    2     9     9     1.05593759    -0.19849944   -30.41039729    -0.19849944    -0.00354414  0.14D-02  0.46D-03     6.12
    3     1     1     1.06721597    -0.21738518   -30.48379226    -0.00488706    -0.00018338  0.78D-04  0.29D-04    11.32
    3     2     2     1.06721247    -0.21738511   -30.48379219    -0.00489205    -0.00018330  0.78D-04  0.29D-04    11.32
    3     3     3     1.06721007    -0.21738490   -30.48379198    -0.00489199    -0.00018362  0.78D-04  0.29D-04    11.32
    3     4     4     1.06721241    -0.21738473   -30.48379181    -0.00489788    -0.00018380  0.78D-04  0.29D-04    11.32
    3     5     5     1.06721253    -0.21738470   -30.48379178    -0.00489923    -0.00018385  0.78D-04  0.29D-04    11.32
    3     6     6     1.06009503    -0.20642422   -30.44389542    -0.00360386    -0.00011084  0.29D-04  0.17D-04    11.32
    3     7     7     1.05504409    -0.20213755   -30.41403539    -0.00362533    -0.00012372  0.26D-04  0.25D-04    11.32
    3     8     8     1.05504486    -0.20213582   -30.41403367    -0.00363545    -0.00012473  0.26D-04  0.25D-04    11.32
    3     9     9     1.05504478    -0.20213580   -30.41403365    -0.00363636    -0.00012476  0.26D-04  0.25D-04    11.32
    4     1     1     1.06882582    -0.21762543   -30.48403251    -0.00024025    -0.00002075  0.21D-04  0.17D-05    16.22
    4     2     2     1.06882519    -0.21762536   -30.48403244    -0.00024025    -0.00002076  0.21D-04  0.17D-05    16.22
    4     3     3     1.06882515    -0.21762536   -30.48403244    -0.00024046    -0.00002076  0.21D-04  0.17D-05    16.22
    4     4     4     1.06882503    -0.21762512   -30.48403220    -0.00024039    -0.00002071  0.21D-04  0.17D-05    16.22
    4     5     5     1.06882467    -0.21762507   -30.48403215    -0.00024038    -0.00002069  0.21D-04  0.17D-05    16.22
    4     6     6     1.06063844    -0.20655001   -30.44402120    -0.00012578    -0.00000592  0.44D-05  0.60D-06    16.22
    4     7     7     1.05547668    -0.20227622   -30.41417407    -0.00013868    -0.00000648  0.44D-05  0.85D-06    16.22
    4     8     8     1.05547656    -0.20227538   -30.41417323    -0.00013955    -0.00000652  0.44D-05  0.85D-06    16.22
    4     9     9     1.05547658    -0.20227538   -30.41417323    -0.00013958    -0.00000652  0.44D-05  0.85D-06    16.22
    5     1     1     1.06977639    -0.21765485   -30.48406193    -0.00002942    -0.00000189  0.73D-06  0.29D-06    20.73
    5     2     2     1.06977607    -0.21765480   -30.48406188    -0.00002943    -0.00000190  0.73D-06  0.29D-06    20.73
    5     3     3     1.06977595    -0.21765479   -30.48406187    -0.00002943    -0.00000190  0.73D-06  0.29D-06    20.73
    5     4     4     1.06977572    -0.21765449   -30.48406157    -0.00002937    -0.00000189  0.73D-06  0.29D-06    20.73
    5     5     5     1.06977561    -0.21765442   -30.48406150    -0.00002935    -0.00000190  0.73D-06  0.29D-06    20.73
    5     6     6     1.06078296    -0.20655692   -30.44402811    -0.00000691    -0.00000038  0.25D-06  0.45D-07    20.73
    5     7     7     1.05555010    -0.20228416   -30.41418201    -0.00000793    -0.00000037  0.18D-06  0.68D-07    20.73
    5     8     8     1.05554999    -0.20228335   -30.41418120    -0.00000797    -0.00000037  0.18D-06  0.68D-07    20.73
    5     9     9     1.05554999    -0.20228335   -30.41418120    -0.00000797    -0.00000037  0.18D-06  0.68D-07    20.73
    6     1     1     1.06985681    -0.21765715   -30.48406423    -0.00000229    -0.00000014  0.83D-07  0.13D-07    25.34
    6     2     2     1.06985660    -0.21765709   -30.48406417    -0.00000230    -0.00000014  0.84D-07  0.13D-07    25.34
    6     3     3     1.06985658    -0.21765709   -30.48406417    -0.00000230    -0.00000014  0.84D-07  0.13D-07    25.34
    6     4     4     1.06985592    -0.21765678   -30.48406386    -0.00000229    -0.00000014  0.83D-07  0.13D-07    25.34
    6     5     5     1.06985560    -0.21765671   -30.48406379    -0.00000230    -0.00000014  0.84D-07  0.13D-07    25.34
    6     6     6     1.06080436    -0.20655739   -30.44402858    -0.00000047    -0.00000004  0.35D-07  0.38D-08    25.34
    6     7     7     1.05554875    -0.20228461   -30.41418246    -0.00000045    -0.00000003  0.86D-08  0.46D-08    25.34
    6     8     8     1.05554852    -0.20228380   -30.41418165    -0.00000045    -0.00000003  0.87D-08  0.46D-08    25.34
    6     9     9     1.05554852    -0.20228380   -30.41418165    -0.00000045    -0.00000003  0.87D-08  0.46D-08    25.34
    7     1     1     1.06990547    -0.21765730   -30.48406438    -0.00000015    -0.00000001  0.10D-07  0.10D-08    29.86
    7     2     2     1.06990534    -0.21765725   -30.48406433    -0.00000016    -0.00000001  0.11D-07  0.11D-08    29.86
    7     3     3     1.06990535    -0.21765725   -30.48406433    -0.00000016    -0.00000001  0.11D-07  0.11D-08    29.86
    7     4     4     1.06990449    -0.21765694   -30.48406402    -0.00000015    -0.00000001  0.10D-07  0.10D-08    29.86
    7     5     5     1.06990419    -0.21765687   -30.48406395    -0.00000016    -0.00000001  0.11D-07  0.11D-08    29.86
    7     6     6     1.06081468    -0.20655744   -30.44402864    -0.00000006    -0.00000000  0.27D-08  0.33D-09    29.86
    7     7     7     1.05555113    -0.20228464   -30.41418249    -0.00000003    -0.00000000  0.11D-08  0.24D-09    29.86
    7     8     8     1.05555085    -0.20228383   -30.41418168    -0.00000003    -0.00000000  0.11D-08  0.24D-09    29.86
    7     9     9     1.05555085    -0.20228383   -30.41418168    -0.00000003    -0.00000000  0.11D-08  0.24D-09    29.86
    8     1     1     1.06992262    -0.21765732   -30.48406440    -0.00000001    -0.00000000  0.80D-09  0.20D-09    33.07
    8     2     2     1.06992252    -0.21765726   -30.48406434    -0.00000001    -0.00000000  0.81D-09  0.20D-09    33.07
    8     3     3     1.06992253    -0.21765726   -30.48406434    -0.00000001    -0.00000000  0.81D-09  0.20D-09    33.07
    8     4     4     1.06992165    -0.21765695   -30.48406403    -0.00000001    -0.00000000  0.80D-09  0.20D-09    33.07
    8     5     5     1.06992142    -0.21765688   -30.48406396    -0.00000001    -0.00000000  0.81D-09  0.20D-09    33.07
    8     6     6     1.06081468    -0.20655744   -30.44402864    -0.00000000    -0.00000000  0.27D-08  0.33D-09    33.07
    8     7     7     1.05555113    -0.20228464   -30.41418249    -0.00000000    -0.00000000  0.11D-08  0.24D-09    33.07
    8     8     8     1.05555085    -0.20228383   -30.41418168    -0.00000000    -0.00000000  0.11D-08  0.24D-09    33.07
    8     9     9     1.05555085    -0.20228383   -30.41418168    -0.00000000    -0.00000000  0.11D-08  0.24D-09    33.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.9%
 S   9.7%  29.6%
 P   1.1%  19.5%  10.9%

 Initialization:   1.5%
 Other:           13.7%

 Total CPU:       33.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//00000222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000045   0.9685359   0.0000000   0.0000000
                          0.0000000
 2/0/0000222000           0.0000000   0.0000000  -0.0000000  -0.0000075   0.9640408   0.0000051  -0.0000000  -0.0000000
                          0.0000000
 2/00000/222000           0.0000000  -0.0000000   0.0000000   0.9640407   0.0000075  -0.0000000   0.0000000   0.0000000
                          0.0000000
 2/0000/0222000          -0.0000000   0.9640403  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000014
                         -0.0000000
 2/000/00222000          -0.0000000   0.0000000   0.9640403   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                         -0.0000014
 2/00/000222000           0.9640403   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.0000000
 200000002220//           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.8497938   0.0000000
                         -0.0000000
 20000000222/0/          -0.0000000   0.0000000   0.0000010  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.8497928
 20000000222//0          -0.0000000   0.0000010  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.8497928
                         -0.0000000
 2000/00/222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.4205199   0.0000000
                         -0.0000000
 200/00/0222000          -0.0000000  -0.0000059  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.3641827
                         -0.0000000
 200/0/00222000          -0.0000000   0.0000000  -0.0000059  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                         -0.3641826
 2000/0/0222000          -0.0000000   0.0000000   0.0000002   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                          0.2102645
 2000//00222000           0.0000000   0.0000002   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.2102644
                          0.0000000
 20000//0222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.2102637   0.0000000
                          0.0000000
 200000//222000           0.0000000  -0.0000091   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.2102629
                          0.0000000
 20000/0/222000           0.0000000  -0.0000000   0.0000091  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                         -0.2102629

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.963911   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.963911    0.000000    0.000000    0.000000   -0.000000    0.000001   -0.000000    0.000000
 3           0.000000   -0.000000    0.000000    0.963911   -0.000000    0.000000   -0.000000    0.000000    0.000001
 4           0.963912    0.000000   -0.000000    0.000000   -0.000007   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000007   -0.000000   -0.000000    0.000000    0.963912   -0.000005    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000005    0.968536   -0.000000   -0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.971055    0.000000
 8           0.000000   -0.000001    0.000000    0.000000   -0.000000    0.000000    0.971056    0.000000    0.000000
 9           0.000000   -0.000000    0.000000   -0.000001    0.000000    0.000000   -0.000000   -0.000000    0.971056

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.963911   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.963911   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.963911    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.963912    0.000000   -0.000000    0.000000    0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.963912    0.000000    0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.968536   -0.000000   -0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.971055    0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.971056   -0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.971056


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96391138 (fixed)   0.96409059 (relaxed)   0.96391138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594310   -0.01032857   -0.14471393
 Singles      0.03215245   -0.06319798   -0.06522092
 Pairs        0.03818572    0.00000000   -0.00772247
 Total        1.07628127   -0.07352656   -0.21765732
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26640708
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84069146
 One electron energy                  -49.92210286
 Two electron energy                   19.43803847
 Virial quotient                       -3.09775635
 Correlation energy                    -0.21765732
 !MRCI STATE 1.1 Energy               -30.484064396737

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50066757 (Davidson, fixed reference)
 Cluster corrected energies           -30.50058049 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50066757 (Davidson, rotated reference)

 Cluster corrected energies           -30.49699532 (Pople, fixed reference)
 Cluster corrected energies           -30.49692499 (Pople, relaxed reference)
 Cluster corrected energies           -30.49699532 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96391143 (fixed)   0.96409065 (relaxed)   0.96391143 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594308   -0.01032855   -0.14471392
 Singles      0.03215234   -0.06319796   -0.06522087
 Pairs        0.03818574   -0.00000000   -0.00772248
 Total        1.07628116   -0.07352650   -0.21765726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26640708
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84069156
 One electron energy                  -49.92210297
 Two electron energy                   19.43803862
 Virial quotient                       -3.09775631
 Correlation energy                    -0.21765726
 !MRCI STATE 2.1 Energy               -30.484064343971

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50066749 (Davidson, fixed reference)
 Cluster corrected energies           -30.50058041 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50066749 (Davidson, rotated reference)

 Cluster corrected energies           -30.49699525 (Pople, fixed reference)
 Cluster corrected energies           -30.49692491 (Pople, relaxed reference)
 Cluster corrected energies           -30.49699525 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96391143 (fixed)   0.96409064 (relaxed)   0.96391143 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594308   -0.01032855   -0.14471376
 Singles      0.03215235   -0.06319795   -0.06522087
 Pairs        0.03818574   -0.00000016   -0.00772263
 Total        1.07628116   -0.07352666   -0.21765726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26640708
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84069156
 One electron energy                  -49.92210299
 Two electron energy                   19.43803865
 Virial quotient                       -3.09775631
 Correlation energy                    -0.21765726
 !MRCI STATE 3.1 Energy               -30.484064343882

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50066749 (Davidson, fixed reference)
 Cluster corrected energies           -30.50058041 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50066749 (Davidson, rotated reference)

 Cluster corrected energies           -30.49699525 (Pople, fixed reference)
 Cluster corrected energies           -30.49692491 (Pople, relaxed reference)
 Cluster corrected energies           -30.49699525 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96391183 (fixed)   0.96409106 (relaxed)   0.96391183 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594307   -0.01032859   -0.14471429
 Singles      0.03215136   -0.06319737   -0.06522018
 Pairs        0.03818584    0.00000000   -0.00772249
 Total        1.07628026   -0.07352597   -0.21765695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26640708
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84068971
 One electron energy                  -49.92210017
 Two electron energy                   19.43803614
 Virial quotient                       -3.09775686
 Correlation energy                    -0.21765695
 !MRCI STATE 4.1 Energy               -30.484064034212

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50066696 (Davidson, fixed reference)
 Cluster corrected energies           -30.50057987 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50066696 (Davidson, rotated reference)

 Cluster corrected energies           -30.49699476 (Pople, fixed reference)
 Cluster corrected energies           -30.49692442 (Pople, relaxed reference)
 Cluster corrected energies           -30.49699476 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96391191 (fixed)   0.96409113 (relaxed)   0.96391191 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00594313   -0.01032863   -0.14471437
 Singles      0.03215111   -0.06319725   -0.06522002
 Pairs        0.03818586    0.00000000   -0.00772249
 Total        1.07628010   -0.07352588   -0.21765688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26640708
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84068954
 One electron energy                  -49.92209995
 Two electron energy                   19.43803599
 Virial quotient                       -3.09775690
 Correlation energy                    -0.21765688
 !MRCI STATE 5.1 Energy               -30.484063964876

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50066685 (Davidson, fixed reference)
 Cluster corrected energies           -30.50057976 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50066685 (Davidson, rotated reference)

 Cluster corrected energies           -30.49699466 (Pople, fixed reference)
 Cluster corrected energies           -30.49692432 (Pople, relaxed reference)
 Cluster corrected energies           -30.49699466 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96853588 (fixed)   0.96853588 (relaxed)   0.96853588 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00491435   -0.01038575   -0.13825271
 Singles      0.02678268   -0.06019129   -0.06165404
 Pairs        0.03433087    0.00000000   -0.00665069
 Total        1.06602790   -0.07057705   -0.20655744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.23747119
 Nuclear energy                         0.00000000
 Kinetic energy                         9.57615323
 One electron energy                  -48.59745196
 Two electron energy                   18.15342332
 Virial quotient                       -3.17915011
 Correlation energy                    -0.20655744
 !MRCI STATE 6.1 Energy               -30.444028638147

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45766719 (Davidson, fixed reference)
 Cluster corrected energies           -30.45766719 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45766719 (Davidson, rotated reference)

 Cluster corrected energies           -30.45459755 (Pople, fixed reference)
 Cluster corrected energies           -30.45459755 (Pople, relaxed reference)
 Cluster corrected energies           -30.45459755 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97105508 (fixed)   0.97118343 (relaxed)   0.97105508 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00469213   -0.00905698   -0.13885496
 Singles      0.02015926   -0.05597756   -0.05662957
 Pairs        0.03565251    0.00000000   -0.00680012
 Total        1.06050391   -0.06503454   -0.20228464
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21189785
 Nuclear energy                         0.00000000
 Kinetic energy                         9.73379310
 One electron energy                  -49.13929857
 Two electron energy                   18.72511608
 Virial quotient                       -3.12459718
 Correlation energy                    -0.20228464
 !MRCI STATE 7.1 Energy               -30.414182490974

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42642150 (Davidson, fixed reference)
 Cluster corrected energies           -30.42636480 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42642150 (Davidson, rotated reference)

 Cluster corrected energies           -30.42364120 (Pople, fixed reference)
 Cluster corrected energies           -30.42359609 (Pople, relaxed reference)
 Cluster corrected energies           -30.42364120 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97105560 (fixed)   0.97118400 (relaxed)   0.97105560 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00469132   -0.00905630   -0.13885431
 Singles      0.02015889   -0.05597744   -0.05662943
 Pairs        0.03565256   -0.00000000   -0.00680010
 Total        1.06050277   -0.06503373   -0.20228383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21189785
 Nuclear energy                         0.00000000
 Kinetic energy                         9.73378652
 One electron energy                  -49.13929295
 Two electron energy                   18.72511127
 Virial quotient                       -3.12459921
 Correlation energy                    -0.20228383
 !MRCI STATE 8.1 Energy               -30.414181683018

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42642042 (Davidson, fixed reference)
 Cluster corrected energies           -30.42636369 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42642042 (Davidson, rotated reference)

 Cluster corrected energies           -30.42364018 (Pople, fixed reference)
 Cluster corrected energies           -30.42359504 (Pople, relaxed reference)
 Cluster corrected energies           -30.42364018 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97105560 (fixed)   0.97118400 (relaxed)   0.97105560 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00469132   -0.00905630   -0.00943447
 Singles      0.02015889   -0.05597744   -0.05662943
 Pairs        0.03565256   -0.13725010   -0.13621994
 Total        1.06050277   -0.20228383   -0.20228383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21189785
 Nuclear energy                         0.00000000
 Kinetic energy                         9.73378651
 One electron energy                  -49.13929295
 Two electron energy                   18.72511127
 Virial quotient                       -3.12459921
 Correlation energy                    -0.20228383
 !MRCI STATE 9.1 Energy               -30.414181682992

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42642042 (Davidson, fixed reference)
 Cluster corrected energies           -30.42636369 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42642042 (Davidson, rotated reference)

 Cluster corrected energies           -30.42364018 (Pople, fixed reference)
 Cluster corrected energies           -30.42359504 (Pople, relaxed reference)
 Cluster corrected energies           -30.42364018 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       42.37       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        40.29     38.27      1.01      0.03      0.73
 REAL TIME  *        45.55 SEC
 DISK USED  *        75.18 MB (local),        1.24 GB (total)
 SF USED    *       442.78 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.50066757  AU                              
 SETTING HLSDIAG(2)     =       -30.50066749  AU                              
 SETTING HLSDIAG(3)     =       -30.50066749  AU                              
 SETTING HLSDIAG(4)     =       -30.50066696  AU                              
 SETTING HLSDIAG(5)     =       -30.50066685  AU                              
 SETTING HLSDIAG(6)     =       -30.45766719  AU                              
 SETTING HLSDIAG(7)     =       -30.42642150  AU                              
 SETTING HLSDIAG(8)     =       -30.42642042  AU                              
 SETTING HLSDIAG(9)     =       -30.42642042  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.35889343
     2       -30.26363829
     3       -30.26363829
     4       -30.26363829
     5       -30.26363829
     6       -30.26363829
     7       -30.22380954

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.91D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        211374
 Number of doubly external configurations:        211251
 Total number of contracted configurations:       430476
 Total number of uncontracted configurations:    1475772

 Diagonal Coupling coefficients finished.               Storage: 3217856 words, CPU-Time:      0.24 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  399661 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.35889343    -0.00000000    -0.21864458  0.40D-01  0.39D-01     0.55
    1     2     2     1.00000000     0.00000000   -30.26363829     0.00000000    -0.21593093  0.37D-01  0.41D-01     0.55
    1     3     3     1.00000000     0.00000000   -30.26363829    -0.00000000    -0.21568035  0.37D-01  0.41D-01     0.55
    1     4     4     1.00000000     0.00000000   -30.26363829    -0.00000000    -0.21585806  0.37D-01  0.41D-01     0.55
    1     5     5     1.00000000     0.00000000   -30.26363829    -0.00000000    -0.21598069  0.37D-01  0.41D-01     0.55
    1     6     6     1.00000000     0.00000000   -30.26363829     0.00000000    -0.21582558  0.37D-01  0.41D-01     0.55
    1     7     7     1.00000000     0.00000000   -30.22380954     0.00000000    -0.21358811  0.48D-01  0.38D-01     0.55
    2     1     1     1.06507392    -0.21008142   -30.56897485    -0.21008142    -0.00544259  0.20D-02  0.77D-03     3.31
    2     2     2     1.06581384    -0.20728279   -30.47092108    -0.20728279    -0.00442279  0.19D-02  0.66D-03     3.31
    2     3     3     1.06588811    -0.20727631   -30.47091460    -0.20727631    -0.00442970  0.19D-02  0.66D-03     3.31
    2     4     4     1.06596509    -0.20725859   -30.47089688    -0.20725859    -0.00445242  0.20D-02  0.66D-03     3.31
    2     5     5     1.06599862    -0.20725255   -30.47089084    -0.20725255    -0.00445815  0.20D-02  0.67D-03     3.31
    2     6     6     1.06600942    -0.20725141   -30.47088970    -0.20725141    -0.00446117  0.20D-02  0.67D-03     3.31
    2     7     7     1.06938346    -0.20625771   -30.43006724    -0.20625771    -0.00536270  0.27D-02  0.82D-03     3.31
    3     1     1     1.06246174    -0.21533884   -30.57423227    -0.00525743    -0.00017730  0.38D-04  0.30D-04     5.95
    3     2     2     1.06508148    -0.21174975   -30.47538804    -0.00446696    -0.00021461  0.73D-04  0.43D-04     5.95
    3     3     3     1.06506474    -0.21174901   -30.47538730    -0.00447270    -0.00021491  0.73D-04  0.43D-04     5.95
    3     4     4     1.06509016    -0.21174806   -30.47538634    -0.00448947    -0.00021654  0.75D-04  0.44D-04     5.95
    3     5     5     1.06508087    -0.21174786   -30.47538615    -0.00449531    -0.00021666  0.74D-04  0.44D-04     5.95
    3     6     6     1.06508598    -0.21174773   -30.47538602    -0.00449632    -0.00021665  0.75D-04  0.44D-04     5.95
    3     7     7     1.06389387    -0.21137869   -30.43518822    -0.00512098    -0.00019662  0.54D-04  0.37D-04     5.95
    4     1     1     1.06252161    -0.21552737   -30.57442080    -0.00018853    -0.00000766  0.28D-05  0.11D-05     8.59
    4     2     2     1.06641587    -0.21200781   -30.47564610    -0.00025806    -0.00002487  0.25D-04  0.24D-05     8.59
    4     3     3     1.06641699    -0.21200771   -30.47564600    -0.00025870    -0.00002496  0.25D-04  0.24D-05     8.59
    4     4     4     1.06641685    -0.21200749   -30.47564578    -0.00025944    -0.00002513  0.25D-04  0.24D-05     8.59
    4     5     5     1.06641711    -0.21200744   -30.47564573    -0.00025957    -0.00002517  0.25D-04  0.24D-05     8.59
    4     6     6     1.06641608    -0.21200742   -30.47564571    -0.00025969    -0.00002518  0.25D-04  0.24D-05     8.59
    4     7     7     1.06405747    -0.21159321   -30.43540274    -0.00021452    -0.00001015  0.50D-05  0.16D-05     8.59
    5     1     1     1.06252346    -0.21553619   -30.57442962    -0.00000882    -0.00000039  0.22D-06  0.49D-07    11.11
    5     2     2     1.06718812    -0.21204301   -30.47568130    -0.00003521    -0.00000302  0.16D-05  0.39D-06    11.11
    5     3     3     1.06718566    -0.21204299   -30.47568128    -0.00003528    -0.00000304  0.16D-05  0.39D-06    11.11
    5     4     4     1.06718263    -0.21204292   -30.47568121    -0.00003543    -0.00000309  0.17D-05  0.39D-06    11.11
    5     5     5     1.06718242    -0.21204292   -30.47568121    -0.00003548    -0.00000310  0.17D-05  0.39D-06    11.11
    5     6     6     1.06718217    -0.21204292   -30.47568121    -0.00003549    -0.00000310  0.17D-05  0.39D-06    11.11
    5     7     7     1.06398733    -0.21160554   -30.43541507    -0.00001233    -0.00000076  0.74D-06  0.79D-07    11.11
    6     1     1     1.06248211    -0.21553662   -30.57443005    -0.00000043    -0.00000002  0.85D-08  0.34D-08    13.64
    6     2     2     1.06727145    -0.21204671   -30.47568500    -0.00000369    -0.00000028  0.13D-06  0.41D-07    13.64
    6     3     3     1.06727102    -0.21204670   -30.47568499    -0.00000371    -0.00000029  0.13D-06  0.42D-07    13.64
    6     4     4     1.06727054    -0.21204670   -30.47568498    -0.00000377    -0.00000029  0.13D-06  0.43D-07    13.64
    6     5     5     1.06727017    -0.21204670   -30.47568498    -0.00000378    -0.00000029  0.13D-06  0.43D-07    13.64
    6     6     6     1.06727010    -0.21204669   -30.47568498    -0.00000378    -0.00000029  0.13D-06  0.43D-07    13.64
    6     7     7     1.06392717    -0.21160648   -30.43541602    -0.00000094    -0.00000009  0.49D-07  0.14D-07    13.64
    7     1     1     1.06248024    -0.21553664   -30.57443007    -0.00000002    -0.00000000  0.71D-09  0.21D-09    16.18
    7     2     2     1.06731472    -0.21204702   -30.47568531    -0.00000032    -0.00000003  0.32D-07  0.28D-08    16.18
    7     3     3     1.06731453    -0.21204702   -30.47568531    -0.00000032    -0.00000003  0.33D-07  0.28D-08    16.18
    7     4     4     1.06731415    -0.21204702   -30.47568531    -0.00000033    -0.00000003  0.34D-07  0.29D-08    16.18
    7     5     5     1.06731409    -0.21204702   -30.47568531    -0.00000033    -0.00000003  0.34D-07  0.29D-08    16.18
    7     6     6     1.06731409    -0.21204702   -30.47568531    -0.00000033    -0.00000003  0.34D-07  0.29D-08    16.18
    7     7     7     1.06392048    -0.21160658   -30.43541612    -0.00000010    -0.00000001  0.62D-08  0.15D-08    16.18
    8     1     1     1.06248024    -0.21553664   -30.57443007    -0.00000000    -0.00000000  0.71D-09  0.21D-09    18.25
    8     2     2     1.06733600    -0.21204706   -30.47568535    -0.00000004    -0.00000000  0.84D-09  0.57D-09    18.25
    8     3     3     1.06733247    -0.21204706   -30.47568535    -0.00000004    -0.00000000  0.30D-08  0.64D-09    18.25
    8     4     4     1.06733239    -0.21204706   -30.47568535    -0.00000004    -0.00000000  0.31D-08  0.64D-09    18.25
    8     5     5     1.06733214    -0.21204706   -30.47568535    -0.00000004    -0.00000001  0.33D-08  0.65D-09    18.25
    8     6     6     1.06733215    -0.21204706   -30.47568535    -0.00000004    -0.00000001  0.33D-08  0.65D-09    18.25
    8     7     7     1.06392048    -0.21160658   -30.43541612    -0.00000000    -0.00000001  0.62D-08  0.15D-08    18.25


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.5%
 S   9.5%  25.7%
 P   1.4%  21.2%  11.9%

 Initialization:   1.5%
 Other:           15.2%

 Total CPU:       18.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\00000222000          -0.0363664  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9449519
 22000000222000           0.9349366  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0364031
 2/0000\0222000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8687463   0.0000000
 2/00\000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.8687463   0.0000000   0.0000000
 2/000\00222000           0.0000000   0.8687462   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2/00000\222000           0.0000000   0.0000000  -0.2784365   0.8229175  -0.0000000   0.0000000  -0.0000000
 2/0\0000222000          -0.0000000   0.0000000   0.8229175   0.2784364   0.0000000   0.0000000   0.0000000
 200000002220/\          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.4116984   0.0000000  -0.0000000
 20000000222/\0           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.4116984   0.0000000
 20000000222/0\          -0.0000000  -0.4116938   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 20000000222020          -0.1338297  -0.0000000   0.0659053   0.3296261   0.0000000  -0.0000000  -0.0307455
 20000000222200          -0.1338297   0.0000000  -0.3184173  -0.1077374   0.0000000  -0.0000000  -0.0307454
 20000000222002          -0.1338297  -0.0000000   0.2525120  -0.2218888  -0.0000000  -0.0000000  -0.0307455
 20200000222000          -0.0155073   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1751193
 200/\000222000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0693880  -0.0000000   0.0000000
 200/000\222000           0.0000000   0.0000000  -0.0222391   0.0657277  -0.0000000  -0.0000000   0.0000000
 2000/0\0222000          -0.0000000  -0.0600923  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 20000/0\222000          -0.0000000  -0.0600923  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 20000/\0222000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0600918   0.0000000  -0.0000000
 200000/\222000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0600918   0.0000000
 2000/\00222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0600917  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.963832    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.074195
 2          -0.000000    0.964175   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.961590   -0.000000    0.000000    0.070580   -0.000000
 4           0.000000   -0.000000   -0.070580    0.000000   -0.000000    0.961590    0.000000
 5          -0.000000    0.000000    0.000000    0.964177   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.964177    0.000000    0.000000
 7           0.083184    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.963001

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966673   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.004513
 2          -0.000000    0.964175   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.964177   -0.000000   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.964177    0.000000    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.964177    0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.964177   -0.000000
 7           0.004513   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.966577


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96383240 (fixed)   0.96719012 (relaxed)   0.96667340 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00720901   -0.01192623   -0.15637350
 Singles      0.02758153   -0.06470138   -0.06601564
 Pairs        0.03534914    0.01495243    0.00685250
 Total        1.07013968   -0.06167519   -0.21553664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.35799823
 Nuclear energy                         0.00000000
 Kinetic energy                         9.66283974
 One electron energy                  -49.80553491
 Two electron energy                   19.23110483
 Virial quotient                       -3.16412472
 Correlation energy                    -0.21643184
 !MRCI STATE 1.1 Energy               -30.574430071599

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.58961053 (Davidson, fixed reference)
 Cluster corrected energies           -30.58936312 (Davidson, relaxed reference)
 Cluster corrected energies           -30.58961053 (Davidson, rotated reference)

 Cluster corrected energies           -30.58709712 (Pople, fixed reference)
 Cluster corrected energies           -30.58688211 (Pople, relaxed reference)
 Cluster corrected energies           -30.58709712 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96417482 (fixed)   0.96594410 (relaxed)   0.96417482 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00782998   -0.00854662   -0.14195625
 Singles      0.02999063   -0.06100601   -0.06262660
 Pairs        0.03787261    0.00000000   -0.00746421
 Total        1.07569322   -0.06955263   -0.21204706
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26363829
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80488720
 One electron energy                  -49.70720903
 Two electron energy                   19.23152368
 Virial quotient                       -3.10821376
 Correlation energy                    -0.21204706
 !MRCI STATE 2.1 Energy               -30.475685352463

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49173588 (Davidson, fixed reference)
 Cluster corrected energies           -30.49090105 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49173588 (Davidson, rotated reference)

 Cluster corrected energies           -30.48912317 (Pople, fixed reference)
 Cluster corrected energies           -30.48839414 (Pople, relaxed reference)
 Cluster corrected energies           -30.48912317 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96158979 (fixed)   0.96594578 (relaxed)   0.96417658 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00782963   -0.00854650   -0.14195538
 Singles      0.02998717   -0.06100743   -0.06262647
 Pairs        0.03787248    0.00000000   -0.00746522
 Total        1.07568929   -0.06955393   -0.21204706
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26363829
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80485295
 One electron energy                  -49.70712160
 Two electron energy                   19.23143625
 Virial quotient                       -3.10822462
 Correlation energy                    -0.21204706
 !MRCI STATE 3.1 Energy               -30.475685349332

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49173504 (Davidson, fixed reference)
 Cluster corrected energies           -30.49090025 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49173504 (Davidson, rotated reference)

 Cluster corrected energies           -30.48912244 (Pople, fixed reference)
 Cluster corrected energies           -30.48839345 (Pople, relaxed reference)
 Cluster corrected energies           -30.48912244 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96158982 (fixed)   0.96594581 (relaxed)   0.96417661 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00782964   -0.00854650   -0.14195537
 Singles      0.02998711   -0.06100744   -0.06262646
 Pairs        0.03787247   -0.00000000   -0.00746522
 Total        1.07568922   -0.06955394   -0.21204706
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26363829
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80485273
 One electron energy                  -49.70712046
 Two electron energy                   19.23143511
 Virial quotient                       -3.10822469
 Correlation energy                    -0.21204706
 !MRCI STATE 4.1 Energy               -30.475685349241

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49173503 (Davidson, fixed reference)
 Cluster corrected energies           -30.49090024 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49173503 (Davidson, rotated reference)

 Cluster corrected energies           -30.48912243 (Pople, fixed reference)
 Cluster corrected energies           -30.48839343 (Pople, relaxed reference)
 Cluster corrected energies           -30.48912243 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96417674 (fixed)   0.96594593 (relaxed)   0.96417674 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00782961   -0.00854650   -0.14195546
 Singles      0.02998684   -0.06100739   -0.06262645
 Pairs        0.03787249    0.00000000   -0.00746515
 Total        1.07568893   -0.06955388   -0.21204706
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26363829
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80485129
 One electron energy                  -49.70711570
 Two electron energy                   19.23143035
 Virial quotient                       -3.10822515
 Correlation energy                    -0.21204706
 !MRCI STATE 5.1 Energy               -30.475685349015

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49173496 (Davidson, fixed reference)
 Cluster corrected energies           -30.49090018 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49173496 (Davidson, rotated reference)

 Cluster corrected energies           -30.48912237 (Pople, fixed reference)
 Cluster corrected energies           -30.48839338 (Pople, relaxed reference)
 Cluster corrected energies           -30.48912237 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96417674 (fixed)   0.96594593 (relaxed)   0.96417674 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00782961   -0.00854650   -0.14195545
 Singles      0.02998685   -0.06100740   -0.06262645
 Pairs        0.03787248   -0.00000000   -0.00746516
 Total        1.07568894   -0.06955390   -0.21204706
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26363829
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80485149
 One electron energy                  -49.70711578
 Two electron energy                   19.23143043
 Virial quotient                       -3.10822509
 Correlation energy                    -0.21204706
 !MRCI STATE 6.1 Energy               -30.475685349002

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49173497 (Davidson, fixed reference)
 Cluster corrected energies           -30.49090018 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49173497 (Davidson, rotated reference)

 Cluster corrected energies           -30.48912237 (Pople, fixed reference)
 Cluster corrected energies           -30.48839339 (Pople, relaxed reference)
 Cluster corrected energies           -30.48912237 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96300125 (fixed)   0.96702957 (relaxed)   0.96657675 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00604670   -0.01066040   -0.01212499
 Singles      0.02910549   -0.06277245   -0.06440061
 Pairs        0.03520150   -0.13713562   -0.13508098
 Total        1.07035369   -0.21056848   -0.21160658
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.22470474
 Nuclear energy                         0.00000000
 Kinetic energy                         9.60003408
 One electron energy                  -48.68395290
 Two electron energy                   18.24853678
 Virial quotient                       -3.17034459
 Correlation energy                    -0.21071138
 !MRCI STATE 7.1 Energy               -30.435416118956

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45024044 (Davidson, fixed reference)
 Cluster corrected energies           -30.45002927 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45024044 (Davidson, rotated reference)

 Cluster corrected energies           -30.44778758 (Pople, fixed reference)
 Cluster corrected energies           -30.44760401 (Pople, relaxed reference)
 Cluster corrected energies           -30.44778758 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       66.52       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        60.70     20.40     38.27      1.01      0.03      0.73
 REAL TIME  *        68.18 SEC
 DISK USED  *        99.33 MB (local),        1.62 GB (total)
 SF USED    *       442.78 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =       -30.58961053  AU                              
 SETTING HLSDIAG(11)    =       -30.49173588  AU                              
 SETTING HLSDIAG(12)    =       -30.49173504  AU                              
 SETTING HLSDIAG(13)    =       -30.49173503  AU                              
 SETTING HLSDIAG(14)    =       -30.49173496  AU                              
 SETTING HLSDIAG(15)    =       -30.49173497  AU                              
 SETTING HLSDIAG(16)    =       -30.45024044  AU                              


        HLSDIAG
    -30.50066757
    -30.50066749
    -30.50066749
    -30.50066696
    -30.50066685
    -30.45766719
    -30.42642150
    -30.42642042
    -30.42642042
    -30.58961053
    -30.49173588
    -30.49173504
    -30.49173503
    -30.49173496
    -30.49173497
    -30.45024044
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:    -30.484064    -30.484064    -30.484064    -30.484064    -30.484064    -30.444029    -30.414182    -30.414182
                       -30.414182
 Replaced energies:    -30.500668    -30.500667    -30.500667    -30.500667    -30.500667    -30.457667    -30.426422    -30.426420
                       -30.426420

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -30.574430    -30.475685    -30.475685    -30.475685    -30.475685    -30.475685    -30.435416
 Replaced energies:    -30.589611    -30.491736    -30.491735    -30.491735    -30.491735    -30.491735    -30.450240



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.58961053

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0   19520.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      44.10       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00   19520.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -15.60
                           -0.00       0.00      22.05       0.00       0.00       0.00      -0.00      -0.00      -3.82      -0.00

    3   3.1  1.0  1.0       0.00       0.00   19520.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -22.05       0.00       0.00       0.00      -0.00      -0.00       3.82      -0.00      15.60

    4   4.1  1.0  1.0       0.00       0.00       0.00   19520.86       0.00       0.00       0.00       0.00       0.00      -0.00
                          -44.10      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   19520.88       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.39       0.00      -0.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   28958.22       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      15.00       0.00      -0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   35815.85       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -4.39     -15.00      -0.00      -0.00      -0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35816.09       0.00      -2.70
                           -0.00       0.00      -3.82      -0.00      -0.00      -0.00       0.00       0.00     152.13      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35816.09       0.00
                           -0.00       3.82       0.00       0.00       0.00       0.00       0.00    -152.13      -0.00       2.70

   10   1.1  1.0  0.0      -0.00     -15.60       0.00      -0.00       0.00      -0.00       0.00      -2.70       0.00   19520.72
                           -0.00       0.00     -15.60      -0.00       0.00       0.00      -0.00       0.00      -2.70       0.00

   11   2.1  1.0  0.0      15.60       0.00       0.00       0.00      -0.00      -0.00      -2.70      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00     -15.59     -27.01      -0.00       0.00      -0.00      -0.00      -0.00

   12   3.1  1.0  0.0      -0.00      -0.00       0.00      15.59     -27.01      -0.00       0.00       0.00      -0.00       0.00
                           15.60      -0.00      -0.00       0.00       0.00      -0.00       2.70       0.00       0.00      -0.00

   13   4.1  1.0  0.0       0.00      -0.00     -15.59      -0.00      -0.00       0.00       0.00      -0.00      -2.70       0.00
                            0.00      15.59      -0.00      -0.00      -0.00       0.00      -0.00       2.70       0.00      -0.00

   14   5.1  1.0  0.0      -0.00       0.00      27.01       0.00      -0.00       0.00      -0.00       0.00      -1.57       0.00
                           -0.00      27.01      -0.00       0.00       0.00       0.00      -0.00      -1.57      -0.00      -0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      10.60       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      10.60       0.00      -0.00

   16   7.1  1.0  0.0      -0.00       2.70      -0.00      -0.00       0.00      -0.00      -0.00     107.57       0.00       0.00
                            0.00      -0.00      -2.70       0.00       0.00       0.00      -0.00       0.00    -107.57      -0.00

   17   8.1  1.0  0.0       2.70       0.00      -0.00       0.00      -0.00       0.00    -107.57      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -2.70       1.57     -10.60      -0.00       0.00      -0.00      -0.00

   18   9.1  1.0  0.0      -0.00       0.00       0.00       2.70       1.57     -10.60      -0.00      -0.00      -0.00       0.00
                            2.70       0.00      -0.00      -0.00       0.00      -0.00     107.57       0.00       0.00      -0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      15.60
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   21   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      15.60

   22   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   23   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.70
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.70

   28   1.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     -60.88       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -60.88      -0.00       0.00

   29   2.1  0.0  0.0      -0.00      -0.00      -0.00      16.38     -28.36       0.00       0.00       0.00       0.00       0.00
                           16.38      -0.00       0.00      -0.00      -0.00      -0.00      57.48       0.00       0.00       0.00

   30   3.1  0.0  0.0      -0.00       0.00      32.10       0.00       0.00       0.00      -0.00       0.00     -13.01       0.00
                            0.00      21.60       0.00       0.00       0.00       0.00      -0.00     -49.85      -0.00     -14.84

   31   4.1  0.0  0.0       0.00      -0.00      -6.42       0.00       0.00       0.00      -0.00       0.00     -65.07       0.00
                           -0.00      24.59      -0.00      -0.00       0.00      -0.00      -0.00      43.80      -0.00      43.85

   32   5.1  0.0  0.0      -0.00     -16.38       0.00       0.00      -0.00       0.00      -0.00     -57.48       0.00       0.00
                            0.00      -0.00     -16.38       0.00       0.00       0.00       0.00       0.00     -57.48      -0.00

   33   6.1  0.0  0.0      16.38       0.00       0.00       0.00       0.00       0.00     -57.48      -0.00      -0.00       0.00
                           -0.00       0.00       0.00     -16.38     -28.36       0.00       0.00      -0.00      -0.00      -0.00

   34   7.1  0.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       1.62       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.62      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      15.60      -0.00       0.00      -0.00       0.00      -0.00       2.70      -0.00       0.00       0.00
                            0.00     -15.60      -0.00       0.00       0.00      -0.00       0.00      -2.70       0.00       0.00

    2   2.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00       2.70       0.00       0.00       0.00       0.00
                            0.00       0.00     -15.59     -27.01      -0.00       0.00      -0.00      -0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00     -15.59      27.01       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       2.70       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       0.00      15.59      -0.00       0.00      -0.00      -0.00       0.00       2.70       0.00       0.00
                           15.59      -0.00       0.00      -0.00       0.00      -0.00       2.70       0.00       0.00       0.00

    5   5.1  1.0  1.0      -0.00     -27.01      -0.00      -0.00      -0.00       0.00      -0.00       1.57       0.00       0.00
                           27.01      -0.00       0.00      -0.00       0.00      -0.00      -1.57      -0.00       0.00       0.00

    6   6.1  1.0  1.0      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     -10.60       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      10.60       0.00       0.00       0.00

    7   7.1  1.0  1.0      -2.70       0.00       0.00      -0.00       0.00      -0.00    -107.57      -0.00       0.00       0.00
                           -0.00      -2.70       0.00       0.00       0.00       0.00       0.00    -107.57       0.00       0.00

    8   8.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -0.00     107.57      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -2.70       1.57     -10.60      -0.00      -0.00      -0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00      -0.00      -2.70      -1.57      10.60       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     107.57       0.00      -0.00       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      15.60
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   2.1  1.0  0.0   19520.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -15.60       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   12   3.1  1.0  0.0       0.00   19520.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      15.60      -0.00

   13   4.1  1.0  0.0       0.00       0.00   19520.86       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      15.59

   14   5.1  1.0  0.0       0.00       0.00       0.00   19520.88       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      27.01

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00   28958.22       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   35815.85       0.00       0.00       0.00      -2.70
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   35816.09       0.00      -2.70      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35816.09       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.70       0.00

   19   1.1  1.0 -1.0     -15.60       0.00      -0.00       0.00      -0.00       0.00      -2.70       0.00   19520.72       0.00
                            0.00     -15.60      -0.00       0.00       0.00      -0.00       0.00      -2.70       0.00      -0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -2.70      -0.00      -0.00       0.00   19520.74
                           -0.00       0.00     -15.59     -27.01      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   21   3.1  1.0 -1.0      -0.00       0.00      15.59     -27.01      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       2.70       0.00       0.00      -0.00      22.05

   22   4.1  1.0 -1.0      -0.00     -15.59      -0.00      -0.00       0.00       0.00      -0.00      -2.70       0.00       0.00
                           15.59      -0.00      -0.00      -0.00       0.00      -0.00       2.70       0.00      44.10       0.00

   23   5.1  1.0 -1.0       0.00      27.01       0.00      -0.00       0.00      -0.00       0.00      -1.57       0.00       0.00
                           27.01      -0.00       0.00       0.00       0.00      -0.00      -1.57      -0.00       0.00       0.00

   24   6.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      10.60       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      10.60       0.00       0.00       0.00

   25   7.1  1.0 -1.0       2.70      -0.00      -0.00       0.00      -0.00      -0.00     107.57       0.00       0.00       0.00
                           -0.00      -2.70       0.00       0.00       0.00      -0.00       0.00    -107.57       0.00      -0.00

   26   8.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.00    -107.57      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -2.70       1.57     -10.60      -0.00       0.00      -0.00       0.00      -0.00

   27   9.1  1.0 -1.0       0.00       0.00       2.70       1.57     -10.60      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     107.57       0.00       0.00       0.00      -3.82

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      86.11      -0.00      -0.00      -0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           23.16       0.00       0.00      -0.00       0.00       0.00     -81.29      -0.00     -16.38       0.00

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -88.90       0.00       0.00      -0.00     -21.60

   31   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00     -30.08      -0.00       0.00       0.00     -24.59

   32   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -16.38
                            0.00       0.00     -46.31      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   33   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.38       0.00
                            0.00     -23.16      -0.00      -0.00      -0.00       0.00      -0.00      81.29       0.00      -0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -2.29      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -16.38      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -21.60

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      32.10
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.38       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -28.36       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -57.48       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      60.88      -0.00      49.85

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -60.88       0.00     -13.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   10   1.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00       2.70      -0.00       0.00       0.00       0.00
                          -15.60      -0.00       0.00       0.00      -0.00       0.00      -2.70      -0.00      -0.00      14.84

   11   2.1  1.0  0.0      -0.00      -0.00       0.00       0.00       2.70       0.00       0.00       0.00       0.00       0.00
                            0.00     -15.59     -27.01      -0.00       0.00      -0.00      -0.00       0.00     -23.16      -0.00

   12   3.1  1.0  0.0       0.00     -15.59      27.01       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       2.70       0.00       0.00      -0.00      -0.00      -0.00

   13   4.1  1.0  0.0      15.59      -0.00       0.00      -0.00      -0.00       0.00       2.70       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       2.70       0.00       0.00      -0.00      -0.00

   14   5.1  1.0  0.0     -27.01      -0.00      -0.00      -0.00       0.00      -0.00       1.57       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -1.57      -0.00      -0.00       0.00       0.00

   15   6.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00       0.00     -10.60       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      10.60       0.00       0.00      -0.00      -0.00

   16   7.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00    -107.57      -0.00       0.00       0.00       0.00
                           -2.70       0.00       0.00       0.00       0.00       0.00    -107.57     -86.11      -0.00      88.90

   17   8.1  1.0  0.0       0.00      -0.00       0.00      -0.00     107.57      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -2.70       1.57     -10.60      -0.00      -0.00      -0.00       0.00      81.29      -0.00

   18   9.1  1.0  0.0      -0.00      -2.70      -1.57      10.60       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     107.57       0.00      -0.00       0.00       0.00      -0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00     -44.10      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      16.38       0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                          -22.05      -0.00      -0.00      -0.00       0.00       0.00       3.82      -0.00      -0.00      21.60

   21   3.1  1.0 -1.0   19520.74       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      32.10
                           -0.00      -0.00      -0.00       0.00       0.00      -3.82       0.00       0.00       0.00       0.00

   22   4.1  1.0 -1.0       0.00   19520.86       0.00       0.00       0.00       0.00       0.00       0.00      16.38       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   23   5.1  1.0 -1.0       0.00       0.00   19520.88       0.00       0.00       0.00       0.00       0.00     -28.36       0.00
                            0.00       0.00       0.00       0.00      -4.39      -0.00       0.00       0.00      -0.00       0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00   28958.22       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     -15.00      -0.00       0.00       0.00      -0.00       0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   35815.85       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       4.39      15.00       0.00       0.00       0.00       0.00      57.48      -0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   35816.09       0.00      -0.00       0.00       0.00
                            3.82       0.00       0.00       0.00      -0.00      -0.00    -152.13     -60.88       0.00     -49.85

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   35816.09     -60.88       0.00     -13.01
                           -0.00      -0.00      -0.00      -0.00      -0.00     152.13       0.00      -0.00       0.00      -0.00

   28   1.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00      -0.00     -60.88       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      60.88       0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0      -0.00      16.38     -28.36       0.00       0.00       0.00       0.00       0.00   21481.00       0.00
                           -0.00       0.00       0.00       0.00     -57.48      -0.00      -0.00      -0.00       0.00       0.00

   30   3.1  0.0  0.0      32.10       0.00       0.00       0.00      -0.00       0.00     -13.01       0.00       0.00   21481.19
                           -0.00      -0.00      -0.00      -0.00       0.00      49.85       0.00      -0.00      -0.00       0.00

   31   4.1  0.0  0.0      -6.42       0.00       0.00       0.00      -0.00       0.00     -65.07       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     -43.80       0.00      -0.00      -0.00      -0.00

   32   5.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00     -57.48       0.00       0.00       0.00       0.00
                           16.38      -0.00      -0.00      -0.00      -0.00      -0.00      57.48      -0.00      -0.00      -0.00

   33   6.1  0.0  0.0       0.00       0.00       0.00       0.00     -57.48      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      16.38      28.36      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   34   7.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00       1.62       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -1.62       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  1.0  1.0       0.00      -0.00      16.38       0.00
                            0.00      -0.00       0.00      -0.00

    2   2.1  1.0  1.0      -0.00     -16.38       0.00      -0.00
                          -24.59       0.00      -0.00      -0.00

    3   3.1  1.0  1.0      -6.42       0.00       0.00       0.00
                            0.00      16.38      -0.00       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      16.38       0.00

    5   5.1  1.0  1.0       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      28.36       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00

    7   7.1  1.0  1.0      -0.00      -0.00     -57.48       0.00
                            0.00      -0.00      -0.00      -0.00

    8   8.1  1.0  1.0       0.00     -57.48      -0.00      -0.00
                          -43.80      -0.00       0.00      -1.62

    9   9.1  1.0  1.0     -65.07       0.00      -0.00       1.62
                            0.00      57.48       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                          -43.85       0.00       0.00       0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00      23.16       0.00

   13   4.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      46.31       0.00       0.00

   14   5.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00
                           30.08       0.00      -0.00       2.29

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -81.29       0.00

   19   1.1  1.0 -1.0       0.00      -0.00      16.38       0.00
                           -0.00       0.00      -0.00       0.00

   20   2.1  1.0 -1.0      -0.00     -16.38       0.00      -0.00
                           24.59      -0.00       0.00       0.00

   21   3.1  1.0 -1.0      -6.42       0.00       0.00       0.00
                           -0.00     -16.38       0.00      -0.00

   22   4.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00     -16.38      -0.00

   23   5.1  1.0 -1.0       0.00      -0.00       0.00      -0.00
                            0.00       0.00     -28.36      -0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00

   25   7.1  1.0 -1.0      -0.00      -0.00     -57.48       0.00
                           -0.00       0.00       0.00       0.00

   26   8.1  1.0 -1.0       0.00     -57.48      -0.00      -0.00
                           43.80       0.00      -0.00       1.62

   27   9.1  1.0 -1.0     -65.07       0.00      -0.00       1.62
                           -0.00     -57.48      -0.00      -0.00

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   31   4.1  0.0  0.0   21481.19       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   32   5.1  0.0  0.0       0.00   21481.20       0.00       0.00
                           -0.00       0.00       0.00       0.00

   33   6.1  0.0  0.0       0.00       0.00   21481.20       0.00
                           -0.00      -0.00       0.00       0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00   30588.20
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by    -30.58961053 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+          19520.723       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   19520.741       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000   19520.741       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   19520.857       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   19520.881       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   28958.216       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   35815.852       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   35816.090
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000     -22.055      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000     -22.050     -38.193      -0.000       0.000      -0.000

    3    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               22.055      -0.000       0.000       0.000       0.000      -0.000       3.819       0.000

    4    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000      22.050      -0.000       0.000      -0.000       0.000      -0.000       3.814

    5    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      38.193      -0.000       0.000       0.000       0.000      -0.000      -2.220

    6    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      14.994

    7    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -3.819       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -3.814       2.220     -14.994      -0.000       0.000

    9    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                3.820       0.000      -0.000      -0.000       0.000      -0.000     152.125       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      44.101       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      22.055       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -22.055       0.000       0.000       0.000      -0.000      -0.000       3.817

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -44.101      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       4.385       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      14.997       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -4.385     -14.997      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -3.817      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.817       0.000       0.000       0.000       0.000       0.000    -152.132

    1    1  |0 0>               0.000      -0.000      -0.001       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000      -0.000      23.160     -40.108       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000       0.000      45.391       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      -0.000      -9.079       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000     -23.161       0.000       0.000      -0.000       0.000      -0.000     -81.286
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              23.160       0.000       0.000       0.000       0.000       0.000     -81.288      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000     -22.055      -0.000       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000     -22.050     -38.193      -0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      22.055      -0.000       0.000       0.000       0.000      -0.000       3.819

    4    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      22.050      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      38.193      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -3.819       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -3.814       2.220     -14.994      -0.000

    9    1  |1 1>+          35816.090       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       3.820       0.000      -0.000      -0.000       0.000      -0.000     152.125

    1    1  |1 0>               0.000   19520.723       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.820       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000   19520.741       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000   19520.741       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000   19520.857       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000   19520.881       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   28958.216       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000   35815.852
                             -152.125      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000      22.055      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000     -22.055       0.000      -0.000      -0.000       0.000       0.000       3.819
                               -3.817      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -22.051      38.193       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000      -0.000       0.000      22.051       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000      -0.000     -38.193      -0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000      -3.819       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -3.820      -0.000       0.000      -0.000       0.000      -0.000     152.125
                              152.132       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000      -0.000      -0.000      -3.814      -2.220      14.994       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |0 0>             -86.104       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      86.108

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      23.161       0.000       0.000      -0.000       0.000       0.000

    3    1  |0 0>             -18.401       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -14.835       0.000       0.000       0.000      -0.000       0.000     -88.905

    4    1  |0 0>             -92.026       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      43.846       0.000       0.000       0.000      -0.000      -0.000     -30.081

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     -46.310      -0.000      -0.000      -0.000

    6    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -23.160      -0.000      -0.000      -0.000       0.000

    7    1  |0 0>               2.289       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -2.288

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.820      -0.000       0.000      -0.000      44.101       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      22.055       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -22.055       0.000       0.000       0.000      -0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.814       0.000     -44.101      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.220      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.994       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -152.125      -0.000       0.000       0.000       0.000      -4.385     -14.997

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -3.817      -0.000      -0.000      -0.000

    9    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       3.817       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000     -22.055       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000      22.055       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      22.051     -38.193      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000     -22.051       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000      38.193       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000      -0.000       3.819      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>           35816.090       0.000       3.820       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000   35816.090      -0.000       0.000       0.000       3.814       2.220     -14.994
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              3.820      -0.000   19520.723       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000   19520.741       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000       0.000       0.000   19520.741       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       3.814       0.000       0.000       0.000   19520.857       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.000       2.220       0.000       0.000       0.000       0.000   19520.881       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000     -14.994       0.000       0.000       0.000       0.000       0.000   28958.216
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-           -152.125      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.001       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -81.289      -0.000      23.161      -0.000       0.000      -0.000      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      30.553       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      34.774      -0.000      -0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -23.161       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      81.289      -0.000       0.000       0.000     -23.159     -40.107       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000     -23.161
                               -0.000      -0.000      -3.817       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.001      -0.000      45.391      -9.079       0.000
                               -0.000       3.817      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      23.160       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000     -40.108       0.000       0.000      -0.000
                                4.385       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.997       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000     -81.286
                                0.000       0.000     152.132       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000     -86.104       0.000     -18.401     -92.026       0.000
                                0.000    -152.132      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -3.820       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      14.835     -43.846       0.000

    2    1  |1 0>              -3.819      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     -23.161      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000      -0.000      -3.814       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      46.310

    5    1  |1 0>              -0.000       0.000      -2.220       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000      -0.000      14.994       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000     152.125       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -86.108      -0.000      88.905      30.081       0.000

    8    1  |1 0>            -152.125       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      81.289      -0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -23.161      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.001       0.000     -30.553     -34.774       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      23.161

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-          35815.852       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -81.288       0.000       0.000      -0.000

    8    1  |1 1>-              0.000   35816.090       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      86.104      -0.000      70.498     -61.947      -0.000

    9    1  |1 1>-              0.000       0.000   35816.090       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      81.286

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -86.104      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000   21481.003       0.000       0.000       0.000
                               81.288       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000   21481.187       0.000       0.000
                               -0.000     -70.498      -0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21481.190       0.000
                               -0.000      61.947      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   21481.204
                                0.000       0.000     -81.286      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       2.289      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34

    1    1  |1 1>+             23.160       0.000
                                0.000       0.000

    2    1  |1 1>+              0.000      -0.000
                                0.000       0.000

    3    1  |1 1>+              0.000       0.000
                                0.000       0.000

    4    1  |1 1>+              0.000       0.000
                                0.000       0.000

    5    1  |1 1>+              0.000      -0.000
                                0.000       0.000

    6    1  |1 1>+              0.000      -0.000
                                0.000       0.000

    7    1  |1 1>+            -81.288       0.000
                                0.000       0.000

    8    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    9    1  |1 1>+             -0.000       2.289
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                                0.000       0.000

    2    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    3    1  |1 0>               0.000       0.000
                               23.160       0.000

    4    1  |1 0>               0.000       0.000
                                0.000       0.000

    5    1  |1 0>               0.000       0.000
                                0.000       0.000

    6    1  |1 0>               0.000       0.000
                                0.000      -0.000

    7    1  |1 0>               0.000       0.000
                               -0.000       2.288

    8    1  |1 0>               0.000       0.000
                                0.000       0.000

    9    1  |1 0>               0.000       0.000
                              -81.289       0.000

    1    1  |1 1>-              0.000       0.000
                                0.000      -0.000

    2    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    3    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    4    1  |1 1>-              0.000       0.000
                               23.159       0.000

    5    1  |1 1>-              0.000       0.000
                               40.107       0.000

    6    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    7    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    8    1  |1 1>-              0.000       0.000
                                0.000      -2.289

    9    1  |1 1>-              0.000       0.000
                                0.000       0.000

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>               0.000       0.000
                                0.000       0.000

    6    1  |0 0>           21481.204       0.000
                                0.000       0.000

    7    1  |0 0>               0.000   30588.199
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.58961338    -0.00000285       -0.63      0.00000000        0.00      0.0000
    2   -30.50096872     0.08864181    19454.63      0.08864466    19455.25      2.4121
    3   -30.50096872     0.08864181    19454.63      0.08864466    19455.25      2.4121
    4   -30.50096867     0.08864186    19454.64      0.08864472    19455.27      2.4121
    5   -30.50077545     0.08883508    19497.05      0.08883794    19497.67      2.4174
    6   -30.50077539     0.08883514    19497.06      0.08883800    19497.69      2.4174
    7   -30.50077502     0.08883551    19497.14      0.08883837    19497.77      2.4174
    8   -30.50077498     0.08883555    19497.15      0.08883840    19497.78      2.4174
    9   -30.50077498     0.08883555    19497.15      0.08883841    19497.78      2.4174
   10   -30.50046654     0.08914399    19564.85      0.08914685    19565.47      2.4258
   11   -30.50046637     0.08914416    19564.88      0.08914701    19565.51      2.4258
   12   -30.50046637     0.08914416    19564.88      0.08914701    19565.51      2.4258
   13   -30.50046636     0.08914417    19564.88      0.08914702    19565.51      2.4258
   14   -30.50046623     0.08914430    19564.91      0.08914715    19565.54      2.4258
   15   -30.50046623     0.08914430    19564.91      0.08914716    19565.54      2.4258
   16   -30.50046618     0.08914436    19564.92      0.08914721    19565.55      2.4258
   17   -30.49173263     0.09787790    21481.72      0.09788076    21482.34      2.6635
   18   -30.49173180     0.09787873    21481.90      0.09788159    21482.52      2.6635
   19   -30.49173178     0.09787875    21481.90      0.09788160    21482.53      2.6635
   20   -30.49173172     0.09787881    21481.92      0.09788167    21482.54      2.6635
   21   -30.49173172     0.09787882    21481.92      0.09788167    21482.54      2.6635
   22   -30.45766750     0.13194303    28958.15      0.13194589    28958.77      3.5904
   23   -30.45766750     0.13194303    28958.15      0.13194589    28958.77      3.5904
   24   -30.45766750     0.13194303    28958.15      0.13194589    28958.77      3.5904
   25   -30.45024046     0.13937007    30588.20      0.13937293    30588.82      3.7925
   26   -30.42780419     0.16180634    35512.39      0.16180919    35513.01      4.4031
   27   -30.42711378     0.16249675    35663.91      0.16249961    35664.54      4.4218
   28   -30.42711378     0.16249675    35663.91      0.16249961    35664.54      4.4218
   29   -30.42711327     0.16249726    35664.03      0.16250012    35664.65      4.4219
   30   -30.42572385     0.16388668    35968.97      0.16388953    35969.59      4.4597
   31   -30.42572366     0.16388687    35969.01      0.16388972    35969.64      4.4597
   32   -30.42572366     0.16388687    35969.01      0.16388972    35969.64      4.4597
   33   -30.42572309     0.16388744    35969.14      0.16389030    35969.76      4.4597
   34   -30.42572309     0.16388745    35969.14      0.16389030    35969.76      4.4597

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.54809182  0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.54800852 -0.00000000  0.00000000 -0.40853058 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000005  0.00000000  0.00000000  0.00000000  0.41096942 -0.70510265 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000008 -0.54740146 -0.00000000  0.00000000  0.00000000  0.00000000 -0.40772016
                           0.00000000 -0.00000000  0.00006371 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00089582

   5    1  |1 1>+         -0.00000000  0.00000005 -0.31585089 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70637955
                          -0.00000000 -0.00000000  0.00003676 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00155202

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000070 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00021453  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00021559 -0.00000000  0.00000000 -0.00042477 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00242458  0.00000000 -0.00000000 -0.00000000  0.00042393  0.00024704 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.81622459  0.00341994 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00006377  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00089815
                          -0.00000000  0.00000008 -0.54789104 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40878136

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.54789188 -0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000535  0.00000000 -0.00000000  0.81571256  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.63195868 -0.00000000  0.00000000  0.00000725 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000064 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00242471  0.00000000  0.00000000 -0.00000000  0.00000206 -0.00049075 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000094
                          -0.00000000  0.00000000 -0.00021475 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00042559

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00021475 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00006379 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00089752
                           0.00000000 -0.00000008  0.54809230  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40849222

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000005 -0.00000000  0.00000000 -0.00000000  0.40504744  0.70851994  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.54800984  0.00000000 -0.00000000  0.40852999  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.54740584  0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.31584268 -0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000070 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000093
                           0.00000000  0.00000000 -0.00021452 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00042409

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00242458  0.00000000 -0.00000000 -0.00000000  0.00042598 -0.00024348 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00021559  0.00000000 -0.00000000  0.00042477  0.00000000

   1    1  |0 0>           0.99999118  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000007  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000707 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.02861680
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00006288

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00927873  0.02704816  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.02704945  0.00927827 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000 -0.02861228 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000705 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000054  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.40849386 -0.00000000  0.68658939 -0.00000018  0.00000000 -0.24735919 -0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57654393 -0.00000000 -0.00000000  0.44749296
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.57739845 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000101 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000013  0.48258474  0.00000000  0.00000002 -0.54871703 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00029183  0.00000000  0.00000000 -0.00014904 -0.00000000

   5    1  |1 1>+          0.00000001 -0.00000000 -0.00000009 -0.35616571 -0.00000000  0.00000002 -0.52345015 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00021538 -0.00000000  0.00000000 -0.00014217 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000003 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00042407  0.00000000 -0.00000021  0.00000000  0.00000000 -0.00000054 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000021  0.00000000  0.00000000  0.00000090
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000101 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.57725244  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00024814 -0.00000000  0.00000000 -0.00016391 -0.00000000
                           0.00000000  0.00000000  0.00000011  0.41035077  0.00000000 -0.00000002  0.60347987  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.40878244  0.00000000  0.41117771 -0.00000011  0.00000000  0.60291603  0.00000002  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.57798502  0.00000000 -0.00000000  0.00062541

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00084298 -0.00000000 -0.00000000  0.77500160

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000057 -0.00000000 -0.00000000  0.00000068 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00042557 -0.00000000  0.00000057 -0.00000000  0.00000000  0.00000068  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00041539 -0.00000000 -0.00000000  0.00006693  0.00000000
                           0.00000000 -0.00000000  0.00000018  0.68692782  0.00000000  0.00000001 -0.24641740 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000101  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.57739991 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.57752030 -0.00000000 -0.00000000  0.44623109

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.40771093  0.00000000 -0.48182634  0.00000013 -0.00000000  0.54938644  0.00000002  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.70638685 -0.00000000 -0.35689113  0.00000009 -0.00000000 -0.52295338 -0.00000002 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000 -0.00000000  0.00000055 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000021  0.00000000  0.00000000  0.00000090

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00002488  0.00000000  0.00000000 -0.00000852 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000183 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000552 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001929 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.02861352  0.00000000  0.00002488 -0.00000000  0.00000000  0.00000849  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.01168370 -0.00000000  0.00000090 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.01168422 -0.00000000  0.00000000 -0.00000086
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.02276404 -0.00520744 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.01168527 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000090 -0.00000000
                          -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.02023653  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000051 -0.00000000
                           0.00000004  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00300145  0.99999049  0.00000002
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000182  0.00000042

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00559976 -0.00000000 -0.00223652  0.00000671  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00559954  0.00000000  0.00000000 -0.00223596
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000009

   9    1  |1 1>+          0.00000000  0.00144129  0.00630214 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00687350 -0.02231628  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01168522  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000094 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.01168386 -0.00000000 -0.00000094  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.02336327  0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000018  0.00000000  0.00000000  0.00000104

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000042  0.00003955
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.99999500

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00617908 -0.00190318  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00559966  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000671  0.00223596  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00559974 -0.00000000  0.00223596 -0.00000671  0.00000000

   1    1  |1 1>-         -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01168505  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000090  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.01588933 -0.01711279  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.01168422 -0.00000000  0.00000000 -0.00000086

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.01168359 -0.00000000  0.00000090 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.02023432 -0.00000000 -0.00000051  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.99999049 -0.00300145  0.00000000

   7    1  |1 1>-          0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00559968 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000671  0.00223652  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00473731  0.00439911  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000009
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00559954  0.00000000  0.00000000 -0.00223596

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.99955897 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                          -0.00000212 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.99918226 -0.02746244 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.02746246  0.99918224 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000002  0.99955911 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.99955907 -0.00000002 -0.00000003  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00000000  0.00000000 -0.00016658 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00015290
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00016651 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000003 -0.00000015  0.00000000 -0.00000000  0.00000000 -0.00026465  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00016632  0.00000000 -0.00000000 -0.00015265 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000050  0.00000000 -0.00000000 -0.00000052 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00009458  0.00000000  0.00000000  0.00026421  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000028  0.00000000  0.00000000  0.00000091  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00316252  0.00000000  0.00000000 -0.00000084 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000944  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.70737960  0.00000093  0.00000000  0.00000000 -0.00000037  0.70680798
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.70710321  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00046481  0.57724756 -0.00000000 -0.00000000  0.00000000 -0.40836949  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000050 -0.00000000 -0.00000000 -0.00000053 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00016668  0.00000000  0.00000000  0.00015275  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00016668  0.00000000  0.00000000  0.00000000 -0.00000000  0.00015275

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00019366  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00316212 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00046475  0.57753982 -0.00000000 -0.00000000  0.00000000  0.81633303 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00210882  0.00000000 -0.00000000 -0.00243160 -0.00000000
                          -0.00000000  0.00000000 -0.00000093  0.70682356 -0.00000000  0.00000000  0.70735670  0.00000037

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.70682672 -0.00000093 -0.00000000  0.00000000 -0.00000037  0.70736088

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000050  0.00000000 -0.00000000 -0.00000053 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00016658 -0.00000000  0.00000000  0.00015290  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000015 -0.00000000  0.00000000 -0.00000000  0.00026464 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00016651  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00016632 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00015265

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00009458  0.00000000  0.00000000  0.00000000 -0.00000000  0.00026421

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00316253  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000084

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00211047  0.00000000  0.00000000  0.00242970  0.00000000
                           0.00000000  0.00000000 -0.00000093  0.70737646 -0.00000000 -0.00000000 -0.70680379 -0.00000037

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00046481 -0.57724755  0.00000000  0.00000000 -0.00000000  0.40837689 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70710322 -0.00000000  0.00000000 -0.00000000

   1    1  |0 0>           0.00000393 -0.00419957  0.00000000  0.00000000 -0.00000000  0.00000090  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000309 -0.00000000  0.00000000  0.00793304  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00002727  0.00000000

   3    1  |0 0>           0.00000000  0.00000207 -0.00000000 -0.00000000  0.00000000  0.00751393 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000070  0.00000000 -0.00000000 -0.00000000  0.00254232 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000309 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00793319
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.99999968  0.00080505 -0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00015271
                          -0.00000000  0.00000000

   3    1  |1 1>+         -0.00015272  0.00000000
                           0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000
                          -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.70708449
                           0.00000000 -0.00000000

   9    1  |1 1>+          0.70708662 -0.00000000
                          -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000
                          -0.00030569  0.00000000

   2    1  |1 0>           0.00000000  0.00000000
                          -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000
                           0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000
                           0.00000000  0.00030518

   5    1  |1 0>           0.00000000 -0.00000000
                           0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000
                          -0.00000427 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000
                           0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000
                           0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000
                          -0.00015272  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000
                           0.00000000  0.00015271

   4    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000
                           0.70708236 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000 -0.70708448

   1    1  |0 0>           0.00000000 -0.00000000
                           0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000
                          -0.00000000 -0.00000000

   3    1  |0 0>           0.00254209 -0.00000000
                          -0.00000000  0.00000000

   4    1  |0 0>          -0.00751326  0.00000000
                           0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00793289
                          -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000
                           0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.58961338     -0.00000285       -0.63      0.00000000        0.00      0.0000
     2   1    -30.50096872      0.08864181    19454.63      0.08864466    19455.25      2.4121
     3   1    -30.50096872      0.08864181    19454.63      0.08864466    19455.25      2.4121
     4   1    -30.50096867      0.08864186    19454.64      0.08864472    19455.27      2.4121
     5   1    -30.50077545      0.08883508    19497.05      0.08883794    19497.67      2.4174
     6   1    -30.50077539      0.08883514    19497.06      0.08883800    19497.69      2.4174
     7   1    -30.50077502      0.08883551    19497.14      0.08883837    19497.77      2.4174
     8   1    -30.50077498      0.08883555    19497.15      0.08883840    19497.78      2.4174
     9   1    -30.50077498      0.08883555    19497.15      0.08883841    19497.78      2.4174
    10   1    -30.50046654      0.08914399    19564.85      0.08914685    19565.47      2.4258
    11   1    -30.50046637      0.08914416    19564.88      0.08914701    19565.51      2.4258
    12   1    -30.50046637      0.08914416    19564.88      0.08914701    19565.51      2.4258
    13   1    -30.50046636      0.08914417    19564.88      0.08914702    19565.51      2.4258
    14   1    -30.50046623      0.08914430    19564.91      0.08914715    19565.54      2.4258
    15   1    -30.50046623      0.08914430    19564.91      0.08914716    19565.54      2.4258
    16   1    -30.50046618      0.08914436    19564.92      0.08914721    19565.55      2.4258
    17   1    -30.49173263      0.09787790    21481.72      0.09788076    21482.34      2.6635
    18   1    -30.49173180      0.09787873    21481.90      0.09788159    21482.52      2.6635
    19   1    -30.49173178      0.09787875    21481.90      0.09788160    21482.53      2.6635
    20   1    -30.49173172      0.09787881    21481.92      0.09788167    21482.54      2.6635
    21   1    -30.49173172      0.09787882    21481.92      0.09788167    21482.54      2.6635
    22   1    -30.45766750      0.13194303    28958.15      0.13194589    28958.77      3.5904
    23   1    -30.45766750      0.13194303    28958.15      0.13194589    28958.77      3.5904
    24   1    -30.45766750      0.13194303    28958.15      0.13194589    28958.77      3.5904
    25   1    -30.45024046      0.13937007    30588.20      0.13937293    30588.82      3.7925
    26   1    -30.42780419      0.16180634    35512.39      0.16180919    35513.01      4.4031
    27   1    -30.42711378      0.16249675    35663.91      0.16249961    35664.54      4.4218
    28   1    -30.42711378      0.16249675    35663.91      0.16249961    35664.54      4.4218
    29   1    -30.42711327      0.16249726    35664.03      0.16250012    35664.65      4.4219
    30   1    -30.42572385      0.16388668    35968.97      0.16388953    35969.59      4.4597
    31   1    -30.42572366      0.16388687    35969.01      0.16388972    35969.64      4.4597
    32   1    -30.42572366      0.16388687    35969.01      0.16388972    35969.64      4.4597
    33   1    -30.42572309      0.16388744    35969.14      0.16389030    35969.76      4.4597
    34   1    -30.42572309      0.16388745    35969.14      0.16389030    35969.76      4.4597

 E0 =    -30.58961053 is the energy of the lowest zeroth-order state
 E1 =    -30.58961338 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.54809182  0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.54800852 -0.00000000  0.00000000 -0.40853058 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000005  0.00000000  0.00000000  0.00000000  0.41096942 -0.70510265 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000  0.00000008 -0.54740146 -0.00000000  0.00000000  0.00000000  0.00000000 -0.40772016
                                0.00000000 -0.00000000  0.00006371 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00089582

  5  1     5    1  |1 1>+      -0.00000000  0.00000005 -0.31585089 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70637955
                               -0.00000000 -0.00000000  0.00003676 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00155202

  6  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000070 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00021453  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00021559 -0.00000000  0.00000000 -0.00042477 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00242458  0.00000000 -0.00000000 -0.00000000  0.00042393  0.00024704 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.81622459  0.00341994 -0.00000000  0.00000000

 11  1     2    1  |1 0>        0.00000000  0.00000000 -0.00006377  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00089815
                               -0.00000000  0.00000008 -0.54789104 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40878136

 12  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.54789188 -0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000535  0.00000000 -0.00000000  0.81571256  0.00000000

 14  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.63195868 -0.00000000  0.00000000  0.00000725 -0.00000000

 15  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000064 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00242471  0.00000000  0.00000000 -0.00000000  0.00000206 -0.00049075 -0.00000000 -0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000094
                               -0.00000000  0.00000000 -0.00021475 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00042559

 18  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00021475 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00006379 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00089752
                                0.00000000 -0.00000008  0.54809230  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40849222

 20  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000005 -0.00000000  0.00000000 -0.00000000  0.40504744  0.70851994  0.00000000  0.00000000

 21  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.54800984  0.00000000 -0.00000000  0.40852999  0.00000000

 22  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.54740584  0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.31584268 -0.00000005 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 24  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000070 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000093
                                0.00000000  0.00000000 -0.00021452 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00042409

 26  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00242458  0.00000000 -0.00000000 -0.00000000  0.00042598 -0.00024348 -0.00000000  0.00000000

 27  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00021559  0.00000000 -0.00000000  0.00042477  0.00000000

 28  1     1    1  |0 0>        0.99999118  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000007  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000707 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.02861680
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00006288

 30  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00927873  0.02704816  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.02704945  0.00927827 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000 -0.02861228 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 33  1     6    1  |0 0>        0.00000000 -0.00000705 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     7    1  |0 0>       -0.00000054  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.40849386 -0.00000000  0.68658939 -0.00000018  0.00000000 -0.24735919 -0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.57654393 -0.00000000 -0.00000000  0.44749296
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.57739845 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000101 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000013  0.48258474  0.00000000  0.00000002 -0.54871703 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00029183  0.00000000  0.00000000 -0.00014904 -0.00000000

  5  1     5    1  |1 1>+       0.00000001 -0.00000000 -0.00000009 -0.35616571 -0.00000000  0.00000002 -0.52345015 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00021538 -0.00000000  0.00000000 -0.00014217 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000003 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00042407  0.00000000 -0.00000021  0.00000000  0.00000000 -0.00000054 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000021  0.00000000  0.00000000  0.00000090
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     1    1  |1 0>        0.00000000 -0.00000101 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.57725244  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00024814 -0.00000000  0.00000000 -0.00016391 -0.00000000
                                0.00000000  0.00000000  0.00000011  0.41035077  0.00000000 -0.00000002  0.60347987  0.00000000

 12  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.40878244  0.00000000  0.41117771 -0.00000011  0.00000000  0.60291603  0.00000002  0.00000000

 13  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.57798502  0.00000000 -0.00000000  0.00062541

 14  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00084298 -0.00000000 -0.00000000  0.77500160

 15  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004

 16  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000057 -0.00000000 -0.00000000  0.00000068 -0.00000000

 18  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00042557 -0.00000000  0.00000057 -0.00000000  0.00000000  0.00000068  0.00000000 -0.00000000

 19  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00041539 -0.00000000 -0.00000000  0.00006693  0.00000000
                                0.00000000 -0.00000000  0.00000018  0.68692782  0.00000000  0.00000001 -0.24641740 -0.00000000

 20  1     2    1  |1 1>-      -0.00000000  0.00000101  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.57739991 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.57752030 -0.00000000 -0.00000000  0.44623109

 22  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.40771093  0.00000000 -0.48182634  0.00000013 -0.00000000  0.54938644  0.00000002  0.00000000

 23  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.70638685 -0.00000000 -0.35689113  0.00000009 -0.00000000 -0.52295338 -0.00000002 -0.00000000

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000

 25  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000 -0.00000000  0.00000055 -0.00000000

 26  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000021  0.00000000  0.00000000  0.00000090

 28  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00002488  0.00000000  0.00000000 -0.00000852 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     3    1  |0 0>        0.00000000 -0.00000183 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     4    1  |0 0>       -0.00000000  0.00000552 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001929 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 33  1     6    1  |0 0>       -0.02861352  0.00000000  0.00002488 -0.00000000  0.00000000  0.00000849  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.01168370 -0.00000000  0.00000090 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.01168422 -0.00000000  0.00000000 -0.00000086
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.02276404 -0.00520744 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.01168527 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000090 -0.00000000
                               -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.02023653  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000051 -0.00000000
                                0.00000004  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00300145  0.99999049  0.00000002
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000182  0.00000042

  7  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00559976 -0.00000000 -0.00223652  0.00000671  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00559954  0.00000000  0.00000000 -0.00223596
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000009

  9  1     9    1  |1 1>+       0.00000000  0.00144129  0.00630214 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00687350 -0.02231628  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |1 0>       -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01168522  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000094 -0.00000000

 12  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.01168386 -0.00000000 -0.00000094  0.00000000  0.00000000

 13  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.02336327  0.00000000  0.00000000  0.00000000

 14  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000018  0.00000000  0.00000000  0.00000104

 15  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000042  0.00003955
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.99999500

 16  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00617908 -0.00190318  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     8    1  |1 0>       -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00559966  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000671  0.00223596  0.00000000

 18  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00559974 -0.00000000  0.00223596 -0.00000671  0.00000000

 19  1     1    1  |1 1>-      -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01168505  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000090  0.00000000

 20  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.01588933 -0.01711279  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 21  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.01168422 -0.00000000  0.00000000 -0.00000086

 22  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.01168359 -0.00000000  0.00000090 -0.00000000 -0.00000000

 23  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.02023432 -0.00000000 -0.00000051  0.00000000 -0.00000000

 24  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.99999049 -0.00300145  0.00000000

 25  1     7    1  |1 1>-       0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00559968 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000671  0.00223652  0.00000000

 26  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00473731  0.00439911  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 27  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000009
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00559954  0.00000000  0.00000000 -0.00223596

 28  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     2    1  |0 0>        0.99955897 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                               -0.00000212 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     3    1  |0 0>        0.00000000  0.99918226 -0.02746244 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 31  1     4    1  |0 0>        0.00000000  0.02746246  0.99918224 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000002  0.99955911 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 33  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.99955907 -0.00000002 -0.00000003  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00016658 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00015290
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00016651 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000003 -0.00000015  0.00000000 -0.00000000  0.00000000 -0.00026465  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00016632  0.00000000 -0.00000000 -0.00015265 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000050  0.00000000 -0.00000000 -0.00000052 -0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00009458  0.00000000  0.00000000  0.00026421  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000028  0.00000000  0.00000000  0.00000091  0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00316252  0.00000000  0.00000000 -0.00000084 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000944  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00000000  0.70737960  0.00000093  0.00000000  0.00000000 -0.00000037  0.70680798
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.70710321  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00046481  0.57724756 -0.00000000 -0.00000000  0.00000000 -0.40836949  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000050 -0.00000000 -0.00000000 -0.00000053 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00016668  0.00000000  0.00000000  0.00015275  0.00000000

 12  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00016668  0.00000000  0.00000000  0.00000000 -0.00000000  0.00015275

 13  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00019366  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00316212 -0.00000000 -0.00000000 -0.00000000

 16  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00046475  0.57753982 -0.00000000 -0.00000000  0.00000000  0.81633303 -0.00000000 -0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00210882  0.00000000 -0.00000000 -0.00243160 -0.00000000
                               -0.00000000  0.00000000 -0.00000093  0.70682356 -0.00000000  0.00000000  0.70735670  0.00000037

 18  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.70682672 -0.00000093 -0.00000000  0.00000000 -0.00000037  0.70736088

 19  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000050  0.00000000 -0.00000000 -0.00000053 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00016658 -0.00000000  0.00000000  0.00015290  0.00000000

 20  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000015 -0.00000000  0.00000000 -0.00000000  0.00026464 -0.00000000 -0.00000000

 21  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00016651  0.00000000 -0.00000000  0.00000000

 22  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00016632 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00015265

 23  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00009458  0.00000000  0.00000000  0.00000000 -0.00000000  0.00026421

 24  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00316253  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000084

 25  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00211047  0.00000000  0.00000000  0.00242970  0.00000000
                                0.00000000  0.00000000 -0.00000093  0.70737646 -0.00000000 -0.00000000 -0.70680379 -0.00000037

 26  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00046481 -0.57724755  0.00000000  0.00000000 -0.00000000  0.40837689 -0.00000000 -0.00000000

 27  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70710322 -0.00000000  0.00000000 -0.00000000

 28  1     1    1  |0 0>        0.00000393 -0.00419957  0.00000000  0.00000000 -0.00000000  0.00000090  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000309 -0.00000000  0.00000000  0.00793304  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00002727  0.00000000

 30  1     3    1  |0 0>        0.00000000  0.00000207 -0.00000000 -0.00000000  0.00000000  0.00751393 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 31  1     4    1  |0 0>        0.00000000  0.00000070  0.00000000 -0.00000000 -0.00000000  0.00254232 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 33  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000309 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00793319
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 34  1     7    1  |0 0>        0.99999968  0.00080505 -0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00015271
                               -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00015272  0.00000000
                                0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00000000
                               -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.70708449
                                0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.70708662 -0.00000000
                               -0.00000000  0.00000000

 10  1     1    1  |1 0>       -0.00000000  0.00000000
                               -0.00030569  0.00000000

 11  1     2    1  |1 0>        0.00000000  0.00000000
                               -0.00000000  0.00000000

 12  1     3    1  |1 0>        0.00000000 -0.00000000
                                0.00000000  0.00000000

 13  1     4    1  |1 0>       -0.00000000  0.00000000
                                0.00000000  0.00030518

 14  1     5    1  |1 0>        0.00000000 -0.00000000
                                0.00000000  0.00000000

 15  1     6    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 16  1     7    1  |1 0>       -0.00000000  0.00000000
                               -0.00000427 -0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

 18  1     9    1  |1 0>        0.00000000 -0.00000000
                                0.00000000 -0.00000000

 19  1     1    1  |1 1>-       0.00000000  0.00000000
                                0.00000000  0.00000000

 20  1     2    1  |1 1>-      -0.00000000  0.00000000
                               -0.00015272  0.00000000

 21  1     3    1  |1 1>-      -0.00000000  0.00000000
                                0.00000000  0.00015271

 22  1     4    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000  0.00000000

 23  1     5    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000  0.00000000

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 25  1     7    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 26  1     8    1  |1 1>-       0.00000000 -0.00000000
                                0.70708236 -0.00000000

 27  1     9    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000 -0.70708448

 28  1     1    1  |0 0>        0.00000000 -0.00000000
                                0.00000000 -0.00000000

 29  1     2    1  |0 0>        0.00000000  0.00000000
                               -0.00000000 -0.00000000

 30  1     3    1  |0 0>        0.00254209 -0.00000000
                               -0.00000000  0.00000000

 31  1     4    1  |0 0>       -0.00751326  0.00000000
                                0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.00000000 -0.00793289
                               -0.00000000  0.00000000

 33  1     6    1  |0 0>       -0.00000000  0.00000000
                                0.00000000  0.00000000

 34  1     7    1  |0 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   30.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.03%    0.00%    0.00%   16.69%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.89%   49.72%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%   29.96%    0.00%    0.00%    0.00%    0.00%   16.62%
  5  1     5    1  |1 1>+         0.00%    0.00%    9.98%    0.00%    0.00%    0.00%    0.00%   49.90%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.62%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%   30.02%    0.00%    0.00%    0.00%    0.00%   16.71%
 12  1     3    1  |1 0>          0.00%   30.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.54%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.94%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%   30.04%    0.00%    0.00%    0.00%    0.00%   16.69%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.41%   50.20%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.03%    0.00%    0.00%   16.69%    0.00%
 22  1     4    1  |1 1>-         0.00%   29.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    9.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.07%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.01%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        16.69%    0.00%   47.14%    0.00%    0.00%    6.12%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.24%    0.00%    0.00%   20.02%
  3  1     3    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%   23.29%    0.00%    0.00%   30.11%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%   12.69%    0.00%    0.00%   27.40%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%   33.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%   16.84%    0.00%    0.00%   36.42%    0.00%
 12  1     3    1  |1 0>         16.71%    0.00%   16.91%    0.00%    0.00%   36.35%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.41%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.06%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%   47.19%    0.00%    0.00%    6.07%    0.00%
 20  1     2    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%   19.91%
 22  1     4    1  |1 1>-        16.62%    0.00%   23.22%    0.00%    0.00%   30.18%    0.00%    0.00%
 23  1     5    1  |1 1>-        49.90%    0.00%   12.74%    0.00%    0.00%   27.35%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.03%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>         99.91%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%   99.84%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.08%   99.84%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.91%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%   99.91%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%   50.04%    0.00%    0.00%    0.00%    0.00%   49.96%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%   33.32%    0.00%    0.00%    0.00%   16.68%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%   33.36%    0.00%    0.00%    0.00%   66.64%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%   49.96%    0.00%    0.00%   50.04%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%   49.96%    0.00%    0.00%    0.00%    0.00%   50.04%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%   50.04%    0.00%    0.00%   49.96%    0.00%
 26  1     8    1  |1 1>-         0.00%   33.32%    0.00%    0.00%    0.00%   16.68%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 34  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |1 1>+         0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%   50.00%
  9  1     9    1  |1 1>+        50.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%
 26  1     8    1  |1 1>-        50.00%    0.00%
 27  1     9    1  |1 1>-         0.00%   50.00%
 28  1     1    1  |0 0>          0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%
 31  1     4    1  |0 0>          0.01%    0.00%
 32  1     5    1  |0 0>          0.00%    0.01%
 33  1     6    1  |0 0>          0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.76       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       66.52       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       216.22    155.51     20.40     38.27      1.01      0.03      0.73
 REAL TIME  *       230.60 SEC
 DISK USED  *        99.33 MB (local),        1.62 GB (total)
 SF USED    *       442.78 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -30.425723085340

              CI              CI           MULTI         RHF-SCF
    -30.43541612    -30.41418168    -30.22380954    -30.34122430
 **********************************************************************************************************************************
 Molpro calculation terminated
