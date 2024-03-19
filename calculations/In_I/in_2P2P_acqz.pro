
 Working directory              : /wrk/irikura/molpro.B35P1juvia/
 Global scratch directory       : /wrk/irikura/molpro.B35P1juvia/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.B35P1juvia/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,In SO-CI
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={In};
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=48,sym=1,spin=0}
 
 {multi
     occ,16,15
     closed,14,9
     wf,nelec=49,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,8,6
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   In SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 11-Mar-24          TIME: 10:27:52  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry IN     S aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry IN     P aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry IN     D aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry IN     F aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry IN     G aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry IN     H aug-cc-pwCVQZ-DK     selected for orbital group  1


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

   1  IN     49.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   49
 NUMBER OF PRIMITIVE AOS:         352
 NUMBER OF SYMMETRY AOS:          282
 NUMBER OF CONTRACTIONS:          179   (   93Ag  +   86Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     119.013 MB (compressed) written to integral file ( 12.9%)

     Node minimum: 4.194 MB, node maximum: 14.156 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5457495.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5457495      RECORD LENGTH: 524288

 Memory used in sort:       6.01 MW

 SORT1 READ   115128829. AND WROTE      975528. INTEGRALS IN      3 RECORDS. CPU TIME:     0.53 SEC, REAL TIME:     0.55 SEC
 SORT2 READ    12038780. AND WROTE    65610150. INTEGRALS IN    480 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.13 SEC

 Node minimum:     5456145.  Node maximum:     5472639. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 9101112131415
                                       161718192021

 Eigenvalues of metric

         1 0.139E-04 0.892E-04 0.399E-03 0.399E-03 0.399E-03 0.399E-03 0.399E-03 0.317E-02
         2 0.455E-04 0.455E-04 0.455E-04 0.417E-03 0.417E-03 0.417E-03 0.119E-01 0.119E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.38      4.03
 REAL TIME  *         5.56 SEC
 DISK USED  *        30.45 MB (local),      594.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   15  12

 Initial occupancy:  12  12

 NELEC=   48   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -5817.58845215   -5817.58845215     0.00D+00     0.34D+00     0     0       0.03      0.06    start
   2    -5854.60034927     -37.01189712     0.32D+00     0.46D+00     1     0       0.02      0.08    diag
   3    -5877.44252236     -22.84217310     0.25D+00     0.43D+00     2     0       0.03      0.11    diag
   4    -5877.98375581      -0.54123345     0.23D-01     0.14D+00     3     0       0.03      0.14    diag
   5    -5878.04339018      -0.05963437     0.11D-01     0.30D-01     4     0       0.03      0.17    diag
   6    -5878.04496330      -0.00157312     0.14D-02     0.65D-02     5     0       0.02      0.19    diag
   7    -5878.04498598      -0.00002268     0.10D-03     0.27D-03     6     0       0.04      0.23    diag
   8    -5878.04498762      -0.00000164     0.25D-04     0.11D-03     7     0       0.02      0.25    fixocc
   9    -5878.04498765      -0.00000004     0.59D-05     0.15D-04     8     0       0.03      0.28    diag
  10    -5878.04498765      -0.00000000     0.89D-06     0.18D-05     9     0       0.03      0.31    diag/orth
  11    -5878.04498765      -0.00000000     0.10D-06     0.58D-06     0     0       0.02      0.33    diag

 Final occupancy:  15   9

 !RHF STATE 1.1 Energy              -5878.044987651470
  RHF One-electron energy           -8080.071635966104
  RHF Two-electron energy            2202.026648314633
  RHF Kinetic energy                 6736.171725772690
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.872609135715

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1032.19430     1  1  s    0.98332
    2.1     2.00000  -158.12009     1  2  s    1.07014
    3.1     2.00000   -31.66316     1  3  s    0.91674
    4.1     2.00000   -17.61030     1  1  d1+  0.92452    1  1  d1-  0.38088
    5.1     2.00000   -17.61030     1  1  d1+ -0.38088    1  1  d1-  0.92452
    6.1     2.00000   -17.61030     1  1  d0   0.99991
    7.1     2.00000   -17.61030     1  1  d2+  0.99970
    8.1     2.00000   -17.61030     1  1  d2-  0.99970
    9.1     2.00000    -5.57850     1  4  s    1.06379
   10.1     2.00000    -1.28285     1  2  d1+ -0.31491    1  2  d1-  0.95087
   11.1     2.00000    -1.28285     1  2  d1+  0.95087    1  2  d1-  0.31491
   12.1     2.00000    -1.28285     1  2  d0   1.00166
   13.1     2.00000    -1.28285     1  2  d2+  0.99775
   14.1     2.00000    -1.28285     1  2  d2-  0.99775
   15.1     2.00000    -0.63545     1  3  s   -0.36950    1  4  s   -0.88607    1  7  s    0.30269    1  9  s    0.48442
                                    1 10  s    0.70061
    1.2     2.00000  -141.77225     1  1  px   0.99887
    2.2     2.00000  -141.77225     1  1  py   0.99887
    3.2     2.00000  -141.77225     1  1  pz   0.99887
    4.2     2.00000   -26.16177     1  2  px   1.00748
    5.2     2.00000   -26.16177     1  2  py   1.00748
    6.2     2.00000   -26.16177     1  2  pz   1.00748
    7.2     2.00000    -3.85001     1  3  py   1.00685
    8.2     2.00000    -3.85001     1  3  px   1.00685
    9.2     2.00000    -3.85001     1  3  pz   1.00685


 HOMO     15.1    -0.635447 =     -17.2914eV
 LUMO     10.2    -0.182958 =      -4.9785eV
 LUMO-HOMO         0.452490 =      12.3129eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.66       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.72      0.34      4.03
 REAL TIME  *         6.86 SEC
 DISK USED  *        31.95 MB (local),      612.14 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     148 (   77   71)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.293D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.204D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.203D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.249D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.250D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.116D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.820D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.819D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 2 5 3 1 6   4 2 5 3 1 1 5 3 6 4   2 1 4 6 2 3 5101314  1512 811 9 7 1 6 4 2
                                        5 31310141512 811 9   7 6 4 2 5 3 1131014  15 81211 9 7 2 3 5 6   4 1 3 5 2 6 4101314
                                       1512 8 911 7 1 3 5 2   4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.622D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.782D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.117D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.517D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.157D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.665D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.154D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.498D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.652D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.679D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.533D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.178D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.459D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.459D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.653D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 2 1 3 3   1 2 1 2 3 2 1 3 7 9  10 8 4 5 6 1 2 3 7 9  10 8 4 5 6 7 9 810 6
                                        4 5 1 2 3 810 7 4 5   6 92018171514161321  111219 7 910 8 4 5 6   1 2 3 9 710 8 4 5 6
                                        3 1 2 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  2379  ( 82 closed/active, 1717 closed/virtual, 0 active/active, 580 active/virtual )
 Total number of variables:    3099
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7    6    0  -5878.18460865   -5878.19046368   -0.00585503    0.04618508 0.00017465 0.00000000  0.81E+00      2.19
   2    9    7    0  -5878.19038812   -5878.19039111   -0.00000299    0.00167935 0.00000021 0.00000000  0.24E-01      4.71
   3    6    5    0  -5878.19039111   -5878.19039111    0.00000000    0.00000057 0.00000000 0.00000000  0.26E-04      6.73

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.21E-09)
                       Final energy:  -5878.19039111
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                     -5878.249611541731
 Nuclear energy                                  0.00000000
 Kinetic energy                               6736.47317247
 One electron energy                         -8093.82939078
 Two electron energy                          2215.57977923
 Virial ratio                                    1.87260046
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                     -5878.249611541670
 Nuclear energy                                  0.00000000
 Kinetic energy                               6736.47317247
 One electron energy                         -8093.82939078
 Two electron energy                          2215.57977924
 Virial ratio                                    1.87260046
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                     -5878.249611541564
 Nuclear energy                                  0.00000000
 Kinetic energy                               6736.47317248
 One electron energy                         -8093.82939079
 Two electron energy                          2215.57977925
 Virial ratio                                    1.87260046
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                     -5878.131170674715
 Nuclear energy                                  0.00000000
 Kinetic energy                               6736.11698084
 One electron energy                         -8085.25093234
 Two electron energy                          2207.11976167
 Virial ratio                                    1.87262902
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                     -5878.131170674706
 Nuclear energy                                  0.00000000
 Kinetic energy                               6736.11698084
 One electron energy                         -8085.25093235
 Two electron energy                          2207.11976167
 Virial ratio                                    1.87262902
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                     -5878.131170674692
 Nuclear energy                                  0.00000000
 Kinetic energy                               6736.11698084
 One electron energy                         -8085.25093235
 Two electron energy                          2207.11976168
 Virial ratio                                    1.87262902
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000000000806
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999999903
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999999456
 !MCSCF expec                      <4.2|LXLX|4.2>     0.000000060033
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999934160
 !MCSCF expec                      <6.2|LXLX|6.2>     0.999999999956
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999905
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000000276
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999999812
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999940282
 !MCSCF expec                      <5.2|LYLY|5.2>     0.000000089169
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999999981170
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999999289
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999821
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000000732
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.999999999685
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999976671
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.000000018874
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 2 5 3 1 6   4 5 3 2 1 1 1 6 4 3   5 2 6 4 2 3 5 111 9  1415 7101312 8 2 6 4
                                        3 5131011 9151412 8   7 2 3 5 6 4 1131012   811 91415 7 2 5 3 6   4 1 2 3 5 6 412 811
                                        91415 71310 1 3 5 2   4 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 3 2 2 1 3 3   1 2 1 3 2 3 2 1 9 7   6 810 5 4 3 2 1 9 7   610 8 5 4 6 9 7 810
                                        5 4 3 1 2 9 7 610 8   5 41321161412111715  201819 9 7 610 8 5 4   3 1 2 6 4 510 8 7 9
                                        3 1 2 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1031.99706     1  1  s    0.98332
    2.1     2.00000  -157.92356     1  2  s    1.07016
    3.1     2.00000   -31.46688     1  3  s    0.91670
    4.1     2.00000   -17.41435     1  1  d1+  0.99992
    5.1     2.00000   -17.41435     1  1  d1-  0.99992
    6.1     2.00000   -17.41435     1  1  d0   0.99992
    7.1     2.00000   -17.41435     1  1  d2+  0.99992
    8.1     2.00000   -17.41435     1  1  d2-  0.99992
    9.1     2.00000    -5.38227     1  4  s    1.06136
   10.1     2.00000    -1.08733     1  2  d1-  1.00068
   11.1     2.00000    -1.08733     1  2  d1+  1.00068
   12.1     2.00000    -1.08733     1  2  d2+  1.00068
   13.1     2.00000    -1.08733     1  2  d2-  1.00068
   14.1     2.00000    -1.08733     1  2  d0   1.00068
   15.1     1.92098    -0.44738     1  3  s   -0.33571    1  4  s   -0.81810    1  7  s    0.27197    1  9  s    0.41856
                                    1 10  s    0.68584
   16.1     0.00511     0.23670     1  3  s    0.52114    1  4  s    1.12159    1  7  s   -0.44256    1  9  s   -1.87414
                                    1 10  s    0.40499    1 11  s    1.06243
    1.2     2.00000  -141.57594     1  1  pz   0.99887
    2.2     2.00000  -141.57594     1  1  px   0.99887
    3.2     2.00000  -141.57594     1  1  py   0.99887
    4.2     2.00000   -25.96604     1  2  px   1.00755
    5.2     2.00000   -25.96604     1  2  pz   1.00755
    6.2     2.00000   -25.96604     1  2  py   1.00755
    7.2     2.00000    -3.65481     1  3  py   1.00234
    8.2     2.00000    -3.65481     1  3  px   1.00234
    9.2     2.00000    -3.65481     1  3  pz   1.00234
   10.2     0.19143    -0.02234     1  8  pz   0.45308    1  9  pz   0.59938
   11.2     0.19143    -0.02234     1  8  px   0.45308    1  9  px   0.59938
   12.2     0.19143    -0.02234     1  8  py   0.45308    1  9  py   0.59938
   13.2     0.16654     0.01537     1 11  px   0.98189
   14.2     0.16654     0.01537     1 11  pz   0.98189
   15.2     0.16654     0.01537     1 11  py   0.98189
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 00a000      0.00000928      0.95092938      0.00001273     -0.00005885     -0.24080629     -0.00003678
 20 a00000      0.00002536     -0.00001273      0.95092937      0.00000427      0.00003678     -0.24080632
 20 0a0000      0.95092937     -0.00000928     -0.00002536     -0.24080632      0.00005885     -0.00000426
 20 0000a0      0.00000642     -0.00000322      0.24076540     -0.00001681     -0.00014468      0.94722017
 20 000a00      0.24076541     -0.00000235     -0.00000642      0.94722015     -0.00023148      0.00001678
 20 00000a      0.00000235      0.24076538      0.00000322      0.00023148      0.94722015      0.00014468
 00 20a000     -0.00000122     -0.12509513     -0.00000167      0.00000826      0.03378775      0.00000516
 00 02a000     -0.00000122     -0.12509513     -0.00000167      0.00000826      0.03378775      0.00000516
 00 2a0000     -0.12509513      0.00000122      0.00000334      0.03378775     -0.00000826      0.00000060
 00 a02000     -0.00000334      0.00000167     -0.12509513     -0.00000060     -0.00000516      0.03378775
 00 0a2000     -0.12509513      0.00000122      0.00000334      0.03378775     -0.00000826      0.00000060
 00 a20000     -0.00000334      0.00000167     -0.12509513     -0.00000060     -0.00000516      0.03378775
 00 0020a0     -0.00000077      0.00000038     -0.02869245      0.00000200      0.00001725     -0.11292029
 00 0200a0     -0.00000077      0.00000038     -0.02869245      0.00000200      0.00001725     -0.11292029
 00 200a00     -0.02869245      0.00000028      0.00000077     -0.11292029      0.00002760     -0.00000200
 00 002a00     -0.02869245      0.00000028      0.00000077     -0.11292029      0.00002760     -0.00000200
 00 20000a     -0.00000028     -0.02869245     -0.00000038     -0.00002759     -0.11292029     -0.00001725
 00 02000a     -0.00000028     -0.02869245     -0.00000038     -0.00002759     -0.11292029     -0.00001725
 00 2000a0     -0.00000075      0.00000038     -0.02801723      0.00000197      0.00001699     -0.11122465
 00 020a00     -0.02801723      0.00000027      0.00000075     -0.11122465      0.00002718     -0.00000197
 00 00200a     -0.00000027     -0.02801723     -0.00000037     -0.00002718     -0.11122465     -0.00001699
 
 Energy:    -5878.24961154  -5878.24961154  -5878.24961154  -5878.13117067  -5878.13117067  -5878.13117067
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      121.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.38       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        11.06      6.34      0.34      4.03
 REAL TIME  *        15.06 SEC
 DISK USED  *       123.30 MB (local),        1.67 GB (total)
 SF USED    *       224.74 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -5878.249612   2.0
    -5878.249612   2.0
    -5878.249612   2.0
    -5878.131171   2.0
    -5878.131171   2.0
    -5878.131171   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 49
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     148 (  77  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.39 sec, npass=  1  Memory used:   3.05 MW


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -5878.24961154
     2     -5878.24961154
     3     -5878.24961154
     4     -5878.13117067
     5     -5878.13117067
     6     -5878.13117067

 Number of blocks in overlap matrix:   564   Smallest eigenvalue:  0.33D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       5732603
 Number of doubly external configurations:       7286446
 Total number of contracted configurations:     13072321
 Total number of uncontracted configurations:  137060401

 Diagonal Coupling coefficients finished.               Storage:  22137756 words, CPU-Time:     26.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1861925 words, CPU-time:      1.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -5878.24961154    -0.00000000    -0.88216842  0.47D-01  0.10D+00    39.83
    1     2     2     1.00000000     0.00000000 -5878.24961154     0.00000000    -0.88216718  0.47D-01  0.10D+00    39.83
    1     3     3     1.00000000     0.00000000 -5878.24961154    -0.00000000    -0.88214097  0.47D-01  0.10D+00    39.83
    1     4     4     1.00000000     0.00000000 -5878.13117067     0.00000000    -0.85734438  0.32D-01  0.98D-01    39.83
    1     5     5     1.00000000     0.00000000 -5878.13117067     0.00000000    -0.85733520  0.32D-01  0.98D-01    39.83
    1     6     6     1.00000000     0.00000000 -5878.13117067    -0.00000000    -0.85733301  0.32D-01  0.98D-01    39.83
    2     1     1     1.09521637    -0.70582704 -5878.95543859    -0.70582704    -0.02000000  0.34D-02  0.13D-02   575.85
    2     2     2     1.09526338    -0.70579456 -5878.95540611    -0.70579456    -0.02003306  0.34D-02  0.13D-02   575.85
    2     3     3     1.09526274    -0.70578980 -5878.95540134    -0.70578980    -0.02003956  0.34D-02  0.13D-02   575.85
    2     4     4     1.08403279    -0.69667965 -5878.82785033    -0.69667965    -0.01714393  0.21D-02  0.12D-02   575.85
    2     5     5     1.08404027    -0.69667418 -5878.82784485    -0.69667418    -0.01715018  0.21D-02  0.12D-02   575.85
    2     6     6     1.08404423    -0.69667232 -5878.82784299    -0.69667232    -0.01715206  0.21D-02  0.12D-02   575.85
    3     1     1     1.08334978    -0.72467375 -5878.97428529    -0.01884671    -0.00034322  0.53D-04  0.35D-04  1110.29
    3     2     2     1.08334821    -0.72467284 -5878.97428438    -0.01887828    -0.00034408  0.53D-04  0.35D-04  1110.29
    3     3     3     1.08334794    -0.72467267 -5878.97428421    -0.01888287    -0.00034427  0.53D-04  0.35D-04  1110.29
    3     4     4     1.07669245    -0.71273468 -5878.84390535    -0.01605503    -0.00024704  0.27D-04  0.21D-04  1110.29
    3     5     5     1.07669233    -0.71273447 -5878.84390515    -0.01606030    -0.00024725  0.27D-04  0.21D-04  1110.29
    3     6     6     1.07669251    -0.71273442 -5878.84390509    -0.01606210    -0.00024731  0.27D-04  0.21D-04  1110.29
    4     1     1     1.08306876    -0.72501710 -5878.97462864    -0.00034335    -0.00001481  0.40D-05  0.12D-05  1645.33
    4     2     2     1.08306838    -0.72501710 -5878.97462864    -0.00034426    -0.00001481  0.40D-05  0.12D-05  1645.33
    4     3     3     1.08306842    -0.72501710 -5878.97462864    -0.00034443    -0.00001481  0.40D-05  0.12D-05  1645.33
    4     4     4     1.07688993    -0.71297076 -5878.84414143    -0.00023608    -0.00000908  0.22D-05  0.56D-06  1645.33
    4     5     5     1.07688991    -0.71297075 -5878.84414143    -0.00023628    -0.00000908  0.22D-05  0.56D-06  1645.33
    4     6     6     1.07688988    -0.71297075 -5878.84414143    -0.00023633    -0.00000908  0.22D-05  0.56D-06  1645.33
    5     1     1     1.08301374    -0.72503305 -5878.97464459    -0.00001595    -0.00000055  0.98D-07  0.47D-07  2179.80
    5     2     2     1.08301385    -0.72503305 -5878.97464459    -0.00001595    -0.00000055  0.98D-07  0.47D-07  2179.80
    5     3     3     1.08301374    -0.72503305 -5878.97464459    -0.00001595    -0.00000055  0.98D-07  0.47D-07  2179.80
    5     4     4     1.07693723    -0.71298025 -5878.84415093    -0.00000949    -0.00000032  0.62D-07  0.24D-07  2179.80
    5     5     5     1.07693722    -0.71298025 -5878.84415093    -0.00000950    -0.00000032  0.62D-07  0.24D-07  2179.80
    5     6     6     1.07693724    -0.71298025 -5878.84415093    -0.00000950    -0.00000032  0.62D-07  0.24D-07  2179.80
    6     1     1     1.08299883    -0.72503361 -5878.97464516    -0.00000056    -0.00000002  0.38D-08  0.23D-08  2711.54
    6     2     2     1.08299884    -0.72503361 -5878.97464516    -0.00000057    -0.00000002  0.38D-08  0.23D-08  2711.54
    6     3     3     1.08299883    -0.72503361 -5878.97464515    -0.00000056    -0.00000002  0.38D-08  0.23D-08  2711.54
    6     4     4     1.07693723    -0.71298059 -5878.84415126    -0.00000034    -0.00000001  0.23D-08  0.13D-08  2711.54
    6     5     5     1.07693722    -0.71298059 -5878.84415126    -0.00000034    -0.00000001  0.23D-08  0.13D-08  2711.54
    6     6     6     1.07693723    -0.71298059 -5878.84415126    -0.00000034    -0.00000001  0.23D-08  0.13D-08  2711.54


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.4%
 S   0.6%  64.3%
 P   0.3%  18.7%   8.3%

 Initialization:   1.0%
 Other:            5.5%

 Total CPU:     2711.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/00000           0.0003095   0.9251207  -0.0059222  -0.0050152   0.0000372  -0.1972063
 222222202220/0000           0.9251171  -0.0003509  -0.0064644  -0.0018075  -0.1972618   0.0000087
 2222222022200/000           0.0064665   0.0059199   0.9250982  -0.1971980   0.0018071   0.0050154
 22222220222000/00           0.1974640  -0.0000749  -0.0013798   0.0084499   0.9221919  -0.0000407
 222222202220000/0           0.0000661   0.1974648  -0.0012641   0.0234460  -0.0001741   0.9219325
 2222222022200000/           0.0013803   0.0012636   0.1974599   0.9218938  -0.0084482  -0.0234467
 22222200222/02000          -0.0000366  -0.1094968   0.0007009   0.0006447  -0.0000048   0.0253493
 22222200222/20000          -0.0000366  -0.1094968   0.0007009   0.0006447  -0.0000048   0.0253493
 222222002220/2000          -0.1094963   0.0000415   0.0007651   0.0002323   0.0253564  -0.0000011
 222222002222/0000          -0.1094962   0.0000415   0.0007651   0.0002323   0.0253564  -0.0000011
 2222220022202/000          -0.0007654  -0.0007007  -0.1094940   0.0253483  -0.0002323  -0.0006447
 2222220022220/000          -0.0007654  -0.0007007  -0.1094940   0.0253482  -0.0002323  -0.0006447
 22222200222002/00          -0.0210696   0.0000080   0.0001472  -0.0009033  -0.0985855   0.0000044
 22222200222200/00          -0.0210696   0.0000080   0.0001472  -0.0009033  -0.0985855   0.0000044
 222222002220200/0          -0.0000070  -0.0210697   0.0001349  -0.0025065   0.0000186  -0.0985578
 222222002220020/0          -0.0000070  -0.0210697   0.0001349  -0.0025065   0.0000186  -0.0985578
 2222220022202000/          -0.0001473  -0.0001348  -0.0210692  -0.0985537   0.0009031   0.0025065
 2222220022220000/          -0.0001473  -0.0001348  -0.0210692  -0.0985536   0.0009031   0.0025065
 22222200222020/00          -0.0203382   0.0000077   0.0001421  -0.0008880  -0.0969145   0.0000043
 222222002222000/0          -0.0000068  -0.0203382   0.0001302  -0.0024640   0.0000183  -0.0968872
 2222220022200200/          -0.0001422  -0.0001301  -0.0203378  -0.0968831   0.0008878   0.0024640
 222222/\222000/00          -0.0190613   0.0000072   0.0001332  -0.0007148  -0.0780132   0.0000034
 222222/\2220000/0          -0.0000064  -0.0190614   0.0001220  -0.0019834   0.0000147  -0.0779912
 222222/\22200000/          -0.0001332  -0.0001220  -0.0190609  -0.0779880   0.0007147   0.0019835

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959011    0.006703    0.000321   -0.035540   -0.000248   -0.000012
 2          -0.000364    0.006137    0.959015    0.000013   -0.000227   -0.035540
 3          -0.006701    0.958992   -0.006139    0.000248   -0.035540    0.000228
 4           0.000340    0.037132    0.000944    0.008809    0.961056    0.024442
 5           0.037144   -0.000340   -0.000007    0.961367   -0.008807   -0.000182
 6          -0.000002   -0.000944    0.037134   -0.000042   -0.024443    0.961096

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959693   -0.000000    0.000000    0.000012    0.000757    0.000000
 2          -0.000000    0.959693    0.000000    0.000024   -0.000000    0.000756
 3           0.000000    0.000000    0.959693    0.000756   -0.000012   -0.000024
 4           0.000012    0.000024    0.000756    0.962124    0.000000   -0.000000
 5           0.000757   -0.000000   -0.000012    0.000000    0.962124   -0.000000
 6           0.000000    0.000756   -0.000024   -0.000000   -0.000000    0.962124


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95901129 (fixed)   0.96022098 (relaxed)   0.95969281 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00255342   -0.00322524   -0.61326636
 Singles      0.01676505   -0.06103183   -0.06741366
 Pairs        0.06644571    0.00000954   -0.04435360
 Total        1.08576419   -0.06424752   -0.72503361
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.24944211
 Nuclear energy                         0.00000000
 Kinetic energy                      6736.98725691
 One electron energy                -8093.07648785
 Two electron energy                 2214.10184269
 Virial quotient                       -0.87264150
 Correlation energy                    -0.72520304
 !MRCI STATE 1.2 Energy             -5878.974645155186

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5879.03684161 (Davidson, fixed reference)
 Cluster corrected energies         -5879.03597563 (Davidson, relaxed reference)
 Cluster corrected energies         -5879.03684161 (Davidson, rotated reference)

 Cluster corrected energies         -5879.03469973 (Pople, fixed reference)
 Cluster corrected energies         -5879.03380424 (Pople, relaxed reference)
 Cluster corrected energies         -5879.03469973 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95901507 (fixed)   0.96022098 (relaxed)   0.95969281 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00255342   -0.00322524   -0.63952179
 Singles      0.01676507   -0.06103182   -0.06741367
 Pairs        0.06644570    0.02851676   -0.01809814
 Total        1.08576419   -0.03574030   -0.72503361
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.24944211
 Nuclear energy                         0.00000000
 Kinetic energy                      6736.98725443
 One electron energy                -8093.07648464
 Two electron energy                 2214.10183949
 Virial quotient                       -0.87264150
 Correlation energy                    -0.72520304
 !MRCI STATE 2.2 Energy             -5878.974645155075

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5879.03684161 (Davidson, fixed reference)
 Cluster corrected energies         -5879.03597564 (Davidson, relaxed reference)
 Cluster corrected energies         -5879.03684161 (Davidson, rotated reference)

 Cluster corrected energies         -5879.03469974 (Pople, fixed reference)
 Cluster corrected energies         -5879.03380425 (Pople, relaxed reference)
 Cluster corrected energies         -5879.03469974 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95899171 (fixed)   0.96022098 (relaxed)   0.95969282 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00255342   -0.00322524   -0.61308943
 Singles      0.01676506   -0.06103183   -0.06741366
 Pairs        0.06644570   -0.00018255   -0.04453052
 Total        1.08576418   -0.06443962   -0.72503361
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.24944211
 Nuclear energy                         0.00000000
 Kinetic energy                      6736.98725714
 One electron energy                -8093.07648809
 Two electron energy                 2214.10184294
 Virial quotient                       -0.87264150
 Correlation energy                    -0.72520304
 !MRCI STATE 3.2 Energy             -5878.974645154087

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5879.03684160 (Davidson, fixed reference)
 Cluster corrected energies         -5879.03597563 (Davidson, relaxed reference)
 Cluster corrected energies         -5879.03684160 (Davidson, rotated reference)

 Cluster corrected energies         -5879.03469973 (Pople, fixed reference)
 Cluster corrected energies         -5879.03380424 (Pople, relaxed reference)
 Cluster corrected energies         -5879.03469973 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96105595 (fixed)   0.96271580 (relaxed)   0.96212410 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00310738   -0.00406414   -0.59310685
 Singles      0.01342511   -0.05793502   -0.06249600
 Pairs        0.06375120   -0.01653742   -0.05737774
 Total        1.08028368   -0.07853658   -0.71298059
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.13134010
 Nuclear energy                         0.00000000
 Kinetic energy                      6736.78064254
 One electron energy                -8084.66109612
 Two electron energy                 2205.81694485
 Virial quotient                       -0.87264889
 Correlation energy                    -0.71281116
 !MRCI STATE 4.2 Energy             -5878.844151263147

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.90137837 (Davidson, fixed reference)
 Cluster corrected energies         -5878.90043211 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.90137837 (Davidson, rotated reference)

 Cluster corrected energies         -5878.89915426 (Pople, fixed reference)
 Cluster corrected energies         -5878.89818470 (Pople, relaxed reference)
 Cluster corrected energies         -5878.89915426 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96136672 (fixed)   0.96271580 (relaxed)   0.96212410 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00310738   -0.00406414   -0.60852895
 Singles      0.01342510   -0.05793502   -0.06249600
 Pairs        0.06375119    0.00012282   -0.04195564
 Total        1.08028367   -0.06187634   -0.71298059
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.13134010
 Nuclear energy                         0.00000000
 Kinetic energy                      6736.78064333
 One electron energy                -8084.66109718
 Two electron energy                 2205.81694592
 Virial quotient                       -0.87264889
 Correlation energy                    -0.71281116
 !MRCI STATE 5.2 Energy             -5878.844151262858

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.90137836 (Davidson, fixed reference)
 Cluster corrected energies         -5878.90043210 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.90137836 (Davidson, rotated reference)

 Cluster corrected energies         -5878.89915425 (Pople, fixed reference)
 Cluster corrected energies         -5878.89818470 (Pople, relaxed reference)
 Cluster corrected energies         -5878.89915425 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.96109630 (fixed)   0.96271579 (relaxed)   0.96212410 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00310738   -0.00406414   -0.00646634
 Singles      0.01342511   -0.05793502   -0.06249601
 Pairs        0.06375120   -0.65027558   -0.64401824
 Total        1.08028368   -0.71227474   -0.71298059
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -5878.13134010
 Nuclear energy                         0.00000000
 Kinetic energy                      6736.78064276
 One electron energy                -8084.66109695
 Two electron energy                 2205.81694569
 Virial quotient                       -0.87264889
 Correlation energy                    -0.71281116
 !MRCI STATE 6.2 Energy             -5878.844151262782

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -5878.90137837 (Davidson, fixed reference)
 Cluster corrected energies         -5878.90043211 (Davidson, relaxed reference)
 Cluster corrected energies         -5878.90137837 (Davidson, rotated reference)

 Cluster corrected energies         -5878.89915426 (Pople, fixed reference)
 Cluster corrected energies         -5878.89818470 (Pople, relaxed reference)
 Cluster corrected energies         -5878.89915426 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      121.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      607.63       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2897.57   2886.50      6.34      0.34      4.03
 REAL TIME  *      2955.50 SEC
 DISK USED  *       729.55 MB (local),        8.77 GB (total)
 SF USED    *         6.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -5879.03684161  AU                              
 SETTING HLSDIAG(2)     =     -5879.03684161  AU                              
 SETTING HLSDIAG(3)     =     -5879.03684160  AU                              
 SETTING HLSDIAG(4)     =     -5878.90137837  AU                              
 SETTING HLSDIAG(5)     =     -5878.90137836  AU                              
 SETTING HLSDIAG(6)     =     -5878.90137837  AU                              


         HLSDIAG
    -5879.036842
    -5879.036842
    -5879.036842
    -5878.901378
    -5878.901378
    -5878.901378
                                                  


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

 Time for Seward_LS:      28.43 sec

       67235327. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    19134 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     28.43 sec, REAL time:     28.97 sec


 SORTLS1 read    78301042. and wrote    78301042. SO integrals in   311 records. CPU time:      0.69 sec, REAL time:      1.05 sec
 SORTLS2 read    78301042. and wrote   389309532. SO integrals in    36 records. CPU time:      0.42 sec, REAL time:      0.60 sec

 FILE SIZES: FILE 1:  1381.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1381.9 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:  -5878.974645  -5878.974645  -5878.974645  -5878.844151  -5878.844151  -5878.844151
 Replaced energies:  -5879.036842  -5879.036842  -5879.036842  -5878.901378  -5878.901378  -5878.901378



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -5879.03684161

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     888.63      -5.69      -8.52
                            0.00      -5.69    -888.65     334.86      -5.41      -8.52       0.00      -6.21       0.34      -0.05

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -888.63       0.00       6.21       3.07
                            5.69      -0.00       0.30      -0.15      -2.14       0.00       6.21      -0.00     888.65    -334.83

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       5.69      -6.21      -0.00       0.04
                          888.65      -0.30      -0.00      -5.41    -334.96       0.07      -0.34    -888.65       0.00      10.66

    4   4.2  0.5  0.5       0.00       0.00       0.00   29730.75       0.00       0.00       8.52      -3.07      -0.04      -0.00
                         -334.86       0.15       5.41      -0.00     125.94       0.02       0.05     334.83     -10.66       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   29730.75       0.00      -0.18    -334.99       2.14       3.20
                            5.41       2.14     334.96    -125.94       0.00       3.20      -0.00      -3.07       0.08       0.01

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   29730.75     334.89      -0.11      -2.34      -1.15
                            8.52      -0.00      -0.07      -0.02      -3.20       0.00      -2.34     -10.66    -334.83     125.98

    7   1.2  0.5 -0.5      -0.00    -888.63       5.69       8.52      -0.18     334.89       0.00       0.00       0.00       0.00
                           -0.00      -6.21       0.34      -0.05       0.00       2.34      -0.00       5.69     888.65    -334.86

    8   2.2  0.5 -0.5     888.63       0.00      -6.21      -3.07    -334.99      -0.11       0.00       0.00       0.00       0.00
                            6.21       0.00     888.65    -334.83       3.07      10.66      -5.69       0.00      -0.30       0.15

    9   3.2  0.5 -0.5      -5.69       6.21      -0.00      -0.04       2.14      -2.34       0.00       0.00       0.00       0.00
                           -0.34    -888.65      -0.00      10.66      -0.08     334.83    -888.65       0.30       0.00       5.41

   10   4.2  0.5 -0.5      -8.52       3.07       0.04      -0.00       3.20      -1.15       0.00       0.00       0.00   29730.75
                            0.05     334.83     -10.66      -0.00      -0.01    -125.98     334.86      -0.15      -5.41       0.00

   11   5.2  0.5 -0.5       0.18     334.99      -2.14      -3.20       0.00    -125.94       0.00       0.00       0.00       0.00
                           -0.00      -3.07       0.08       0.01      -0.00       1.15      -5.41      -2.14    -334.96     125.94

   12   6.2  0.5 -0.5    -334.89       0.11       2.34       1.15     125.94       0.00       0.00       0.00       0.00       0.00
                           -2.34     -10.66    -334.83     125.98      -1.15       0.00      -8.52       0.00       0.07       0.02


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5       0.18    -334.89
                            0.00       2.34

    2   2.2  0.5  0.5     334.99       0.11
                            3.07      10.66

    3   3.2  0.5  0.5      -2.14       2.34
                           -0.08     334.83

    4   4.2  0.5  0.5      -3.20       1.15
                           -0.01    -125.98

    5   5.2  0.5  0.5       0.00     125.94
                            0.00       1.15

    6   6.2  0.5  0.5    -125.94       0.00
                           -1.15      -0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            5.41       8.52

    8   2.2  0.5 -0.5       0.00       0.00
                            2.14      -0.00

    9   3.2  0.5 -0.5       0.00       0.00
                          334.96      -0.07

   10   4.2  0.5 -0.5       0.00       0.00
                         -125.94      -0.02

   11   5.2  0.5 -0.5   29730.75       0.00
                           -0.00      -3.20

   12   6.2  0.5 -0.5       0.00   29730.75
                            3.20      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -5879.04500518    -0.00816357    -1791.70      0.00000000        0.00      0.0000
     2 -5879.04500518    -0.00816357    -1791.70      0.00000000        0.00      0.0000
     3 -5879.03281018     0.00403143      884.80      0.01219500     2676.49      0.3318
     4 -5879.03281018     0.00403143      884.80      0.01219500     2676.49      0.3318
     5 -5879.03281017     0.00403144      884.80      0.01219501     2676.49      0.3318
     6 -5879.03281017     0.00403144      884.80      0.01219501     2676.49      0.3318
     7 -5878.90246101     0.13438060    29493.13      0.14254417    31284.83      3.8788
     8 -5878.90246101     0.13438060    29493.13      0.14254417    31284.83      3.8788
     9 -5878.90078669     0.13605492    29860.60      0.14421849    31652.30      3.9244
    10 -5878.90078669     0.13605492    29860.60      0.14421849    31652.30      3.9244
    11 -5878.90078669     0.13605492    29860.60      0.14421849    31652.30      3.9244
    12 -5878.90078669     0.13605492    29860.60      0.14421849    31652.30      3.9244


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.373382515  -0.440188453  -0.044870103   0.659830082  -0.025745063   0.478043576  -0.012361524  -0.000396117
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.034176856   0.028989948   0.731721807   0.049530341  -0.252830543  -0.013300701  -0.000255383   0.007969665
                        -0.441240923  -0.369430024   0.131739959   0.014438035  -0.216392097  -0.014753851   0.000381919  -0.009446529

    3    3.2  0.5  0.5  -0.000071970  -0.000061047   0.001284510  -0.000329576  -0.005089939   0.000301352   0.000001534  -0.000047857
                        -0.370553985   0.442571914   0.005659669  -0.083722877  -0.047220185   0.810727260   0.012359223   0.000459262

    4    4.2  0.5  0.5  -0.000151027   0.000133943   0.000275657   0.000137696  -0.000156644   0.000087906  -0.009629543   0.009303103
                         0.008235480  -0.009224964   0.000113869  -0.000962183  -0.000625283   0.009363277   0.577015747   0.007393661

    5    5.2  0.5  0.5  -0.007998862   0.009430906  -0.000524320   0.007628513  -0.000294877   0.005527080  -0.576838613  -0.018681618
                        -0.000134121   0.000148151  -0.000002011   0.000015527   0.000010384  -0.000151258  -0.009324493  -0.000069802

    6    6.2  0.5  0.5  -0.000732874  -0.000619824   0.008456302   0.000573424  -0.002920238  -0.000153211  -0.011980099   0.371832141
                         0.009196875   0.008213403   0.001520495   0.000197674  -0.002483567  -0.000468835  -0.000539774  -0.441336946

    7    1.2  0.5 -0.5   0.037243294   0.031591003  -0.648564048  -0.044103985  -0.361414452  -0.019463995  -0.000257498   0.008035677
                        -0.438610090  -0.372043695  -0.121410118  -0.008256193  -0.312898147  -0.016851146   0.000301004  -0.009393358

    8    2.2  0.5 -0.5  -0.370558147   0.442550408  -0.051341282   0.743468710   0.019712675  -0.332784093   0.012359017   0.000456228
                        -0.002370592   0.003278031   0.005077831   0.005147732  -0.002448502  -0.001888899   0.000084727   0.000054207

    9    3.2  0.5 -0.5   0.440990170   0.369219218   0.015729131   0.002303968  -0.530880415  -0.034755589  -0.000380097   0.009390611
                         0.037384125   0.031423400  -0.082232734  -0.005326681   0.612735479   0.032368231  -0.000262180   0.008035347

   10    4.2  0.5 -0.5  -0.009203219  -0.008218729   0.000041699   0.000291903  -0.006195089  -0.000527699   0.000429189   0.444726326
                        -0.000647040  -0.000546299  -0.000971091  -0.000061203   0.007021364   0.000370202  -0.011875595   0.367774925

   11    5.2  0.5 -0.5  -0.000650306  -0.000543124  -0.007501119  -0.000515738  -0.004079624  -0.000216138  -0.012091048   0.367891581
                         0.009409625   0.007981529  -0.001388401  -0.000094499  -0.003732045  -0.000200859   0.014241288  -0.444393425

   12    6.2  0.5 -0.5   0.008236394  -0.009225905  -0.000600006   0.008591692   0.000422703  -0.003833374   0.577077618   0.007377563
                         0.000077315  -0.000047879   0.000088787   0.000061444  -0.000254170  -0.000033763   0.004343233  -0.009454401


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.000137765   0.000000000  -0.009439514  -0.000064348
                         0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.001745452  -0.001510552   0.000045175  -0.002890027
                         0.000559359  -0.007821384  -0.000063849   0.003735571

    3    3.2  0.5  0.5  -0.007965311  -0.000240292   0.000116023   0.000033078
                        -0.000218604   0.001818235  -0.004717480  -0.000035737

    4    4.2  0.5  0.5   0.693400681   0.024923552   0.003038614   0.005182837
                         0.017353935  -0.135621728   0.407883450  -0.007189569

    5    5.2  0.5  0.5   0.000695636  -0.000417379   0.816394978   0.005453680
                        -0.000274884   0.002115015  -0.006590650   0.000152538

    6    6.2  0.5  0.5   0.128952251   0.129905903  -0.003493592   0.249894492
                        -0.048950767   0.681058440  -0.007463331  -0.322986822

    7    1.2  0.5 -0.5   0.000000000  -0.000135695  -0.000038471   0.005643558
                        -0.000000000   0.000023792   0.000051581  -0.007566682

    8    2.2  0.5 -0.5   0.000137101  -0.001815827  -0.004722268  -0.000078190
                        -0.007964736  -0.000249515   0.000083267  -0.000001961

    9    3.2  0.5 -0.5   0.000550691  -0.007807874   0.000048423  -0.003850882
                         0.001749417   0.001590930  -0.000005149  -0.002727414

   10    4.2  0.5 -0.5  -0.047970957   0.679984920   0.008861773   0.325141306
                        -0.129279633  -0.136843600   0.000143849   0.246295097

   11    5.2  0.5 -0.5   0.000776370   0.000732654   0.003138292  -0.493377253
                         0.002011155   0.000150615  -0.004462848   0.650479117

   12    6.2  0.5 -0.5  -0.010335083   0.135468477   0.408308381  -0.003893883
                         0.693259927   0.025945178  -0.007211970  -0.007262518


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  13.941%  19.377%   0.201%  43.538%   0.066%  22.853%   0.015%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  19.586%  13.732%  55.277%   0.266%  11.075%   0.039%   0.000%   0.015%   0.000%   0.006%
    3    3.2  0.5  0.5  13.731%  19.587%   0.003%   0.701%   0.226%  65.728%   0.015%   0.000%   0.006%   0.000%
    4    4.2  0.5  0.5   0.007%   0.009%   0.000%   0.000%   0.000%   0.009%  33.304%   0.014%  48.111%   1.901%
    5    5.2  0.5  0.5   0.006%   0.009%   0.000%   0.006%   0.000%   0.003%  33.283%   0.035%   0.000%   0.000%
    6    6.2  0.5  0.5   0.009%   0.007%   0.007%   0.000%   0.001%   0.000%   0.014%  33.304%   1.902%  48.072%
    7    1.2  0.5 -0.5  19.377%  13.941%  43.538%   0.201%  22.853%   0.066%   0.000%   0.015%   0.000%   0.000%
    8    2.2  0.5 -0.5  13.732%  19.586%   0.266%  55.277%   0.039%  11.075%   0.015%   0.000%   0.006%   0.000%
    9    3.2  0.5 -0.5  19.587%  13.731%   0.701%   0.003%  65.728%   0.226%   0.000%   0.015%   0.000%   0.006%
   10    4.2  0.5 -0.5   0.009%   0.007%   0.000%   0.000%   0.009%   0.000%   0.014%  33.304%   1.901%  48.111%
   11    5.2  0.5 -0.5   0.009%   0.006%   0.006%   0.000%   0.003%   0.000%   0.035%  33.283%   0.000%   0.000%
   12    6.2  0.5 -0.5   0.007%   0.009%   0.000%   0.007%   0.000%   0.001%  33.304%   0.014%  48.072%   1.902%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.009%   0.000%
    2    2.2  0.5  0.5   0.000%   0.002%
    3    3.2  0.5  0.5   0.002%   0.000%
    4    4.2  0.5  0.5  16.638%   0.008%
    5    5.2  0.5  0.5  66.654%   0.003%
    6    6.2  0.5  0.5   0.007%  16.677%
    7    1.2  0.5 -0.5   0.000%   0.009%
    8    2.2  0.5 -0.5   0.002%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.002%
   10    4.2  0.5 -0.5   0.008%  16.638%
   11    5.2  0.5 -0.5   0.003%  66.654%
   12    6.2  0.5 -0.5  16.677%   0.007%


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
              1      24     1317.86       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      607.63       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8739.40   5841.82   2886.50      6.34      0.34      4.03
 REAL TIME  *      8880.02 SEC
 DISK USED  *       729.73 MB (local),       12.73 GB (total)
 SF USED    *         6.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy=  -5878.900786685491

              CI           MULTI         RHF-SCF
  -5878.84415126  -5878.13117067  -5878.04498765
 **********************************************************************************************************************************
 Molpro calculation terminated
