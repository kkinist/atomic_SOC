
 Working directory              : /wrk/irikura/molpro.mLfCjONYqv/
 Global scratch directory       : /wrk/irikura/molpro.mLfCjONYqv/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.mLfCjONYqv/

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
     wf,sym=1,spin=0;state,7;
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
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 21-Mar-24          TIME: 10:31:42  
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

     9.961 MB (compressed) written to integral file ( 22.2%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     167320.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     167320      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     6063679. AND WROTE       34957. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     16 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      166504.  Node maximum:      170063. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.00      0.81
 REAL TIME  *         2.33 SEC
 DISK USED  *        29.00 MB (local),      532.61 MB (total)
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
  RHF One-electron energy             -49.818329586656
  RHF Two-electron energy              19.477105286041
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
 CPU TIMES  *         1.03      0.03      0.81
 REAL TIME  *         2.36 SEC
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
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.357D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.358D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.354D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.354D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 2 4   6 3 5 1 6 4 2 3 5 1   6 4 3 5 2 6 4 3 5 2   1 6 4 5 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.511D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.511D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.267D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.495D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.641D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 1 3 3   1 2 6 5 410 8 9 7 3   1 2 4 5 6 810 9 7 3   2 1 4 5 6 810 9 7 2
                                        3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  472  ( 16 closed/active, 138 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    1094
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   30    5    -30.19437890     -30.25946474   -0.06508584    0.04935650 0.00008576 0.00000000  0.24E+01      0.39
   2    8   14    0    -30.25673045     -30.25880836   -0.00207790    0.03667002 0.00000634 0.00000000  0.29E+00      0.71
   3    8   14    0    -30.25881606     -30.25881649   -0.00000043    0.00031520 0.00000000 0.00000000  0.52E-02      1.04
   4    4    8    0    -30.25881649     -30.25881649   -0.00000000    0.00000032 0.00000000 0.00000000  0.24E-05      1.22

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.27E-08)
                       Final energy:    -30.25881649
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.270144469239
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71856252
 One electron energy                           -49.98946001
 Two electron energy                            19.71931555
 Virial ratio                                    4.11467302
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.270144469233
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71856252
 One electron energy                           -49.98946001
 Two electron energy                            19.71931554
 Virial ratio                                    4.11467302
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.270144469228
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71856252
 One electron energy                           -49.98946001
 Two electron energy                            19.71931554
 Virial ratio                                    4.11467302
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.270144469212
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71856252
 One electron energy                           -49.98946001
 Two electron energy                            19.71931554
 Virial ratio                                    4.11467302
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -30.270144469210
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71856252
 One electron energy                           -49.98946001
 Two electron energy                            19.71931554
 Virial ratio                                    4.11467302
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -30.233481103134
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.33985029
 One electron energy                           -48.50913662
 Two electron energy                            18.27565552
 Virial ratio                                    4.23704130
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -30.211056833151
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.58523437
 One electron energy                           -49.28970337
 Two electron energy                            19.07864654
 Virial ratio                                    4.15183288
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -30.211056833101
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.58523438
 One electron energy                           -49.28970337
 Two electron energy                            19.07864654
 Virial ratio                                    4.15183288
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -30.211056833045
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.58523438
 One electron energy                           -49.28970338
 Two electron energy                            19.07864655
 Virial ratio                                    4.15183288
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.364041114780
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.46410871
 One electron energy                           -49.74363552
 Two electron energy                            19.37959441
 Virial ratio                                    4.20833605
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.267108982853
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66314188
 One electron energy                           -49.76502720
 Two electron energy                            19.49791821
 Virial ratio                                    4.13222235
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -30.267108982851
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66314188
 One electron energy                           -49.76502720
 Two electron energy                            19.49791821
 Virial ratio                                    4.13222235
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -30.267108982807
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66314188
 One electron energy                           -49.76502720
 Two electron energy                            19.49791821
 Virial ratio                                    4.13222235
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -30.267108982789
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66314188
 One electron energy                           -49.76502719
 Two electron energy                            19.49791821
 Virial ratio                                    4.13222235
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -30.267108982779
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66314188
 One electron energy                           -49.76502719
 Two electron energy                            19.49791821
 Virial ratio                                    4.13222235
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -30.224103917390
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.38923170
 One electron energy                           -48.66837146
 Two electron energy                            18.44426755
 Virial ratio                                    4.21901779
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.270688705347
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999653
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999999
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999999999998
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.729315122228
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000000001
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.978640438625
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999877
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000121
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.999999999983
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.021359997934
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.994533911798
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.999999989719
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000014013
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000001
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.005458469094
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000000000000
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999999997
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.758218870895
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000015
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000913
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999998892
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.241783476935
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.734777382855
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000010629
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999985988
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000001
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.265226408678
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.000000000003
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999999
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.263140690480
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000108
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999998966
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000001125
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     2.736856525131
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 5 3 6 4 2 1 4 5   2 3 6 1 4 5 3 2 6 1   4 2 5 3 6 4 2 5 3 6   1 4 2 3 5 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 1 3 2 3   1 2 410 6 8 9 7 5 1   3 2 4 610 8 9 7 5 1   3 2 4 6 810 9 7 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.98040     1  1  s    1.00210
    2.1     0.79223    -0.09299     1  2  s    1.10193
    3.1     0.12921     0.06703     1  1  d2+  0.89062
    4.1     0.12921     0.06703     1  1  d2-  0.89062
    5.1     0.12921     0.06703     1  1  d1-  0.89062
    6.1     0.12921     0.06703     1  1  d1+  0.89062
    7.1     0.12921     0.06703     1  1  d0   0.89062
    8.1     0.12599     0.02484     1  2  s   -0.63015    1  5  s   -0.63865    1  8  s    1.78331
    1.2     2.00000    -1.10643     1  1  px   0.99706
    2.2     2.00000    -1.10643     1  1  pz   0.99706
    3.2     2.00000    -1.10643     1  1  py   0.99706
    4.2     0.14524     0.02812     1  2  pz   1.02018
    5.2     0.14524     0.02812     1  2  px   1.02018
    6.2     0.14524     0.02812     1  2  py   1.02018
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      1.00000000     -0.00000000
 a00a000 000     -0.00000000     -0.00000068      0.00000090      0.99996663     -0.00000001     -0.00000000      0.00000000
 a0a0000 000      0.00000001     -0.00005653      0.99996663     -0.00000090     -0.00000032      0.00000000     -0.00000000
 a000a00 000      0.00000001      0.99996663      0.00005653      0.00000068     -0.00000151      0.00000000     -0.00000000
 a0000a0 000     -0.25749025      0.00000146      0.00000031      0.00000001      0.96624636      0.00000000     -0.00000000
 aa00000 000      0.96624636      0.00000038      0.00000007      0.00000001      0.25749025      0.00000000     -0.00000000
 0000000 aa0     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.88289320
 0000000 0aa      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000051
 0000000 a0a     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0aa0000 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000024
 000a0a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000aa0 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.36373034
 00a0a00 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0a0a000 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 000aa00 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000012
 00aa000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.20999981
 0a00a00 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.20999981
 
 Energy:        -30.27014447    -30.27014447    -30.27014447    -30.27014447    -30.27014447    -30.23348110    -30.21105683

 State:                8               9
 a00000a 000      0.00000000      0.00000000
 a00a000 000      0.00000000      0.00000000
 a0a0000 000      0.00000000      0.00000000
 a000a00 000     -0.00000000      0.00000000
 a0000a0 000      0.00000000      0.00000000
 aa00000 000      0.00000000     -0.00000000
 0000000 aa0     -0.00000051      0.00000000
 0000000 0aa      0.88289320     -0.00000001
 0000000 a0a      0.00000001      0.88289320
 0aa0000 000     -0.41999961      0.00000000
 000a0a0 000      0.00000000      0.36373034
 0000aa0 000     -0.00000021      0.00000000
 00a0a00 000      0.00000000      0.20999981
 0a0a000 000     -0.00000000     -0.20999981
 000aa00 000      0.20999981     -0.00000000
 00aa000 000     -0.00000012      0.00000000
 0a00a00 000     -0.00000012      0.00000000
 
 Energy:        -30.21105683    -30.21105683
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95825558      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.01264403
 b00000a 000     -0.00490611     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.69512428
 a00000b 000      0.00490611      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.69512428
 a00b000 000      0.00000000      0.00000001      0.62230912      0.00000373     -0.00000137      0.00000003     -0.00000000
 b00a000 000     -0.00000000     -0.00000001     -0.62230912     -0.00000373      0.00000137     -0.00000003      0.00000000
 b0a0000 000      0.00000000      0.00000002      0.00000373     -0.62230912     -0.00001086      0.00000020      0.00000000
 a0b0000 000     -0.00000000     -0.00000002     -0.00000373      0.62230912      0.00001086     -0.00000020     -0.00000000
 b000a00 000      0.00000000      0.00000048     -0.00000137      0.00001086     -0.62230912      0.00000319     -0.00000000
 a000b00 000     -0.00000000     -0.00000048      0.00000137     -0.00001086      0.62230912     -0.00000319      0.00000000
 b0000a0 000     -0.00000000     -0.51475717     -0.00000001      0.00000010      0.00000139      0.34970515     -0.00000000
 a0000b0 000      0.00000000      0.51475717      0.00000001     -0.00000010     -0.00000139     -0.34970515      0.00000000
 ba00000 000      0.00000000     -0.34970515      0.00000003     -0.00000018     -0.00000291     -0.51475717      0.00000000
 ab00000 000     -0.00000000      0.34970515     -0.00000003      0.00000018      0.00000291      0.51475717     -0.00000000
 0000000 020     -0.15903953     -0.02759705      0.00000002     -0.00000012     -0.00000195     -0.37664636     -0.02306046
 0000000 002     -0.15903953      0.33998384     -0.00000001      0.00000006      0.00000111      0.16442344     -0.02306046
 0000000 ab0      0.00000000      0.00000025     -0.00000072      0.00000571     -0.32705972      0.00000167      0.00000000
 0000000 ba0     -0.00000000     -0.00000025      0.00000072     -0.00000571      0.32705972     -0.00000167     -0.00000000
 0000000 a0b      0.00000000     -0.00000000     -0.32705972     -0.00000196      0.00000072     -0.00000001     -0.00000000
 0000000 b0a     -0.00000000      0.00000000      0.32705972      0.00000196     -0.00000072      0.00000001      0.00000000
 0000000 0ba     -0.00000000     -0.00000001     -0.00000196      0.32705972      0.00000571     -0.00000010     -0.00000000
 0000000 0ab      0.00000000      0.00000001      0.00000196     -0.32705972     -0.00000571      0.00000010      0.00000000
 0000000 200     -0.15903953     -0.31238679     -0.00000001      0.00000006      0.00000084      0.21222292     -0.02306046
 0000002 000     -0.01520180     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.14385549
 00b00a0 000     -0.00000000      0.00000000      0.00000032     -0.05366065     -0.00000094      0.00000002      0.00000000
 00a00b0 000      0.00000000     -0.00000000     -0.00000032      0.05366065      0.00000094     -0.00000002     -0.00000000
 0002000 000     -0.03342543      0.00392123     -0.00000000      0.00000002      0.00000028      0.05351719      0.04723310
 
 Energy:        -30.36404111    -30.26710898    -30.26710898    -30.26710898    -30.26710898    -30.26710898    -30.22410392
 


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
 CPU TIMES  *         2.07      1.04      0.03      0.81
 REAL TIME  *         3.77 SEC
 DISK USED  *        33.43 MB (local),      603.56 MB (total)
 SF USED    *        12.52 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.27014447   6.0
    -30.27014447   6.0
    -30.27014447   6.0
    -30.27014447   6.0
    -30.27014447   6.0
    -30.23348110  -0.0
    -30.21105683   2.0
    -30.21105683   2.0
    -30.21105683   2.0
    -30.36404111  -0.0
    -30.26710898   6.0
    -30.26710898   6.0
    -30.26710898   6.0
    -30.26710898   6.0
    -30.26710898   6.0
    -30.22410392  -0.0
                                                  


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
     1       -30.27014447
     2       -30.27014447
     3       -30.27014447
     4       -30.27014447
     5       -30.27014447
     6       -30.23348110
     7       -30.21105683
     8       -30.21105683
     9       -30.21105683

 Number of blocks in overlap matrix:   201   Smallest eigenvalue:  0.74D+00
 Number of N-2 electron functions:     225
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        315636
 Number of doubly external configurations:        246369
 Total number of contracted configurations:       573843
 Total number of uncontracted configurations:    2175747

 Diagonal Coupling coefficients finished.               Storage: 4509206 words, CPU-Time:      0.48 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  409810 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.27014447     0.00000000    -0.21913304  0.36D-01  0.41D-01     1.06
    1     2     2     1.00000000     0.00000000   -30.27014447     0.00000000    -0.21914725  0.36D-01  0.41D-01     1.06
    1     3     3     1.00000000     0.00000000   -30.27014447    -0.00000000    -0.21913875  0.36D-01  0.41D-01     1.06
    1     4     4     1.00000000     0.00000000   -30.27014447    -0.00000000    -0.21915707  0.36D-01  0.41D-01     1.06
    1     5     5     1.00000000     0.00000000   -30.27014447    -0.00000000    -0.21899091  0.36D-01  0.41D-01     1.06
    1     6     6     1.00000000     0.00000000   -30.23348110     0.00000000    -0.20019407  0.37D-01  0.33D-01     1.06
    1     7     7     1.00000000     0.00000000   -30.21105683     0.00000000    -0.20048361  0.28D-01  0.35D-01     1.06
    1     8     8     1.00000000     0.00000000   -30.21105683    -0.00000000    -0.20045939  0.28D-01  0.35D-01     1.06
    1     9     9     1.00000000     0.00000000   -30.21105683     0.00000000    -0.20045477  0.28D-01  0.35D-01     1.06
    2     1     1     1.06388572    -0.21066413   -30.48080860    -0.21066413    -0.00425931  0.16D-02  0.53D-03     6.08
    2     2     2     1.06388656    -0.21063695   -30.48078142    -0.21063695    -0.00429548  0.16D-02  0.54D-03     6.08
    2     3     3     1.06388899    -0.21063283   -30.48077730    -0.21063283    -0.00429845  0.16D-02  0.54D-03     6.08
    2     4     4     1.06390431    -0.21063140   -30.48077587    -0.21063140    -0.00429986  0.16D-02  0.54D-03     6.08
    2     5     5     1.06390314    -0.21062810   -30.48077257    -0.21062810    -0.00430276  0.16D-02  0.54D-03     6.08
    2     6     6     1.06447867    -0.20468527   -30.43816637    -0.20468527    -0.00325857  0.11D-02  0.38D-03     6.08
    2     7     7     1.05612567    -0.19920698   -30.41026381    -0.19920698    -0.00351880  0.12D-02  0.47D-03     6.08
    2     8     8     1.05615593    -0.19920599   -30.41026283    -0.19920599    -0.00351865  0.12D-02  0.46D-03     6.08
    2     9     9     1.05615665    -0.19919771   -30.41025454    -0.19919771    -0.00352978  0.12D-02  0.47D-03     6.08
    3     1     1     1.06484902    -0.21512942   -30.48527389    -0.00446529    -0.00015273  0.56D-04  0.22D-04    10.98
    3     2     2     1.06485075    -0.21512760   -30.48527207    -0.00449065    -0.00015450  0.56D-04  0.23D-04    10.98
    3     3     3     1.06484891    -0.21512745   -30.48527192    -0.00449462    -0.00015478  0.56D-04  0.23D-04    10.98
    3     4     4     1.06484950    -0.21512722   -30.48527169    -0.00449582    -0.00015489  0.57D-04  0.23D-04    10.98
    3     5     5     1.06484943    -0.21512716   -30.48527163    -0.00449906    -0.00015495  0.57D-04  0.23D-04    10.98
    3     6     6     1.06674558    -0.20821893   -30.44170003    -0.00353366    -0.00011766  0.39D-04  0.16D-04    10.98
    3     7     7     1.05496350    -0.20281820   -30.41387503    -0.00361122    -0.00011695  0.25D-04  0.23D-04    10.98
    3     8     8     1.05496623    -0.20281697   -30.41387381    -0.00361098    -0.00011723  0.26D-04  0.23D-04    10.98
    3     9     9     1.05496512    -0.20281649   -30.41387333    -0.00361878    -0.00011781  0.26D-04  0.23D-04    10.98
    4     1     1     1.06614168    -0.21532071   -30.48546518    -0.00019129    -0.00001461  0.15D-04  0.11D-05    15.65
    4     2     2     1.06614957    -0.21532068   -30.48546515    -0.00019308    -0.00001438  0.15D-04  0.11D-05    15.65
    4     3     3     1.06614130    -0.21532061   -30.48546508    -0.00019316    -0.00001463  0.15D-04  0.11D-05    15.65
    4     4     4     1.06614131    -0.21532061   -30.48546508    -0.00019339    -0.00001464  0.15D-04  0.11D-05    15.65
    4     5     5     1.06614099    -0.21532040   -30.48546487    -0.00019323    -0.00001457  0.15D-04  0.11D-05    15.65
    4     6     6     1.06808218    -0.20835594   -30.44183705    -0.00013701    -0.00000719  0.58D-05  0.62D-06    15.65
    4     7     7     1.05535725    -0.20294885   -30.41400568    -0.00013065    -0.00000577  0.35D-05  0.89D-06    15.65
    4     8     8     1.05535884    -0.20294792   -30.41400476    -0.00013095    -0.00000579  0.36D-05  0.88D-06    15.65
    4     9     9     1.05535782    -0.20294792   -30.41400475    -0.00013143    -0.00000581  0.36D-05  0.89D-06    15.65
    5     1     1     1.06682927    -0.21534131   -30.48548578    -0.00002060    -0.00000147  0.71D-06  0.21D-06    20.14
    5     2     2     1.06682906    -0.21534125   -30.48548572    -0.00002056    -0.00000148  0.71D-06  0.21D-06    20.14
    5     3     3     1.06682899    -0.21534125   -30.48548572    -0.00002064    -0.00000148  0.71D-06  0.21D-06    20.14
    5     4     4     1.06682880    -0.21534098   -30.48548544    -0.00002037    -0.00000146  0.70D-06  0.21D-06    20.14
    5     5     5     1.06682902    -0.21534091   -30.48548538    -0.00002051    -0.00000145  0.69D-06  0.20D-06    20.14
    5     6     6     1.06850081    -0.20836442   -30.44184552    -0.00000848    -0.00000050  0.30D-06  0.59D-07    20.14
    5     7     7     1.05540205    -0.20295589   -30.41401272    -0.00000703    -0.00000032  0.17D-06  0.65D-07    20.14
    5     8     8     1.05540204    -0.20295499   -30.41401182    -0.00000706    -0.00000032  0.17D-06  0.64D-07    20.14
    5     9     9     1.05540224    -0.20295499   -30.41401182    -0.00000707    -0.00000032  0.17D-06  0.64D-07    20.14
    6     1     1     1.06687439    -0.21534323   -30.48548770    -0.00000192    -0.00000013  0.75D-07  0.13D-07    24.58
    6     2     2     1.06687419    -0.21534317   -30.48548764    -0.00000192    -0.00000013  0.75D-07  0.13D-07    24.58
    6     3     3     1.06687419    -0.21534317   -30.48548764    -0.00000192    -0.00000013  0.75D-07  0.13D-07    24.58
    6     4     4     1.06687355    -0.21534288   -30.48548735    -0.00000191    -0.00000013  0.75D-07  0.13D-07    24.58
    6     5     5     1.06687320    -0.21534280   -30.48548727    -0.00000189    -0.00000013  0.76D-07  0.12D-07    24.58
    6     6     6     1.06856618    -0.20836505   -30.44184615    -0.00000063    -0.00000006  0.54D-07  0.49D-08    24.58
    6     7     7     1.05539616    -0.20295627   -30.41401311    -0.00000039    -0.00000002  0.68D-08  0.46D-08    24.58
    6     8     8     1.05539595    -0.20295538   -30.41401221    -0.00000039    -0.00000002  0.69D-08  0.45D-08    24.58
    6     9     9     1.05539599    -0.20295538   -30.41401221    -0.00000039    -0.00000002  0.69D-08  0.45D-08    24.58
    7     1     1     1.06690116    -0.21534338   -30.48548785    -0.00000015    -0.00000001  0.92D-08  0.10D-08    29.04
    7     2     2     1.06690104    -0.21534332   -30.48548778    -0.00000015    -0.00000001  0.92D-08  0.10D-08    29.04
    7     3     3     1.06690104    -0.21534332   -30.48548778    -0.00000015    -0.00000001  0.92D-08  0.10D-08    29.04
    7     4     4     1.06690024    -0.21534303   -30.48548750    -0.00000015    -0.00000001  0.92D-08  0.10D-08    29.04
    7     5     5     1.06690006    -0.21534295   -30.48548742    -0.00000015    -0.00000001  0.91D-08  0.10D-08    29.04
    7     6     6     1.06858530    -0.20836513   -30.44184624    -0.00000008    -0.00000001  0.46D-08  0.53D-09    29.04
    7     7     7     1.05539724    -0.20295630   -30.41401314    -0.00000003    -0.00000000  0.84D-09  0.23D-09    29.04
    7     8     8     1.05539694    -0.20295541   -30.41401224    -0.00000003    -0.00000000  0.85D-09  0.23D-09    29.04
    7     9     9     1.05539695    -0.20295541   -30.41401224    -0.00000003    -0.00000000  0.85D-09  0.23D-09    29.04
    8     1     1     1.06691119    -0.21534339   -30.48548786    -0.00000001    -0.00000000  0.83D-09  0.16D-09    32.21
    8     2     2     1.06691109    -0.21534333   -30.48548780    -0.00000001    -0.00000000  0.83D-09  0.16D-09    32.21
    8     3     3     1.06691109    -0.21534333   -30.48548780    -0.00000001    -0.00000000  0.83D-09  0.16D-09    32.21
    8     4     4     1.06691025    -0.21534305   -30.48548751    -0.00000001    -0.00000000  0.82D-09  0.16D-09    32.21
    8     5     5     1.06691004    -0.21534296   -30.48548743    -0.00000001    -0.00000000  0.80D-09  0.16D-09    32.21
    8     6     6     1.06858530    -0.20836513   -30.44184624    -0.00000000    -0.00000001  0.46D-08  0.53D-09    32.21
    8     7     7     1.05539724    -0.20295630   -30.41401314    -0.00000000    -0.00000000  0.84D-09  0.23D-09    32.21
    8     8     8     1.05539694    -0.20295541   -30.41401224    -0.00000000    -0.00000000  0.85D-09  0.23D-09    32.21
    8     9     9     1.05539695    -0.20295541   -30.41401224    -0.00000000    -0.00000000  0.85D-09  0.23D-09    32.21


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.8%
 S   9.7%  30.1%
 P   1.0%  19.4%  10.9%

 Initialization:   1.7%
 Other:           13.4%

 Total CPU:       32.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/0000/0222000           0.0000000  -0.0000000  -0.0000000   0.0001779   0.9653540   0.0000052   0.0000000   0.0000000
                         -0.0000000
 2//00000222000          -0.0000000   0.0000000  -0.0000000   0.9653539  -0.0001779  -0.0000000  -0.0000000   0.0000000
                          0.0000000
 2/00/000222000          -0.0000000  -0.0000000   0.9653536   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                         -0.0000013
 2/000/00222000           0.0000000   0.9653536   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000013
                          0.0000000
 2/0/0000222000           0.9653535  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                          0.0000000
 2/00000/222000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000045   0.9646970  -0.0000000  -0.0000000
                          0.0000000
 200000002220//           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.8498323  -0.0000000
                         -0.0000000
 20000000222/0/          -0.0000000  -0.0000000   0.0000010  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.8498313
 20000000222//0          -0.0000000   0.0000010   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.8498312
                          0.0000000
 20//0000222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.4201145   0.0000000
                          0.0000000
 20000//0222000           0.0000000   0.0000063  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.3638313
                          0.0000000
 2000/0/0222000          -0.0000000  -0.0000000   0.0000063  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.3638313
 200/0/00222000          -0.0000000  -0.0000000   0.0000002  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.2100628
 200//000222000           0.0000000   0.0000002  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.2100623
                          0.0000000
 20/00/00222000           0.0000000  -0.0000098   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.2100611
                          0.0000000
 2000//00222000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.2100611  -0.0000000
                         -0.0000000
 20/0/000222000           0.0000000   0.0000000   0.0000098   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.2100603

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  20.1    -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000001  -0.0648322  -0.0000000   0.0000000
                         -0.0000000
 2000000/222000  14.1     0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000001   0.0527809   0.0000000  -0.0000000
                          0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.965254   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.965254   -0.000000   -0.000000   -0.000000   -0.000000    0.000001    0.000000   -0.000000
 3          -0.000000    0.000000    0.000000    0.965254   -0.000000   -0.000000    0.000000   -0.000000    0.000001
 4           0.932638   -0.000000    0.000000    0.000000    0.248802   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.248802    0.000000   -0.000000    0.000000    0.932638   -0.000005    0.000000   -0.000000    0.000000
 6          -0.000001    0.000000   -0.000000    0.000000    0.000005    0.964697    0.000000    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.970872    0.000000
 8           0.000000   -0.000001   -0.000000   -0.000000    0.000000   -0.000000    0.970872   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000   -0.000001    0.000000    0.000000    0.000000   -0.000000    0.970872

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.965254   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.965254    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.965254    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.965255   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.965255    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.964697   -0.000000    0.000000   -0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970872    0.000000    0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.970872   -0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970872


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96525428 (fixed)   0.96538844 (relaxed)   0.96525428 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00597747   -0.01112411   -0.14214651
 Singles      0.03039515   -0.06406637   -0.06578994
 Pairs        0.03691600    0.00000000   -0.00740694
 Total        1.07328862   -0.07519047   -0.21534339
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27014447
 Nuclear energy                         0.00000000
 Kinetic energy                         9.83755210
 One electron energy                  -49.92255492
 Two electron energy                   19.43706706
 Virial quotient                       -3.09888960
 Correlation energy                    -0.21534339
 !MRCI STATE 1.1 Energy               -30.485487863954

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50127008 (Davidson, fixed reference)
 Cluster corrected energies           -30.50120585 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50127008 (Davidson, rotated reference)

 Cluster corrected energies           -30.49776147 (Pople, fixed reference)
 Cluster corrected energies           -30.49770974 (Pople, relaxed reference)
 Cluster corrected energies           -30.49776147 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96525434 (fixed)   0.96538850 (relaxed)   0.96525434 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00597744   -0.01112407   -0.14214650
 Singles      0.03039503   -0.06406633   -0.06578989
 Pairs        0.03691602    0.00000000   -0.00740694
 Total        1.07328849   -0.07519040   -0.21534333
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27014447
 Nuclear energy                         0.00000000
 Kinetic energy                         9.83755220
 One electron energy                  -49.92255515
 Two electron energy                   19.43706735
 Virial quotient                       -3.09888956
 Correlation energy                    -0.21534333
 !MRCI STATE 2.1 Energy               -30.485487798580

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50126998 (Davidson, fixed reference)
 Cluster corrected energies           -30.50120575 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50126998 (Davidson, rotated reference)

 Cluster corrected energies           -30.49776138 (Pople, fixed reference)
 Cluster corrected energies           -30.49770964 (Pople, relaxed reference)
 Cluster corrected energies           -30.49776138 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96525434 (fixed)   0.96538850 (relaxed)   0.96525434 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00597744   -0.01112407   -0.14214635
 Singles      0.03039503   -0.06406634   -0.06578989
 Pairs        0.03691602   -0.00000016   -0.00740709
 Total        1.07328848   -0.07519056   -0.21534333
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27014447
 Nuclear energy                         0.00000000
 Kinetic energy                         9.83755220
 One electron energy                  -49.92255514
 Two electron energy                   19.43706735
 Virial quotient                       -3.09888956
 Correlation energy                    -0.21534333
 !MRCI STATE 3.1 Energy               -30.485487798569

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50126998 (Davidson, fixed reference)
 Cluster corrected energies           -30.50120575 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50126998 (Davidson, rotated reference)

 Cluster corrected energies           -30.49776138 (Pople, fixed reference)
 Cluster corrected energies           -30.49770964 (Pople, relaxed reference)
 Cluster corrected energies           -30.49776138 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.93263822 (fixed)   0.96538885 (relaxed)   0.96525468 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00597752   -0.01112420   -0.14214695
 Singles      0.03039407   -0.06406568   -0.06578914
 Pairs        0.03691614    0.00000000   -0.00740696
 Total        1.07328773   -0.07518988   -0.21534305
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27014447
 Nuclear energy                         0.00000000
 Kinetic energy                         9.83755127
 One electron energy                  -49.92255323
 Two electron energy                   19.43706571
 Virial quotient                       -3.09888982
 Correlation energy                    -0.21534305
 !MRCI STATE 4.1 Energy               -30.485487514899

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50126952 (Davidson, fixed reference)
 Cluster corrected energies           -30.50120528 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50126952 (Davidson, rotated reference)

 Cluster corrected energies           -30.49776095 (Pople, fixed reference)
 Cluster corrected energies           -30.49770921 (Pople, relaxed reference)
 Cluster corrected energies           -30.49776095 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.93263828 (fixed)   0.96538891 (relaxed)   0.96525475 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00597759   -0.01112423   -0.14214704
 Singles      0.03039383   -0.06406554   -0.06578897
 Pairs        0.03691617   -0.00000000   -0.00740696
 Total        1.07328759   -0.07518978   -0.21534296
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27014447
 Nuclear energy                         0.00000000
 Kinetic energy                         9.83755114
 One electron energy                  -49.92255378
 Two electron energy                   19.43706635
 Virial quotient                       -3.09888986
 Correlation energy                    -0.21534296
 !MRCI STATE 5.1 Energy               -30.485487431696

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50126940 (Davidson, fixed reference)
 Cluster corrected energies           -30.50120516 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50126940 (Davidson, rotated reference)

 Cluster corrected energies           -30.49776083 (Pople, fixed reference)
 Cluster corrected energies           -30.49770910 (Pople, relaxed reference)
 Cluster corrected energies           -30.49776083 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96469698 (fixed)   0.96469698 (relaxed)   0.96469698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00556227   -0.01192250   -0.13418658
 Singles      0.03597396   -0.06533674   -0.06778260
 Pairs        0.03299283    0.00000000   -0.00639596
 Total        1.07452906   -0.07725924   -0.20836513
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.23348110
 Nuclear energy                         0.00000000
 Kinetic energy                         9.55206871
 One electron energy                  -48.53332565
 Two electron energy                   18.09147941
 Virial quotient                       -3.18693753
 Correlation energy                    -0.20836513
 !MRCI STATE 6.1 Energy               -30.441846237652

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45737550 (Davidson, fixed reference)
 Cluster corrected energies           -30.45737550 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45737550 (Davidson, rotated reference)

 Cluster corrected energies           -30.45393044 (Pople, fixed reference)
 Cluster corrected energies           -30.45393044 (Pople, relaxed reference)
 Cluster corrected energies           -30.45393044 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97087193 (fixed)   0.97099789 (relaxed)   0.97087193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00521777   -0.01037252   -0.13697304
 Singles      0.02119702   -0.05870003   -0.05938555
 Pairs        0.03448926   -0.00000000   -0.00659771
 Total        1.06090406   -0.06907255   -0.20295630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21105683
 Nuclear energy                         0.00000000
 Kinetic energy                         9.73326993
 One electron energy                  -49.15142052
 Two electron energy                   18.73740738
 Virial quotient                       -3.12474773
 Correlation energy                    -0.20295630
 !MRCI STATE 7.1 Energy               -30.414013135249

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42637400 (Davidson, fixed reference)
 Cluster corrected energies           -30.42631814 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42637400 (Davidson, rotated reference)

 Cluster corrected energies           -30.42356789 (Pople, fixed reference)
 Cluster corrected energies           -30.42352343 (Pople, relaxed reference)
 Cluster corrected energies           -30.42356789 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97087249 (fixed)   0.97099851 (relaxed)   0.97087249 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00521689   -0.01037176   -0.13697230
 Singles      0.02119662   -0.05869990   -0.05938540
 Pairs        0.03448932    0.00000000   -0.00659771
 Total        1.06090283   -0.06907166   -0.20295541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21105683
 Nuclear energy                         0.00000000
 Kinetic energy                         9.73326218
 One electron energy                  -49.15141373
 Two electron energy                   18.73740149
 Virial quotient                       -3.12475013
 Correlation energy                    -0.20295541
 !MRCI STATE 8.1 Energy               -30.414012238802

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42637280 (Davidson, fixed reference)
 Cluster corrected energies           -30.42631691 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42637280 (Davidson, rotated reference)

 Cluster corrected energies           -30.42356676 (Pople, fixed reference)
 Cluster corrected energies           -30.42352228 (Pople, relaxed reference)
 Cluster corrected energies           -30.42356676 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97087249 (fixed)   0.97099850 (relaxed)   0.97087249 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00521688   -0.01037176   -0.01077437
 Singles      0.02119661   -0.05869990   -0.05938540
 Pairs        0.03448933   -0.13388375   -0.13279564
 Total        1.06090283   -0.20295541   -0.20295541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21105683
 Nuclear energy                         0.00000000
 Kinetic energy                         9.73326222
 One electron energy                  -49.15141398
 Two electron energy                   18.73740174
 Virial quotient                       -3.12475012
 Correlation energy                    -0.20295541
 !MRCI STATE 9.1 Energy               -30.414012238784

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.42637280 (Davidson, fixed reference)
 Cluster corrected energies           -30.42631692 (Davidson, relaxed reference)
 Cluster corrected energies           -30.42637280 (Davidson, rotated reference)

 Cluster corrected energies           -30.42356676 (Pople, fixed reference)
 Cluster corrected energies           -30.42352228 (Pople, relaxed reference)
 Cluster corrected energies           -30.42356676 (Pople, rotated reference)



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
 CPU TIMES  *        39.29     37.22      1.04      0.03      0.81
 REAL TIME  *        44.53 SEC
 DISK USED  *        75.18 MB (local),        1.24 GB (total)
 SF USED    *       442.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.50127008  AU                              
 SETTING HLSDIAG(2)     =       -30.50126998  AU                              
 SETTING HLSDIAG(3)     =       -30.50126998  AU                              
 SETTING HLSDIAG(4)     =       -30.50126952  AU                              
 SETTING HLSDIAG(5)     =       -30.50126940  AU                              
 SETTING HLSDIAG(6)     =       -30.45737550  AU                              
 SETTING HLSDIAG(7)     =       -30.42637400  AU                              
 SETTING HLSDIAG(8)     =       -30.42637280  AU                              
 SETTING HLSDIAG(9)     =       -30.42637280  AU                              


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
     1       -30.36404111
     2       -30.26710898
     3       -30.26710898
     4       -30.26710898
     5       -30.26710898
     6       -30.26710898
     7       -30.22410392

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.85D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        211374
 Number of doubly external configurations:        211251
 Total number of contracted configurations:       430476
 Total number of uncontracted configurations:    1475772

 Diagonal Coupling coefficients finished.               Storage: 3217856 words, CPU-Time:      0.23 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  399661 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.36404111    -0.00000000    -0.20735494  0.30D-01  0.36D-01     0.55
    1     2     2     1.00000000     0.00000000   -30.26710898     0.00000000    -0.21065282  0.32D-01  0.39D-01     0.55
    1     3     3     1.00000000     0.00000000   -30.26710898    -0.00000000    -0.21087931  0.32D-01  0.39D-01     0.55
    1     4     4     1.00000000     0.00000000   -30.26710898     0.00000000    -0.21082890  0.32D-01  0.39D-01     0.55
    1     5     5     1.00000000     0.00000000   -30.26710898    -0.00000000    -0.21095688  0.32D-01  0.39D-01     0.55
    1     6     6     1.00000000     0.00000000   -30.26710898     0.00000000    -0.21059479  0.32D-01  0.39D-01     0.55
    1     7     7     1.00000000     0.00000000   -30.22410392     0.00000000    -0.20579894  0.43D-01  0.35D-01     0.55
    2     1     1     1.05774869    -0.20711856   -30.57115967    -0.20711856    -0.00409243  0.15D-02  0.48D-03     3.29
    2     2     2     1.06172972    -0.20595636   -30.47306534    -0.20595636    -0.00381828  0.14D-02  0.53D-03     3.29
    2     3     3     1.06167679    -0.20595014   -30.47305912    -0.20595014    -0.00382203  0.14D-02  0.53D-03     3.29
    2     4     4     1.06180042    -0.20591513   -30.47302411    -0.20591513    -0.00387104  0.15D-02  0.54D-03     3.29
    2     5     5     1.06183801    -0.20591041   -30.47301940    -0.20591041    -0.00387570  0.15D-02  0.54D-03     3.29
    2     6     6     1.06185028    -0.20590379   -30.47301278    -0.20590379    -0.00388312  0.15D-02  0.54D-03     3.29
    2     7     7     1.06816920    -0.20586460   -30.42996851    -0.20586460    -0.00465654  0.24D-02  0.63D-03     3.29
    3     1     1     1.05890051    -0.21131119   -30.57535230    -0.00419263    -0.00016530  0.47D-04  0.24D-04     5.91
    3     2     2     1.06230045    -0.20989826   -30.47700724    -0.00394190    -0.00016676  0.53D-04  0.30D-04     5.91
    3     3     3     1.06230864    -0.20989748   -30.47700646    -0.00394734    -0.00016774  0.54D-04  0.30D-04     5.91
    3     4     4     1.06232524    -0.20989536   -30.47700434    -0.00398023    -0.00017017  0.54D-04  0.31D-04     5.91
    3     5     5     1.06231735    -0.20989518   -30.47700417    -0.00398477    -0.00017035  0.54D-04  0.31D-04     5.91
    3     6     6     1.06232098    -0.20989508   -30.47700407    -0.00399129    -0.00017026  0.54D-04  0.31D-04     5.91
    3     7     7     1.06600239    -0.21043726   -30.43454118    -0.00457266    -0.00021171  0.71D-04  0.37D-04     5.91
    4     1     1     1.05969068    -0.21149683   -30.57553794    -0.00018564    -0.00001007  0.57D-05  0.10D-05     8.55
    4     2     2     1.06340777    -0.21009330   -30.47720228    -0.00019504    -0.00001602  0.15D-04  0.14D-05     8.55
    4     3     3     1.06340603    -0.21009325   -30.47720224    -0.00019577    -0.00001602  0.15D-04  0.14D-05     8.55
    4     4     4     1.06340551    -0.21009292   -30.47720190    -0.00019756    -0.00001626  0.15D-04  0.15D-05     8.55
    4     5     5     1.06340659    -0.21009288   -30.47720187    -0.00019770    -0.00001628  0.15D-04  0.15D-05     8.55
    4     6     6     1.06340580    -0.21009287   -30.47720186    -0.00019779    -0.00001629  0.15D-04  0.15D-05     8.55
    4     7     7     1.06708764    -0.21066868   -30.43477260    -0.00023142    -0.00001288  0.78D-05  0.17D-05     8.55
    5     1     1     1.06000277    -0.21150897   -30.57555008    -0.00001214    -0.00000060  0.32D-06  0.74D-07    11.03
    5     2     2     1.06391062    -0.21011499   -30.47722397    -0.00002169    -0.00000194  0.12D-05  0.22D-06    11.03
    5     3     3     1.06390890    -0.21011498   -30.47722396    -0.00002173    -0.00000194  0.12D-05  0.22D-06    11.03
    5     4     4     1.06390765    -0.21011491   -30.47722389    -0.00002199    -0.00000200  0.13D-05  0.22D-06    11.03
    5     5     5     1.06390764    -0.21011490   -30.47722388    -0.00002202    -0.00000201  0.13D-05  0.22D-06    11.03
    5     6     6     1.06390774    -0.21011490   -30.47722388    -0.00002203    -0.00000201  0.13D-05  0.22D-06    11.03
    5     7     7     1.06735090    -0.21068450   -30.43478842    -0.00001582    -0.00000100  0.82D-06  0.14D-06    11.03
    6     1     1     1.06003249    -0.21150965   -30.57555076    -0.00000068    -0.00000004  0.15D-07  0.73D-08    13.53
    6     2     2     1.06395325    -0.21011749   -30.47722648    -0.00000250    -0.00000022  0.11D-06  0.29D-07    13.53
    6     3     3     1.06395300    -0.21011749   -30.47722647    -0.00000251    -0.00000023  0.11D-06  0.29D-07    13.53
    6     4     4     1.06395322    -0.21011748   -30.47722646    -0.00000257    -0.00000023  0.11D-06  0.31D-07    13.53
    6     5     5     1.06395287    -0.21011748   -30.47722646    -0.00000258    -0.00000023  0.11D-06  0.31D-07    13.53
    6     6     6     1.06395289    -0.21011748   -30.47722646    -0.00000258    -0.00000023  0.11D-06  0.31D-07    13.53
    6     7     7     1.06736453    -0.21068573   -30.43478965    -0.00000123    -0.00000012  0.55D-07  0.25D-07    13.53
    7     1     1     1.06004289    -0.21150969   -30.57555081    -0.00000005    -0.00000000  0.17D-08  0.42D-09    16.02
    7     2     2     1.06396996    -0.21011776   -30.47722674    -0.00000026    -0.00000002  0.21D-07  0.28D-08    16.02
    7     3     3     1.06396994    -0.21011775   -30.47722674    -0.00000026    -0.00000002  0.22D-07  0.28D-08    16.02
    7     4     4     1.06396959    -0.21011775   -30.47722674    -0.00000027    -0.00000002  0.22D-07  0.30D-08    16.02
    7     5     5     1.06396953    -0.21011775   -30.47722674    -0.00000027    -0.00000002  0.22D-07  0.30D-08    16.02
    7     6     6     1.06396956    -0.21011775   -30.47722674    -0.00000027    -0.00000002  0.22D-07  0.30D-08    16.02
    7     7     7     1.06737546    -0.21068587   -30.43478979    -0.00000014    -0.00000002  0.12D-07  0.28D-08    16.02
    8     1     1     1.06004510    -0.21150970   -30.57555081    -0.00000000    -0.00000000  0.32D-09  0.99D-10    18.29
    8     2     2     1.06397768    -0.21011778   -30.47722677    -0.00000003    -0.00000000  0.24D-08  0.41D-09    18.29
    8     3     3     1.06397765    -0.21011778   -30.47722677    -0.00000003    -0.00000000  0.25D-08  0.41D-09    18.29
    8     4     4     1.06397747    -0.21011778   -30.47722676    -0.00000003    -0.00000000  0.27D-08  0.43D-09    18.29
    8     5     5     1.06397747    -0.21011778   -30.47722676    -0.00000003    -0.00000000  0.27D-08  0.42D-09    18.29
    8     6     6     1.06397746    -0.21011778   -30.47722676    -0.00000003    -0.00000000  0.27D-08  0.43D-09    18.29
    8     7     7     1.06737354    -0.21068589   -30.43478981    -0.00000002    -0.00000000  0.52D-09  0.17D-09    18.29


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.2%
 S   9.6%  26.2%
 P   1.2%  21.0%  11.9%

 Initialization:   1.6%
 Other:           15.3%

 Total CPU:       18.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000\222000          -0.0430590  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.9440218
 22000000222000           0.9352286  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0364399
 2/0\0000222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.8744698  -0.0000000   0.0000000
 2/000\00222000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.8744698  -0.0000000
 2/00\000222000           0.0000000  -0.0000000   0.0000000   0.8744698   0.0000000   0.0000000  -0.0000000
 2/\00000222000          -0.0000000   0.2009380   0.8510707  -0.0000000   0.0000000   0.0000000   0.0000000
 2/0000\0222000          -0.0000000   0.8510707  -0.2009380   0.0000000  -0.0000000  -0.0000000   0.0000000
 20000000222/0\           0.0000000   0.0000000  -0.0000000  -0.4014238   0.0000000   0.0000000  -0.0000000
 20000000222/\0          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.4014238  -0.0000000
 200000002220/\           0.0000000   0.0000000   0.0000000  -0.0000000  -0.4014238  -0.0000000  -0.0000000
 20000000222200          -0.1351562  -0.3189907   0.0753138  -0.0000000  -0.0000000  -0.0000000  -0.0406794
 20000000222020          -0.1351562   0.0942717  -0.3139109   0.0000000   0.0000000   0.0000000  -0.0406793
 20000000222002          -0.1351561   0.2247190   0.2385972   0.0000000  -0.0000000   0.0000000  -0.0406794
 20000002222000          -0.0111944  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1600175
 200/00\0222000          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0735948   0.0000000   0.0000000
 20/000\0222000           0.0000000   0.0169108   0.0716256   0.0000000   0.0000000  -0.0000000  -0.0000000
 2000/\00222000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0637351  -0.0000000  -0.0000000
 200/\000222000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0637350  -0.0000000
 200/0\00222000           0.0000000  -0.0000000   0.0000000  -0.0637350   0.0000000   0.0000000  -0.0000000
 20/00\00222000           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0637350  -0.0000000
 20/0\000222000          -0.0000000   0.0000000  -0.0000000   0.0637350  -0.0000000  -0.0000000   0.0000000
 20020000222000          -0.0341258   0.0506470  -0.0119578  -0.0000000  -0.0000000  -0.0000000   0.0412407
 20000020222000          -0.0341258  -0.0506469   0.0119578  -0.0000000  -0.0000000  -0.0000000   0.0412407
 20200000222000          -0.0341258   0.0506469  -0.0119578   0.0000000  -0.0000000  -0.0000000   0.0412407

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000\222000  20.1     0.0118807   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0536861

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966248    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.051253
 2          -0.000000    0.902063   -0.000000   -0.000000   -0.000000   -0.345070    0.000000
 3           0.000000    0.345070    0.000000   -0.000000    0.000000    0.902063   -0.000000
 4          -0.000000    0.000000    0.965811    0.000000   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.965811    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.965811   -0.000000    0.000000
 7           0.056418    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.963137

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967603   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.002665
 2          -0.000000    0.965811    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.965811    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.965811   -0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.965811    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.965811    0.000000
 7           0.002665    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.964784


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96624835 (fixed)   0.96812005 (relaxed)   0.96760304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00758387   -0.01312265   -0.14968159
 Singles      0.02640359   -0.06417113   -0.06530981
 Pairs        0.03409688    0.01092994    0.00348171
 Total        1.06808434   -0.06636384   -0.21150970
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.36360667
 Nuclear energy                         0.00000000
 Kinetic energy                         9.63710537
 One electron energy                  -49.73440833
 Two electron energy                   19.15885752
 Virial quotient                       -3.17269031
 Correlation energy                    -0.21194414
 !MRCI STATE 1.1 Energy               -30.575550810437

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.58998089 (Davidson, fixed reference)
 Cluster corrected energies           -30.58973917 (Davidson, relaxed reference)
 Cluster corrected energies           -30.58998089 (Davidson, rotated reference)

 Cluster corrected energies           -30.58757685 (Pople, fixed reference)
 Cluster corrected energies           -30.58736730 (Pople, relaxed reference)
 Cluster corrected energies           -30.58757685 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.90206263 (fixed)   0.96732611 (relaxed)   0.96581079 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00758890   -0.00954399   -0.13985865
 Singles      0.02772038   -0.06177658   -0.06305791
 Pairs        0.03674282   -0.00000000   -0.00720122
 Total        1.07205210   -0.07132057   -0.21011778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26710898
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80515404
 One electron energy                  -49.72124424
 Two electron energy                   19.24401747
 Virial quotient                       -3.10828638
 Correlation energy                    -0.21011778
 !MRCI STATE 2.1 Energy               -30.477226765200

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49236619 (Davidson, fixed reference)
 Cluster corrected energies           -30.49166101 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49236619 (Davidson, rotated reference)

 Cluster corrected energies           -30.48987410 (Pople, fixed reference)
 Cluster corrected energies           -30.48926070 (Pople, relaxed reference)
 Cluster corrected energies           -30.48987410 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.90206264 (fixed)   0.96732612 (relaxed)   0.96581080 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00758891   -0.00954399   -0.13985870
 Singles      0.02772031   -0.06177653   -0.06305790
 Pairs        0.03674286    0.00000000   -0.00720118
 Total        1.07205208   -0.07132052   -0.21011778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26710898
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80515382
 One electron energy                  -49.72124315
 Two electron energy                   19.24401638
 Virial quotient                       -3.10828645
 Correlation energy                    -0.21011778
 !MRCI STATE 3.1 Energy               -30.477226765131

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49236619 (Davidson, fixed reference)
 Cluster corrected energies           -30.49166101 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49236619 (Davidson, rotated reference)

 Cluster corrected energies           -30.48987409 (Pople, fixed reference)
 Cluster corrected energies           -30.48926070 (Pople, relaxed reference)
 Cluster corrected energies           -30.48987409 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96581090 (fixed)   0.96732621 (relaxed)   0.96581090 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00758887   -0.00954398   -0.13985875
 Singles      0.02772010   -0.06177651   -0.06305788
 Pairs        0.03674289   -0.00000000   -0.00720115
 Total        1.07205186   -0.07132049   -0.21011778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26710898
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80515274
 One electron energy                  -49.72123794
 Two electron energy                   19.24401118
 Virial quotient                       -3.10828679
 Correlation energy                    -0.21011778
 !MRCI STATE 4.1 Energy               -30.477226764888

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49236614 (Davidson, fixed reference)
 Cluster corrected energies           -30.49166097 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49236614 (Davidson, rotated reference)

 Cluster corrected energies           -30.48987405 (Pople, fixed reference)
 Cluster corrected energies           -30.48926067 (Pople, relaxed reference)
 Cluster corrected energies           -30.48987405 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96581090 (fixed)   0.96732621 (relaxed)   0.96581090 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00758888   -0.00954398   -0.13985876
 Singles      0.02772008   -0.06177650   -0.06305788
 Pairs        0.03674290    0.00000000   -0.00720114
 Total        1.07205186   -0.07132048   -0.21011778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26710898
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80515270
 One electron energy                  -49.72123798
 Two electron energy                   19.24401122
 Virial quotient                       -3.10828680
 Correlation energy                    -0.21011778
 !MRCI STATE 5.1 Energy               -30.477226764884

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49236614 (Davidson, fixed reference)
 Cluster corrected energies           -30.49166097 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49236614 (Davidson, rotated reference)

 Cluster corrected energies           -30.48987405 (Pople, fixed reference)
 Cluster corrected energies           -30.48926066 (Pople, relaxed reference)
 Cluster corrected energies           -30.48987405 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96581090 (fixed)   0.96732621 (relaxed)   0.96581090 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00758887   -0.00954398   -0.13985874
 Singles      0.02772010   -0.06177651   -0.06305788
 Pairs        0.03674287   -0.00000000   -0.00720115
 Total        1.07205185   -0.07132050   -0.21011778
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26710898
 Nuclear energy                         0.00000000
 Kinetic energy                         9.80515282
 One electron energy                  -49.72123806
 Two electron energy                   19.24401130
 Virial quotient                       -3.10828677
 Correlation energy                    -0.21011778
 !MRCI STATE 6.1 Energy               -30.477226764861

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.49236614 (Davidson, fixed reference)
 Cluster corrected energies           -30.49166097 (Davidson, relaxed reference)
 Cluster corrected energies           -30.49236614 (Davidson, rotated reference)

 Cluster corrected energies           -30.48987405 (Pople, fixed reference)
 Cluster corrected energies           -30.48926066 (Pople, relaxed reference)
 Cluster corrected energies           -30.48987405 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96313714 (fixed)   0.96518344 (relaxed)   0.96478443 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00652136   -0.01209488   -0.01294792
 Singles      0.03394635   -0.06592768   -0.06802388
 Pairs        0.03386657   -0.13222177   -0.12971409
 Total        1.07433427   -0.21024433   -0.21068589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.22453837
 Nuclear energy                         0.00000000
 Kinetic energy                         9.57104852
 One electron energy                  -48.59439307
 Two electron energy                   18.15960327
 Virial quotient                       -3.17988042
 Correlation energy                    -0.21025144
 !MRCI STATE 7.1 Energy               -30.434789807298

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45041869 (Davidson, fixed reference)
 Cluster corrected energies           -30.45023197 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45041869 (Davidson, rotated reference)

 Cluster corrected energies           -30.44786394 (Pople, fixed reference)
 Cluster corrected energies           -30.44770085 (Pople, relaxed reference)
 Cluster corrected energies           -30.44786394 (Pople, rotated reference)



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
 CPU TIMES  *        59.68     20.38     37.22      1.04      0.03      0.81
 REAL TIME  *        67.24 SEC
 DISK USED  *        99.33 MB (local),        1.62 GB (total)
 SF USED    *       442.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =       -30.58998089  AU                              
 SETTING HLSDIAG(11)    =       -30.49236619  AU                              
 SETTING HLSDIAG(12)    =       -30.49236619  AU                              
 SETTING HLSDIAG(13)    =       -30.49236614  AU                              
 SETTING HLSDIAG(14)    =       -30.49236614  AU                              
 SETTING HLSDIAG(15)    =       -30.49236614  AU                              
 SETTING HLSDIAG(16)    =       -30.45041869  AU                              


        HLSDIAG
    -30.50127008
    -30.50126998
    -30.50126998
    -30.50126952
    -30.50126940
    -30.45737550
    -30.42637400
    -30.42637280
    -30.42637280
    -30.58998089
    -30.49236619
    -30.49236619
    -30.49236614
    -30.49236614
    -30.49236614
    -30.45041869
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:    -30.485488    -30.485488    -30.485488    -30.485488    -30.485487    -30.441846    -30.414013    -30.414012
                       -30.414012
 Replaced energies:    -30.501270    -30.501270    -30.501270    -30.501270    -30.501269    -30.457375    -30.426374    -30.426373
                       -30.426373

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -30.575551    -30.477227    -30.477227    -30.477227    -30.477227    -30.477227    -30.434790
 Replaced energies:    -30.589981    -30.492366    -30.492366    -30.492366    -30.492366    -30.492366    -30.450419



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.58998089

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0   19469.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      47.24      -0.01       0.00      -0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00   19469.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -23.62      -0.00      -0.00      -0.00       0.00      -0.00       4.45      16.70

    3   3.1  1.0  1.0       0.00       0.00   19469.79       0.00       0.00       0.00       0.00       0.00       0.00     -16.70
                            0.00      23.62       0.00       0.00       0.00      -0.00      -0.00      -4.45      -0.00       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00   19469.90       0.00       0.00       0.00       0.00       0.00       0.00
                          -47.24       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   19469.92       0.00       0.00       0.00       0.00      -0.00
                            0.01       0.00      -0.00      -0.00       0.00      -0.00      -5.11       0.00       0.00       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   29103.52       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00     -14.62      -0.00      -0.00       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   35907.56       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       5.11      14.62       0.00       0.00      -0.00      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35907.83       0.00       0.00
                           -0.00       0.00       4.45       0.00      -0.00       0.00      -0.00       0.00    -153.13       3.15

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35907.83      -3.15
                           -0.00      -4.45       0.00      -0.00      -0.00       0.00       0.00     153.13       0.00      -0.00

   10   1.1  1.0  0.0       0.00       0.00     -16.70       0.00      -0.00       0.00      -0.00       0.00      -3.15   19469.77
                           -0.00     -16.70      -0.00       0.00      -0.00      -0.00       0.00      -3.15       0.00       0.00

   11   2.1  1.0  0.0      -0.00       0.00       0.00      16.70     -28.93      -0.00      -0.00       0.00      -0.00       0.00
                           16.70       0.00      -0.00       0.00       0.00      -0.00      -3.15       0.00       0.00      -0.00

   12   3.1  1.0  0.0      16.70      -0.00      -0.00       0.00      -0.00      -0.00       3.15      -0.00      -0.00       0.00
                            0.00       0.00       0.00     -16.71     -28.92      -0.00      -0.00       0.00      -0.00      -0.00

   13   4.1  1.0  0.0      -0.00     -16.70      -0.00      -0.00      -0.00      -0.00      -0.00      -3.15      -0.00       0.00
                           -0.00      -0.00      16.71       0.00       0.00       0.00       0.00      -0.00       3.14      -0.00

   14   5.1  1.0  0.0       0.00      28.93       0.00       0.00       0.00      -0.00      -0.00      -1.83       0.00       0.00
                            0.00      -0.00      28.92      -0.00       0.00       0.00      -0.00      -0.00      -1.83      -0.00

   15   6.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      10.34      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      10.34      -0.00

   16   7.1  1.0  0.0       0.00       0.00      -3.15       0.00       0.00       0.00       0.00       0.00    -108.28       0.00
                           -0.00       3.15       0.00      -0.00       0.00       0.00       0.00     108.28       0.00      -0.00

   17   8.1  1.0  0.0      -0.00      -0.00       0.00       3.15       1.83     -10.34      -0.00       0.00       0.00       0.00
                            3.15      -0.00      -0.00       0.00       0.00      -0.00    -108.28       0.00       0.00      -0.00

   18   9.1  1.0  0.0       3.15       0.00       0.00       0.00      -0.00       0.00     108.28      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -3.14       1.83     -10.34      -0.00      -0.00      -0.00      -0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      16.70

   21   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.70
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   22   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.15

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.15
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   1.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     -60.64      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00     -60.64       0.00

   29   2.1  0.0  0.0       0.00      25.66       0.00       0.00       0.00      -0.00      -0.00     -44.61       0.00       0.00
                            0.00      -0.00      33.76       0.00       0.00       0.00       0.00       0.00     -18.72      11.46

   30   3.1  0.0  0.0      -0.00     -24.17      -0.00       0.00      -0.00      -0.00      -0.00     -47.36      -0.00       0.00
                           -0.00      -0.00      10.14      -0.00       0.00      -0.00       0.00      -0.00      62.32      48.52

   31   4.1  0.0  0.0      17.64       0.00       0.00       0.00      -0.00      -0.00      56.35      -0.00      -0.00       0.00
                            0.00       0.00       0.00     -17.64     -30.54       0.00       0.00      -0.00      -0.00      -0.00

   32   5.1  0.0  0.0       0.00       0.00     -17.64       0.00      -0.00       0.00      -0.00       0.00     -56.35       0.00
                           -0.00     -17.64      -0.00       0.00      -0.00      -0.00      -0.00     -56.35      -0.00       0.00

   33   6.1  0.0  0.0      -0.00       0.00       0.00      17.63     -30.54       0.00      -0.00       0.00       0.00       0.00
                           17.64      -0.00      -0.00       0.00      -0.00      -0.00     -56.35       0.00       0.00       0.00

   34   7.1  0.0  0.0      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -2.65      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.65       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      -0.00      16.70      -0.00       0.00      -0.00       0.00      -0.00       3.15       0.00       0.00
                          -16.70      -0.00       0.00      -0.00      -0.00       0.00      -3.15       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00      -0.00     -16.70      28.93       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -3.15       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00      -3.15       0.00       0.00       0.00       0.00
                            0.00      -0.00     -16.71     -28.92      -0.00      -0.00       0.00      -0.00       0.00       0.00

    4   4.1  1.0  1.0      16.70       0.00      -0.00       0.00       0.00       0.00       3.15       0.00       0.00       0.00
                           -0.00      16.71      -0.00       0.00       0.00       0.00      -0.00       3.14       0.00       0.00

    5   5.1  1.0  1.0     -28.93      -0.00      -0.00       0.00       0.00       0.00       1.83      -0.00       0.00       0.00
                           -0.00      28.92      -0.00      -0.00       0.00      -0.00      -0.00      -1.83       0.00       0.00

    6   6.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -10.34       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      10.34       0.00       0.00

    7   7.1  1.0  1.0      -0.00       3.15      -0.00      -0.00      -0.00       0.00      -0.00     108.28       0.00       0.00
                            3.15       0.00      -0.00       0.00       0.00      -0.00     108.28       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.00      -0.00      -3.15      -1.83      10.34       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00    -108.28      -0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00      -0.00      -0.00       0.00      -0.00    -108.28       0.00       0.00       0.00       0.00
                           -0.00       0.00      -3.14       1.83     -10.34      -0.00      -0.00       0.00       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.70

   11   2.1  1.0  0.0   19469.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      16.70      -0.00

   12   3.1  1.0  0.0       0.00   19469.79       0.00       0.00       0.00       0.00       0.00       0.00     -16.70       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   4.1  1.0  0.0       0.00       0.00   19469.90       0.00       0.00       0.00       0.00       0.00       0.00      16.70
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   14   5.1  1.0  0.0       0.00       0.00       0.00   19469.92       0.00       0.00       0.00       0.00      -0.00     -28.93
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00   29103.52       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   35907.56       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       3.15

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   35907.83       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       3.15      -0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35907.83      -3.15      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   19   1.1  1.0 -1.0       0.00     -16.70       0.00      -0.00       0.00      -0.00       0.00      -3.15   19469.77       0.00
                          -16.70      -0.00       0.00      -0.00      -0.00       0.00      -3.15       0.00       0.00       0.00

   20   2.1  1.0 -1.0       0.00       0.00      16.70     -28.93      -0.00      -0.00       0.00      -0.00       0.00   19469.79
                            0.00      -0.00       0.00       0.00      -0.00      -3.15       0.00       0.00      -0.00      -0.00

   21   3.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00       3.15      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -16.71     -28.92      -0.00      -0.00       0.00      -0.00      -0.00     -23.62

   22   4.1  1.0 -1.0     -16.70      -0.00      -0.00      -0.00      -0.00      -0.00      -3.15      -0.00       0.00       0.00
                           -0.00      16.71       0.00       0.00       0.00       0.00      -0.00       3.14      47.24      -0.00

   23   5.1  1.0 -1.0      28.93       0.00       0.00       0.00      -0.00      -0.00      -1.83       0.00       0.00       0.00
                           -0.00      28.92      -0.00       0.00       0.00      -0.00      -0.00      -1.83      -0.01      -0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00      10.34      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      10.34       0.00      -0.00

   25   7.1  1.0 -1.0       0.00      -3.15       0.00       0.00       0.00       0.00       0.00    -108.28       0.00       0.00
                            3.15       0.00      -0.00       0.00       0.00       0.00     108.28       0.00      -0.00       0.00

   26   8.1  1.0 -1.0      -0.00       0.00       3.15       1.83     -10.34      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00    -108.28       0.00       0.00       0.00      -0.00

   27   9.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     108.28      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -3.14       1.83     -10.34      -0.00      -0.00      -0.00       0.00       4.45

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     -85.76       0.00       0.00      -0.00      -0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      25.66
                            0.00       0.00      -0.00      -0.00      -0.00      89.56      -0.00      -0.00      -0.00       0.00

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -24.17
                           -0.00       0.00       0.00      -0.00      -0.00     -21.15       0.00       0.00       0.00       0.00

   31   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.64       0.00
                          -24.94      -0.00      -0.00      -0.00       0.00       0.00      79.70       0.00      -0.00      -0.00

   32   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -49.87       0.01       0.00      -0.00      -0.00      -0.00       0.00      17.64

   33   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      24.94       0.00      -0.00       0.00      -0.00      -0.00     -79.70     -17.64       0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -3.75       0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      25.66     -24.17
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -33.76     -10.14

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -60.64     -44.61     -47.36
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      60.64      18.72     -62.32

   10   1.1  1.0  0.0      16.70      -0.00       0.00      -0.00       0.00      -0.00       3.15       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -3.15       0.00      -0.00     -11.46     -48.52

   11   2.1  1.0  0.0      -0.00     -16.70      28.93       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -3.15       0.00       0.00       0.00      -0.00       0.00

   12   3.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -3.15       0.00       0.00       0.00       0.00       0.00
                           -0.00     -16.71     -28.92      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   13   4.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       3.15       0.00       0.00       0.00       0.00
                           16.71      -0.00       0.00       0.00       0.00      -0.00       3.14       0.00       0.00      -0.00

   14   5.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       1.83      -0.00       0.00       0.00       0.00
                           28.92      -0.00      -0.00       0.00      -0.00      -0.00      -1.83      -0.00       0.00       0.00

   15   6.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00     -10.34       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      10.34       0.00       0.00       0.00

   16   7.1  1.0  0.0       3.15      -0.00      -0.00      -0.00       0.00      -0.00     108.28       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00     108.28       0.00      85.76     -89.56      21.15

   17   8.1  1.0  0.0      -0.00      -3.15      -1.83      10.34       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -108.28      -0.00       0.00      -0.00       0.00      -0.00

   18   9.1  1.0  0.0      -0.00      -0.00       0.00      -0.00    -108.28       0.00       0.00       0.00       0.00       0.00
                            0.00      -3.14       1.83     -10.34      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00     -47.24       0.01      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      25.66     -24.17
                           23.62       0.00       0.00       0.00      -0.00       0.00      -4.45       0.00      -0.00      -0.00

   21   3.1  1.0 -1.0   19469.79       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       4.45       0.00      -0.00      33.76      10.14

   22   4.1  1.0 -1.0       0.00   19469.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   23   5.1  1.0 -1.0       0.00       0.00   19469.92       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       5.11      -0.00      -0.00      -0.00       0.00       0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00   29103.52       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      14.62       0.00       0.00       0.00       0.00      -0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   35907.56       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -5.11     -14.62      -0.00      -0.00       0.00      -0.00       0.00       0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   35907.83       0.00     -60.64     -44.61     -47.36
                           -4.45      -0.00       0.00      -0.00       0.00      -0.00     153.13       0.00       0.00      -0.00

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   35907.83      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00    -153.13      -0.00     -60.64     -18.72      62.32

   28   1.1  0.0  0.0      -0.00       0.00       0.00      -0.00      -0.00     -60.64      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00      60.64       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00     -44.61       0.00       0.00   21423.95       0.00
                          -33.76      -0.00      -0.00      -0.00      -0.00      -0.00      18.72      -0.00       0.00       0.00

   30   3.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00     -47.36      -0.00       0.00       0.00   21423.95
                          -10.14       0.00      -0.00       0.00      -0.00       0.00     -62.32      -0.00      -0.00       0.00

   31   4.1  0.0  0.0       0.00       0.00      -0.00      -0.00      56.35      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      17.64      30.54      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   32   5.1  0.0  0.0     -17.64       0.00      -0.00       0.00      -0.00       0.00     -56.35       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      56.35       0.00      -0.00      -0.00      -0.00

   33   6.1  0.0  0.0       0.00      17.63     -30.54       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      56.35      -0.00      -0.00      -0.00      -0.00      -0.00

   34   7.1  0.0  0.0      -0.00      -0.00       0.00      -0.00       0.00      -2.65      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       2.65      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  1.0  1.0      17.64       0.00      -0.00      -0.00
                           -0.00       0.00     -17.64       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                           -0.00      17.64       0.00       0.00

    3   3.1  1.0  1.0       0.00     -17.64       0.00      -0.00
                           -0.00       0.00       0.00      -0.00

    4   4.1  1.0  1.0       0.00       0.00      17.63      -0.00
                           17.64      -0.00      -0.00      -0.00

    5   5.1  1.0  1.0      -0.00      -0.00     -30.54       0.00
                           30.54       0.00       0.00      -0.00

    6   6.1  1.0  1.0      -0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00

    7   7.1  1.0  1.0      56.35      -0.00      -0.00       0.00
                           -0.00       0.00      56.35       0.00

    8   8.1  1.0  1.0      -0.00       0.00       0.00      -2.65
                            0.00      56.35      -0.00       0.00

    9   9.1  1.0  1.0      -0.00     -56.35       0.00      -0.00
                            0.00       0.00      -0.00       2.65

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           24.94       0.00       0.00      -0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00     -24.94       0.00

   13   4.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      49.87      -0.00       0.00

   14   5.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.01       0.00      -0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       3.75

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00
                          -79.70       0.00       0.00      -0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      79.70       0.00

   19   1.1  1.0 -1.0      17.64       0.00      -0.00      -0.00
                            0.00      -0.00      17.64      -0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00     -17.64      -0.00      -0.00

   21   3.1  1.0 -1.0       0.00     -17.64       0.00      -0.00
                            0.00      -0.00      -0.00       0.00

   22   4.1  1.0 -1.0       0.00       0.00      17.63      -0.00
                          -17.64       0.00       0.00       0.00

   23   5.1  1.0 -1.0      -0.00      -0.00     -30.54       0.00
                          -30.54      -0.00      -0.00       0.00

   24   6.1  1.0 -1.0      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00

   25   7.1  1.0 -1.0      56.35      -0.00      -0.00       0.00
                            0.00      -0.00     -56.35      -0.00

   26   8.1  1.0 -1.0      -0.00       0.00       0.00      -2.65
                           -0.00     -56.35       0.00      -0.00

   27   9.1  1.0 -1.0      -0.00     -56.35       0.00      -0.00
                           -0.00      -0.00       0.00      -2.65

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   31   4.1  0.0  0.0   21423.96       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   32   5.1  0.0  0.0       0.00   21423.96       0.00       0.00
                           -0.00       0.00       0.00       0.00

   33   6.1  0.0  0.0       0.00       0.00   21423.96       0.00
                           -0.00      -0.00       0.00       0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00   30630.36
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by    -30.58998089 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+          19469.771       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   19469.793       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000   19469.793       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   19469.895       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   19469.922       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   29103.520       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   35907.562       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   35907.826
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000     -23.623      -0.000       0.000      -0.000      -0.000       0.000      -4.453

    2    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               23.623       0.000      -0.000       0.000       0.000      -0.000      -4.452       0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000     -23.626     -40.904      -0.000      -0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      23.626       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000      40.904      -0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       4.452       0.000      -0.000       0.000       0.000       0.000     153.124

    8    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                4.453      -0.000      -0.000       0.000       0.000      -0.000    -153.124       0.000

    9    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -4.447       2.589     -14.619      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      47.237      -0.009       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -23.622      -0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      23.622       0.000       0.000       0.000      -0.000      -0.000      -4.449

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -47.237       0.000      -0.000      -0.000       0.000       0.000      -0.001      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.009       0.000      -0.000      -0.000       0.000      -0.000      -5.114       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000     -14.622      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.001       5.114      14.622       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       4.449       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.450       0.000      -0.000      -0.000       0.000       0.000     153.133

    1    1  |0 0>              -0.000      -0.001      -0.000       0.000       0.000      -0.000      -0.000     -85.757
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000      36.289       0.000       0.000       0.000      -0.000      -0.000     -63.089
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000     -34.183      -0.000       0.000      -0.000      -0.000      -0.000     -66.983
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              24.942       0.000       0.000       0.000      -0.000      -0.000      79.694      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000     -24.943       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000       0.000       0.000      24.932     -43.196       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -3.754
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000     -23.623      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      23.623       0.000      -0.000       0.000       0.000      -0.000      -4.452

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -23.626     -40.904      -0.000      -0.000

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      23.626       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000      40.904      -0.000       0.000       0.000      -0.000

    6    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       4.452       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       4.453      -0.000      -0.000       0.000       0.000      -0.000    -153.124

    9    1  |1 1>+          35907.825       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -4.447       2.589     -14.619      -0.000

    1    1  |1 0>               0.000   19469.771       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000   19469.793       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000   19469.793       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000   19469.895       0.000       0.000       0.000
                                4.447      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000   19469.922       0.000       0.000
                               -2.589      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   29103.520       0.000
                               14.619      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000   35907.562
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000      -0.000      23.623      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000     -23.611      40.913       0.000       0.000
                                4.450       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000     -23.623       0.000       0.000      -0.000       0.000       0.000      -4.452
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000      23.611       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000      -0.000     -40.913      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000      -0.000      -0.000       4.452      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000      -0.000      -4.448      -2.587      14.619       0.000
                             -153.133      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000      -4.453      -0.000      -0.000      -0.000       0.000      -0.000    -153.124
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000     -85.762

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      11.455       0.000       0.000      -0.000      -0.000      -0.000      89.562

    3    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      48.518      -0.000       0.000       0.000      -0.000      -0.000     -21.146

    4    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -24.942      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>             -79.693       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000     -49.871       0.009       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      24.942       0.000      -0.000       0.000      -0.000

    7    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -3.754

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.453       0.000      -0.000      -0.000      -0.000      47.237      -0.009       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -23.622      -0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      23.622       0.000       0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.447     -47.237       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.589       0.009       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      14.619      -0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              153.124       0.000       0.000      -0.000       0.000       0.001       5.114      14.622

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       4.449       0.000      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -4.450       0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000     -23.623       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      23.611     -40.913      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      23.623      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000     -23.611      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000      40.913       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -4.452       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>           35907.826       0.000      -0.000      -0.000       0.000       4.448       2.587     -14.619
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000   35907.825       4.453       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-             -0.000       4.453   19469.771       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000       0.000   19469.793       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   19469.793       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              4.448       0.000       0.000       0.000       0.000   19469.895       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              2.587      -0.000       0.000       0.000       0.000       0.000   19469.922       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-            -14.619       0.000       0.000       0.000       0.000       0.000       0.000   29103.520
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000     153.124       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.001       0.000      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      47.746       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      14.343      -0.000       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               79.696       0.000       0.000       0.000       0.000     -24.948     -43.187       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -24.943      -0.000       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -79.696      24.942      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      24.942       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.001      36.289     -34.183       0.000       0.000
                                0.000      -0.000       4.450       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000     -24.943
                               -0.000      -4.449      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -5.114       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              -14.622      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      79.694      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000     -85.757     -63.089     -66.983      -0.000       0.000
                               -0.000       0.000    -153.133       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000     -79.693
                                0.000     153.133       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -4.453       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     -11.455     -48.518       0.000      -0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      24.942       0.000

    3    1  |1 0>               4.452      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 0>              -0.000      -4.448      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      49.871

    5    1  |1 0>              -0.000      -2.587       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.009

    6    1  |1 0>              -0.000      14.619      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000    -153.124       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      85.762     -89.562      21.146      -0.000       0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000     -79.696       0.000

    9    1  |1 0>             153.124      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      24.943

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.001     -47.746     -14.343      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      24.948      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      43.187       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-          35907.562       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000   35907.826       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      79.693

    9    1  |1 1>-              0.000       0.000   35907.825       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      85.757      26.468     -88.127       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -85.757       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000   21423.949       0.000       0.000       0.000
                                0.000       0.000     -26.468      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000   21423.950       0.000       0.000
                                0.000      -0.000      88.127      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21423.960       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   21423.960
                               -0.000     -79.693      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -79.695       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -3.754      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34

    1    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    2    1  |1 1>+              0.000       0.000
                                0.000       0.000

    3    1  |1 1>+              0.000      -0.000
                                0.000       0.000

    4    1  |1 1>+             24.932      -0.000
                                0.000       0.000

    5    1  |1 1>+            -43.196       0.000
                                0.000       0.000

    6    1  |1 1>+              0.000      -0.000
                                0.000       0.000

    7    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    8    1  |1 1>+              0.000      -3.754
                                0.000       0.000

    9    1  |1 1>+              0.000      -0.000
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    2    1  |1 0>               0.000       0.000
                                0.000      -0.000

    3    1  |1 0>               0.000       0.000
                              -24.942       0.000

    4    1  |1 0>               0.000       0.000
                               -0.000       0.000

    5    1  |1 0>               0.000       0.000
                                0.000      -0.000

    6    1  |1 0>               0.000       0.000
                               -0.000       0.000

    7    1  |1 0>               0.000       0.000
                                0.000       3.754

    8    1  |1 0>               0.000       0.000
                                0.000      -0.000

    9    1  |1 0>               0.000       0.000
                               79.696       0.000

    1    1  |1 1>-              0.000       0.000
                              -24.942       0.000

    2    1  |1 1>-              0.000       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000       0.000
                                0.000      -0.000

    4    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    5    1  |1 1>-              0.000       0.000
                                0.000      -0.000

    6    1  |1 1>-              0.000       0.000
                                0.000      -0.000

    7    1  |1 1>-              0.000       0.000
                               79.695       0.000

    8    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    9    1  |1 1>-              0.000       0.000
                               -0.000       3.754

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

    6    1  |0 0>           21423.961       0.000
                                0.000       0.000

    7    1  |0 0>               0.000   30630.361
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.58998371    -0.00000282       -0.62      0.00000000        0.00      0.0000
    2   -30.50159268     0.08838821    19398.97      0.08839104    19399.59      2.4052
    3   -30.50159268     0.08838821    19398.97      0.08839104    19399.59      2.4052
    4   -30.50159261     0.08838828    19398.98      0.08839110    19399.60      2.4052
    5   -30.50138630     0.08859459    19444.26      0.08859741    19444.88      2.4109
    6   -30.50138623     0.08859466    19444.28      0.08859748    19444.90      2.4109
    7   -30.50138590     0.08859499    19444.35      0.08859781    19444.97      2.4109
    8   -30.50138586     0.08859503    19444.36      0.08859785    19444.98      2.4109
    9   -30.50138586     0.08859503    19444.36      0.08859785    19444.98      2.4109
   10   -30.50105475     0.08892613    19517.03      0.08892896    19517.65      2.4199
   11   -30.50105461     0.08892628    19517.06      0.08892910    19517.68      2.4199
   12   -30.50105461     0.08892628    19517.06      0.08892910    19517.68      2.4199
   13   -30.50105459     0.08892630    19517.07      0.08892912    19517.69      2.4199
   14   -30.50105447     0.08892642    19517.09      0.08892924    19517.71      2.4199
   15   -30.50105447     0.08892642    19517.09      0.08892924    19517.71      2.4199
   16   -30.50105441     0.08892648    19517.11      0.08892930    19517.73      2.4199
   17   -30.49236155     0.09761934    21424.97      0.09762216    21425.59      2.6564
   18   -30.49236154     0.09761935    21424.97      0.09762217    21425.59      2.6564
   19   -30.49236149     0.09761940    21424.98      0.09762222    21425.60      2.6564
   20   -30.49236149     0.09761940    21424.98      0.09762222    21425.60      2.6564
   21   -30.49236148     0.09761940    21424.98      0.09762223    21425.60      2.6564
   22   -30.45737579     0.13260510    29103.46      0.13260792    29104.08      3.6084
   23   -30.45737579     0.13260510    29103.46      0.13260792    29104.08      3.6084
   24   -30.45737579     0.13260510    29103.46      0.13260792    29104.08      3.6084
   25   -30.45041873     0.13956216    30630.35      0.13956498    30630.97      3.7978
   26   -30.42776573     0.16221516    35602.11      0.16221798    35602.73      4.4142
   27   -30.42707078     0.16291011    35754.64      0.16291293    35755.26      4.4331
   28   -30.42707078     0.16291011    35754.64      0.16291293    35755.26      4.4331
   29   -30.42707022     0.16291067    35754.76      0.16291349    35755.38      4.4331
   30   -30.42567195     0.16430893    36061.64      0.16431176    36062.26      4.4712
   31   -30.42567174     0.16430915    36061.69      0.16431197    36062.31      4.4712
   32   -30.42567174     0.16430915    36061.69      0.16431197    36062.31      4.4712
   33   -30.42567111     0.16430978    36061.83      0.16431261    36062.45      4.4712
   34   -30.42567110     0.16430978    36061.83      0.16431261    36062.45      4.4712

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.00000002  0.54806335  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40838672
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000005  0.00000000 -0.00000000  0.00000000  0.40844258 -0.70649973 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.54796863 -0.00000000 -0.00000000 -0.40842363  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.54750570  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00449500  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.31576163  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00259239  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000077  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00024786 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00047502
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00240875  0.00000000  0.00000000 -0.00000000  0.00047580  0.00027503 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00024908 -0.00000000 -0.00000000 -0.00047579  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.81618582  0.00054014 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000002 -0.54784289 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40868797

   3    1  |1 0>           0.00000000  0.00449762 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.54782448  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00011697  0.00000000  0.00000000  0.81573629 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.63202923 -0.00000000 -0.00000000 -0.00015064  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000070 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00240890 -0.00000000 -0.00000000  0.00000000 -0.00000036  0.00054968 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00024813 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00047671

   9    1  |1 0>          -0.00000000  0.00000204 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00024812  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00449942  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.54804464 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.54796834  0.00000000  0.00000000  0.40842423 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000005  0.00000000 -0.00000000 -0.00000000  0.40750728  0.70703944 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000002  0.54740789  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40784343

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.31597344 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70633138

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000077  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

   7    1  |1 1>-         -0.00000000 -0.00000203  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00024785 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00024908  0.00000000  0.00000000  0.00047580 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00240875 -0.00000000  0.00000000 -0.00000000  0.00047616 -0.00027440 -0.00000000  0.00000000

   1    1  |0 0>           0.99999130 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00707268  0.03004340 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.03004512 -0.00707227 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000806  0.00000000  0.00000000  0.00000000 -0.00000000 -0.03088199
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.03088064  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000803 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000089  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.70158969  0.00000000 -0.20114591  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.57740571  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.57675068 -0.00000000 -0.00000000  0.44734783
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

   4    1  |1 1>+         -0.40644124 -0.00000000  0.51697774  0.00000000 -0.00000000 -0.00000001 -0.51630829 -0.00000000
                           0.03049326  0.00000000  0.00945366  0.00000000  0.00000000  0.00000000  0.00209659 -0.00000000

   5    1  |1 1>+          0.70450157 -0.00000000 -0.32140624 -0.00000000  0.00000000 -0.00000001 -0.54530101 -0.00000000
                          -0.05285525 -0.00000000 -0.00587736 -0.00000000 -0.00000000  0.00000000  0.00221432 -0.00000000

   6    1  |1 1>+          0.00000002 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000023 -0.00000000  0.00000062 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000021 -0.00000000  0.00000000  0.00000104
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.57723915 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.37017829  0.00000000  0.62900815 -0.00000001  0.00000000

   3    1  |1 0>           0.03057586 -0.00000000 -0.00677110 -0.00000000 -0.00000000  0.00000000  0.00255382 -0.00000000
                           0.40754219  0.00000000  0.37028084  0.00000000 -0.00000000  0.00000001  0.62890638  0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57787370  0.00000000  0.00000000  0.00057913

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00069173 -0.00000000 -0.00000000  0.77494420

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000058  0.00000000  0.00000079 -0.00000000  0.00000000

   9    1  |1 0>          -0.00003566  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00047537  0.00000000  0.00000058  0.00000000 -0.00000000  0.00000000  0.00000079 -0.00000000

   1    1  |1 1>-          0.03055337 -0.00000000 -0.01282644 -0.00000000 -0.00000000 -0.00000000 -0.00081754  0.00000000
                           0.40724238 -0.00000000  0.70141989  0.00000001 -0.00000000 -0.00000000 -0.20132768 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57742546 -0.00000000 -0.00000000  0.44647629

   3    1  |1 1>-         -0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.57740593  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.51731746 -0.00000000  0.51597655 -0.00000001  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.32112704 -0.00000000 -0.54557976  0.00000001 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000003 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00003554  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00047369 -0.00000000 -0.00000022 -0.00000000  0.00000000 -0.00000000 -0.00000062 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000021 -0.00000000  0.00000000  0.00000104

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000157 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000667 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00002227  0.00000000  0.00000919 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001615  0.00000000  0.00000000 -0.00000003
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.03079540 -0.00000000 -0.00002226 -0.00000000  0.00000000 -0.00000000 -0.00000919 -0.00000000
                          -0.00231043 -0.00000000 -0.00000041 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.01261019  0.00000000 -0.00000000  0.00000101  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.01936340 -0.01613608 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.01261083 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000096
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.01260589 -0.00000101 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.02184059 -0.00000057 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.99999517  0.00000085  0.00000022
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000426  0.00000000  0.00000001

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00543099 -0.00000000 -0.00000000  0.00219852  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00401398  0.00481736 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00543074  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00219787
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00429044 -0.02483637 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.01261042  0.00000000  0.00000000 -0.00000106 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01261040 -0.00000106 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.02521530  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000463 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000117

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000022 -0.00000000  0.99999517

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00617967 -0.00106753 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00543096  0.00000000 -0.00000000  0.00219788  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00543096  0.00219788  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01261017  0.00000101  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.01261083  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000096

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.02365461 -0.00870480  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.01261397  0.00000000 -0.00000000  0.00000101  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.02183597  0.00000000  0.00000000 -0.00000057 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000085  0.99999517  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00543099 -0.00219852 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00543074 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00219787

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00216520  0.00588481  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.99764746  0.06072616 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.06072618  0.99764741  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000006  0.99949340  0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.99949344  0.00000006 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000001 -0.00000000  0.99949340  0.00000002  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000155  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00019243  0.00000000  0.00000000 -0.00000000  0.00017802
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000001  0.00000018 -0.00000000 -0.00000000  0.00000000  0.00030814  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00019236  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00019219  0.00000000  0.00000000  0.00000000 -0.00017772 -0.00000000
                           0.00000000 -0.00000000 -0.00000293 -0.00000000 -0.00000000  0.00000000  0.00000158  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00010929  0.00000000  0.00000000 -0.00000000  0.00030773  0.00000000
                           0.00000000 -0.00000000 -0.00000167 -0.00000000 -0.00000000 -0.00000000 -0.00000274 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00310836  0.00000000  0.00000000  0.00000000 -0.00000088 -0.00000000
                           0.00000000  0.00000000 -0.00004736 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000002  0.70740675  0.00000000 -0.00000000  0.00000004 -0.70678220
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00075495 -0.57723777 -0.00000000 -0.00000000 -0.00000000  0.40821895  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710351 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00019257 -0.00000000  0.00000000 -0.00000000  0.00017783

   3    1  |1 0>           0.00000000  0.00000000  0.00000293  0.00000000  0.00000000  0.00000000  0.00000158  0.00000000
                           0.00000000  0.00000000  0.00019254  0.00000000  0.00000000 -0.00000000  0.00017782  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00022377 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00310825  0.00000000 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00075514  0.57755845 -0.00000000  0.00000000 -0.00000000  0.81632114  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000002  0.70679976  0.00000000  0.00000000 -0.00000004  0.70738920

   9    1  |1 0>           0.00000000  0.00000000 -0.01076687 -0.00000000 -0.00000000  0.00000000  0.00630139  0.00000000
                          -0.00000000 -0.00000000 -0.70671794 -0.00000002 -0.00000000 -0.00000000  0.70736095  0.00000004

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000293 -0.00000000 -0.00000000  0.00000000  0.00000159  0.00000000
                           0.00000000  0.00000000 -0.00019240 -0.00000000 -0.00000000 -0.00000000  0.00017801  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00019236  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00000018  0.00000000 -0.00000000 -0.00000000 -0.00030806 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00019217  0.00000000  0.00000000 -0.00000000  0.00017784

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00010938 -0.00000000  0.00000000 -0.00000000  0.00030768

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00310872 -0.00000000  0.00000000  0.00000000 -0.00000088

   7    1  |1 1>-          0.00000000 -0.00000000  0.01077611  0.00000000  0.00000000  0.00000000  0.00629599  0.00000000
                          -0.00000000  0.00000000  0.70732448  0.00000002  0.00000000 -0.00000000  0.70675434  0.00000004

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710313  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00075495  0.57723798 -0.00000000 -0.00000000  0.00000000 -0.40855556 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000634  0.00417216  0.00000000 -0.00000000 -0.00000000 -0.00000097  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000225 -0.00000000 -0.00000000  0.00000000 -0.00749114 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000053  0.00000000  0.00000000 -0.00000000  0.00177054  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000328  0.00000000 -0.00000000  0.00000000 -0.00769767
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000328  0.00000000  0.00000000 -0.00000000  0.00769737  0.00000000
                          -0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00006857 -0.00000000

   7    1  |0 0>           0.99999914  0.00130774  0.00000000 -0.00000000 -0.00000000 -0.00000019  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00017773 -0.00000000
                          -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00017780
                          -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000
                          -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000  0.00000000

   8    1  |1 1>+          0.70718304  0.00000005
                           0.00000000 -0.00000000

   9    1  |1 1>+          0.00000005 -0.70708558
                           0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000
                          -0.00035588 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000
                           0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000
                          -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000
                           0.00000000 -0.00035542

   5    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000  0.00000007

   6    1  |1 0>           0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000
                           0.00019422 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000
                           0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000
                          -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000
                           0.00000000 -0.00017780

   3    1  |1 1>-          0.00000000 -0.00000000
                          -0.00017787 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000
                          -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000005  0.70708596

   9    1  |1 1>-         -0.00000000  0.00000000
                           0.70698846  0.00000005

   1    1  |0 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>          -0.00177037 -0.00000000
                          -0.00000000  0.00000000

   3    1  |0 0>          -0.00749041 -0.00000000
                          -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00769734
                          -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000
                           0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.58998371     -0.00000282       -0.62      0.00000000        0.00      0.0000
     2   1    -30.50159268      0.08838821    19398.97      0.08839104    19399.59      2.4052
     3   1    -30.50159268      0.08838821    19398.97      0.08839104    19399.59      2.4052
     4   1    -30.50159261      0.08838828    19398.98      0.08839110    19399.60      2.4052
     5   1    -30.50138630      0.08859459    19444.26      0.08859741    19444.88      2.4109
     6   1    -30.50138623      0.08859466    19444.28      0.08859748    19444.90      2.4109
     7   1    -30.50138590      0.08859499    19444.35      0.08859781    19444.97      2.4109
     8   1    -30.50138586      0.08859503    19444.36      0.08859785    19444.98      2.4109
     9   1    -30.50138586      0.08859503    19444.36      0.08859785    19444.98      2.4109
    10   1    -30.50105475      0.08892613    19517.03      0.08892896    19517.65      2.4199
    11   1    -30.50105461      0.08892628    19517.06      0.08892910    19517.68      2.4199
    12   1    -30.50105461      0.08892628    19517.06      0.08892910    19517.68      2.4199
    13   1    -30.50105459      0.08892630    19517.07      0.08892912    19517.69      2.4199
    14   1    -30.50105447      0.08892642    19517.09      0.08892924    19517.71      2.4199
    15   1    -30.50105447      0.08892642    19517.09      0.08892924    19517.71      2.4199
    16   1    -30.50105441      0.08892648    19517.11      0.08892930    19517.73      2.4199
    17   1    -30.49236155      0.09761934    21424.97      0.09762216    21425.59      2.6564
    18   1    -30.49236154      0.09761935    21424.97      0.09762217    21425.59      2.6564
    19   1    -30.49236149      0.09761940    21424.98      0.09762222    21425.60      2.6564
    20   1    -30.49236149      0.09761940    21424.98      0.09762222    21425.60      2.6564
    21   1    -30.49236148      0.09761940    21424.98      0.09762223    21425.60      2.6564
    22   1    -30.45737579      0.13260510    29103.46      0.13260792    29104.08      3.6084
    23   1    -30.45737579      0.13260510    29103.46      0.13260792    29104.08      3.6084
    24   1    -30.45737579      0.13260510    29103.46      0.13260792    29104.08      3.6084
    25   1    -30.45041873      0.13956216    30630.35      0.13956498    30630.97      3.7978
    26   1    -30.42776573      0.16221516    35602.11      0.16221798    35602.73      4.4142
    27   1    -30.42707078      0.16291011    35754.64      0.16291293    35755.26      4.4331
    28   1    -30.42707078      0.16291011    35754.64      0.16291293    35755.26      4.4331
    29   1    -30.42707022      0.16291067    35754.76      0.16291349    35755.38      4.4331
    30   1    -30.42567195      0.16430893    36061.64      0.16431176    36062.26      4.4712
    31   1    -30.42567174      0.16430915    36061.69      0.16431197    36062.31      4.4712
    32   1    -30.42567174      0.16430915    36061.69      0.16431197    36062.31      4.4712
    33   1    -30.42567111      0.16430978    36061.83      0.16431261    36062.45      4.4712
    34   1    -30.42567110      0.16430978    36061.83      0.16431261    36062.45      4.4712

 E0 =    -30.58998089 is the energy of the lowest zeroth-order state
 E1 =    -30.58998371 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.00000002  0.54806335  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40838672
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000005  0.00000000 -0.00000000  0.00000000  0.40844258 -0.70649973 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.54796863 -0.00000000 -0.00000000 -0.40842363  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.54750570  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00449500  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000 -0.31576163  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00259239  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000000 -0.00000077  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00024786 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00047502
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00240875  0.00000000  0.00000000 -0.00000000  0.00047580  0.00027503 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00024908 -0.00000000 -0.00000000 -0.00047579  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.81618582  0.00054014 -0.00000000  0.00000000

 11  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000002 -0.54784289 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40868797

 12  1     3    1  |1 0>        0.00000000  0.00449762 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.54782448  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00011697  0.00000000  0.00000000  0.81573629 -0.00000000

 14  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.63202923 -0.00000000 -0.00000000 -0.00015064  0.00000000

 15  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000070 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00240890 -0.00000000 -0.00000000  0.00000000 -0.00000036  0.00054968 -0.00000000 -0.00000000

 17  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00024813 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00047671

 18  1     9    1  |1 0>       -0.00000000  0.00000204 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00024812  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     1    1  |1 1>-       0.00000000 -0.00449942  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.54804464 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.54796834  0.00000000  0.00000000  0.40842423 -0.00000000

 21  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000005  0.00000000 -0.00000000 -0.00000000  0.40750728  0.70703944 -0.00000000  0.00000000

 22  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000002  0.54740789  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40784343

 23  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.31597344 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70633138

 24  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000077  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

 25  1     7    1  |1 1>-      -0.00000000 -0.00000203  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00024785 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00024908  0.00000000  0.00000000  0.00047580 -0.00000000

 27  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00240875 -0.00000000  0.00000000 -0.00000000  0.00047616 -0.00027440 -0.00000000  0.00000000

 28  1     1    1  |0 0>        0.99999130 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00707268  0.03004340 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 30  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.03004512 -0.00707227 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 31  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000806  0.00000000  0.00000000  0.00000000 -0.00000000 -0.03088199
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 32  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.03088064  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1     6    1  |0 0>        0.00000000  0.00000803 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     7    1  |0 0>        0.00000089  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.70158969  0.00000000 -0.20114591  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.57740571  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.57675068 -0.00000000 -0.00000000  0.44734783
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

  4  1     4    1  |1 1>+      -0.40644124 -0.00000000  0.51697774  0.00000000 -0.00000000 -0.00000001 -0.51630829 -0.00000000
                                0.03049326  0.00000000  0.00945366  0.00000000  0.00000000  0.00000000  0.00209659 -0.00000000

  5  1     5    1  |1 1>+       0.70450157 -0.00000000 -0.32140624 -0.00000000  0.00000000 -0.00000001 -0.54530101 -0.00000000
                               -0.05285525 -0.00000000 -0.00587736 -0.00000000 -0.00000000  0.00000000  0.00221432 -0.00000000

  6  1     6    1  |1 1>+       0.00000002 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000023 -0.00000000  0.00000062 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000021 -0.00000000  0.00000000  0.00000104
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     1    1  |1 0>        0.00000000 -0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.57723915 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.37017829  0.00000000  0.62900815 -0.00000001  0.00000000

 12  1     3    1  |1 0>        0.03057586 -0.00000000 -0.00677110 -0.00000000 -0.00000000  0.00000000  0.00255382 -0.00000000
                                0.40754219  0.00000000  0.37028084  0.00000000 -0.00000000  0.00000001  0.62890638  0.00000000

 13  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57787370  0.00000000  0.00000000  0.00057913

 14  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00069173 -0.00000000 -0.00000000  0.77494420

 15  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005

 16  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000058  0.00000000  0.00000079 -0.00000000  0.00000000

 18  1     9    1  |1 0>       -0.00003566  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00047537  0.00000000  0.00000058  0.00000000 -0.00000000  0.00000000  0.00000079 -0.00000000

 19  1     1    1  |1 1>-       0.03055337 -0.00000000 -0.01282644 -0.00000000 -0.00000000 -0.00000000 -0.00081754  0.00000000
                                0.40724238 -0.00000000  0.70141989  0.00000001 -0.00000000 -0.00000000 -0.20132768 -0.00000000

 20  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.57742546 -0.00000000 -0.00000000  0.44647629

 21  1     3    1  |1 1>-      -0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.57740593  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.51731746 -0.00000000  0.51597655 -0.00000001  0.00000000

 23  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.32112704 -0.00000000 -0.54557976  0.00000001 -0.00000000

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000003 -0.00000000 -0.00000000

 25  1     7    1  |1 1>-      -0.00003554  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00047369 -0.00000000 -0.00000022 -0.00000000  0.00000000 -0.00000000 -0.00000062 -0.00000000

 26  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000021 -0.00000000  0.00000000  0.00000104

 27  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     2    1  |0 0>       -0.00000000  0.00000157 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     3    1  |0 0>       -0.00000000  0.00000667 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 31  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00002227  0.00000000  0.00000919 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 32  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001615  0.00000000  0.00000000 -0.00000003
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 33  1     6    1  |0 0>        0.03079540 -0.00000000 -0.00002226 -0.00000000  0.00000000 -0.00000000 -0.00000919 -0.00000000
                               -0.00231043 -0.00000000 -0.00000041 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000

 34  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.01261019  0.00000000 -0.00000000  0.00000101  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.01936340 -0.01613608 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.01261083 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000096
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.01260589 -0.00000101 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.02184059 -0.00000057 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.99999517  0.00000085  0.00000022
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000426  0.00000000  0.00000001

  7  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00543099 -0.00000000 -0.00000000  0.00219852  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00401398  0.00481736 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00543074  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00219787
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00429044 -0.02483637 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.01261042  0.00000000  0.00000000 -0.00000106 -0.00000000

 12  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01261040 -0.00000106 -0.00000000 -0.00000000

 13  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.02521530  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000463 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000117

 15  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000022 -0.00000000  0.99999517

 16  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00617967 -0.00106753 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00543096  0.00000000 -0.00000000  0.00219788  0.00000000

 18  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00543096  0.00219788  0.00000000  0.00000000

 19  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01261017  0.00000101  0.00000000  0.00000000

 20  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.01261083  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000096

 21  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.02365461 -0.00870480  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.01261397  0.00000000 -0.00000000  0.00000101  0.00000000

 23  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.02183597  0.00000000  0.00000000 -0.00000057 -0.00000000

 24  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000085  0.99999517  0.00000000

 25  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00543099 -0.00219852 -0.00000000 -0.00000000

 26  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00543074 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00219787

 27  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00216520  0.00588481  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     2    1  |0 0>        0.99764746  0.06072616 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     3    1  |0 0>       -0.06072618  0.99764741  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 31  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000006  0.99949340  0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 32  1     5    1  |0 0>        0.00000000 -0.00000000  0.99949344  0.00000006 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000001 -0.00000000  0.99949340  0.00000002  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000155  0.00000000  0.00000000  0.00000000

 34  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00019243  0.00000000  0.00000000 -0.00000000  0.00017802
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000001  0.00000018 -0.00000000 -0.00000000  0.00000000  0.00030814  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00019236  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00019219  0.00000000  0.00000000  0.00000000 -0.00017772 -0.00000000
                                0.00000000 -0.00000000 -0.00000293 -0.00000000 -0.00000000  0.00000000  0.00000158  0.00000000

  5  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00010929  0.00000000  0.00000000 -0.00000000  0.00030773  0.00000000
                                0.00000000 -0.00000000 -0.00000167 -0.00000000 -0.00000000 -0.00000000 -0.00000274 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00310836  0.00000000  0.00000000  0.00000000 -0.00000088 -0.00000000
                                0.00000000  0.00000000 -0.00004736 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

  7  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000002  0.70740675  0.00000000 -0.00000000  0.00000004 -0.70678220
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00075495 -0.57723777 -0.00000000 -0.00000000 -0.00000000  0.40821895  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710351 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000

 11  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00019257 -0.00000000  0.00000000 -0.00000000  0.00017783

 12  1     3    1  |1 0>        0.00000000  0.00000000  0.00000293  0.00000000  0.00000000  0.00000000  0.00000158  0.00000000
                                0.00000000  0.00000000  0.00019254  0.00000000  0.00000000 -0.00000000  0.00017782  0.00000000

 13  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00022377 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00310825  0.00000000 -0.00000000  0.00000000

 16  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00075514  0.57755845 -0.00000000  0.00000000 -0.00000000  0.81632114  0.00000000 -0.00000000

 17  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000002  0.70679976  0.00000000  0.00000000 -0.00000004  0.70738920

 18  1     9    1  |1 0>        0.00000000  0.00000000 -0.01076687 -0.00000000 -0.00000000  0.00000000  0.00630139  0.00000000
                               -0.00000000 -0.00000000 -0.70671794 -0.00000002 -0.00000000 -0.00000000  0.70736095  0.00000004

 19  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000293 -0.00000000 -0.00000000  0.00000000  0.00000159  0.00000000
                                0.00000000  0.00000000 -0.00019240 -0.00000000 -0.00000000 -0.00000000  0.00017801  0.00000000

 20  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00019236  0.00000000  0.00000000 -0.00000000

 21  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00000018  0.00000000 -0.00000000 -0.00000000 -0.00030806 -0.00000000  0.00000000

 22  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00019217  0.00000000  0.00000000 -0.00000000  0.00017784

 23  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00010938 -0.00000000  0.00000000 -0.00000000  0.00030768

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00310872 -0.00000000  0.00000000  0.00000000 -0.00000088

 25  1     7    1  |1 1>-       0.00000000 -0.00000000  0.01077611  0.00000000  0.00000000  0.00000000  0.00629599  0.00000000
                               -0.00000000  0.00000000  0.70732448  0.00000002  0.00000000 -0.00000000  0.70675434  0.00000004

 26  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70710313  0.00000000 -0.00000000  0.00000000

 27  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00075495  0.57723798 -0.00000000 -0.00000000  0.00000000 -0.40855556 -0.00000000 -0.00000000

 28  1     1    1  |0 0>       -0.00000634  0.00417216  0.00000000 -0.00000000 -0.00000000 -0.00000097  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     2    1  |0 0>        0.00000000 -0.00000225 -0.00000000 -0.00000000  0.00000000 -0.00749114 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 30  1     3    1  |0 0>       -0.00000000  0.00000053  0.00000000  0.00000000 -0.00000000  0.00177054  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 31  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000328  0.00000000 -0.00000000  0.00000000 -0.00769767
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000328  0.00000000  0.00000000 -0.00000000  0.00769737  0.00000000
                               -0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00006857 -0.00000000

 34  1     7    1  |0 0>        0.99999914  0.00130774  0.00000000 -0.00000000 -0.00000000 -0.00000019  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00017773 -0.00000000
                               -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.00017780
                               -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00000000
                               -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000000  0.00000000
                                0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.70718304  0.00000005
                                0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000005 -0.70708558
                                0.00000000 -0.00000000

 10  1     1    1  |1 0>        0.00000000 -0.00000000
                               -0.00035588 -0.00000000

 11  1     2    1  |1 0>        0.00000000 -0.00000000
                                0.00000000 -0.00000000

 12  1     3    1  |1 0>       -0.00000000  0.00000000
                               -0.00000000  0.00000000

 13  1     4    1  |1 0>       -0.00000000  0.00000000
                                0.00000000 -0.00035542

 14  1     5    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000  0.00000007

 15  1     6    1  |1 0>        0.00000000  0.00000000
                                0.00000000 -0.00000000

 16  1     7    1  |1 0>        0.00000000  0.00000000
                                0.00019422 -0.00000000

 17  1     8    1  |1 0>       -0.00000000  0.00000000
                                0.00000000 -0.00000000

 18  1     9    1  |1 0>       -0.00000000  0.00000000
                               -0.00000000  0.00000000

 19  1     1    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000  0.00000000

 20  1     2    1  |1 1>-      -0.00000000  0.00000000
                                0.00000000 -0.00017780

 21  1     3    1  |1 1>-       0.00000000 -0.00000000
                               -0.00017787 -0.00000000

 22  1     4    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000 -0.00000000

 23  1     5    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 24  1     6    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 25  1     7    1  |1 1>-      -0.00000000  0.00000000
                               -0.00000000  0.00000000

 26  1     8    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000005  0.70708596

 27  1     9    1  |1 1>-      -0.00000000  0.00000000
                                0.70698846  0.00000005

 28  1     1    1  |0 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000

 29  1     2    1  |0 0>       -0.00177037 -0.00000000
                               -0.00000000  0.00000000

 30  1     3    1  |0 0>       -0.00749041 -0.00000000
                               -0.00000000  0.00000000

 31  1     4    1  |0 0>       -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00769734
                               -0.00000000  0.00000000

 33  1     6    1  |0 0>       -0.00000000  0.00000000
                                0.00000000 -0.00000000

 34  1     7    1  |0 0>        0.00000000  0.00000000
                                0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   30.04%    0.00%    0.00%    0.00%    0.00%   16.68%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.68%   49.91%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.03%    0.00%    0.00%   16.68%    0.00%
  4  1     4    1  |1 1>+         0.00%   29.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    9.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.62%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%   16.70%
 12  1     3    1  |1 0>          0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.54%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.95%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%   30.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.03%    0.00%    0.00%   16.68%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.61%   49.99%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%   29.97%    0.00%    0.00%    0.00%    0.00%   16.63%
 23  1     5    1  |1 1>-         0.00%    0.00%    9.98%    0.00%    0.00%    0.00%    0.00%   49.89%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.09%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.09%    0.01%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   49.22%    0.00%    4.05%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.26%    0.00%    0.00%   20.01%
  4  1     4    1  |1 1>+        16.61%    0.00%   26.74%    0.00%    0.00%    0.00%   26.66%    0.00%
  5  1     5    1  |1 1>+        49.91%    0.00%   10.33%    0.00%    0.00%    0.00%   29.74%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%   33.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%   13.70%    0.00%   39.57%    0.00%    0.00%
 12  1     3    1  |1 0>         16.70%    0.00%   13.72%    0.00%    0.00%    0.00%   39.55%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.39%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.05%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-        16.68%    0.00%   49.22%    0.00%    0.00%    0.00%    4.05%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%   19.93%
 21  1     3    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%   26.76%    0.00%   26.62%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%   10.31%    0.00%   29.77%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.04%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.06%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>         99.53%    0.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.37%   99.53%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.95%
  8  1     8    1  |1 1>+         0.00%   33.32%    0.00%    0.00%    0.00%   16.66%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%   33.36%    0.00%    0.00%    0.00%   66.64%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%
 18  1     9    1  |1 0>          0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.04%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.95%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%   33.32%    0.00%    0.00%    0.00%   16.69%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
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
  8  1     8    1  |1 1>+        50.01%    0.00%
  9  1     9    1  |1 1>+         0.00%   50.00%
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
 26  1     8    1  |1 1>-         0.00%   50.00%
 27  1     9    1  |1 1>-        49.98%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%
 30  1     3    1  |0 0>          0.01%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%
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
 CPU TIMES  *       214.34    154.66     20.38     37.22      1.04      0.03      0.81
 REAL TIME  *       228.86 SEC
 DISK USED  *        99.33 MB (local),        1.62 GB (total)
 SF USED    *       442.83 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -30.425671104941

              CI              CI           MULTI         RHF-SCF
    -30.43478981    -30.41401224    -30.22410392    -30.34122430
 **********************************************************************************************************************************
 Molpro calculation terminated
